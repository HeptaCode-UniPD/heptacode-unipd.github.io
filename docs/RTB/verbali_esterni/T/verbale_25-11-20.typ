// giorno in formato AAAA-MM-GG
#let giorno = "2025-11-20"


// data del prossimo incontro nello stesso formato
#let next-meeting = "2025-11-21"

// ordine del giorno 
#let odg = "Primo Incontro di Design Thinking con l'azienda"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2025-11-20", "Riccardo Baldin", "Alberto Reginato", "Prima stesura documento",
  "0.2.0", "2025-11-21", "Alberto Reginato", "Riccardo Baldin", "Conclusioni documento",
  "1.0.0", "2025-11-21", "Alberto Reginato", "Riccardo Baldin", "Aggiunta conclusioni documento")
)

// switchare in 'true' SSE l'incontro si è tenuto online
#let distanza = false


// modificare SSE non si è fatto in modalità telematica
//NB: se non è alla sede VarGroup di Via Salboro scrivere il nuovo luogo comprendendo l'articolo

#let luogo = "la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Analista",   "Presente", //Angela Favaro
    "Analista",   "Presente", //Angela Canazza
    "Analista",   "Presente", //Riccardo Baldin
    "Analista",   "Presente", //Alberto Reginato
    "Analista",   "Presente", //Amerigo Vegliante
    "Analista",   "Presente", //Nicola Simionato
    "Analista",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "09:00"

// ora di fine dell'incontro
#let fine = "12:00"




#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Analisi e brainstorming riguardo all'utilizzatore della piattaforma
- Politica degli Agenti
- Delucidazioni riguardo alle idee di VarGroup su CodeGuardian
- Brainstorming riguardo a flusso di lavoro dell'applicativo


= Svolgimento

== Analisi e brainstorming riguardo all'utilizzatore della piattaforma
Durante la prima fase dell’incontro ci siamo “messi il cappello dell’utente”, per analizzare in che modo i diversi profili potrebbero utilizzare la piattaforma. 
Abbiamo quindi generato rapidamente un insieme di possibili personas, per poi valutarle, raggrupparle e selezionare solo quelle davvero rilevanti per il progetto.

- Developer (rilevante)
- Project Manager (rilevante) 
- Business Owner (rilevante)
- Avvocato (considerato un sottoinsieme del Project Manager)
- Tester (sottoinsieme del Developer)
- Security Analyst (anche questo un sottoinsieme del Developer)

=== Esigenze del Developer

Documentazione in lavorazione \
Analisi sicurezza codice \
Visualizzazione modifiche suggerite \
Suggerimenti su migliorie implementabili \
Consigli su nuove librerie / tecnologie \
Velocizzare documentazione \
Visione repo account \
Storico repo \
Copertura dei test \
Standard minimi sicurezza \
Analisi codice (code cov, livello cicli...)

=== Esigenze del Project Manager

Documentazione disponibile \
Avanzamento progetto \
Classifica repo secondo dei filtri \
Mappatura tecnologie all'interno del team \
Scoring sul team / developers \
Monitoraggio evoluzione framework/librerie \
Associazione tecnologie-utente per progetto \
Visione agente OWASP \
Risultati test \
Suggerimenti nuove tecnologie

=== Esigenze del Business Owner

Indici coerenza tra i progetti \
Rendicontazione / progressione costi \
Overview Generale \
Statistiche team di sviluppo \
Vista non tecnica dello stato dei progetti \
Copertura OWASP \
Risultati agente OWASP \
Suggerimenti nuove tecnologie \

== Politica degli Agenti
Successivamente abbiamo pensato e analizzato i pro e i contro di due modelli di architettura di agenti AI,
Autocratico e Democratico, arrivando alla conclusione che nel contesto di CodeGuardian è preferibile il primo dei due.


  #table(
    columns: (50%, 50%),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Autocratico*], [*Democratico*],
    ),
    [  #table(
    columns: (50%, 50%),
    inset: 9pt,
    align: horizon,
    table.header(
      [#text(green)[*Pro*]], [#text(red)[*Contro*]],
    ),
    "Maggiore efficienza", "Scelta non ottimale di azioni e di deleghe dei compiti",
    "Riprende il modello usato in un team", "Orchestratore pensato male causa danni più gravi",
    "Maggiore divisione ruoli", "Aggiornamento sottoposti deve essere considerato",
    "Mantiene coerenza del codice", "Perdita di informazioni nella comunicazione tra i livelli",
    "C'è un monitoraggio dall'alto", "Se cade l'orchestratore il sistema non è utilizzabile"
    )],
    [  #table(
    columns: (50%, 50%),
    inset: 9pt,
    align: horizon,
    table.header(
      [#text(green)[*Pro*]], [#text(red)[*Contro*]],
    ),
    "Peer-review", "Difficoltà comunicazione tra agenti",
    "Più idee su tutto possono portare ad una conclusione più completa", "Più costoso",
    "Gli agenti prendono decisioni più conformi", "Perdita di controllo",
    "", "Scelta fatta basandosi su opinioni di agenti non specializzati"
    )
    ]
  )

