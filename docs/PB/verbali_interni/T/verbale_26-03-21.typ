// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-21"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-03-24"

// ordine del giorno 
#let odg = "Progettazione e valutazione tecnologie"

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
#let inizio = "14:30"
#let fine = "15:15"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Tecnologie e architetture trovate durante la ricerca
- Scelta dei cambiamenti da effettuare alla progettazione

= Svolgimento
== Tecnologie e architetture trovate durante la ricerca
È stato discusso se cambiare l'architettura di deployment in microservizi mantenendo l'utilizzo di AWS EC2, se renderla a microservizi e utilizzare MongoDB Atlas, se renderlo un Serverless Lambda Monolith o se usare un'architettura ibrida (cioè di mantenere per il backend un monolite modulare con AWS Lambda). Si è optato per l'ultima soluzione. 
Inoltre, si è deciso di sostiture il servizio AWS EC2 con AWS Fargate. \
In caso questa soluzione non sia ritenuta corretta dal Professor Cardin, l'intenzione è quella di cambiare l'architettura di deployment e renderla a microservizi, adattando la progettazione di conseguenza.
= Conclusione
Il gruppo ha stabilito che il lunedì seguente avrebbe: 
- mandato al Professor Cardin un'email per chiedere la sua approvazione riguardo le nuove idee

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("Richiedere feedback su i cambiamenti della progettazione", "Mandare una mail al Professor Cardin", "",)
)
