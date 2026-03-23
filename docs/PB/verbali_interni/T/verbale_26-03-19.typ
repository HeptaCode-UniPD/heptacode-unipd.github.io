// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-19"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-03-20"

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
#let inizio = "11:00"
#let fine = "12:05"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Proposte per la progettazione
- Cambiamento delle modalità di analisi
- Preparazione al ricevimento con il professor Cardin


= Svolgimento
== Proposte per la progettazione
- È stata approvata la proposta di utilizzare AWS Step Functions per il workflow.
- È stato dibattuto se mantenere l'orchestratore oppure utilizzare solo un aggregatore, ma alla fine si è deciso di mantenere l'orchestratore. Si è deciso comunque di mantenere l'aggrefatore come tool dell'orchestratore.
- Il diagramma di sequenza è stato modificato.

== Cambiamento delle modalità di analisi
È stato deciso che all'avvio di un'analisi:
- l'analisi del codice venga avviata ogni qual volta parta un'analisi (a meno che non sia già stata effettuata un'analisi su quel commit).
- l'analisi della documentazione avvenga quando viene avviata un analisi cliccando il pulsante "Inizia analisi" nella pagina della repository, ma solo in presenza di un tag release.
- l'analisi OWASP avvenga cliccando un apposito pulsante "Analisi OWASP" nella pagina della repository. \  
Bisogna quindi implementare alcune modifiche al frontend.

== Preparazione al ricevimento con il professor Cardin
Il gruppo ha preparato le domande riguardo la progettazione da porre al professor Cardin durante il ricevimento e ha deciso chi si sarebbe occupato di porle.

= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
- effettuato le modifiche al frontend menzionate sopra
- valutato il da farsi in seguito al colloquio col professore Cardin.

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("Cambiamento delle modalità d'analisi", "Implementare le modifiche in frontend", "#154")
)