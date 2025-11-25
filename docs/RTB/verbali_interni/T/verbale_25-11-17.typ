// giorno in formato AAAA-MM-GG
#let giorno = "2025-11-17"

// data del prossimo incontro nello stesso formato
#let next-meeting = "21 novembre 2025"

// ordine del giorno ?
#let odg = "Brainstorming sugli Use Cases del progetto CodeGuardian"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("1.0.0", "2025-11-17", "Angela Canazza", "Riccardo Baldin", "Stesura della relazione dell'incontro")
)

// switchare in 'true' SSE l'incontro non si è tenuto su Discord
#let distanza = false


// modificare SSE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo

#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Amministratore",   "Presente", //Angela Favaro
    "Redattore",   "Presente", //Angela Canazza
    "Verificatore",   "Presente", //Riccardo Baldin
    "Responsabile",   "Presente", //Alberto Reginato
    "Amministratore",   "Presente", //Amerigo Vegliante
    "Amministratore",   "Presente", //Nicola Simionato
    "Amministratore",   "Presente"  //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "14:30"

// ora di fine dell'incontro
#let fine = "18:30"









#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Modifiche sulla stesura dei verbali 
- Brainstorming sugli use cases del progetto CodeGuardian
- Discussione sull'incontro con la proponente

= Svolgimento
== Modifiche sulla stesura dei verbali
Sono stati sollevati diversi problemi sull'attuale metodologia con cui il team ha elaborato i verbali; di seguito espongo le migliorie che verranno attuate:
- Al fine di velocizzare il processo di stesura dei verbali, il gruppo ha deciso di creare diversi pattern in typst da utilizzare per tutta al documentazione.
- Si è deciso di utilizzare la metodologia SEMVER per il versionamento dei verbali
- Le decisioni e le azioni saranno riassunte alla fine del documento in una tabella, così da distinguerle chiaramente ed evitare ambiguità

== Brainstorming sugli Use Cases del progetto CodeGuardian
Il gruppo ha iniziato a lavorare sugli _Use Cases_ del progetto _CodeGuardian._ Dopo una prima sessione di brainstorming sulle principali funzionalità della piattaforma web, si è proceduto con una bozza generale degli use case e, successivamente, con un approfondimento delle relative sottocategorie.

== Discussione sull'incontro con la proponente
Durante il processo di brainstorming per gli use cases, sono emerse diverse domande, che verranno presentate all’azienda nel primo incontro di giovedì.

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- Preparato i pattern su typst al fine di soddisfare le decisioni prese riguardo i documenti 
- Continuato il lavoro sugli use cases in modo asincrono

Il prossimo incontro è fissato per il giorno #next-meeting, dopo l'incontro con la proponente.
]


// decisione azione
#let decisione-azione = ((
  "velocizzare la stesura dei verbali","creazione di template in typst",
  "migliorare la comprensione dei verbali","inserzione di una tabella riassuntiva di decisione-azione",
  "migliorare il versionamento dei verbali","implementazione del modello SEMVER",
  "stilare gli use cases","brainstorming e attività asincrone durante la settimana"
)
)