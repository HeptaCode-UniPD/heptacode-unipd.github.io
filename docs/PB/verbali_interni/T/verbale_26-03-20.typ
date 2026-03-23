// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-20"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-03-21"

// ordine del giorno 
#let odg = "Modifiche da effettuare in seguito al colloquio col professor Cardin"

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "Progettista",   "Presente", //Angela Favaro
    "Verificatore",   "Presente", //Angela Canazza
    "Progettista",   "Presente", //Riccardo Baldin
    "Progettista",   "Presente", //Alberto Reginato
    "Progettista",   "Presente", //Amerigo Vegliante
    "Amministratore",   "Presente", //Nicola Simionato
    "Responsabile",   "Presente" //Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "9:00"
#let fine = "9:30"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Cambiamenti da effettuare alla progettazione in seguito al colloquio col professor Cardin

= Svolgimento
== Cambiamenti da effettuare alla progettazione in seguito al colloquio col professor Cardin
Il gruppo ha discusso del feedback fornito dal professor Cardin e su come modificare la progettazione per sistemare i problemi da lui indicati. Dopo aver valutato velocemente le alternative, si è deciso che metà team avrebbe approfondito le modifiche da fare per rendere l'architettura a microservizi, mentre l'altra metà avrebbe fatto ricerca su come mantenere l'architettura a monolite ma risolvendo i problemi indicati dal professor Cardin. Il gruppo si è dato appuntamento per il giorno seguente per confrontarsi su quello che aveva scoperto e decidere quale strada intraprendere. 

= Conclusione
Il gruppo ha stabilito che nel corso della giornata avrebbe: 
- fatto ricerca sulle modifiche da effettuare alla progettazione per risolvere i problemi indicati dal professor Cardin, valutando sia la strada dell'architettura a microservizi che quella dell'architettura a monolite.

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("Cambiare la struttura architetturale", "Documentarsi sulle alternative possibili", "",
  "Apportare le modifiche suggerite dal professore Cardin alla progettazione del frontend", "Modificare il diagramma delle classi del frontend", "#155",
)
)