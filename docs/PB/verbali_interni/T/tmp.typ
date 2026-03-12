#import "../../../templates/template-interno.typ": template
#import "verbale_26-03-02.typ" as dati 
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
