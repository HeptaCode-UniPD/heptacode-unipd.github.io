#show link: it => text(fill: rgb("#6a00f4"), it)
#set par(justify: true)
#set text(size: 15pt)

#show heading.where(level: 1): set text(size: 24pt)
#show heading.where(level: 2): set text(size: 22pt)
#show heading.where(level: 3): set text(size: 18pt)

#show table.cell: block.with(breakable: false)

#show figure.caption: set text(size: 12pt)

#show outline.entry.where(level: 1): it => {
  text(weight: "bold", it, size: 17pt)
}

#let storia_modifiche = (
  // AGGIUNGI QUI SOPRA LA NUOVA RIGA QUANDO SERVE, LA VERSIIONE DEL DOC VIENE AGGIORNATA AUTOMATICAMENTE
  ("0.0.3", "2025-12-18", "A. Reginato", "A. Canazza", "Rimodellazione UC fino UC2.3"),
  ("0.0.2", "2025-12-17", "A. Reginato", "A. Canazza", "Rimodellazione UC fino UC1.4"),
  ("0.0.1", "2025-12-15", "A. Reginato", "A. Canazza", "Creazione struttura del documento e prima bozza"),
)

#let versione = storia_modifiche.first().at(0)
#let data_versione = storia_modifiche.first().at(1)
#let titolo = "Analisi dei requisiti"
#let gruppo = "Hepta Code"

#set page(
  header: context [
    #grid(
      columns: (1fr, 1fr),
      align(left)[
        #text(size: 10pt, style: "italic")[#gruppo, #data_versione] 
      ],
      align(right)[
        #text(size: 10pt)[#titolo, v #versione] 
      ]
    )
    #line(length: 100%)
  ],

  footer: context [
    #align(center)[
      #line(length: 100%)
      #counter(page).display("1")
      di
      #counter(page).final().first()
    ]
  ]
)

\


#align(center, [#image("../../asset/logo.svg", width: 8cm)])

#v(2cm)

#align(center)[
  #text(size: 30pt, weight: "bold", fill: rgb("#000000"))[#titolo]
]

#align(center)[
  #text(weight: "bold", size: 17pt)[Descrizione] \
  #v(0.5em)
  #block(width: 80%)[
    Il presente documento contiene l'_Analisi dei Requisiti_ redatta dal gruppo _Hepta Code_ per il capitolato C2 proposto da _Var Group_.
  ]
]

#v(4cm)

#align(right)[
  #text(weight: "bold", size: 13pt)[email:] #text(size: 13pt)[heptacode7\@gmail.com] \
  #text(weight: "bold", size: 13pt)[Repository di gruppo:] 
  #link("https://github.com/HeptaCode-UniPD/heptacode-unipd.github.io/tree/main")[#text(size: 13pt)[heptacode-unipd]]
]

#pagebreak()

#text(size: 18pt, weight: "bold")[Registro delle modifiche]

#table(
  columns: (auto, auto, auto, auto, 1fr),
  inset: 10pt,
  align: (center, center, center, center, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none }, 
  
  table.header(
  [*Versione*], [*Data*], [*Autore*], [*Verificatore*], [*Descrizione*],
  ..storia_modifiche.flatten()
  ),
)

#pagebreak()



#outline(title: "Indice dei contenuti")

#pagebreak()

= 1. Introduzione
== 1.1 Scopo del Documento

Nel ciclo di vita dello sviluppo software, un'analisi dei requisiti accurata e condivisa rappresenta il fondamento per il successo di un progetto. Questo documento ha l'obiettivo di formalizzare le specifiche funzionali, non funzionali e i vincoli del progetto "_Code Guardian_". Agisce come una fonte di verità unica (_single source of truth_) per il team di sviluppo e per tutti gli stakeholder di VarGroup, con l'obiettivo primario di garantire una comprensione comune e ridurre al minimo le ambiguità che potrebbero emergere nelle fasi successive.\

La struttura del documento è pensata per guidare il lettore attraverso un percorso logico, partendo da una descrizione generale del prodotto e dei suoi utenti, per poi approfondire i requisiti specifici e i modelli di interazione attraverso i casi d'uso. Infine, una matrice di tracciabilità evidenzierà la coerenza tra le funzionalità richieste e le interazioni utente definite.

== 1.2 Scopo del Prodotto

In un contesto caratterizzato dalla crescente complessità dei progetti software, la necessità di automatizzare i processi di audit e di miglioramento della qualità del codice è diventata un fattore d'importanza critica. Il progetto "_Code Guardian_" nasce per rispondere a questa esigenza, realizzando una piattaforma web intelligente basata su un sistema ad agenti software.

Gli obiettivi principali della piattaforma sono:

- *Analizzare i repository GitHub* per valutare in modo sistematico la qualità del codice, il profilo di sicurezza ed agevolare la manutenibilità a lungo termine.
- *Fornire report automatici e dashboard interattive* che offrano una visione chiara e sintetica dello stato dei test, della sicurezza e della completezza della documentazione.
- *Suggerire azioni di _remediation_* per colmare le lacune identificate, proponendo soluzioni concrete come l'applicazione di best practice, l'integrazione di test mancanti o la correzione di vulnerabilità note (es. OWASP Top 10).

_Code Guardian_ mira quindi ad automatizzare e ottimizzare i processi di audit e miglioramento continuo del codice. Tutto ciò ha lo scopo di semplificare compiti ripetitivi e liberare tempo prezioso agli sviluppatori, permettendo loro di concentrarsi su attività a maggior valore aggiunto e, in secondo luogo, fornire a _Project Manager_ e _Product Owner_ strumenti efficaci per la _governance_ e il monitoraggio qualitativo dei progetti software.