#pagebreak()
== Domande e Delucidazioni riguardo alle idee di VarGroup su CodeGuardian

- *Quanto significativamente differisce l'esperienza di un _developer_ rispetto a quella del _Project Manager_ o del _Business Owner_ nell'utilizzo di _CodeGuardian_?*

Nella realtà dei fatti il _PM_ e il _BO_ non fanno altro che vedere aggregazioni 
di ciò che viene mostrato al _developer_, è consigliato cercare di gestire 
la trasversalità, in un ottica business, perché con quella che è l’evoluzione 
del mercato e delle tecnologie è fondamentale saper scrivere codice ma potrebbe diventare 
una parte demandabile, ciò che non può accadere è che lo sviluppatore non capisca ciò che fa, perché può provocare impatti disastrosi.

Un _Project Manager_ può anche voler visionare uno storico dei push dei programmatori 
che lavorano ad un progetto al fine di pianificare in maniera corretta i passi futuri 
tenendo conto del passato.

- *Ipotizzando che l'applicativo sia collegato ad un account GitHub, all'interno della nostra pagina ci dovranno anche essere statistiche di GitHub o solo le caratteristiche proprie di _CodeGuardian_?*

L'obiettivo è quello di sfruttare ciò che certi strumenti già fanno 
costruendo un _layer_ in mezzo che raccoglie e integra le informazioni.

Ad esempio GitHub può solo dire che manca il README ad una repo, 
ma con _CodeGuardian_ si può anche controllare che esso sia 
conforme a standard aziendali (un readme per un app sarà diverso da un readme per un applicativo web).

È importante che _CodeGuardian_ fornisca una visione generale delle caratteristiche del progetto e delle 
repo in questione magari tramite dashboard già dalla home.

Lo scopo dell'Intelligenza Artificiale è pur sempre quello di liberare tempo al fine di comunicare meglio con il 
cliente e tra sviluppatori e minimizzare sprechi.

#pagebreak()
== Brainstorming riguardo a flusso di lavoro dell'applicativo

Il brainstorming finale inerente alle azioni che pianifichiamo di fare avvenire 
durante il flusso di lavoro dell'applicativo ha portato al seguente schema.

#figure(
  image("../../../asset/flusso.pdf", width: 50%),
  caption: [
    Prima idea del flusso di lavoro dell'applicativo.
  ],
)

Ad ogni _Push_ l'orchestratore principale, controllando i metadati dell'operazione, 
decide quali cammini intraprendere e quali agenti utilizzare. I tre agenti sottoposti analizzano 
il codice, la sicurezza secondo gli standard OWASP, la presenza di librerie e framework obsoleti, 
la presenza, la correttezza e la omogeneità della documentazione, al fine di consigliare all'utente come risolvere 
i problemi.

Nel caso l'utilizzatore accettasse i consigli, _CodeGuardian_ agirebbe direttamente sulla 
repo in un branch specifico facendo le modifiche accettate dall'utente.

#pagebreak()
= Conclusione
L'incontro con la proponente si è rivelato fondamentale per delineare i prossimi passi da intraprendere con il progetto. \
Il confronto diretto, supportato dalla metodologia del Design Thinking, ha permesso al gruppo Hepta Code di trasformare le vaghe ipotesi iniziali in requisiti molto più concreti.
La sessione è stata fondamentale per chiarire dubbi architetturali e funzionali, permettendo al team di acquisire una consapevolezza più concreta riguardo la direzione da intraprendere e gli obiettivi da raggiungere con _CodeGuardian_.\
In chiusura, sono state pianificate le future interazioni con la proponente: è stato concordato uno _stand-up meeting_ settimanale e una _sprint review_ a cadenza bisettimanale, mantenendo flessibilità in base all'avanzamento effettivo dei lavori. 
Uno dei temi principali su cui verterà la prossima discussione sarà inerente lo stack tecnologico scelto dal gruppo per l'esecuzione del progetto e, conseguentemente, all'eventuale possibilità di fornire sessioni di mentoring tecnico da parte dell'azienda.
]

// decisione azione
#let decisione-azione = ((
  "Scegliere quali tecnologie utilizzare per sviluppare l'applicativo","Studiare individualmente le tecnologie al fine di proporle a VarGroup per ricevere del mentoring tecnico a riguardo",
  "Individuate le personas e gli utenti della piattaforma","Analizzare nel dettaglio le interazioni degli utenti con il sito per studiarne i casi d'uso"
)
)