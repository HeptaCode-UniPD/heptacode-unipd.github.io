import os
import re
import sys

# Importazione pypdf
try:
    from pypdf import PdfReader
except ImportError:
    print("\n[ERRORE] Manca la libreria 'pypdf'.")
    print("Installa con: pip install pypdf --break-system-packages")
    sys.exit(1)

def is_table_row(line):
    if re.search(r'\b\d+\.\d+(\.\d+)?\b', line): return True
    if re.search(r'\d{4}[-/]\d{2}[-/]\d{2}', line): return True
    if re.search(r'\s{3,}', line): return True
    if len(line) < 20 and re.search(r'\b(Presente|Assente|Redattore|Verificatore|Amministratore|Analista|Responsabile)\b', line, re.IGNORECASE):
        return True
    return False

def clean_and_normalize_text(text):
    if not text: return ""
    text = text.replace('\t', ' ').replace('\r', '')
    lines = text.split('\n')
    cleaned_lines = []
    
    for line in lines:
        stripped = line.strip()
        if not stripped: continue
        if re.search(r'(?:\.[\s]*){3,}\s*\d+$', stripped): continue
        if stripped.lower() in ["indice", "indice:"]: continue
        if re.match(r'^\s*\d+\s*$', stripped): continue
        if re.match(r'(?i)(hepta\s*code|verbale)', stripped) and len(stripped) < 50: continue
        cleaned_lines.append(stripped)

    full_text = []
    for line in cleaned_lines:
        if re.match(r'^[-*•]', line):
            if full_text and not full_text[-1].endswith(('.', '!', '?', ':')): full_text[-1] += "."
            if not line.endswith(('.', '!', '?', ':')): line += "."
            full_text.append(line)
            continue
        if is_table_row(line):
            if full_text and not full_text[-1].endswith(('.', '!', '?', ':')): full_text[-1] += "."
            if not line.endswith(('.', '!', '?', ':')): line += "."
            full_text.append(line)
            continue
        if len(line.split()) < 10 and line[0].isupper() and not line.endswith(('.', '!', '?', ':', ';', ',')):
             if full_text and not full_text[-1].endswith(('.', '!', '?', ':')): full_text[-1] += "."
             line += "."
             full_text.append(line)
             continue
        if not full_text:
            full_text.append(line)
        else:
            prev_line = full_text[-1]
            if prev_line.endswith(('.', '!', '?', ':')): full_text.append(line)
            else: full_text[-1] = prev_line + " " + line
    return " ".join(full_text)

def clean_typst_content(text):
    text = re.sub(r'/\*[\s\S]*?\*/', ' ', text)
    text = re.sub(r'//.*', ' ', text)
    text = re.sub(r'\$[^\$]*\$', ' ', text)
    lines = text.split('\n')
    cleaned_lines = []
    for line in lines:
        stripped = line.strip()
        if stripped.startswith(('#', 'show:', 'set ', 'let ', 'columns:', 'align:', 'inset:', 'fill:', 'stroke:', 'table')): continue
        line = re.sub(r'#[a-zA-Z0-9_.]+', ' ', line) 
        line = re.sub(r'<[^>]+>', ' ', line)
        line = re.sub(r'@[a-zA-Z0-9_-]+', ' ', line)
        line = re.sub(r'https?://\S+', ' link ', line)
        line = line.replace(',', ' ')
        cleaned_lines.append(line)
    text = '\n'.join(cleaned_lines)
    return re.sub(r'[(){}\[\]=*_`"\\]', ' ', text)

def get_gulpease_index(text, source_type="PDF"):
    if not text: return 0
    if source_type == "TYP": text = clean_typst_content(text)
    text = clean_and_normalize_text(text)
    sentences = len(re.findall(r'[.!?;:]+', text))
    if sentences == 0: sentences = 1
    words_list = re.findall(r'\w+', text)
    words = len([w for w in words_list if len(w) < 30])
    letters = len(re.findall(r'[a-zA-Z0-9àèìòùáéíóú]', text))
    if words == 0: return 0
    gulpease = 89 + ((300 * sentences) - (10 * letters)) / words
    return max(0, min(100, gulpease))

def interpret_score(score):
    if score < 40: return "Molto difficile"
    if score < 60: return "Difficile"
    if score < 80: return "Medio"
    if score < 95: return "Facile"
    return "Molto Facile"

