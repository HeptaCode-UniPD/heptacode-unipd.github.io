#show link: it => text(fill: rgb("#6a00f4"), it)

#show table.cell: block.with(breakable: false)

#let storia_modifiche = (
  // AGGIUNGI QUI SOPRA LA NUOVA RIGA QUANDO SERVE, LA VERSIIONE DEL DOC VIENE AGGIORNATA AUTOMATICAMENTE
  ("0.0.4", "2025-12-21", "Alberto Reginato", "Angela Canazza", "Modellazione UC da UC2.3.1 a UC7"),
  ("0.0.3", "2025-12-18", "Alberto Reginato", "Angela Canazza", "Rimodellazione UC fino UC2.3"),
  ("0.0.2", "2025-12-17", "Alberto Reginato", "Angela Canazza", "Rimodellazione UC fino UC1.4"),
  ("0.0.1", "2025-12-15", "Alberto Reginato", "Angela Canazza", "Creazione struttura del documento e prima bozza"),
)

#let versione = storia_modifiche.first().at(0)
#let data_versione = storia_modifiche.first().at(1)
#let titolo = "Analisi dei requisiti"
#let gruppo = "Hepta Code"

#set page(
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
  #text(weight: "bold", size: 17pt)[Descrizione] \
  #v(0.5em)
  #block(width: 80%)[
    Il presente documento contiene l'_Analisi dei Requisiti_ redatta dal gruppo _Hepta Code_ per il capitolato C2 proposto da _Var Group_.
  ]
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

L'architettura e l'interfaccia utente di _Code Guardian_ sono state ideate per servire trasversalmente le esigenze di questi tre profili. Tuttavia, come verrà esposto in maniera più dettagliata nel capitolo #link(<Cap2.4>)[2.4, Limiti del sistema], l'implementazione corrente del prototipo si concentra verticalmente sulla _persona_ del *Developer*.

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

== 2.4 Limiti del Sistema <Cap2.4>
Per garantire la fattibilità del progetto entro le scadenze accademiche e focalizzare lo sviluppo sul valore _core_, sono stati definiti i seguenti confini operativi che delimitano il perimetro del prototipo realizzato:

- *Focalizzazione sul profilo Developer:* l'implementazione corrente supporta verticalmente le funzionalità operative dedicate al _Developer_. Le *dashboard* strategiche, le metriche di costo e le viste aggregate dedicate ai profili _Project Manager_ e _Business Owner_ sono considerate sviluppi futuri e non sono incluse in questa versione.

- *Integrazione esclusiva GitHub:* Il sistema supporta unicamente _repository_ ospitati sulla piattaforma _GitHub_, utilizzando le sue API specifiche per l'autenticazione e la gestione del codice. Non sono previste integrazioni con altri provider (es. _GitLab_, _Bitbucket_) in questa fase.

- *Remediation semi-automatica:* Per motivi di sicurezza e affidabilità, le azioni di correzione del codice proposte dagli agenti non verranno mai applicate automaticamente sul _branch_ principale. Il sistema si limita a generare _Pull Request_ o _snippet_ di codice che richiedono la revisione e l'approvazione umana.

- *Limiti dell'Intelligenza Artificiale:* Essendo il sistema basato su _Large Language Models_ (LLM), i suggerimenti di analisi e refactoring sono soggetti ai limiti intrinseci di tale tecnologia, inclusa la possibilità di "allucinazioni" (suggerimenti sintatticamente corretti ma semanticamente errati) o falsi positivi nell'individuazione delle vulnerabilità.

- [Altro...]

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

  [*Identificatore*],[È un codice univoco, strutturato secondo la notazione gerarchica UCx.y (o UCx.y.z per sottocasi specifici),, che viene assegnato a ogni singolo Caso d'Uso per individuarlo in modo inequivocabile all'interno dell'intera documentazione di progetto. La sua funzione primaria è quella di garantire una rapida rintracciabilità dei requisiti lungo tutto il ciclo di vita del software senza ambiguità.],
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

=== 3.3.3 UC1.2: Registrazione Primo Accesso <UC1.2>

- *Attore principale:* Utente.

- *Descrizione:* L'utente completa la creazione del proprio profilo al primo accesso, selezionando il ruolo *iniziale* con cui operare all'interno della piattaforma.

- *Precondizioni:* L'utente ha completato con successo l'autenticazione presso il provider esterno.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1>)[[UC1]] (primo accesso rilevato).

- *Scenario principale:*
    + L'utente visualizza la schermata di completamento profilo con i dati anagrafici (username, email) importati dal provider.
    + L'utente seleziona il ruolo desiderato tra quelli disponibili (Developer, Project Manager o Business Owner).
    + L'utente conferma la registrazione.
    + L'utente visualizza una notifica di avvenuta creazione dell'account.