== 1.3 Definizioni, acronimi e abbreviazioni

La stesura del presente documento fa uso di una terminologia specifica, legata sia al dominio applicativo del progetto "_Code Guardian_" che agli standard dell'Ingegneria del Software. Per facilitare la lettura e assicurare che ogni concetto sia compreso in modo uniforme da tutti i destinatari (team di sviluppo, committente e proponente), è stato redatto un documento di supporto dedicato.

Si faccia pertanto riferimento al #link("https://heptacode-unipd.github.io/docs/CC/glossario.pdf")[_Glossario_] per l'esplicitazione di:
- *Acronimi e sigle* utilizzati per brevità nel testo;
- *Termini tecnici* che potrebbero prestarsi a molteplici interpretazioni;
- *Definizioni di dominio* specifiche per il contesto di audit e qualità del software.

L'uso del glossario è raccomandato per garantire la piena coerenza semantica durante tutte le fasi del ciclo di vita del progetto.

== 1.4 Riferimenti
Questa sezione elenca i documenti utilizzati come base per la stesura della presente analisi.

=== 1.4.1 Riferimenti Normativi
- _Code Guardian_: Piattaforma ad agenti per l’audit e la remediation dei repository software (#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato])
- _Norme di Progetto_: Regole, standard e procedure del gruppo _Hepta Code_ (#link("...")[Norme di Progetto]).
- [Altro ...]

=== 1.4.2 Riferimenti Informativi
- Verbale Interno: #link("https://heptacode-unipd.github.io/docs/RTB/verbali_esterni/vargroup_1.pdf")[Primo Incontro di Design Thinking]
- Slide di lezione: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf")[Analisi dei requisiti]
- Documento interno: #link("https://heptacode-unipd.github.io/docs/CC/glossario.pdf")[Glossario]
- [Altro ...]
Questa introduzione delinea il contesto e gli scopi del progetto. Il capitolo seguente procederà con una descrizione dettagliata del prodotto, delle sue funzionalità e dei vincoli che ne guideranno la realizzazione.

#pagebreak()

= 2. Descrizione del prodotto
Per definire correttamente i requisiti di un sistema è fondamentale comprendere il suo contesto operativo, gli utenti a cui si rivolge e le scelte architetturali di alto livello che ne influenzeranno lo sviluppo. Questa sezione fornisce una *visione d'insieme della piattaforma Code Guardian, delineandone gli obiettivi specifici* che il prodotto si propone di raggiungere, le tipologie di *personas utente* a cui è destinato, le loro esigenze e, infine, verranno elencati i *vincoli tecnici* e di progetto che governeranno il processo di sviluppo.

== 2.1 Funzionalità del Prodotto
Il sistema _Code Guardian_ è concepito per automatizzare il controllo di qualità e sicurezza del software, riducendo il carico cognitivo sugli sviluppatori. Di seguito sono elencate le macro-funzionalità principali che il sistema offre agli utenti, indipendentemente dalla sua implementazione interna.

=== 2.1.1 Audit Automatico del Codice
Il sistema esegue un'analisi approfondita del codice sorgente ogni volta che viene rilevata una modifica nel _repository_ (evento di `PUSH`).
- *Analisi Statica*: Rilevamento automatico di _code smell_, bug potenziali e violazioni delle convenzioni di stile.
- *Verifica dei Test*: Controllo della copertura dei test (_code coverage_) per garantire che le nuove funzionalità siano adeguatamente verificate.

=== 2.1.2 Scansione di Sicurezza e Vulnerabilità
Per garantire la robustezza del software, il sistema integra strumenti di controllo specifici per la _security_:
- *Rilevamento Credenziali*: Identificazione di chiavi API, password o token involontariamente committati nel codice (_secret scanning_).
- *Analisi delle Dipendenze*: Verifica delle librerie di terze parti per individuare versioni obsolete o affette da vulnerabilità note.
- *Compliance OWASP*: Controllo della conformità agli standard di sicurezza web (es. _OWASP Top 10_).

=== 2.1.3 Validazione della Documentazione
Il sistema assicura che il progetto mantenga un alto livello di manutenibilità verificando la presenza e la qualità della documentazione:
- *Check Strutturale*: Verifica della presenza di file essenziali (es. `README.md`).
- *Coerenza API*: Controllo della corrispondenza tra il codice implementato e la documentazione delle interfacce (es. specifiche _OpenAPI/Swagger_).

=== 2.1.4 Remediation Proattiva
A differenza dei semplici strumenti di reportistica, _Code Guardian_ agisce attivamente per risolvere i problemi:
- *Suggerimenti di Correzione*: Il sistema non si limita a segnalare l'errore, ma genera proposte concrete di codice correttivo.
- *Creazione Pull Request*: Se l'utente approva un suggerimento, il sistema crea automaticamente un _branch_ dedicato e una _Pull Request_ (o _Merge Request_) pronta per la revisione, senza richiedere intervento manuale per la scrittura del codice.

=== 2.1.5 Monitoraggio e Dashboard
Il sistema fornisce un punto di accesso centralizzato per la consultazione dello stato di salute dei progetti:
- *Visione Aggregata*: Visualizzazione di metriche chiave indicatori relativi qualità del codice per singoli _repository_ o per interi gruppi di progetti.
- *Storico Analisi*: Consultazione dei report passati per valutare l'evoluzione della qualità del software nel tempo.

== 2.2 Utenti e Stakeholder (Personas) <Cap2.2>
Per creare un prodotto realmente utile è fondamentale in prima istanza comprendere le reali esigenze e necessità degli utenti finali a cui la piattaforma è destinata a rivolgersi. \
L'analisi condotta durante la sessione di _Design Thinking_ ha permesso di identificare e definire *tre profili utente principali*, ciascuno con obiettivi e necessità specifiche. Le funzionalità della piattaforma sono state progettate per rispondere in modo mirato alle aspettative di queste _personas_.

=== 2.2.1 Developer
Il _Developer_ è l'utente tecnico primario del sistema. Interagisce quotidianamente con i _repository_ di codice e ha bisogno di strumenti che lo supportino nel migliorare la qualità del suo lavoro in modo rapido ed efficiente.

*Esigenze principali:*
- Visualizzare *suggerimenti* di miglioria concreti, applicabili direttamente nel codice, e consigli su nuove librerie o tecnologie.
- Disporre di strumenti per accelerare la *stesura e la standardizzazione della documentazione*.
- Consultare lo *storico delle analisi e avere una visione aggregata dei repository associati* al proprio account.
- Avere una visione chiara e dettagliata delle *metriche di codice*, come la copertura dei test (code coverage) e la complessità ciclomatica.
- Verificare la *conformità del codice agli standard di sicurezza* aziendali e alle _best practice_ del settore (es. _OWASP_).

=== 2.2.2 Project Manager
Il _Project Manager_ ha la responsabilità di supervisionare l'avanzamento di uno o più progetti. Necessita di una visione d'insieme che gli consenta di monitorare lo stato di salute dei _repository_, la produttività del team e la conformità agli standard qualitativi.

*Esigenze principali:*
- Ottenere una *visione d'insieme sullo stato di avanzamento e sulla qualità dei progetti*.
- Monitorare l'evoluzione di *metriche chiave* (es. copertura test, vulnerabilità) nel tempo.
- Classificare e confrontare i _repository_ in base a specifici indici di qualità.
- Mappare le tecnologie utilizzate all'interno dei team per una migliore pianificazione delle risorse.
- Visualizzare i risultati aggregati dei test e delle analisi di sicurezza (OWASP).

=== 2.2.3 Business Owner
Il _Business Owner_ è lo _stakeholder_ con una visione strategica. Il principale _focus_ per questa figura sono non tanto i dettagli tecnici, quanto indicatori aggregati che gli permettano di valutare la qualità complessiva dei progetti di proprio interesse e l'efficienza dei team di sviluppo.

*Esigenze principali:*
- Accedere a una vista *non tecnica* e di alto livello sullo stato dei progetti.
- Disporre di indici di coerenza qualitativa tra i diversi progetti e team.
- Ottenere statistiche generali sull'efficienza e la maturità dei team di sviluppo.
- Monitorare la progressione dei *costi e la rendicontazione*.
- Accedere a statistiche generali sulla salute e la sicurezza (es. copertura OWASP) dei progetti.
- Ricevere suggerimenti strategici su nuove tecnologie.

L'architettura e l'interfaccia utente di _Code Guardian_ sono state progettate per servire in modo trasversale e specifico le esigenze di questi tre profili, garantendo che ciascuno possa accedere alle informazioni rilevanti nel formato più adeguato al proprio ruolo.

== 2.3 Vincoli del Prodotto
Lo sviluppo del progetto dovrà sottostare ad una serie di vincoli tecnici ed architetturali definiti dalla committente per garantire la qualità, la manutenibilità e la corretta consegna del prodotto finale.

=== 2.3.1 Vincoli di Progetto
- *Copertura dei test*: Il codice sorgente della piattaforma dovrà essere coperto per un minimo del *70%* da test di unità automatizzati.
- *Modularità*: L'applicativo dovrà essere progettato e realizzato con un'architettura modulare, per facilitare l'estensione futura delle sue funzionalità (ad esempio, con nuovi agenti).
- [Altro ...]

=== 2.3.2 Tecnologie di Sviluppo
In accordo con le linee guida fornite dal proponente _VarGroup_, il team ha definito uno _stack_ tecnologico mirato a garantire modularità e scalabilità.

La logica _core_ della piattaforma, costituita dall'architettura multi-agente e dai flussi di orchestrazione, sarà sviluppata adottando un approccio ibrido basato su *Node.js* e *Python*. Questa scelta permette di coniugare l'efficienza nella gestione asincrona degli eventi (tipica di Node.js) con le potenti capacità di analisi dati e _machine learning_ offerte dall'ecosistema Python, fondamentali per gli agenti di _audit_.

L'interfaccia utente, punto di accesso principale per _Developer_ e _Project Manager_, sarà realizzata come _Single Page Application_ (SPA) utilizzando il framework *React.js*. L'obiettivo è fornire una *dashboard* reattiva e dinamica, capace di visualizzare in tempo reale i risultati delle analisi e i suggerimenti di _remediation_.

Per quanto riguarda la persistenza dei dati, la scelta è ricaduta su *MongoDB*. La natura *schema-less* di questo database documentale garantisce la flessibilità necessaria per memorizzare report di analisi dalla struttura eterogenea. Inoltre, le sue funzionalità native supportano efficacemente il tracciamento delle diverse *versioni* dei dati e offrono componenti di *ricerca vettoriale*, determinanti per potenziare le capacità di recupero contestuale delle informazioni da parte degli agenti intelligenti.

Infine, l'infrastruttura operativa sarà fortemente integrata con l'ecosistema *GitHub*: le *GitHub Actions* gestiranno i flussi di _CI/CD_ e l'innesco degli agenti, mentre l'architettura _cloud_ sottostante sarà ospitata sui servizi *AWS* (_Amazon Web Services_), garantendo la disponibilità e le risorse computazionali necessarie per l'esecuzione parallela degli agenti.

== 2.4 Limiti del Sistema
Per garantire la fattibilità del progetto entro le scadenze accademiche e focalizzare lo sviluppo sul valore _core_, sono stati definiti i seguenti confini operativi (ambiti esclusi dal sistema):

- *Supporto limitato ai linguaggi*: In questa prima versione, l'analisi statica e i suggerimenti di _remediation_ saranno ottimizzati specificamente per linguaggi [...] . Altri linguaggi non saranno supportati nativamente dagli agenti.
- *Integrazione esclusiva GitHub*: Il sistema supporterà unicamente _repository_ ospitati su piattaforma _GitHub_, escludendo quindi integrazioni con altre piattaforme.
- *Remediation semi-automatica*: Le azioni di correzione del codice non verranno mai applicate direttamente sul _branch_ principale (`main`/`master`), ma richiederanno sempre l'approvazione umana tramite _Pull Request_.
- [Altro ...]

#pagebreak()

= 3. Casi d'uso

== 3.1 Introduzione

I Casi d'Uso rappresentano un elemento fondamentale all'interno del ciclo di vita dello sviluppo software in quanto definiscono in modo formale e non ambiguo le interazioni tra gli utenti (attori) e il sistema. Questo capitolo ha lo scopo di tradurre i bisogni di business, emersi durante la sessione di Design Thinking, in requisiti funzionali specifici per la piattaforma _Code Guardian_. 

Ciascun caso d'uso descrive una sequenza di azioni che un attore compie per raggiungere un obiettivo, fornendo così la base per la progettazione del sistema, la sua implementazione e le successive fasi di test. Tutto ciò è volto a garantire che il prodotto finale sia allineato con le aspettative degli _stakeholder_.

Per garantire chiarezza e coerenza, vengono definiti nella seguente tabella i termini utilizzati.

#v(1em)

#table(
  columns: (auto, 1fr),
  inset: 10pt,
  align: (left, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none },
  
  table.header(
     [*Campo*], [*Descrizione*],
  ),

  [*Identificatore*],[È un codice univoco, strutturato secondo la notazione gerarchica UCx.y, che viene assegnato a ogni singolo Caso d'Uso per individuarlo in modo inequivocabile all'interno dell'intera documentazione di progetto. La sua funzione primaria è quella di garantire una rapida rintracciabilità dei requisiti lungo tutto il ciclo di vita del software senza ambiguità.],
   [*Scenario \ principale*], [È il flusso ideale (_Happy Path_). Descrive cosa succede quando l'interazione tra l'attore e il sistema procede linearmente verso il successo senza intoppi],
  [*Scenario \ secondario*], [Comprende tutti i percorsi alternativi o le gestioni delle eccezioni che si discostano dal flusso principale. Descrive come il sistema deve comportarsi quando si verificano errori o quando l'utente effettua scelte opzionali diverse da quelle standard.],
  [*Precondizioni*], [Definiscono lo stato in cui devono trovarsi obbligatoriamente il sistema e l'ambiente circostante prima che il Caso d'Uso possa essere eseguito. Rappresentano i vincoli e i requisiti indispensabili che si assumono come veri all'inizio dell'interazione.],
  [*Postcondizioni*], [Descrivono lo stato finale del sistema una volta che il Caso d'Uso è stato completato con successo.],
  [*Trigger*], [Evento scatenante specifico che dà avvio all'esecuzione del Caso d'Uso. Questo innesco può manifestarsi come un'azione esplicita e volontaria dell'attore oppure può essere un evento temporale o condizionale interno al sistema che si attiva automaticamente al sopraggiungere di un determinato orario o stato.],
  [*Attori \ principali*], [Sono coloro che interagiscono attivamente con il Sistema e svolgono l’azione indicata dal Caso d’Uso. Essi sono sempre gli iniziatori del processo.],
  [*Attori \ secondari*], [Entità esterna al sistema (una persona, un altro sistema software o un dispositivo hardware). Non avvia il processo ma viene sollecitata dal sistema stesso per fornire servizi necessari al completamento dell'operazione. Ha un ruolo reattivo e partecipa all'interazione solo in risposta ad una richiesta del sistema.],
  [*Inclusioni*], [Definisce una relazione di dipendenza forte in cui un Caso d'Uso base incorpora obbligatoriamente il comportamento di un altro Caso d'Uso per poter portare a termine la propria funzione.],
  [*Estensioni*], [Identifica una relazione in cui un Caso d'Uso può arricchire o modificare il comportamento di un Caso d'Uso base, ma solo qualora si verifichino specifiche condizioni o scelte discrezionali dell'utente. A differenza dell'inclusione, questa aggiunta funzionale è del tutto opzionale.],
  [*Generalizzazione*],[Relazione di ereditarietà tra un elemento più generico, detto padre, e uno più specifico, detto figlio, che stabilisce un legame logico di tipo "_is-a_" tra le due entità. L'elemento figlio eredita il comportamento dell'elemento padre, ma si riserva la facoltà di sovrascrivere o arricchire tali caratteristiche],
)

Il paragrafo successivo andrà ad indentificare invece gli attori che interagiranno con il sistema.

== 3.2 Attori

Gli attori rappresentano le entità, umane o sistemiche, che interagiscono con la piattaforma _Code Guardian_ per eseguire operazioni o ricevere informazioni. La loro definizione deriva direttamente dall'analisi delle "Personas" condotta durante la sessione di _Design Thinking_, come documentato nel #link(<Cap2.2>)[Capitolo 2.2] , che ha permesso di identificare i ruoli chiave e le loro specifiche esigenze.

#v(0.5cm)

#figure(
  image("../../asset/Diagramma_utenti.png", width: 35%),
  caption: [Gerarchia degli attori: Developer, Project Manager e Business Owner come specializzazioni dell'Utente generico.], 
) <fig-attori>

#v(1.5cm)

#table(
  columns: (auto, 1fr),
  inset: 10pt,
  align: (left, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none },

  table.header(
     [*Campo*], [*Descrizione*],
  ),
  [*Utente*], [Rappresenta un generico utilizzatore umano della piattaforma. È un attore astratto che generalizza le funzionalità comuni condivise da Developer, Project Manager e Business Owner, i quali ereditano da esso (#link(<fig-attori>)[Figure 1]).],
  
  [*Developer*], [È l'operatore tecnico principale del sistema. Il suo focus è il miglioramento continuo della qualità del codice, la standardizzazione della documentazione, la verifica della conformità agli standard di sicurezza (es. OWASP) e l'applicazione dei suggerimenti di remediation proposti dalla piattaforma.],
  
  [*Project \ Manager*], [Ha la responsabilità di supervisionare uno o più progetti. Utilizza il sistema per monitorare metriche aggregate sulla qualità, confrontare lo stato di salute di diversi repository e tracciare la produttività e la conformità del team agli standard qualitativi.],
  
  [*Business \ Owner*], [È uno stakeholder con una visione strategica, interessato a indicatori di alto livello e non tecnici. Utilizza dashboard aggregate per valutare la qualità complessiva dei progetti, l'efficienza dei team e la salute generale degli asset software aziendali.]
)

Oltre agli attori umani, la piattaforma interagisce con un sistema esterno che agisce come _trigger_ per il processo di analisi principale:

- *GitHub*: Questo sistema esterno è un attore non umano che avvia il flusso di lavoro di analisi automatica. Ogni evento di `PUSH` su un repository monitorato viene intercettato da _Code Guardian_, attivando l'orchestrazione degli agenti di audit.
- [Altro ...]

La sezione seguente dettaglia i casi d'uso specifici, descrivendo le interazioni tra questi attori e la piattaforma _Code Guardian_.

#pagebreak()

== 3.3 Specifica dei casi d'uso

=== 3.3.1 UC1: Accesso tramite Piattaforma Esterna <UC1>
// #figure(image("diagramma_uc1.png"), caption: [Diagramma del caso d'uso UC1])

- *Attore principale:* Utente.

- *Attore secondario:* GitHub.

- *Descrizione:* L’utente accede a _Code Guardian_ delegando l'autenticazione al provider esterno (GitHub).

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L’utente interagisce con la funzionalità di login nella pagina iniziale.

- *Scenario principale:*
  + L’utente esprime la volontà di accedere tramite il provider GitHub.
  + L’utente viene reindirizzato verso la piattaforma esterna.
  + L'utente completa la procedura di autenticazione sul sito del provider e concede i permessi necessari.
  + L'utente viene riportato sulla piattaforma _Code Guardian_.
  + L'utente accede alla propria dashboard personale.

- *Scenario secondario:*
  + Al passo 3, se l'utente annulla l'operazione o ha negato i consensi necessari (*<\<extend>>* #link(<UC1.3>)[[UC1.3]]) o il provider segnala un errore (*<\<extend>>* #link(<UC1.4>)[[UC1.4]]), l'utente viene riportato sulla piattaforma visualizzando un messaggio di mancato accesso.
  + Al passo 4, se è il primo accesso assoluto, l'utente viene reindirizzato alla procedura di prima registrazione (*<\<extend>>* #link(<UC1.2>)[[UC1.2]]).

- *Postcondizioni:* L’utente è autenticato e visualizza la Dashboard.

- *Estensioni:* #link(<UC1.2>)[[UC1.2]], #link(<UC1.3>)[[UC1.3]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.2 UC1.1: Reindirizzamento al Provider di Identità <UC1.1>

- *Attore principale:* Utente.

- *Attore secondario:* GitHub.

- *Descrizione:* Gestisce il trasferimento dell'utente verso il provider di identità esterno e la gestione del rientro sulla piattaforma.

- *Precondizioni:* La connessione internet è attiva.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC1>)[[UC1]].

- *Scenario principale:*
  + L’utente viene reindirizzato verso la pagina di autenticazione del provider esterno.
  + L'utente viene reindirizzato nuovamente verso la piattaforma _Code Guardian_ con l'esito positivo della procedura esterna.

- *Scenari alternativi:* 
  + Al passo 2, l'utente rientra nella piattaforma visualizzando una notifica di accesso annullato o fallito (*<\<extend>>* #link(<UC1.3>)[[UC1.3]]).
  + In qualsiasi momento del flusso, si verifica un fallimento tecnico nella comunicazione con il provider (es. timeout, servizio non raggiungibile) (*<\<extend>>* #link(<UC1.4>)[[UC1.4]]).

- *Postcondizioni:* L'utente si trova nuovamente nell'ambiente della piattaforma.

- *Estensioni:* #link(<UC1.3>)[[UC1.3]], #link(<UC1.4>)[[UC1.4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.4 UC1.2: Registrazione Primo Accesso <UC1.2>

- *Attore principale:* Utente.

- *Descrizione:* L'utente completa la creazione del proprio profilo al primo accesso, selezionando il ruolo con cui operare all'interno della piattaforma.

- *Precondizioni:* L'utente ha completato con successo l'autenticazione presso il provider esterno.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1>)[[UC1]] (primo accesso rilevato).

- *Scenario principale:*
    + L'utente visualizza la schermata di completamento profilo con i dati anagrafici (username, email) importati dal provider.
    + L'utente seleziona il ruolo desiderato tra quelli disponibili (Developer, Project Manager o Business Owner).
    + L'utente conferma la registrazione.
    + L'utente visualizza una notifica di avvenuta creazione dell'account.

- *Postcondizioni:* Il nuovo utente è registrato e la sessione è attiva nel ruolo selezionato.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.5 UC1.3: Annullamento Autenticazione <UC1.3>

- *Attore principale:* Utente.

- *Descrizione:* L'utente prende atto del mancato accesso dovuto a una sua scelta esplicita (annullamento) o per la negazione dei consensi.

- *Precondizioni:* L'utente ha selezionato "Annulla" o ha negato i consensi sull'interfaccia del provider durante la procedura di accesso.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1.1>)[[UC1.1]].

- *Scenario principale:*
  + L'utente visualizza un messaggio che conferma l'annullamento dell'operazione di login.
  + L’utente si ritrova nella schermata iniziale di login, pronta per un nuovo tentativo.

- *Postcondizioni:* L’utente non è autenticato e si trova nella pagina di login.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.6 UC1.4: Errore Tecnico di Comunicazione <UC1.4>

- *Attore principale:* Utente.

- *Attore secondario:* _GitHub_.

- *Descrizione:* L'utente riscontra un disservizio tecnico che impedisce il completamento del flusso di autenticazione.

- *Precondizioni:* Il servizio esterno (_GitHub_) non è raggiungibile o si è verificato un errore di rete.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1.1>)[[UC1.1]].

- *Scenario principale:*
  + L'utente visualizza una schermata o un messaggio di avviso relativo a problemi di comunicazione con il servizio esterno (es. "Servizio non disponibile").
  + L'utente visualizza l'opzione per riprovare la connessione.

- *Postcondizioni:* L’utente non è autenticato e visualizza l'avviso di errore e l'opzione per riprovare la connessione.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.6 UC2: Aggiunta di un repository per l'analisi <UC2>

// #figure(image("diagramma_uc2.png"), caption: [Diagramma del caso d'uso UC2])

- *Attore principale:* Developer.

- *Descrizione:* Consente al Developer di registrare un nuovo repository _GitHub_ nella piattaforma per avviare il processo di analisi.

- *Precondizioni:* Il Developer è autenticato e ha accesso alla dashboard.

- *Trigger:* Il Developer seleziona l'opzione per aggiungere un nuovo repository dalla dashboard.

- *Scenario principale:*
  + Il Developer visualizza l'interfaccia per l'inserimento dei dati del repository.
  + Il Developer inserisce l'URL del repository _GitHub_ che desidera analizzare (*<\<include>>* #link(<UC2.1>)[[UC2.1]]).
  + Il Developer conferma l'operazione.
  + Il Developer visualizza il nuovo repository aggiunto correttamente alla lista dei suoi progetti.

- *Scenari alternativi:* 
  + Al passo 3, il Developer visualizza un messaggio di errore relativo all'invalidità dell'URL o all'inesistenza del repository (*<\<extend>>* #link(<UC2.2>)[[UC2.2]]).
  + Al passo 3, il Developer visualizza una richiesta di autenticazione aggiuntiva poiché il repository risulta privato (*<\<extend>>* #link(<UC2.3>)[[UC2.3]]).

- *Postcondizioni:* Il repository è visibile nella lista dei progetti del Developer.

- *Inclusioni:* #link(<UC2.1>)[[UC2.1]].
- *Estensioni:* #link(<UC2.2>)[[UC2.2]], #link(<UC2.3>)[[UC2.3]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.7 UC2.1: Inserimento URL repository <UC2.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer compila il campo relativo all'URL del repository.

- *Precondizioni:* L'interfaccia di aggiunta repository è attiva.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC2>)[[UC2]].

- *Scenario principale:* Il Developer digita o incolla l'URL del repository _GitHub_ nel campo di testo apposito.

- *Postcondizioni:* Il campo di input contiene l'URL specificato.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.8 UC2.2: Errore di Validazione Repository <UC2.2>

- *Attore principale:* Developer.

- *Descrizione:* L'utente prende visione dell'impossibilità di aggiungere il repository dovuta a un formato dell'URL non valido o al mancato raggiungimento della risorsa (es. inesistente).

- *Precondizioni:* Il Developer ha confermato l'inserimento e la verifica automatica ha dato esito negativo.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC2>)[[UC2]].

- *Scenario principale:*
  + Il Developer visualizza un messaggio di errore che specifica la natura del problema (es. "Il formato dell'url è errato o il repository non è stato trovato").
  + Il Developer modifica l'URL nel campo di input per correggere l'errore.

- *Postcondizioni:* L'utente si trova nuovamente nella condizione di poter confermare l'inserimento.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.9 UC2.3: Repository Privato (Richiesta Token) <UC2.3>

- *Attore principale:* Developer.

- *Descrizione:* Gestisce il caso in cui il repository sia raggiungibile ma richieda permessi di accesso (repository privato).

- *Precondizioni:* Il repository indicato è esistente ma protetto.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC2>)[[UC2]].

- *Scenario principale:*
  + Il Developer visualizza un avviso che il repository è privato e un campo per l'inserimento del Personal Access Token (PAT).
  + Il Developer inserisce il token richiesto e conferma nuovamente l'operazione.
  + Il flusso riprende dalla verifica del repository (rientro in #link(<UC2>)[[UC2]]).

- *Scenari alternativi:* Il Developer annulla l'operazione se non possiede il token.

- *Postcondizioni:* Il sistema dispone delle credenziali per accedere al repository privato.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.9 UC4: Avvio di un'analisi on-demand <UC4>

// #figure(image("diagramma_uc4.png"), caption: [Diagramma del caso d'uso UC4])

- *Attore principale:* Developer.

- *Attore secondario:* Orchestratore.

- *Descrizione:* Permette al developer di richiedere manualmente l'avvio immediato di un ciclo di analisi completo su un repository registrato.

- *Precondizioni:* Il repository è stato aggiunto correttamente al sistema #link(<UC2>)[[UC2]] e non è in corso un'altra analisi per il medesimo repository.

- *Trigger:* Il developer vuole ottenere un report aggiornato sulla qualità e la sicurezza di un repository registrato.

- *Scenario principale:*
  + Il developer identifica il repository da analizzare (lista dei suoi repository sulla dashboard o dalla pagina progetto vuota #link(<UC5.2>)[[UC5.2]]).
  + Il developer preme il pulsante "Avvia Analisi".
  + Il sistema invia una richiesta di analisi all'Orchestratore.

- *Scenari alternativi:* Il Developer tenta di avviare un'analisi, ma un'altra è già in corso per lo stesso repository (*<\<extend>>* #link(<UC4.1>)[[UC4.1]]).

- *Postcondizioni:* Il sistema avvia il processo di analisi per il repository selezionato, l'Orchestratore riceve la richiesta iniziando il flusso di lavoro e lo stato del repository viene aggiornato a "Analisi in corso".

- *Estensioni:* #link(<UC4.1>)[[UC4.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.10 UC4.1: Analisi già in corso <UC4.1>

- *Attore principale:* Developer.

- *Descrizione:* Impedisce l'avvio di un'analisi on-demand se un processo di audit per il medesimo repository è già attivo.

- *Precondizioni:* Il developer ha tentato di avviare un'analisi #link(<UC4>)[[UC4]] e il sistema ha rilevato che un processo di analisi per quel repository è già attivo.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC4>)[[UC4]].

- *Scenario principale:*
  Il sistema notifica a schermo al developer che un'analisi è già in esecuzione per il repository selezionato e che non è possibile avviare una nuova scansione.

- *Postcondizioni:* La nuova richiesta di analisi non viene avviata e il sistema visualizza un messaggio informativo per l'utente.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.11 UC5: Visualizzazione della dashboard di uno specifico repository <UC5>

// #figure(image("diagramma_UC5.png"), caption: [Diagramma del caso d'uso UC5])

- *Attore principale:* Developer.

- *Descrizione:* Il Developer accede alla dashboard di un repository per consultare lo stato dell'analisi. Il sistema presenta sempre una valutazione sintetica e, in base ai dati disponibili, propone l'approfondimento sulle specifiche verticali (Test, Sicurezza, Documentazione).

- *Precondizioni:* Il developer è autenticato.

- *Trigger:* Il Developer seleziona un repository dalla lista dei suoi progetti.

- *Scenario principale:*
  + Il developer seleziona un repository dalla lista dei progetti.
  + Il sistema tenta di recuperare i dati dell'ultima analisi valida.
  + Il sistema mostra la dashboard di sintesi (*<\<include>>* #link(<UC5.1>)[[UC5.1]]).
  + Il sistema verifica quali agenti hanno prodotto risultati validi e abilita i rispettivi pannelli di navigazione (test, sicurezza, documentazione).
  + Il Developer visualizza la dashboard completa e le opzioni di approfondimento disponibili, che può selezionare e consultare (*<\<extend>>* #link(<UC5.3>)[[UC5.3]], #link(<UC5.4>)[[UC5.4]], #link(<UC5.5>)[[UC5.5]]).

- *Scenario secondario:* Il sistema non trova alcuna analisi completata per il repository selezionato (*<\<extend>>* #link(<UC5.2>)[[UC5.2]]).

*Postcondizioni:* L'utente visualizza la dashboard del repository ed ha la possibilità di navigare verso i dettagli delle singole analisi.

*Inclusioni:* #link(<UC5.1>)[[UC5.1]]. \

*Estensioni:*
- #link(<UC5.2>)[[UC5.2]]: Se non sono presenti dati di analisi validi.
- #link(<UC5.3>)[[UC5.3]]: Se sono disponibili dati sui test e l'utente seleziona "Dettagli Test".
- #link(<UC5.4>)[[UC5.4]]: Se sono disponibili dati di sicurezza e l'utente seleziona "Dettagli Sicurezza".
- #link(<UC5.5>)[[UC5.5]]: Se sono disponibili dati sulla documentazione e l'utente seleziona "Dettagli Documentazione".

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.12 UC5.2: Visualizzazione Dashboard vuota <UC5.2>

- *Attore principale:* Developer.
- *Descrizione:* Gestisce la visualizzazione della dashboard quando il repository è stato aggiunto ma non è ancora stata completata alcuna analisi. Incoraggia l'utente ad avviare il processo.
- *Trigger:* Condizione di estensione del caso d'uso #link(<UC5>)[[UC5]].
- *Precondizioni:* Il repository non possiede dati storici di analisi (es. è appena stato creato o le analisi precedenti sono fallite).

- *Scenario principale:*
  + Il sistema rileva l'assenza di dati di analisi validi.
  + Il sistema visualizza la struttura della dashboard con i widget valorizzati a zero o con placeholder (es. "N/D").
  + Il sistema mostra un messaggio informativo sullo stato del progetto (es. "Nessuna analisi presente").
  + Il sistema presenta in evidenza il pulsante "Avvia Analisi" per permettere l'azione immediata (*<\<extend>>* #link(<UC4>)[[UC4]]).

*Postcondizioni:* Il Developer visualizza lo stato vuoto del repository e ha a disposizione l'azione per avviare la prima analisi.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.13 UC5.1: Visualizzazione Dashboard di Sintesi <UC5.1>

- *Attore principale:* Developer.

- *Descrizione:* Fornisce una panoramica immediata dello stato di salute del repository mostrandone inidcatori chiave. È la vista di default caricata all'apertura del repository.

- *Precondizioni:* eredita le precondizioni dello use case in cui è incluso, ovvero il developer è autenticato e il repository ha almeno un'analisi in stato "Completato".

- *Trigger:* Caso d'uso incluso in #link(<UC5>)[[UC5]].

- *Scenario principale:*
  + Il sistema calcola e visualizza un "Quality Score" aggregato (media ponderata delle varie analisi).
  + Il sistema mostra i widget riassuntivi per ogni area (es. % copertura Test, n° vulnerabilità critiche, rating documentazione).
  + Il sistema evidenzia eventuali variazioni significative rispetto all'analisi precedente.

*Postcondizioni:* Il Developer visualizza i dati aggregati e i principali indicatori di qualità in un'unica schermata.

#line(length: 100%, stroke: 0.5pt + gray)



=== 3.3.14 UC5.3: Visualizzazione Dettagli Analisi Test <UC5.3>

- *Attore principale:* Developer.
- *Descrizione:* il sistema espone i risultati relativi alla qualità del codice e ai test, permettendo di evidenziare identificando le aree a maggior rischio.
- *Trigger:* L'utente seleziona la voce "Dettagli Test" dalla dashboard di sintesi #link(<UC5>)[[UC5]].
- *Precondizioni:* Sono presenti risultati relativi all'analisi dei test (es. code coverage).

- *Scenario principale:*
  + Il sistema carica la vista dettagliata dei test eseguiti.
  + Viene mostrato il grafico di copertura del codice (Code Coverage) suddiviso per cartelle o moduli.
  + Il sistema elenca i file specifici con bassa copertura o test falliti.
  + Il sistema mostra metriche di complessità ciclomatica se disponibili.

*Postcondizioni:* Il Developer ha accesso alle metriche granulari sui test e identifica i file che necessitano di maggiore copertura.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.15 UC5.4: Visualizzazione Dettagli Analisi Sicurezza <UC5.4>

- *Attore principale:* Developer.
- *Descrizione:* il sistema espone i risultati relativi alle vulnerabilità rilevate nel codice e nelle dipendenze, classificate per gravità, permettendo al Developer di prioritizzare gli interventi.
- *Trigger:* L'utente seleziona la voce "Dettagli Sicurezza" dalla dashboard di sintesi #link(<UC5>)[[UC5]].
- *Precondizioni:* Sono presenti risultati relativi all'analisi di sicurezza (OWASP).

- *Scenario principale:*
  + Il sistema carica la vista dettagliata della Sicurezza.
  + Il sistema visualizza la lista delle vulnerabilità trovate, raggruppate per livello di rischio (Critico, Alto, Medio, Basso).
  + Per ogni vulnerabilità, il sistema mostra i dettagli tecnici (es. file coinvolto, riga di codice).
  + Il sistema evidenzia eventuali "segreti" (chiavi API, token) esposti nel codice.

*Postcondizioni:* Il Developer visualizza l'elenco completo delle falle di sicurezza e delle dipendenze vulnerabili presenti nel progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.16 UC5.5: Visualizzazione Dettagli Analisi Documentazione <UC5.5>

- *Attore principale:* Developer.
- *Descrizione:* Analizza la completezza e la qualità della documentazione di progetto, verificando la presenza di file standard e la conformità delle descrizioni.
- *Trigger:* L'utente seleziona la voce "Dettagli Documentazione" dalla dashboard di sintesi #link(<UC5>)[[UC5]].
- *Precondizioni:* Sono presenti risultati relativi all'analisi della documentazione.

- *Scenario principale:*
  + Il sistema carica la vista dettagliata della Documentazione.
  + Il sistema mostra una checklist dei file essenziali rilevati (es. `README.md`, `LICENSE`, `CONTRIBUTING.md`).
  + Il sistema fornisce un punteggio di leggibilità o completezza per il file `README`.
  + Vengono segnalate eventuali incongruenze o sezioni mancanti nella documentazione delle API (se rilevate).

*Postcondizioni:* Il Developer prende visione dello stato della documentazione e delle parti mancanti o incomplete.

#line(length: 100%, stroke: 0.5pt + gray)
