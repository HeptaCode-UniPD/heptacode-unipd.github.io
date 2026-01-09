// giorno in formato AAAA-MM-GG
#let giorno = "2026-01-08"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-01-13"

// ordine del giorno 
#let odg = "Discussione sulla preparazione del PoC"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2026-01-08", "Angela Canazza", "Nicola Simionato", "Stesura del verbale")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = false


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Progettista",   "Presente", //Angela Favaro
    "Amministratore",   "Presente", //Angela Canazza
    "",   "Assente", //Riccardo Baldin
    "Progettista",   "Presente", //Alberto Reginato
    "Progettista",   "Presente", //Amerigo Vegliante
    "Progettista",   "Presente", //Nicola Simionato
    "Progettista",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "14:30"

// ora di fine dell'incontro
#let fine = "17:30"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Stato di avanzamento e finalizzazione della documentazione per la Revisione dei Requisiti (RTB).
- Valutazione tecnica: utilizzo di Personal Access Token (PAT) vs GitHub Apps.
- Definizione dell'architettura e delle funzionalità del Proof of Concept (PoC).

= Svolgimento
== Finalizzazione documenti per l'RTB
Dall'analisi dello stato attuale della documentazione, è emerso durante la riunione precedente, che il Piano di Qualifica (PdQ) risulta essere il documento più arretrato. Di conseguenza, è stato stabilito che nei prossimi giorni verrà assegnata massima priorità al suo completamento. In particolare, l'attività si concentrerà sull'integrazione e l'allineamento dei contenuti con il Capitolo 6 - Metriche di qualifica delle Norme di Progetto (NdP).
== Decisione sull'autenticazione: Token vs GitHub Apps
È stata effettuata un'analisi comparativa tra l'utilizzo dei *Personal Access Token* e le *GitHub Apps*. Sebbene le GitHub Apps offrano una migliore esperienza utente e un livello di integrazione superiore, il gruppo ha deciso all'unanimità di mantenere l'utilizzo dei Token. Tale decisione è motivata da vincoli temporali: il passaggio alle GitHub Apps richiederebbe una revisione dei Casi d'Uso (UC) e un carico implementativo aggiuntivo incompatibile con le scadenze fissate per la consegna del materiale RTB.
== Progettazione del PoC
La riunione si è focalizzata sulla definizione delle specifiche funzionali e architetturali per il Proof of Concept del progetto _CodeGuardian_.
=== Frontend
L'architettura frontend sarà basata su *React* e seguirà, l'interfaccia utente prevederà due sezioni principali:
+ Storico: visualizzazione delle analisi e delle risposte precedentemente fornite dall'IA.
+ Analisi: modulo per l'inserimento del link alla repository, corredato da un pulsante di azione ("Analizza") o simili.
=== Backend
L'architettura backend sarà basata su *Node.js* e seguirà il seguente flusso logico:

+ Ricezione del link della repository dal frontend.
+ Interfacciamento con *GitIngest* (tramite script Python o API) per estrapolare il codice sorgente e concatenarlo in un unico testo/documento.
+ Invio del contesto estratto alle API del Large Language Model (OpenAI o AWS). \ _Nota: Il prompt di sistema sarà gestito internamente dal backend e sarà invisibile all'utente finale_.
+Ricezione dell'output dall'LLM e salvataggio dei risultati su database *MongoDB*. \ _Nota tecnica: Su MongoDB verrà salvato il link alla repository e l'output dell'analisi, ma non il testo grezzo estratto, per ottimizzare lo spazio._
=== Infrastruttura e Costi
- L'ambiente di esecuzione per il PoC sarà containerizzato tramite Docker.
- È stato notato che la dimensione dei file generati da GitIngest influirà direttamente sul consumo di token.
- Valutazione Cloud: Nei prossimi giorni verrà presa una decisione definitiva sulla piattaforma da utilizzare (AWS o alternative OpenAI) per ottimizzare i costi a carico dell'azienda proponente.

= Conclusione
Il gruppo ha pianificato le seguenti attività da completare prima del prossimo sprint:
- Continuare e finalizzare la stesura del Piano di Qualifica (PdQ).
- Concludere la stesura dei Casi d'Uso (UC) confermando l'utilizzo del Token come metodo di autenticazione.
- Avviare l'implementazione del codice per il PoC secondo le specifiche definite.

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Finalizzazione documenti RTB","Continuare la stesura prioritaria di PdQ e Analisi dei Requisiti (AdR).",
  "Avvio sviluppo PoC","Inizio della stesura del codice basato sull'architettura Node.js/Docker definita in riunione.",
)
)