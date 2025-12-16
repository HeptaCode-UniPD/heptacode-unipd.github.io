#!/bin/bash

set -e

DOCS_ROOT="./docs"
TEMP_FILE="tmp.typ"

# Funzione per generare il contenuto Typst di compilazione
generate_typ_content() {
    local template_name=$1
    local data_path=$2
    
    # I percorsi sono relativi al file temporaneo ($TEMP_FILE),
    # che verrà creato all'interno della cartella /T.
    
    cat << EOF
#import "../../../templates/$template_name": template
// Importa i dati (percorso relativo al file temporaneo)
#import "$data_path" as dati

#import "../../../templates/glossario_termini.typ": applica-glossario 
#show: applica-glossario  

#show: doc => template(doc,
    data: dati.giorno,
    ordine_del_giorno: dati.odg,
    lista_versioni: dati.modifiche,
    on-line: dati.distanza,
    new-luogo: dati.luogo, 
    ora_inizio: dati.inizio,
    ora_fine: dati.fine,
    ruoli-presenza: dati.lista-ruoli,
    testo: dati.corpo,
    lista_decisioni: dati.decisione-azione
)
EOF
}



# funzione per compilare le cartelle che gli si dice

process_directory() {
    local target_dir=$1
    local template_name=$2
    
    find "$target_dir/T" -maxdepth 1 -name "*.typ" -not -name "$TEMP_FILE" | while read DATA_FILE; do
        if [ -f "$DATA_FILE" ]; then
            
            # Estrai il percorso relativo del file di dati (solo il nome)
            FILENAME_WITH_EXT=$(basename "$DATA_FILE")
            FILENAME=$(basename "$DATA_FILE" .typ)

            OUTPUT_FILE="$target_dir/$FILENAME.pdf"
            
            # Il percorso dei dati è relativo al file temporaneo.
            DATA_RELATIVE_PATH="$FILENAME_WITH_EXT" # Usiamo il nome del file con estensione
            
            echo "Processing: $DATA_FILE (Template: $template_name)"
            
            # 1. Genera il file Typst temporaneo
            # Nota: Devi assicurarti che il file DATA_FILE esista prima di generare tmp.typ
            
            # *DEVI* usare un nome univoco per il file temporaneo PER OGNI compilazione 
            # in modo che il loop 'find' precedente non lo veda, ma per ora lo lasciamo così e risolviamo con il 'find -not -name'.
            
            generate_typ_content "$template_name" "$DATA_RELATIVE_PATH" > "$target_dir/T/$TEMP_FILE"

            # 2. Compila il file temporaneo. Uso --root docs.
            typst compile --root docs "$target_dir/T/$TEMP_FILE" "$OUTPUT_FILE"
            
            # 3. Pulisci
            rm "$target_dir/T/$TEMP_FILE"
            
            echo "Compiled to: $OUTPUT_FILE"
        fi
    done
}

## --- Esecuzione ---
echo "Inizio Compilazione dei Verbali Temaplatizzati..."

# 1. Processa RTB Esterni
process_directory "$DOCS_ROOT/RTB/verbali_esterni" "template-esterno.typ"

# 2. Processa RTB Interni
process_directory "$DOCS_ROOT/RTB/verbali_interni" "template-interno.typ"


echo "---------------- Compilazione completata ----------------"