- *Postcondizioni:* Il nuovo utente è registrato e la sessione è attiva nel ruolo selezionato.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.4 UC1.3: Annullamento Autenticazione <UC1.3>

- *Attore principale:* Utente.

- *Descrizione:* L'utente prende atto del mancato accesso dovuto a una sua scelta esplicita (annullamento) o per la negazione dei consensi.

- *Precondizioni:* L'utente ha selezionato "Annulla" o ha negato i consensi sull'interfaccia del provider durante la procedura di accesso.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1.1>)[[UC1.1]].

- *Scenario principale:*
  + L'utente visualizza un messaggio che conferma l'annullamento dell'operazione di login.
  + L’utente si ritrova nella schermata iniziale di login, pronta per un nuovo tentativo.

- *Postcondizioni:* L’utente non è autenticato e si trova nella pagina di login.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.5 UC1.4: Errore Tecnico di Comunicazione <UC1.4>

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
  + Il Developer inserisce il token richiesto (*<\<include>>* #link(<UC2.3.1>)[[UC2.3.1]]).
  + Il Developer conferma nuovamente l'operazione.
  + Il flusso riprende dalla verifica del repository (rientro in #link(<UC2>)[[UC2]]).

- *Scenari alternativi:* Il Developer annulla l'operazione se non possiede il token o non desidera fornirlo.

- *Postcondizioni:* Il sistema dispone delle credenziali per accedere al repository privato.

- *Inclusioni:* #link(<UC2.3.1>)[[UC2.3.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.10 UC2.3.1: Inserimento Token di Accesso <UC2.3.1>

- *Attore principale:* Developer.

- *Descrizione:* Rappresenta l'azione del Developer di inserire il Personal Access Token (PAT) in modo sicuro, gestendo la visibilità del dato sensibile.

- *Precondizioni:* Il sistema ha richiesto al Developer di fornire un token di autenticazione.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC2.3>)[[UC2.3]].

- *Scenario principale:*
  + Il Developer incolla il token nel campo di testo dedicato.
  + Il Developer visualizza di default i caratteri mascherati (es. asterischi o pallini), ma dispone del controllo "Mostra/Nascondi" per verificare la correttezza della stringa inserita.

- *Postcondizioni:* Il campo di input contiene il token valido.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.11 UC3: Accesso alla Dashboard del Repository <UC3>



- *Attore principale:* Developer.

- *Descrizione:* Il Developer accede all'area dedicata a uno specifico repository. La pagina contiene le metriche di sintesi ed il pulsante per avviare una nuova analisi.

- *Precondizioni:* Il Developer è autenticato e visualizza la lista dei propri progetti.

- *Trigger:* Il Developer seleziona un repository dalla lista progetti.

- *Scenario principale:*
  + Il Developer visualizza la struttura generale della dashboard.
  + Il Developer visualizza la sezione di sintesi composta dai widget per le tre aree di analisi (*<\<include>>* #link(<UC3.1>)[[UC3.1]]).
  + Il Developer visualizza il pulsante per avviare una nuova analisi (*<\<extend>>* #link(<UC4>)[[UC4]]).

- *Postcondizioni:* L'utente visualizza lo stato attuale del repository e le azioni disponibili.

- *Inclusioni:* #link(<UC3.1>)[[UC3.1]].
- *Estensioni:*
  - #link(<UC3.3>)[[UC3.3]]: Se l'utente seleziona "Dettagli Test".
  - #link(<UC3.4>)[[UC3.4]]: Se l'utente seleziona "Dettagli Sicurezza".
  - #link(<UC3.5>)[[UC3.5]]: Se l'utente seleziona "Dettagli Documentazione".
  - #link(<UC4>)[[UC4]]: Se l'utente seleziona "Avvia Analisi".

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.12 UC3.1: Visualizzazione Sezione di Sintesi <UC3.1>

- *Attore principale:* Developer.

- *Descrizione:* Aggrega i widget specifici per le tre aree di analisi (Test, Sicurezza, Documentazione) fornendo una visione d'insieme.

- *Precondizioni:* La dashboard del repository è attiva.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC3>)[[UC3]].

- *Scenario principale:*
  + Il Developer visualizza il widget relativo alla qualità del software (*<\<include>>* #link(<UC3.1.1>)[[UC3.1.1]]).
  + Il Developer visualizza il widget relativo alla sicurezza (*<\<include>>* #link(<UC3.1.2>)[[UC3.1.2]]).
  + Il Developer visualizza il widget relativo alla documentazione (*<\<include>>* #link(<UC3.1.3>)[[UC3.1.3]]).

- *Postcondizioni:* I tre widget sono renderizzati a schermo.

- *Inclusioni:* #link(<UC3.1.1>)[[UC3.1.1]], #link(<UC3.1.2>)[[UC3.1.2]], #link(<UC3.1.3>)[[UC3.1.3]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.13 UC3.1.1: Visualizzazione Widget Test <UC3.1.1>

- *Attore principale:* Developer.

- *Descrizione:* Gestisce la visualizzazione dei dati di sintesi per l'area Testing.

- *Precondizioni:* La sezione di sintesi è in fase di caricamento.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC3.1>)[[UC3.1]].

- *Scenario principale:*
  + Il Developer visualizza il titolo della sezione "Test".
  + Il Developer visualizza la percentuale aggregata di Code Coverage.
  + Il Developer visualizza il numero di test passati/falliti.
  + Il Developer può selezionare il pulsante "Dettagli" per approfondire le analisi avviate per l'area Test (*<\<extend>>* #link(<UC3.3>)[[UC3.3]]).
  + [Altro...]

- *Scenari alternativi:* In assenza di dati sui test, il Developer visualizza lo stato vuoto (*<\<include>>* #link(<UC3.2>)[[UC3.2]]).

- *Postcondizioni:* Il widget Test è visualizzato.

- *Inclusioni:* #link(<UC3.2>)[[UC3.2]].
- *Estensioni:* #link(<UC3.3>)[[UC3.3]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.14 UC3.1.2: Visualizzazione Widget Sicurezza <UC3.1.2>

- *Attore principale:* Developer.

- *Descrizione:* Gestisce la visualizzazione dei dati di sintesi per l'area Sicurezza.

- *Precondizioni:* La sezione di sintesi è in fase di caricamento.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC3.1>)[[UC3.1]].

- *Scenario principale:*
  + Il Developer visualizza il titolo "Sicurezza".
  + Il Developer visualizza il contatore totale delle vulnerabilità rilevate.
  + Il Developer visualizza la ripartizione per gravità (Alta, Media, Bassa).
  + Il Developer può selezionare il pulsante "Dettagli" per approfondire le analisi avviate per l'area Sicurezza (*<\<extend>>* #link(<UC3.4>)[[UC3.4]]).
  + [Altro...]

- *Scenari alternativi:* In assenza di dati di sicurezza, il Developer visualizza lo stato vuoto (*<\<include>>* #link(<UC3.2>)[[UC3.2]]).

- *Postcondizioni:* Il widget Sicurezza è visualizzato.

- *Inclusioni:* #link(<UC3.2>)[[UC3.2]].
- *Estensioni:* #link(<UC3.4>)[[UC3.4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.15 UC3.1.3: Visualizzazione Widget Documentazione <UC3.1.3>

- *Attore principale:* Developer.

- *Descrizione:* Gestisce la visualizzazione dei dati di sintesi per l'area Documentazione.

- *Precondizioni:* La sezione di sintesi è in fase di caricamento.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC3.1>)[[UC3.1]].

- *Scenario principale:*
  + Il Developer visualizza il titolo "Documentazione".
  + Il Developer visualizza il rating qualitativo (es. punteggio %).
  + Il Developer visualizza la checklist dei file essenziali presenti.
  + Il Developer può selezionare il pulsante "Dettagli" per approfondire le analisi avviate per l'area Documentazione (*<\<extend>>* #link(<UC3.5>)[[UC3.5]]).
  + [Altro...]

- *Scenari alternativi:* In assenza di dati sulla documentazione, il Developer visualizza lo stato vuoto (*<\<include>>* #link(<UC3.2>)[[UC3.2]]).

- *Postcondizioni:* Il widget Documentazione è visualizzato.

- *Inclusioni:* #link(<UC3.2>)[[UC3.2]].
- *Estensioni:* #link(<UC3.5>)[[UC3.5]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.16 UC3.2: Visualizzazione Widget Vuoto <UC3.2>

- *Attore principale:* Developer.

- *Descrizione:* Caso d'uso che definisce l'aspetto di un widget di sintesi quando mancano i dati specifici per quell'area.

- *Precondizioni:* L'area di analisi specifica non possiede dati storici.

- *Trigger:* Condizione d'inclusione da parte dei widget specifici (#link(<UC3.1.1>)[[UC3.1.1]], #link(<UC3.1.2>)[[UC3.1.2]], #link(<UC3.1.3>)[[UC3.1.3]]).

- *Scenario principale:*
  + Il Developer visualizza il titolo dell'area di riferimento (es. "Sicurezza").
  + Il Developer visualizza un indicatore visivo di stato vuoto (es. "N/D", "--" o icona placeholder).
  + Il Developer visualizza un messaggio o un'icona che suggerisce la necessità di avviare l'analisi per questa sezione.

- *Postcondizioni:* Il widget è visualizzato in modalità placeholder.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.17 UC3.3: Visualizzazione Dettagli Analisi Test <UC3.3>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer consulta i risultati approfonditi relativi alla qualità del codice e ai test, identificando le aree a maggior rischio.

- *Precondizioni:* Sono presenti risultati validi relativi all'analisi dei test.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC3>)[[UC3]].

- *Scenario principale:*
  + Il Developer visualizza il grafico di copertura del codice (Code Coverage) interattivo, suddiviso per moduli.
  + Il Developer consulta l'elenco dei file specifici che presentano una bassa copertura o test falliti.
  + Il Developer visualizza le metriche di complessità ciclomatica per valutare la manutenibilità del codice.
  + [Altro...]

- *Postcondizioni:* Il Developer ha acquisito le metriche granulari sui test.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.18 UC3.4: Visualizzazione Dettagli Analisi Sicurezza <UC3.4>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer consulta l'elenco delle vulnerabilità rilevate nel codice e nelle dipendenze per prioritizzare gli interventi di bonifica.

- *Precondizioni:* Sono presenti risultati validi relativi all'analisi di sicurezza (es. OWASP).

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC3>)[[UC3]].

- *Scenario principale:*
  + Il Developer visualizza la lista delle vulnerabilità rilevate, raggruppate per livello di rischio (Critico, Alto, Medio, Basso).
  + Il Developer espande una vulnerabilità specifica visualizzando i dettagli tecnici (file coinvolto, riga di codice, descrizione CVE).
  + Il Developer visualizza eventuali segnalazioni relative a "segreti" (chiavi API, token) esposti accidentalmente nel codice.
  + [Altro...]

- *Postcondizioni:* Il Developer ha preso visione dell'elenco delle falle di sicurezza e della loro gravità.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.19 UC3.5: Visualizzazione Dettagli Analisi Documentazione <UC3.5>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer analizza la completezza della documentazione di progetto e la conformità agli standard.

- *Precondizioni:* Sono presenti risultati validi relativi all'analisi della documentazione.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC3>)[[UC3]].

- *Scenario principale:*
  + Il Developer visualizza una checklist che indica la presenza o assenza dei file essenziali (es. `README.md`).
  + Il Developer visualizza un punteggio qualitativo relativo alla leggibilità, correttezza o completezza dei file.
  + Il Developer prende visione delle segnalazioni su eventuali incongruenze o sezioni mancanti nella documentazione delle API.
  + [Altro...]

- *Postcondizioni:* Il Developer è informato sullo stato della documentazione e sulle parti mancanti.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.20 UC4: Avvio di un'analisi on-demand <UC4>

// #figure(image("diagramma_uc4.png"), caption: [Diagramma del caso d'uso UC4])

- *Attore principale:* Developer.

- *Descrizione:* Permette al Developer di configurare e avviare manualmente un nuovo ciclo di analisi sul repository, selezionando specifici ambiti (Sicurezza, Test, Documentazione).

- *Precondizioni:* Il repository è registrato e il Developer si trova sulla dashboard del progetto.

- *Trigger:* Il Developer preme il pulsante "Nuova Analisi" presente nella dashboard (#link(<UC3>)[[UC3]]).

- *Scenario principale:*
  + Il Developer visualizza il pannello di configurazione dell'analisi.
  + Il Developer seleziona le tipologie di analisi da eseguire (*<\<include>>* #link(<UC4.1>)[[UC4.1]]).
  + Il Developer conferma l'avvio dell'operazione.
  + Il Developer visualizza un feedback immediato di presa in carico e l'aggiornamento dello stato dei moduli coinvolti.

- *Scenari alternativi:* Al passo 3, il Developer visualizza un avviso che impedisce l'operazione perché un'analisi della stessa tipologia è già in corso (*<\<extend>>* #link(<UC4.2>)[[UC4.2]]).

- *Postcondizioni:* L'interfaccia mostra che il processo di analisi è in esecuzione per gli ambiti selezionati.

- *Inclusioni:* #link(<UC4.1>)[[UC4.1]].
- *Estensioni:* #link(<UC4.2>)[[UC4.2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.21 UC4.1: Selezione Tipologia Analisi <UC4.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer sceglie quali moduli verticali attivare per la sessione di analisi corrente.

- *Precondizioni:* Il pannello di configurazione dell'analisi è attivo.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC4>)[[UC4]].

- *Scenario principale:*
  + Il Developer visualizza le opzioni disponibili (Sicurezza, Test, Documentazione) con il pulsante di conferma inizialmente disabilitato.
  + Il Developer interagisce con i controlli (checkbox) per includere le aree di analisi desiderate.
  + Il Developer visualizza l'abilitazione del pulsante di conferma non appena almeno una tipologia viene selezionata.

- *Postcondizioni:* Le opzioni di configurazione sono impostate e il comando di avvio è accessibile.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.22 UC4.2: Conflitto Tipologia Analisi <UC4.2>

- *Attore principale:* Developer.

- *Descrizione:* L'utente prende atto dell'impossibilità di avviare l'analisi per una o più tipologie selezionate, in quanto risulta già attivo un processo pendente per il medesimo ambito.

- *Precondizioni:* Il Developer ha richiesto l'avvio per una tipologia che è attualmente in fase di esecuzione.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC4>)[[UC4]].

- *Scenario principale:*
  + Il Developer visualizza un messaggio di errore specifico (es. "Analisi Sicurezza già in corso").
  + Il Developer nota che il sistema impedisce l'invio della nuova richiesta.
  + Il Developer può deselezionare la tipologia in conflitto o attendere il termine del processo attivo.

- *Postcondizioni:* Nessuna nuova analisi viene avviata per le tipologie in conflitto.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.23 UC5: Accesso al Menù Utente <UC5>

- *Attore principale:* Utente.

- *Descrizione:* L'utente interagisce con la propria area personale richiamando il menu di navigazione globale. Questo caso d'uso funge da punto di ingresso per le funzionalità di gestione account, cambio ruolo e disconnessione.

- *Precondizioni:* L'utente è autenticato e si trova su una qualsiasi pagina della piattaforma.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale.

- *Scenario principale:*
  + L'utente visualizza il pannello a comparsa del menu utente.
  + L'utente visualizza il riepilogo delle proprie informazioni (Nome, Email, Ruolo attuale).
  + L'utente visualizza le opzioni di gestione disponibili (es. "Cambia Ruolo", "Logout").
  + L'utente può selezionare una delle voci per procedere con l'azione desiderata (*<\<extend>>* #link(<UC6>)[[UC6]], #link(<UC7>)[[UC7]]).

- *Postcondizioni:* Il menu utente è attivo e le opzioni sono selezionabili.

- *Estensioni:*
  - #link(<UC6>)[[UC6]]: Se l'utente seleziona l'opzione "Cambia Ruolo".
  - #link(<UC7>)[[UC7]]: Se l'utente seleziona l'opzione "Logout".

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.24 UC6: Cambio Ruolo Operativo (Context Switch) <UC6>

- *Attore principale:* Utente.

- *Descrizione:* Permette all'utente di cambiare il proprio ruolo attivo all'interno della sessione corrente, aggiornando l'interfaccia e i contenuti visibili in base alle _repository_ precedentemente collegate al ruolo.

- *Precondizioni:* Il menu utente (#link(<UC5>)[[UC5]]) è aperto.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC5>)[[UC5]] (L'utente seleziona la voce "Cambia Ruolo").

- *Scenario principale:*
  + L'utente visualizza l'elenco dei ruoli disponibili per il proprio account (es. se attualmente nel ruolo Developer i ruoli selezionabili saranno Project Manager e Business Owner).
  + L'utente seleziona il nuovo ruolo desiderato.
  + La piattaforma ricarica l'ambiente di lavoro applicando le configurazioni e le viste.

- *Postcondizioni:* L'interfaccia è aggiornata coerentemente con il nuovo ruolo selezionato.

#line(length: 100%, stroke: 0.5pt + gray)

=== 3.3.25 UC7: Logout <UC7>

- *Attore principale:* Utente.

- *Descrizione:* Permette all'utente di terminare la sessione di lavoro corrente.

- *Precondizioni:* Il menu utente (#link(<UC5>)[[UC5]]) è aperto.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC5>)[[UC5]] (L'utente seleziona la voce "Logout").

- *Scenario principale:*
  + L'utente seleziona l'opzione di disconnessione.
  + L'utente viene reindirizzato alla pagina pubblica di accesso (Login).
  + L'utente visualizza il messaggio di avvenuta disconnessione.

- *Postcondizioni:* La sessione utente è terminata e si trova nella pagina iniziale non autenticato dove può effettuare nuovamente l'accesso.

#line(length: 100%, stroke: 0.5pt + gray)