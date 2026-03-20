// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-17"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-03-19"

// ordine del giorno 
#let odg = "Discussioni sulla progettazione"

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "Programmatore",   "Presente", //Angela Favaro
    "Responsabile",   "Presente", //Angela Canazza
    "Programmatore",   "Presente", //Riccardo Baldin
    "Amministratore",   "Presente", //Alberto Reginato
    "Programmatore",   "Presente", //Amerigo Vegliante
    "Verificatore",   "Presente", //Nicola Simionato
    "Progettista",   "Presente" //Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "15:30"
#let fine = "16:30"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Nuove metriche da aggiungere al Piano di Qualifica e alle Norme di Progetto
- Diagrammi delle classi dei moduli
- Altri cambiamenti da effettuare


= Svolgimento
== Nuove metriche da aggiungere al Piano di Qualifica e alle Norme di Progetto
Sono state approvate le seguenti metriche fra quelle proposte dal team:
- Task Completition Rate: indice che rappresenta la percentuale di task completati rispetto a quelli totali.
- Time Efficiency: indice che rappresenta il rapporto fra le ore dedicate ad attività produttive e le ore totali, dedicate anche alle attività di "palestra".
- Percentuale di metriche soddisfatte
- Numero rischi non previsti
== Diagrammi delle classi dei moduli
I membri del gruppo hanno analizzato assieme i diagrammi delle classi dei moduli per valutarne correttezza e adeguatezza. In particolare, sono stati discussi GitHub module, Presentation Module e User Module. Al team sono sembrati corretti, ma si è deciso di creare un diagramma di sequenza per schiarirsi le idee e di confrontarsi con il professor Cardin per chiedere il suo parere.

== Altri cambiamenti da effettuare
È stato concordato che il frontend deve venire cambiato perché la pagina di dettagli-repository deve comprendere anche una sezione che spiega in generale la motivazione dietro ai cambiamenti suggeriti dalla remedation.
Inoltre, è stato deciso che l'ultimo commit prima di un'analisi va salvato su MongoDB, in modo da non effettuare l'analisi su un commit in cui è già stata effettuata.

= Conclusione
Il gruppo ha stabilito che nel corso della giornata avrebbe: 
- effettuato le modifiche alla documentazione menzionate sopra
- mandato l'email al professore Cardin riguardo alla nuova struttura architetturale
- modificato il frontend aggiungendo la feature soprammenzionata

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("Decise le metriche da aggiungere ai documenti", "Modificare i documenti Piano di Qualifica e Norme di Progetto aggiungendo le metriche scelte", "#151, #152",
  "Confermare l'adeguatezza dei diagrammi di classe", "Chiedere una riunione a Cardin e modellare un diagramma di sequenza", "#148",
  "Modificare una pagina del frontend", "Cambiare il codice del frontend per aggiungere la sezione che spiega i motivi del cambiamento proposto", "#153",)
)