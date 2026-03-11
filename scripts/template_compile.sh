#!/bin/bash
set -e
DOCS_ROOT="./docs"
TEMP_FILE="tmp.typ"
# Funzione per generare il contenuto Typst di compilazione
generate_typ_content() {
    local template_name=$1
    local data_path=$2
    case $template_name in
        "verbale_interno.typ")
            cat << EOF
#import "../../../templates/verbale_interno.typ": template
#import "$data_path" as dati
#import "../../../templates/glossario_termini.typ": applica-glossario
#show: doc => template(doc,
    data: dati.giorno,
    ordine_del_giorno: dati.odg,
    lista_versioni: dati.modifiche,
    on-line: dati.distanza,
    new-luogo: dati.luogo,
    ora_inizio: dati.inizio,
    ora_fine: dati.fine,
    ruoli-presenza: dati.lista-ruoli,
    testo: applica-glossario(dati.corpo),
    lista_decisioni: dati.decisione-azione
)
EOF
            ;;
        "verbale_internoPB.typ")
            cat << EOF
#import "../../../templates/verbale_internoPB.typ": template
#import "$data_path" as dati
#import "../../../templates/glossario_termini.typ": applica-glossario
#show: doc => template(doc,
    dataPB: dati.giorno,
    ordine_del_giornoPB: dati.odg,
    on-linePB: dati.distanza,
    new-luogoPB: dati.luogo,
    ora_inizioPB: dati.inizio,
    ora_finePB: dati.fine,
    ruoli-presenzaPB: dati.lista-ruoli,
    testoPB: applica-glossario(dati.corpo),
    lista_decisioniPB: dati.decisione-azione
)
EOF
            ;;
        "verbale_esterno.typ")
            cat << EOF
#import "../../../templates/verbale_esterno.typ": template
#import "$data_path" as dati
#import "../../../templates/glossario_termini.typ": applica-glossario
#show: doc => template(doc,
    data: dati.giorno,
    ordine_del_giorno: dati.odg,
    lista_versioni: dati.modifiche,
    on-line: dati.distanza,
    new-luogo: dati.luogo,
    ora_inizio: dati.inizio,
    ora_fine: dati.fine,
    ruoli-presenza: dati.lista-ruoli,
    partecipanti-esterni: dati.partecipanti-esterni,
    testo: applica-glossario(dati.corpo),
    lista_decisioni: dati.decisione-azione
)
EOF
            ;;
        "verbale_esternoPB.typ")
            cat << EOF
#import "../../../templates/verbale_esternoPB.typ": template
#import "$data_path" as dati
#import "../../../templates/glossario_termini.typ": applica-glossario
#show: doc => template(doc,
    dataPB: dati.giorno,
    ordine_del_giornoPB: dati.odg,
    on-linePB: dati.distanza,
    new-luogoPB: dati.luogo,
    ora_inizioPB: dati.inizio,
    ora_finePB: dati.fine,
    ruoli-presenzaPB: dati.lista-ruoli,
    partecipanti-esterniPB: dati.partecipanti-esterni,
    testoPB: applica-glossario(dati.corpo),
    lista_decisioniPB: dati.decisione-azione
)
EOF
            ;;
    esac
}
# Funzione per compilare le cartelle che gli si dice
process_directory() {
    local target_dir=$1
    local template_name=$2
    
    find "$target_dir/T" -maxdepth 1 -name "*.typ" -not -name "$TEMP_FILE" | while read DATA_FILE; do
        if [ -f "$DATA_FILE" ]; then
            
            FILENAME_WITH_EXT=$(basename "$DATA_FILE")
            FILENAME=$(basename "$DATA_FILE" .typ)
            OUTPUT_FILE="$target_dir/$FILENAME.pdf"
            DATA_RELATIVE_PATH="$FILENAME_WITH_EXT"
            
            echo "Processing: $DATA_FILE (Template: $template_name)"
            
            generate_typ_content "$template_name" "$DATA_RELATIVE_PATH" > "$target_dir/T/$TEMP_FILE"
            typst compile --root docs "$target_dir/T/$TEMP_FILE" "$OUTPUT_FILE"
            rm "$target_dir/T/$TEMP_FILE"
            
            echo "Compiled to: $OUTPUT_FILE"
        fi
    done
}
## --- Esecuzione ---
echo "Inizio Compilazione dei Verbali Templatezzati..."
# 1. Processa RTB Interni (vecchi)
process_directory "$DOCS_ROOT/RTB/verbali_interni" "verbale_interno.typ"
# 2. Processa RTB Esterni (vecchi)
process_directory "$DOCS_ROOT/RTB/verbali_esterni" "verbale_esterno.typ"
# 3. Processa PB Interni (nuovi)
process_directory "$DOCS_ROOT/PB/verbali_interni" "verbale_internoPB.typ"
# 4. Processa PB Esterni (nuovi)
process_directory "$DOCS_ROOT/PB/verbali_esterni" "verbale_esternoPB.typ"
echo "---------------- Compilazione completata ----------------"