// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-25"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-03-30"

// ordine del giorno 
#let odg = "Fine progettazione e inizio implementazione"

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "Responsabile",   "Presente", //Angela Favaro
    "Programmatore",   "Presente", //Angela Canazza
    "Programmatore",   "Presente", //Riccardo Baldin
    "Amministratore",   "Presente", //Alberto Reginato
    "Programmatore",   "Presente", //Amerigo Vegliante
    "Programmatore",   "Presente", //Nicola Simionato
    "Verificatore",   "Presente" //Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "14:30"
#let fine = "16:00"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Ultimazione progettazione
- Altri task da svolgere in questo sprint

= Svolgimento
== Ultimazione progettazione
Il team ha concluso assieme la progettazione, revisionando il lavoro svolto dai membri negli ultimi giorni e apportando le correzioni necessarie. È stato quindi dato il via alla fase di implementazione e il team si è suddiviso i task relativi alla programmazione e verifica dei microservizi.

== Altri task da svolgere in questo sprint
È stato deciso che, oltre alla programmazione e verifica dei microservizi, il team avrebbe dovuto anche iniziare a scrivere la specifica tecnica e a decidere la struttura del manuale utente.


= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
- iniziato a implementare i microservizi
- iniziato a scrivere la specifica tecnica
- deciso la struttura del manuale utente

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione, Issue)
#let decisione-azione = (
  (" Iniziare la fase di implementazione", "Implementare i microservizi", "#160, #161, #162",
  "Lavorare sulla documentazione del PB", "Iniziare la stesura della specifica tecnica", "#163",  
  "Lavorare sulla documentazione del PB", "Iniziare la stesura del manuale utente", "#164")
)
