// giorno in formato AAAA-MM-GG
#let giorno = "2026-04-10"

// data del prossimo incontro nello stesso formato
#let next-meeting = "non concordato"

// ordine del giorno 
#let odg = "Approvazione del MVP"

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto online
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è nella loro sede capolinea tram scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "Microsoft Teams"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
   "Presente", "Responsabile", // Angela Favaro
    "Presente", "Verificatore", // Angela Canazza
    "Presente", "Verificatore", // Riccardo Baldin
    "Presente", "Amministratore", // Alberto Reginato
    "Presente", "Verificatore", // Amerigo Vegliante
    "Presente", "Verificatore", // Nicola Simionato
    "Presente", "Verificatore"  // Laura Venturini
)

#let partecipanti-esterni = (
  "Francesco Battistella", "Referente Var Group",
  "Federico Pivetta", "Referente Var Group",
  "Michele Massaro", "Referente Var Group"
)

// ora di inzio dell'incontro
#let inizio = "14:30"

// ora di fine dell'incontro
#let fine = "15:00"


#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Presentazione MVP
- Risposta alle domande dell'azienda

= Svolgimento
== Presentazione MVP
Il team ha mostrato all'azienda _VarGroup_ il prodotto finale realizzato, le funzionalità implementate e la sua interfaccia finale. Inoltre, è stato spiegato ai referenti l'andamento del lavoro dell'ultimo mese e i motivi per alcune scelte effettuate.

== Risposta alle domande dell'azienda
L'azienda ha posto alcune domande al team, in particolare sul flusso di lavoro del progetto, sulla scalabilità del prodotto e sui ragionamenti fatti a riguardo. Dopo che i membri del team hanno risposto a queste domande, l'azienda ha approvato il Minimum Viable Product presentato.

= Conclusione
Il gruppo può proseguire con il colloquio con il professor Cardin in seguito all'approvazione del MVP da parte dell'azienda.
]


#let decisione-azione = (
  "-","-", "",
  
)
)