def write_typst_list(data_dict, output_path):
    """Genera il file lista_gulpease.typ con nomi tra parentesi quadre"""
    content = "#let listaGulpease = (\n"
    # Ordine specifico richiesto
    mapping = [
        ("Analisi dei Requisiti", "Analisi dei Requisiti"), 
        ("Norme di Progetto", "Norme di Progetto"), 
        ("Piano di Progetto", "Piano di Progetto"), 
        ("Piano di Qualifica", "Piano di Qualifica")
    ]
    
    for key, label in mapping:
        val = data_dict.get(key, "N/D")
        # Aggiungiamo le parentesi quadre intorno alla chiave (label)
        
        content += f"  ([{label}], \"{val}\"),\n"
    
    content += ")"
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(content)
    print(f"\n[INFO] File Typst aggiornato con Content format []: {output_path}")

def analyze_directory(base_path, project_root, rtb_data):
    rel_path = os.path.relpath(base_path, project_root)
    is_rtb_dir = "RTB" in rel_path
    
    print(f"\n{'='*80}")
    print(f" CARTELLA: {rel_path}")
    print(f"{'='*80}")
    print(f"{'FILE':<50} | {'TIPO':<4} | {'VAL':<3} | {'VALUTAZIONE'}")
    print("-" * 80)

    dir_scores = []
    exclude_dirs = ['templates', 'asset', '.git', 'scripts', 'img', '.github', '.gitignore', 'website']

    for root, dirs, files in os.walk(base_path):
        dirs[:] = [d for d in dirs if d not in exclude_dirs]
        pdf_basenames = {os.path.splitext(f)[0] for f in files if f.lower().endswith('.pdf')}

        for file in files:
            file_path = os.path.join(root, file)
            filename_no_ext, ext = os.path.splitext(file)
            ext = ext.lower()
            fname_lower = file.lower()
            
            content = ""
            file_type = ""
            should_analyze = False

            if ext == '.pdf':
                should_analyze = True
                file_type = "PDF"
                try:
                    reader = PdfReader(file_path)
                    for page in reader.pages:
                        extracted = page.extract_text()
                        if extracted: content += extracted + "\n"
                except Exception as e: print(f"Errore PDF {file}: {e}")

            elif ext == '.typ' and filename_no_ext not in pdf_basenames:
                should_analyze = True
                file_type = "TYP"
                try:
                    with open(file_path, 'r', encoding='utf-8') as f: content = f.read()
                except Exception as e: print(f"Errore TYP {file}: {e}")

            if should_analyze and content:
                score = get_gulpease_index(content, file_type)
                valore_arrotondato = int(score)
                dir_scores.append(score)
                
                # Logica di intercettazione per RTB
                is_special = False
                if is_rtb_dir:
                    if "requisiti" in fname_lower: 
                        rtb_data["Analisi dei Requisiti"] = valore_arrotondato
                        is_special = True
                    elif "qualifica" in fname_lower: 
                        rtb_data["Piano di Qualifica"] = valore_arrotondato
                        is_special = True
                    elif "norme" in fname_lower:
                        rtb_data["Norme di Progetto"] = valore_arrotondato
                        is_special = True
                    elif "progetto" in fname_lower:
                        rtb_data["Piano di Progetto"] = valore_arrotondato
                        is_special = True

                if not is_special:
                    rel_file_path = os.path.relpath(file_path, start=base_path)
                    display = (rel_file_path[:47] + '..') if len(rel_file_path) > 47 else rel_file_path
                    print(f"{display:<50} | {file_type:<4} | {valore_arrotondato:<3} | {interpret_score(score)}")
                else:
                    print(f"{file:<50} | {file_type:<4} | {valore_arrotondato:<3} | [SCRITTO SU FILE]")

    return dir_scores

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    
    targets = [
        os.path.join(project_root, "docs", "CC"),
        os.path.join(project_root, "docs", "RTB")
    ]
    
    rtb_data = {} # Qui salviamo AdR, NdP, PdP, PdQ
    all_scores = []

    for target in targets:
        if os.path.exists(target):
            all_scores.extend(analyze_directory(target, project_root, rtb_data))
        else:
            print(f"\n[!] Cartella mancante: {target}")

    # Scrittura del file Typst se abbiamo dati RTB
    if rtb_data:
        output_file = os.path.join(script_dir, "lista_gulpease.typ")
        write_typst_list(rtb_data, output_file)

    if all_scores:
        avg = sum(all_scores) / len(all_scores)
        print("\n" + "#"*80)
        print(f" MEDIA TOTALE: {int(avg)}/100  ->  {interpret_score(avg)}")
        print("#"*80 + "\n")

if __name__ == "__main__":
    main()