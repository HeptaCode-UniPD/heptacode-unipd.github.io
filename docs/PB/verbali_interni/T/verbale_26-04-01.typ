// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-04-01"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "conclusivo dell'integrazione"

// ordine del giorno 
#let odg = "Discussione problematiche riscontrate - pre consegna"

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "Responsabile", "Presente", // Angela Favaro
    "Verificatore", "Presente", // Angela Canazza
    "Programmatore", "Presente", // Riccardo Baldin
    "Amministratore", "Presente", // Alberto Reginato
    "Programmatore", "Presente", // Amerigo Vegliante
    "Verificatore", "Presente", // Nicola Simionato
    "Verificatore", "Presente"  // Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "14:30"
#let fine = "15:00"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Problematiche riscontrate durante le integrazioni
- Conclusione documenti
- Consegna del progetto

= Svolgimento
== Problematiche riscontrate durante le integrazioni
Il gruppo, a seguito della riunione precedente, ha riscontrato dei consistenti problemi nell'integrazione tra i microservizi. Ha dovuto, di conseguenza, posticipare la consegna del progetto. \ Ancora sono da risolvere diverse problematiche nella comunicazione tra MS2 e MS1; nei prossimi giorni verificatori e programmatori si concentreranno nel risolvere i problemi.
== Conclusione documenti
La documentazione è nella fase finale, di revisione. Dato il rallentamento dovuto all'integrazione il gruppo ha posticipato la conclusione di documenti come PdP e PdQ e ST (che richiedono la consegna del progetto per essere rilasciate). Al momento risulta conclusa AdR. NdP e Glossario sono invece solo da rilasciare.
== Consegna del progetto
Il gruppo prende atto del fatto che non riuscirà a consegnare il progetto come preventivato nell'ultima riunione (1 aprile). Di conseguenza, data anche la prossimità alle vacanze pasquali, la consegna è spostata alla settimana successiva alla Pasqua. Non viene esplicitamente dichiarata una data, certamente il prima possibile.


= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
- Risolto i problemi di integrazione.
- Proceduto con il rilascio di alcuni documenti.
- Posticipato la data di incontro con l'azienda per la visione dell'MVP.

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("Risolvere le problematiche di integrazione", "Un gruppo tra verificatori e programmatori si impegna a trovarsi durante la settimana per trovare soluzioni", "No ID",
  "Concludere i documenti", "Responsabile, Amministratore e Verificatori concluderanno i documenti che possono essere redatti (NdP, AdR, Glossario); procedono, nei limiti imposti con PdP, PdQ e ST.", "No ID",
  "Posticipare incontro azienda", "Contattare azienda per esporre la problematica", "No ID")
)