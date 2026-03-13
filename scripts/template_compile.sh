#!/bin/bash

set -e

DOCS_ROOT="./docs"
TEMP_FILE="tmp.typ"

# Funzione per generare il contenuto Typst di compilazione
generate_typ_content() {
    local template_name=$1
    local data_path=$2
    
    cat << EOF
#import "../../../templates/$template_name": template
#import "$data_path" as dati 
#import "../../../templates/glossario_termini.typ": applica-glossario

#show: doc => template(doc,
    data: dati.giorno,
    ordine_del_giorno: dati.odg,
    on-line: dati.distanza,
    new-luogo: dati.luogo, 
    ora_inizio: dati.inizio,
    ora_fine: dati.fine,
    ruoli-presenza: dati.lista-ruoli,
    testo: applica-glossario(dati.corpo),
    lista_decisioni: dati.decisione-azione
)
EOF
}

process_directory() {
    local target_dir=$1
    local template_name=$2
    
    if [ ! -d "$target_dir/T" ]; then
        echo "Warning: Directory $target_dir/T not found. Skipping."
        return
    fi

    find "$target_dir/T" -maxdepth 1 -name "*.typ" -not -name "$TEMP_FILE" | while read DATA_FILE; do
        if [ -f "$DATA_FILE" ]; then
            FILENAME_WITH_EXT=$(basename "$DATA_FILE")
            FILENAME=$(basename "$DATA_FILE" .typ)

            OUTPUT_FILE="$target_dir/$FILENAME.pdf"
            
            # Il percorso dei dati è relativo al file temporaneo.
            DATA_RELATIVE_PATH="$FILENAME_WITH_EXT" # Usiamo il nome del file con estensione
            
            echo "Processing: $DATA_FILE (Template: $template_name)"
            generate_typ_content "$template_name" "$DATA_RELATIVE_PATH" > "$target_dir/T/$TEMP_FILE"

            # 2. Compila il file temporaneo. Uso --root docs.
            typst compile --root docs "$target_dir/T/$TEMP_FILE" "$OUTPUT_FILE"
            
            # 3. Pulisci
            rm "$target_dir/T/$TEMP_FILE"
            
            echo "Compiled to: $OUTPUT_FILE"
        fi
    done
}

echo "Inizio Compilazione dei Verbali Temaplatizzati (Cartella PB)..."

# 1. Processa PB Esterni
process_directory "$DOCS_ROOT/PB/verbali_esterni" "template-esterno.typ"

# 2. Processa PB Interni
process_directory "$DOCS_ROOT/PB/verbali_interni" "template-interno.typ"

echo "---------------- Compilazione completata ----------------"