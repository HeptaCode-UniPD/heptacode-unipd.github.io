// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-12"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-03-17"

// ordine del giorno 
#let odg = "Progettazione e cambiamenti da effettuare alla documentazione"

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
    "Progettista",   "Assente", //Amerigo Vegliante
    "Amministratore",   "Presente", //Nicola Simionato
    "Responsabile",   "Presente" //Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "11:00"
#let fine = "11:50"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Cambiamenti da effettuare alla progettazione
- Cambiamenti da effettuare alla documentazione alla luce del colloquio con il professore Vardanega
- Confronto col professore Cardin riguardo alla nuova struttura architetturale

= Svolgimento
== Cambiamenti da effettuare alla progettazione
Il gruppo ha approvato alcuni cambiamenti alla macrostruttura del progetto, che quindi è diventata la seguente:
#align(center,image("../../../asset/macrostruttura2.jpg"))
Si può notare che:
- sono stati aggiunti i moduli frontend
- l’Analysis Module è stato ri-nominato come Presentation Module in quanto gestisce tutta la logica di presentazione al frontend.
== Cambiamenti da effettuare alla luce del colloquio con il professore Vardanega
Il gruppo ha deciso di effettuare alcuni cambiamenti alla documentazione a seguito del colloquio con il professore Vardanega.
È stato deciso di:
- cambiare il template dei verbali, aggiungendo nelle tabelle decisione-azione una colonna per indicare l'issue corrispondente alla azione da fare
- cambiare il documento Piano di Progetto per renderlo più chiaro e più in linea con le indicazioni del professore Vardanega
- cambiare il Piano di Qualifica e le Norme di Progetto aggiungendo nuove metriche per monitorare il progetto, come suggerito dal professore

== Confronto col professore Cardin riguardo alla nuova struttura architetturale
È stato deciso di inviare un'ulteriore email al professore Cardin per chiedere se le modifiche apportate alla struttura architetturale sono accettabili o se bisogna cambiare qualcosa.
= Conclusione
Il gruppo ha stabilito che nel corso della giornata avrebbe: 
- effettuato le modifiche alla documentazione menzionate sopra
- mandato l'email al professore Cardin riguardo alla nuova struttura architetturale

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("Apportare le modifiche suggerite dal professore Vardanega ai verbali", "Aggiungere le issue legate alle azioni nei template dei verbali", "#145",
  "Apportare le modifiche suggerite dal professore Vardanega al Piano di Progetto", "Modificare il Piano di Progetto", "#146",
  "Aggiungere delle metriche al progetto come suggerito dal professore Vardanega", "Cercare le metriche più adeguate di cui tener conto ", "#150",)
)