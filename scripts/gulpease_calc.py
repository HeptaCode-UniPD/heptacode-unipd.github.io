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
    # Riconosce se una riga appartiene a una tabella basandosi su pattern comuni:
    # - Versioni (0.1.0)
    # - Date (2026-01-09)
    # - Separatori visivi (più di 3 spazi consecutivi -> estrazione PDF)
    # - Ruoli/Stati brevi (Presente, Assente, Amministratore)

    # 1. Cerca pattern versione (es. 1.0.0 o 0.1)
    if re.search(r'\b\d+\.\d+(\.\d+)?\b', line):
        return True
    
    # 2. Cerca date (es. 2026-01-09 o 2025/10/20)
    if re.search(r'\d{4}[-/]\d{2}[-/]\d{2}', line):
        return True

    # 3. Cerca "buchi" grandi (tipico delle colonne PDF: "Nome     Ruolo")
    if re.search(r'\s{3,}', line):
        return True
        
    # 4. Righe molto brevi che sembrano celle singole (es. "Presente", "Assente")
    if len(line) < 20 and re.search(r'\b(Presente|Assente|Redattore|Verificatore|Amministratore|Analista|Responsabile)\b', line, re.IGNORECASE):
        return True

    return False

def clean_and_normalize_text(text):
    
    # - Rimuove indice e footer.
    # - Se è una riga di tabella -> Aggiunge punto (1 riga = 1 frase).
    # - Se è testo normale -> Unisce le righe spezzate.
    
    if not text: return ""

    text = text.replace('\t', ' ').replace('\r', '')
    lines = text.split('\n')
    
    cleaned_lines = []
    
    # 1. pulizia base
    for line in lines:
        stripped = line.strip()
        if not stripped: continue
        
        # toglie l'Indice (con puntini spaziati o attaccati)
        if re.search(r'(?:\.[\s]*){3,}\s*\d+$', stripped): continue
        if stripped.lower() in ["indice", "indice:"]: continue
        
        # toglie numeri di pagina e intestazioni ripetute
        if re.match(r'^\s*\d+\s*$', stripped): continue
        if re.match(r'(?i)(hepta\s*code|verbale)', stripped) and len(stripped) < 50: continue

        cleaned_lines.append(stripped)

    #2. ricostruzione
    full_text = []
    
    for line in cleaned_lines:
        # elenchi puntati creano una nuova frase
        if re.match(r'^[-*•]', line):
            # Chiude blocco precedente
            if full_text and not full_text[-1].endswith(('.', '!', '?', ':')):
                full_text[-1] += "."
            # Aggiunge (con punto forzato)
            if not line.endswith(('.', '!', '?', ':')): line += "."
            full_text.append(line)
            continue

        # B. una riga di una tabella è una nuova frase
        if is_table_row(line):
            # Chiude blocco precedente
            if full_text and not full_text[-1].endswith(('.', '!', '?', ':')):
                full_text[-1] += "."
            # Aggiunge la riga come frase a sé stante (con punto forzato)
            if not line.endswith(('.', '!', '?', ':')): line += "."
            full_text.append(line)
            continue

        # C. i titoli sono una nuova frase
        if len(line.split()) < 10 and line[0].isupper() and not line.endswith(('.', '!', '?', ':', ';', ',')):
             if full_text and not full_text[-1].endswith(('.', '!', '?', ':')):
                full_text[-1] += "."
             line += "."
             full_text.append(line)
             continue

        # D. paragrafi normali
        if not full_text:
            full_text.append(line)
        else:
            prev_line = full_text[-1]
            if prev_line.endswith(('.', '!', '?', ':')):
                full_text.append(line)
            else:
                # Merge con spazio
                full_text[-1] = prev_line + " " + line

    return " ".join(full_text)

def clean_typst_content(text):
    """
    Pulisce Typst ma applica la stessa logica di normalizzazione
    dopo aver rimosso i simboli speciali.
    """
    text = re.sub(r'/\*[\s\S]*?\*/', ' ', text)
    text = re.sub(r'//.*', ' ', text)
    text = re.sub(r'\$[^\$]*\$', ' ', text) # toglie espressioni matematiche
    
    lines = text.split('\n')
    cleaned_lines = []
    
    for line in lines:
        stripped = line.strip()
        # Via comandi Typst
        if stripped.startswith(('#', 'show:', 'set ', 'let ', 'columns:', 'align:', 'inset:', 'fill:', 'stroke:', 'table')):
            continue
        
        # Pulizia inline
        line = re.sub(r'#[a-zA-Z0-9_.]+', ' ', line) 
        line = re.sub(r'<[^>]+>', ' ', line)
        line = re.sub(r'@[a-zA-Z0-9_-]+', ' ', line)
        line = re.sub(r'https?://\S+', ' link ', line)
        
        # Rimuove le virgole delle tabelle Typst per non confondere il conteggio
        line = line.replace(',', ' ')
        
        cleaned_lines.append(line)
    
    text = '\n'.join(cleaned_lines)
    text = re.sub(r'[(){}\[\]=*_`"\\]', ' ', text)
    
    return text

