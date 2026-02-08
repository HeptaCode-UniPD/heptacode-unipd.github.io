// giorno in formato AAAA-MM-GG
#let giorno = "2026-01-13"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-01-26"

// ordine del giorno 
#let odg = "Organizzazione del lavoro durante la sessione di esami"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2026-02-07", "Nicola Simionato", "Angela Favaro", "Stesura del verbale")
  ("1.0.0", "2026-02-08", "Nicola Simionato", "Angela Favaro", "Correzione errori grammaticali")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Verificatore",   "Presente", //Angela Favaro
    "Programmatore",   "Presente", //Angela Canazza
    "Progettista",   "Presente", //Riccardo Baldin
    "Progettista",   "Presente", //Alberto Reginato
    "Analista",   "Presente", //Amerigo Vegliante
    "Responsabile",   "Presente", //Nicola Simionato
    "Amministratore",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "10:30"

// ora di fine dell'incontro
#let fine = "11:30"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Stato di avanzamento degli UC e dei requisiti.
- Scrittura diagrammi di attività.
- Ultimazione del Proof of Concept (PoC).

= Svolgimento
== Stato di avanzamento degli UC e dei requisiti
Il confronto con il Professor Cardin ci ha permesso di riconoscere delle problematiche all'interno dell'Analisi dei Requisiti (AdR).
In particolar modo la parte da revisionare è quella del ruolo del developer.
== Scrittura dei diagrammi di attività
Per capire come l'utente interagirà con il sistema e il flusso che seguirà all'interno della piattaforma abbiamo discusso della possibilità di descrivere tali comportamenti attraverso i diagrammi di attività, differenziandoli anche per i diversi ruoli del nostro sistema.
== Ultimazione del PoC
La riunione ha avuto come discussione finale quella di come finalizzare il PoC.
Il team ha visionato l'esecuzione del codice fino a quel momento e dopo una discussione col Professor Cardin si è deciso di dove utilizzare AWS per le richieste API al LLM.

= Conclusione
Il gruppo ha pianificato le seguenti attività da completare prima del prossimo sprint:
- Rivedere gli UC nell'Analisi dei Requisiti per poi stilare i requisiti.
- Scrivere i diagrammi di attività.
- Modifica del codice per l'utilizzo di AWS invece di API open-source.

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Revisione AdR","Riscrittura degli UC secondo le direttive del professore.",
  "Diagrammi di attività","Scrivere i diagrammi di attività per analizzare il flusso dell'utente all'interno del sistema",
  "Ultimazione PoC","Cambiare modalità di contatto delle API per il LLM.",
)
)