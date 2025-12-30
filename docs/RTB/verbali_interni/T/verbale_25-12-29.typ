// giorno in formato AAAA-MM-GG
#let giorno = "2025-12-29"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-01-05"

// ordine del giorno 
#let odg = "Completamento stesura Use Case e decisione dei prossimi compiti"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2025-12-29", "Angela Canazza", "Nicola Simionato", "Stesura del verbale",
  "0.1.1", "2025-12-29", "Angela Canazza", "Nicola Simionato", "Correzzione riguardante i diagrammi GANTT",)
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "Sulla piattaforma _Discord_"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Amministratore",   "Presente", //Angela Favaro
    "Responsabile",   "Presente", //Angela Canazza
    "Analista",   "Presente", //Riccardo Baldin
    "Analista",   "Presente", //Alberto Reginato
    "Analista",   "Presente", //Amerigo Vegliante
    "Verificatore",   "Presente", //Nicola Simionato
    "Progettista",   "Assente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "10.00"

// ora di fine dell'incontro
#let fine = "11.24"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Analisi dello stato di avanzamento degli Use Case (Analisi dei Requisiti).
- Pianificazione attività per la settimana corrente.
- Definizione della programmazione degli sprint con l'azienda proponente.

= Svolgimento
== Stato di completamento degli Use Case
=== Use Case del ruolo "Developer"
La stesura degli Use Case per il ruolo del "Developer" è ultimata, ad eccezione dello Use Case 5, sul quale sono emerse divergenze interpretative riguardo la definizione dello scenario principale.
Non avendo raggiunto un consenso unanime, il gruppo ha deciso di inviare una richiesta di chiarimento via email al Prof. _R. Cardin_ per individuare l'approccio più corretto.
=== Milestone "UCB - Use Cases Baseline" e gestione ritardi
È stato rilavato il mancato completamento della Milestone "UCB - Use Cases Baseline" entro la scadenza prevista del 28 dicembre 2025. Tale slittamento è dovuto alla decisione di integrare nell'analisi corrente anche gli Use Case relativi ai ruoli di Project Manager e Business Owner. La motivazione per la quale non sono stati presi in considerazione dall'inizio, è da darsi alla loro classificazione, in quanto questi ruoli fanno parte degli _sviluppi opzionali_. La decisione di trattarli in questa fase progettuale è stata definita necessaria a seguito delle indicazioni ricevute via email dal Prof. _R. Cardin_.
Tuttavia, il ritardo verrà interamente assorbito dal periodo di slack di 7 giorni preventivato, senza compromettere le scadenze successive.

== Pianificazione attività per la settimana corrente
- Al fine di garantire la chiusura degli Use Case entro la prossima settimana, si è stabilito che i membri con ruolo di Analista concentreranno la maggior parte del proprio monte ore nella stesura, revisione e perfezionamento degli stessi.
- Il team inizierà ad assumere il ruolo di Progettista. Le ore iniziali saranno dedicate a un periodo di studio individuale. Le best practices e le scelte progettuali preliminari emerse in questa fase verranno formalizzate e introdotte nel documento "Norme di Progetto".
- Entro la fine della settimana corrente, l'Amministratore concluderà una prima versione non ufficiale del documento. 
- Nel "Piano di Progetto" si procederà con l'aggiornamento del documento includendo la retrospettiva di tutti gli sprint conclusi fino ad ora, corredati dai relativi diagrammi GANTT.

== Programmazione degli sprint con l'azienda proponente
È emersa la necessità di formalizzare la calendarizzazione degli incontri di allineamento con l'azienda proponente _VarGroup_. A seguito della conclusione del programma di formazione, non è stata ancora stabilita la frequenza degli sprint con la proponente. Al fine di ripristinare il flusso comunicativo, il l'attuale Responsabile del team _HeptaCode_ è stato incaricato di contattare il referente aziendale tramite il canale Slack dedicato, con l'obiettivo di concordare una programmazione periodica degli incontri.


= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- Inviato un email al Prof _R. Cardin_ per chiedere consiglio
- Concluso gli Use Case
- Studiato individualmente le varie scelte progettuali
- Concluso una prima versione non ufficiale del documento "Piano di Progetto"
- Contattato il referente _VarGroup_ su Slack per definire la frequenza degli Sprint

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Completare la Milestone UCB entro il prossimo Sprint","Concludere gli Use Case dei ruoli per il Project Manager e per il Business Owner entro il prossimo Sprint",
  "Concludere la scrittura dello USe Case 5","Scrivere al Prof R. Cardin chiedendo consiglio",
  "Stabilire la frequenza degli Sprint con la proponente","Contattare il referente su Slack"
)
)