// giorno in formato AAAA-MM-GG
#let giorno = "2026-01-14"


// data del prossimo incontro nello stesso formato
#let next-meeting = "2025-11-21"

// ordine del giorno 
#let odg = "Delucidazione diagrammi dei casi d'uso"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  "2.0.0", "2025-02-14", "Nicola Simionato", "Angela Favaro", "Adattamento modifiche template",
  "1.0.0", "2025-02-14", "Nicola Simionato", "Angela Favaro", "Stesura documento"
)

// switchare in 'true' SSE l’incontro si è tenuto online
#let distanza = true


//NB: se non è alla sede VarGroup di Via Salboro scrivere il nuovo luogo comprendendo l’articolo
// se fatto in modalità telematica scrivere solo la piattaforma utilizzata
#let luogo = "Microsoft Teams"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Analista",   "Presente", //Angela Favaro
    "Analista",   "Presente", //Angela Canazza
    "Analista",   "Presente", //Riccardo Baldin
    "Analista",   "Presente", //Alberto Reginato
    "Analista",   "Presente", //Amerigo Vegliante
    "Responsabile",   "Presente", //Nicola Simionato
    "Amministratore",   "Presente" //Laura Venturini
)

// ora di inzio dell’incontro
#let inizio = "14:30"

// ora di fine dell’incontro
#let fine = "15:30"

// nome e ruolo abbastanza intuitivo
//esempio: "Stefano Dindo", "Rappresentante VarGroup"
#let partecipanti-esterni = (
  ("Federico Pivetta", "Rappresentante VarGroup"),
  ("Francesco Battistella", "Rappresentante VarGroup")
)

#let corpo = [= Argomenti trattati
Gli argomenti discussi nell’incontro sono stati:
- Gestione dei ruoli all’interno del sistema.
- Gestione delle repository private.
- Condivisione dell’idea sul PoC.


= Svolgimento

== Gestione dei ruoli developer, project manager e business owner

l’argomento principale è stato quello riguardante i 3 ruoli individuati duranti lo scorso incontro con l’azienda. Le domande sono state accompagnate dalla condivisione dei casi d'uso scritti fino a quel momento.
Inizialmente il team aveva strutturato la gestione del ruolo in modo autonomo da parte del singolo utente, attraverso questo incontro si è capito invece che ogni utente non deve poter decidere da solo il proprio ruolo ma è già legato ai progetti ai quali è assegnato.

== Proposta di gestione delle repository private

Trovandosi a dover interagire con la piattaforma GitHub ci si è imbattuti nel problema delle repository private.
l’idea sorta in primo luogo era quella di utilizzare i token che si possono creare nella piattaforma, tuttavia è stato chiesto all’azienda se utilizzassero la funzionalità GitHub App per facilitare la gestione di ruoli e delle repository.
In seguito anche al consiglio dell’azienda si è optato per l’*utilizzo dei token*.

== Idea del PoC e la sua specificità

Sono state condivise con l’azienda alcune perplessità riguardanti il Proof of Concept che dovrà essere sviluppato. In particolare i dubbi riguardavano la specificità, se doveva solamente esporre le tecnologie in uso, oppure anche avvicinarsi come comportamenti a un possibile prodotto finale, proponendo ad esempio delle versione ristrette di una delle feature finali.
In seguito alle risposte da parte della proponente si è capito che sarebbe meglio implementare almeno una delle principali funzionalità espresse nel capitolato e che dovranno poi essere funzionanti nel prodotto finale (ovvero una delle tre analisi che devono essere eseguite).
Infine è anche stato chiarito l’utilizzo di AWS all’interno del PoC.
]

// decisione azione
#let decisione-azione = ((
  "Gestione ruoli","Nessun utente può selezionare il proprio ruolo e ognuno ha un ruolo legato a ogni singolo progetto",
  "Gestione repository private","Utilizzo dei token per l’accesso a tali repository",
  "Direzione del PoC","Concentrarsi su almeno una delle tre analisi del prodotto finale"
)
)