def get_gulpease_index(text, source_type="PDF"):
    if not text: return 0

    # 1. Pulisce se è Typst
    if source_type == "TYP":
        text = clean_typst_content(text)
    
    # 2. pulisce le tabelle
    text = clean_and_normalize_text(text)

    # 3. Calcolo
    sentences = len(re.findall(r'[.!?;:]+', text))
    if sentences == 0: sentences = 1
    
    words_list = re.findall(r'\w+', text)
    words = len([w for w in words_list if len(w) < 30])
    
    letters = len(re.findall(r'[a-zA-Z0-9àèìòùáéíóú]', text))
    
    if words == 0: return 0

    gulpease = 89 + ((300 * sentences) - (10 * letters)) / words
    
    if gulpease > 100: gulpease = 100
    if gulpease < 0: gulpease = 0
    
    return gulpease

def interpret_score(score):
    if score < 40: return "Molto difficile"
    if score < 60: return "Difficile"
    if score < 80: return "Medio"
    if score < 95: return "Facile"
    return "Molto Facile"

def analyze_directory(base_path, project_root):
    rel_path = os.path.relpath(base_path, project_root)
    print(f"\n{'='*80}")
    print(f" CARTELLA: {rel_path}")
    print(f"{'='*80}")
    print(f"{'FILE':<50} | {'TIPO':<4} | {'VAL':<3} | {'VALUTAZIONE'}")
    print("-" * 80)

    found_files = False
    dir_scores = []
    exclude_dirs = ['templates', 'asset', '.git', 'scripts', 'img']

    for root, dirs, files in os.walk(base_path):
        dirs[:] = [d for d in dirs if d not in exclude_dirs]
        
        pdf_basenames = {os.path.splitext(f)[0] for f in files if f.lower().endswith('.pdf')}

        for file in files:
            file_path = os.path.join(root, file)
            filename_no_ext, ext = os.path.splitext(file)
            ext = ext.lower()
            
            content = ""
            file_type = ""
            should_analyze = False

            # PDF
            if ext == '.pdf':
                should_analyze = True
                file_type = "PDF"
                try:
                    reader = PdfReader(file_path)
                    for page in reader.pages:
                        extracted = page.extract_text()
                        if extracted: content += extracted + "\n"
                except Exception as e:
                    print(f"Errore PDF {file}: {e}")

            # TYP (Fallback)
            elif ext == '.typ':
                if filename_no_ext in pdf_basenames:
                    should_analyze = False 
                else:
                    should_analyze = True
                    file_type = "TYP"
                    try:
                        with open(file_path, 'r', encoding='utf-8') as f:
                            content = f.read()
                    except Exception as e:
                        print(f"Errore TYP {file}: {e}")

            if should_analyze and content:
                found_files = True
                score = get_gulpease_index(content, file_type)
                dir_scores.append(score)
                
                rel_file_path = os.path.relpath(file_path, start=base_path)
                display = (rel_file_path[:47] + '..') if len(rel_file_path) > 47 else rel_file_path
                print(f"{display:<50} | {file_type:<4} | {int(score):<3} | {interpret_score(score)}")

    if not found_files:
        print("   (Nessun documento trovato)")
    
    return dir_scores

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    
    targets = [
        os.path.join(project_root, "docs", "CC"),
        os.path.join(project_root, "docs", "RTB")
    ]
    
    all_scores = []

    for target in targets:
        if os.path.exists(target):
            all_scores.extend(analyze_directory(target, project_root))
        else:
            print(f"\n[!] Cartella mancante: {target}")

    if all_scores:
        avg = sum(all_scores) / len(all_scores)
        print("\n" + "#"*80)
        print(f" MEDIA TOTALE: {int(avg)}/100  ->  {interpret_score(avg)}")
        print("#"*80 + "\n")

if __name__ == "__main__":
    main()