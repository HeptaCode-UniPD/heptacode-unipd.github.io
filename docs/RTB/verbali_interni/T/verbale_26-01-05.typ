// giorno in formato AAAA-MM-GG
#let giorno = "2026-01-05"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-01-12"

// ordine del giorno
#let odg = "Sprint Retrospective, proposte di tecnologie alternative e assegnazione di compiti futuri"


// versione , giorno, autore, verificatore, descrizione
// ("     " , "    ", "    ", "          ", "          ")
// esempio
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2026-01-05", "Riccardo Baldin", "", "Stesura del verbale")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Analista",   "Presente", //Angela Favaro
    "Amministratore",   "Presente", //Angela Canazza
    "Responsabile",   "Presente", //Riccardo Baldin
    "Progettista",   "Presente", //Alberto Reginato
    "Progettista",   "Presente", //Amerigo Vegliante
    "Verificatore",   "Presente", //Nicola Simionato
    "Progettista",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "11:00"

// ora di fine dell'incontro
#let fine = "12:15"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Stato di salute di tutti i documenti.
- Proposta di utilizzo di GitHub Apps.
- Inizio del PoC.
- Pianificazione attività per la settimana corrente

= Svolgimento
== Stato di salute di tutti i documenti
- Il documento "Analisi dei Requisiti" contiene ora quelli che il gruppo ritiene essere la totalità degli Use Case del progetto.
- Il documento "Norme di Progetto" è quasi ultimato.
- Il documento "Piano di Qualifica" risulta non al passo con gli altri documenti, richiede un maggiore lavoro durante questa settimana.
- Il documento "Piano di Progetto" procede regolarmente al passo con gli incontri e le decisioni del gruppo.

== Proposta di utilizzo di GitHub Apps
È stata proposta l'adozione delle GitHub Apps come modello di integrazione. Rispetto ai classici token personali, questa soluzione offre una gestione dei permessi più granulare e sicura. Inoltre, migliora significativamente l'esperienza dell'utente, eliminando la necessità di inserire manualmente un Personal Access Token per ogni repository privato e centralizzando l'autorizzazione a livello di organizzazione.
Si è inoltre valutato l'impiego di GitHub Octokit, la libreria ufficiale di GitHub che, grazie alla sua perfetta integrazione con il framework Nest.js scelto per lo sviluppo del backend, permette una gestione tipizzata e modulare delle chiamate alle API, accelerando i tempi di sviluppo e garantendo un'interazione robusta con le funzionalità della GitHub App.

== Inizio del PoC
Il gruppo ritiene di avere correttamente identificato le tecnologie adeguate al fine di produrre un prodotto coerente con quanto accordato con l'azienda proponente.
Ricapitolando:
- *Database:*  MongoDB, scelto per la flessibilità nel gestire report di analisi eterogenei e per le sue capacità di ricerca vettoriale.
- *Backend & Agenti AI:* Nest.js (TypeScript). Si è deciso di utilizzare un'unica tecnologia per l'intero ecosistema logico, inclusi gli agenti. Questo permetterà una maggiore coerenza del codice, una manutenzione semplificata e un'integrazione fluida tra l'orchestrazione delle API e la logica degli agenti.
- *Frontend:* React.js.
- *Infrastruttura:* AWS (Amazon Web Services), che ospiterà l'intero ecosistema garantendo scalabilità e sicurezza dei dati.

== Pianificazione attività per la settimana corrente
- *Analisti:* effettueranno una revisione sistematica degli Use Case prodotti finora per garantirne la coerenza interna e l'allineamento con il nuovo modello di integrazione tramite GitHub Apps. Successivamente, si procederà al completamento dei diagrammi UML mancanti e alla definizione di eventuali nuovi casi d'uso derivanti dalle scelte tecnologiche effettuate.
- *Progettisti:* si occuperanno, anche tramite un incontro in presenza, di definire l'architettura del PoC (Proof of Concept). L'obiettivo è validare le scelte tecnologiche e dimostrare l'integrazione e la coesione tra i diversi componenti del sistema.
- *Responsabile:* provvederà all'inserimento dei diagrammi PERT all'interno del "Piano di Progetto" (PdP), effettuando contestualmente una revisione complessiva del documento.
- *Amministratori:* completeranno la stesura delle "Norme di Progetto" (NdP) e ne eseguiranno una revisione integrale.
- *Programmatori:* inizieranno lo sviluppo della struttura logica del PoC, seguendo le direttive fornite dai progettisti.
- *Verificatori:* si occuperanno del completamento e della revisione del "Piano di Qualifica" (PdQ), assicurando la conformità di quanto prodotto finora.

= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe:
- portate a termine le seguenti attività:
  - Avanzamento documentale: completamento e revisione sistematica di tutta la documentazione di progetto prodotta finora.
  - Sviluppo tecnico: esecuzione delle fasi di progettazione e programmazione del PoC.

Il prossimo incontro è fissato per il giorno #next-meeting
]

#let decisione-azione = ((
  "allineare il PdQ agli altri documenti di progetto", "assegnazione di una revisione prioritaria ai Verificatori",
  "validare le scelte tecnologiche", "avvio della progettazione e sviluppo del PoC",
  "semplificare la gestione dei permessi repository", "adozione del modello GitHub Apps",
  "ottimizzare l'interazione con le API di GitHub", "utilizzo della libreria Octokit integrata in Nest.js"
)
)
