/*
Domande per Cardin sul file:
1) Se ho una situazione in cui è possibile aprire un menù, completare un'azione dopodichè il sistema riporta alla schermata precedente è corretto inserire un include per l'UC della finestra precedente? (es UC6.2.1)
2) In 6.3, ad esempio, è formalmente corretto fare riferimento ad una situazione precedente linkando l'UC a cui ci si riferisce o è meglio descrivere nuovamente la situazione?
3) se la descrizione è "Il Developer vuole consultare un'analisi archiviata relativa all'area testing" allora non è corretto considerare l'azione di consultazione analisi archiviata come un include?
4) Se l'utente è obbligato alla fine a tornare alla pagina precedente, è giusto inserirlo nel flusso principale?
*/


#show link: it => text(fill: rgb("#6a00f4"), it)

#show table.cell: block.with(breakable: false)

#let storia_modifiche = (
  // AGGIUNGI QUI SOPRA LA NUOVA RIGA QUANDO SERVE, LA VERSIIONE DEL DOC VIENE AGGIORNATA AUTOMATICAMENTE
  ("0.8.0", "2026-01-16", "Angela Canazza", "Angela Favaro", "Scrittura requisiti e modifica errori sugli UC"),
  ("0.8.0", "2026-01-12", "Angela Favaro", "Nicola Simionato", "Finale UC Utente e Developer"),
  ("0.7.0", "2026-01-06", "Angela Favaro", "Nicola Simionato", "Revisione UC Utente e Developer"),
  ("0.6.1", "2026-01-05", "Amerigo Vegliante", "Angela Favaro", "Correzione ortografica"),
  ("0.6.0", "2026-01-05", "Amerigo Vegliante", "Angela Favaro", "Creazione UC10 e UC11 nella sezione Business Owner"),
  ("0.5.0", "2025-12-30", "Alberto Reginato", "Laura Venturini", "Creazione UC7,8 e 9; riorganizzato UC secondo le personas"),
  ("0.4.2", "2025-12-28", "Angela Favaro", "Laura Venturini", "Correzioni fino a UC6.3"),
  ("0.4.1", "2025-12-27", "Angela Favaro", "Laura Venturini", "Rifattorizzazione UC1.2"),
  ("0.4.0", "2025-12-23", "Alberto Reginato", "Angela Canazza", "Aggiunta UC da UC3.6 a UC3.7, da UC6 a UC6.4 e fix"),
  ("0.3.0", "2025-12-23", "Alberto Reginato", "Angela Canazza", "Aggiunta UC2.4 e fix"),
  ("0.2.0", "2025-12-21", "Alberto Reginato", "Angela Canazza", "Modellazione UC da UC2.3.1 a UC5.2"),
  ("0.1.2", "2025-12-18", "Alberto Reginato", "Angela Canazza", "Rimodellazione UC fino UC2.3"),
  ("0.1.1", "2025-12-17", "Alberto Reginato", "Angela Canazza", "Rimodellazione UC fino UC1.4"),
  ("0.1.0", "2025-12-15", "Alberto Reginato", "Angela Canazza", "Creazione struttura del documento e prima bozza"),
)

#let versione = storia_modifiche.first().at(0)
#let data_versione = storia_modifiche.first().at(1)
#let titolo = "analisi dei requisiti"
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

#set heading(numbering: "1.1")

\


#align(center, [#image("../../asset/logo.svg", width: 8cm)])

#v(2cm)

#align(center)[
  #text(weight: "bold", size: 17pt)[Descrizione] \
  #v(0.5em)
  #block(width: 80%)[
    Il presente documento contiene l'_analisi dei Requisiti_ redatta dal gruppo _Hepta Code_ per il capitolato C2 proposto da _Var Group_.
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

= Introduzione
== Scopo del Documento

Nel ciclo di vita dello sviluppo software, un'analisi dei requisiti accurata e condivisa rappresenta il fondamento per il successo di un progetto. Questo documento ha l'obiettivo di formalizzare le specifiche funzionali, non funzionali e i vincoli del progetto "_Code Guardian_". Agisce come una fonte di verità unica (_single source of truth_) per il team di sviluppo e per tutti gli stakeholder di VarGroup, con l'obiettivo primario di garantire una comprensione comune e ridurre al minimo le ambiguità che potrebbero emergere nelle fasi successive.\

La struttura del documento è pensata per guidare il lettore attraverso un percorso logico, partendo da una descrizione generale del prodotto e dei suoi utenti, per poi approfondire i requisiti specifici e i modelli di interazione attraverso i casi d'uso. Infine, una matrice di tracciabilità evidenzierà la coerenza tra le funzionalità richieste e le interazioni utente definite.

== Scopo del Prodotto

In un contesto caratterizzato dalla crescente complessità dei progetti software, la necessità di automatizzare i processi di audit e di miglioramento della qualità del codice è diventata un fattore d'importanza critica. Il progetto "_Code Guardian_" nasce per rispondere a questa esigenza, realizzando una piattaforma web intelligente basata su un sistema ad agenti software.

Gli obiettivi principali della piattaforma sono:

- *Analizzare i repository GitHub* per valutare in modo sistematico la qualità del codice, il profilo di sicurezza ed agevolare la manutenibilità a lungo termine.
- *Fornire report automatici e dashboard interattive* che offrano una visione chiara e sintetica dello stato dei test, della sicurezza e della completezza della documentazione.
- *Suggerire azioni di _remediation_* per colmare le lacune identificate, proponendo soluzioni concrete come l'applicazione di best practice, l'integrazione di test mancanti o la correzione di vulnerabilità note (es. OWASP Top 10).

_Code Guardian_ mira quindi ad automatizzare e ottimizzare i processi di audit e miglioramento continuo del codice. Tutto ciò ha lo scopo di semplificare compiti ripetitivi e liberare tempo prezioso agli sviluppatori, permettendo loro di concentrarsi su attività a maggior valore aggiunto e, in secondo luogo, fornire a _Project Manager_ e _Product Owner_ strumenti efficaci per la _governance_ e il monitoraggio qualitativo dei progetti software.

== Definizioni, acronimi e abbreviazioni

La stesura del presente documento fa uso di una terminologia specifica, legata sia al dominio applicativo del progetto "_Code Guardian_" che agli standard dell'Ingegneria del Software. Per facilitare la lettura e assicurare che ogni concetto sia compreso in modo uniforme da tutti i destinatari (team di sviluppo, committente e proponente), è stato redatto un documento di supporto dedicato.

Si faccia pertanto riferimento al #link("https://heptacode-unipd.github.io/docs/CC/glossario.pdf")[_Glossario_] per l'esplicitazione di:
- *Acronimi e sigle* utilizzati per brevità nel testo;
- *Termini tecnici* che potrebbero prestarsi a molteplici interpretazioni;
- *Definizioni di dominio* specifiche per il contesto di audit e qualità del software.

L'uso del glossario è raccomandato per garantire la piena coerenza semantica durante tutte le fasi del ciclo di vita del progetto.

== Riferimenti
Questa sezione elenca i documenti utilizzati come base per la stesura della presente analisi.

=== Riferimenti Normativi
- _Code Guardian_: Piattaforma ad agenti per l’audit e la remediation dei repository software (#link("https://www.math.unipd.it/~tullio/IS-1/2025/progetto/C2.pdf")[Capitolato])
- _Norme di progetto_: Regole, standard e procedure del gruppo _Hepta Code_ (#link("...")[Norme di progetto]).
- [Altro ...]

=== Riferimenti Informativi
- Verbale Interno: #link("https://heptacode-unipd.github.io/docs/RTB/verbali_esterni/vargroup_1.pdf")[Primo Incontro di Design Thinking]
- Slide di lezione: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf")[analisi dei requisiti]
- Documento interno: #link("https://heptacode-unipd.github.io/docs/CC/glossario.pdf")[Glossario]
- [Altro ...]
Questa introduzione delinea il contesto e gli scopi del progetto. Il capitolo seguente procederà con una descrizione dettagliata del prodotto, delle sue funzionalità e dei vincoli che ne guideranno la realizzazione.

#pagebreak()

= Descrizione del prodotto
Per definire correttamente i requisiti di un sistema è fondamentale comprendere il suo contesto operativo, gli utenti a cui si rivolge e le scelte architetturali di alto livello che ne influenzeranno lo sviluppo. Questa sezione fornisce una *visione d'insieme della piattaforma Code Guardian, delineandone gli obiettivi specifici* che il prodotto si propone di raggiungere, le tipologie di *personas utente* a cui è destinato, le loro esigenze e, infine, verranno elencati i *vincoli tecnici* e di progetto che governeranno il processo di sviluppo.

== Funzionalità del Prodotto
Il sistema _Code Guardian_ è concepito per automatizzare il controllo di qualità e sicurezza del software, riducendo il carico cognitivo sugli sviluppatori. Di seguito sono elencate le macro-funzionalità principali che il sistema offre agli utenti, indipendentemente dalla sua implementazione interna.

=== Audit Automatico del Codice
Il sistema esegue un'analisi approfondita del codice sorgente ogni volta che viene rilevata una modifica nel _repository_ (evento di `PUSH`).
- *analisi Statica*: Rilevamento automatico di _code smell_, bug potenziali e violazioni delle convenzioni di stile.
- *Verifica dei test*: Controllo della copertura dei test (_code coverage_) per garantire che le nuove funzionalità siano adeguatamente verificate.

=== Scansione di Sicurezza e Vulnerabilità
Per garantire la robustezza del software, il sistema integra strumenti di controllo specifici per la _security_:
- *Rilevamento Credenziali*: Identificazione di chiavi API, password o token involontariamente committati nel codice (_secret scanning_).
- *analisi delle Dipendenze*: Verifica delle librerie di terze parti per individuare versioni obsolete o affette da vulnerabilità note.
- *Compliance OWASP*: Controllo della conformità agli standard di sicurezza web (es. _OWASP Top 10_).

=== Validazione della documentazione
Il sistema assicura che il progetto mantenga un alto livello di manutenibilità verificando la presenza e la qualità della documentazione:
- *Check Strutturale*: Verifica della presenza di file essenziali (es. `README.md`).
- *Coerenza API*: Controllo della corrispondenza tra il codice implementato e la documentazione delle interfacce (es. specifiche _OpenAPI/Swagger_).

=== remediation Proattiva
A differenza dei semplici strumenti di reportistica, _Code Guardian_ agisce attivamente per risolvere i problemi:
- *Suggerimenti di Correzione*: Il sistema non si limita a segnalare l'errore, ma genera proposte concrete di codice correttivo.
- *Creazione pull request*: Se l'utente approva un suggerimento, il sistema crea automaticamente un _branch_ dedicato e una _pull request_ pronta per la revisione, senza richiedere intervento manuale per la scrittura del codice.

=== Monitoraggio e dashboard
Il sistema fornisce un punto di accesso centralizzato per la consultazione dello stato di salute dei progetti:
- *Visione Aggregata*: Visualizzazione di metriche chiave indicatori relativi qualità del codice per singoli _repository_ o per interi gruppi di progetti.
- *Storico analisi*: Consultazione dei report passati per valutare l'evoluzione della qualità del software nel tempo.

== Utenti e Stakeholder (Personas) <Cap2.2>
Per creare un prodotto realmente utile è fondamentale in prima istanza comprendere le reali esigenze e necessità degli utenti finali a cui la piattaforma è destinata a rivolgersi. \
L'analisi condotta durante la sessione di _Design Thinking_ ha permesso di identificare e definire *tre profili utente principali*, ciascuno con obiettivi e necessità specifiche. Le funzionalità della piattaforma sono state progettate per rispondere in modo mirato alle aspettative di queste _personas_.

=== Developer
Il _Developer_ è l'utente tecnico primario del sistema. Interagisce quotidianamente con i _repository_ di codice e ha bisogno di strumenti che lo supportino nel migliorare la qualità del suo lavoro in modo rapido ed efficiente.

*Esigenze principali:*
- Visualizzare *suggerimenti* di miglioria concreti, applicabili direttamente nel codice, e consigli su nuove librerie o tecnologie.
- Disporre di strumenti per accelerare la *stesura e la standardizzazione della documentazione*.
- Consultare lo *storico delle analisi e avere una visione aggregata dei repository associati* al proprio account.
- Avere una visione chiara e dettagliata delle *metriche di codice*, come la copertura dei test (code coverage) e la complessità ciclomatica.
- Verificare la *conformità del codice agli standard di sicurezza* aziendali e alle _best practice_ del settore (es. _OWASP_).

=== Project Manager
Il _Project Manager_ ha la responsabilità di supervisionare l'avanzamento di uno o più progetti. Necessita di una visione d'insieme che gli consenta di monitorare lo stato di salute dei _repository_, la produttività del team e la conformità agli standard qualitativi.

*Esigenze principali:*
- Ottenere una *visione d'insieme sullo stato di avanzamento e sulla qualità dei progetti*.
- Monitorare l'evoluzione di *metriche chiave* (es. copertura test, vulnerabilità) nel tempo.
- Classificare e confrontare i _repository_ in base a specifici indici di qualità.
- Mappare le tecnologie utilizzate all'interno dei team per una migliore pianificazione delle risorse.
- Visualizzare i risultati aggregati dei test e delle analisi di sicurezza (OWASP).

=== Business Owner
Il _Business Owner_ è lo _stakeholder_ con una visione strategica. Il principale _focus_ per questa figura sono non tanto i dettagli tecnici, quanto indicatori aggregati che gli permettano di valutare la qualità complessiva dei progetti di proprio interesse e l'efficienza dei team di sviluppo.

*Esigenze principali:*
- Accedere a una vista *non tecnica* e di alto livello sullo stato dei progetti.
- Disporre di indici di coerenza qualitativa tra i diversi progetti e team.
- Ottenere statistiche generali sull'efficienza e la maturità dei team di sviluppo.
- Monitorare la progressione dei *costi e la rendicontazione*.
- Accedere a statistiche generali sulla salute e la sicurezza (es. copertura OWASP) dei progetti.
- Ricevere suggerimenti strategici su nuove tecnologie.

L'architettura e l'interfaccia utente di _Code Guardian_ sono state ideate per servire trasversalmente le esigenze di questi tre profili. Tuttavia, come verrà esposto in maniera più dettagliata nel capitolo #link(<Cap2.4>)[2.4, Limiti del sistema], l'implementazione corrente del prototipo si concentra verticalmente sulla _persona_ del *Developer*.

== Vincoli del Prodotto
Lo sviluppo del progetto dovrà sottostare ad una serie di vincoli tecnici ed architetturali definiti dalla committente per garantire la qualità, la manutenibilità e la corretta consegna del prodotto finale.

=== Vincoli di progetto
- *Copertura dei test*: Il codice sorgente della piattaforma dovrà essere coperto per un minimo del *70%* da test di unità automatizzati.
- *Modularità*: L'applicativo dovrà essere progettato e realizzato con un'architettura modulare, per facilitare l'estensione futura delle sue funzionalità (ad esempio, con nuovi agenti).
- [Altro ...]

=== Tecnologie di Sviluppo
In accordo con le linee guida fornite dal proponente _VarGroup_, il team ha definito uno _stack_ tecnologico mirato a garantire modularità e scalabilità.

La logica _core_ della piattaforma, costituita dall'architettura multi-agente e dai flussi di orchestrazione, sarà sviluppata adottando un approccio ibrido basato su *Node.js* e *Python*. Questa scelta permette di coniugare l'efficienza nella gestione asincrona degli eventi (tipica di Node.js) con le potenti capacità di analisi dati e _machine learning_ offerte dall'ecosistema Python, fondamentali per gli agenti di _audit_.

L'interfaccia utente, punto di accesso principale per _Developer_ e _Project Manager_, sarà realizzata come _Single Page Application_ (SPA) utilizzando il framework *React.js*. L'obiettivo è fornire una *dashboard* reattiva e dinamica, capace di visualizzare in tempo reale i risultati delle analisi e i suggerimenti di _remediation_.

Per quanto riguarda la persistenza dei dati, la scelta è ricaduta su *MongoDB*. La natura *schema-less* di questo database documentale garantisce la flessibilità necessaria per memorizzare report di analisi dalla struttura eterogenea. Inoltre, le sue funzionalità native supportano efficacemente il tracciamento delle diverse *versioni* dei dati e offrono componenti di *ricerca vettoriale*, determinanti per potenziare le capacità di recupero contestuale delle informazioni da parte degli agenti intelligenti.

Infine, l'infrastruttura operativa sarà fortemente integrata con l'ecosistema *GitHub*: le *GitHub Actions* gestiranno i flussi di _CI/CD_ e l'innesco degli agenti, mentre l'architettura _cloud_ sottostante sarà ospitata sui servizi *AWS* (_Amazon Web Services_), garantendo la disponibilità e le risorse computazionali necessarie per l'esecuzione parallela degli agenti.

== Limiti del Sistema <Cap2.4>
Per garantire la fattibilità del progetto entro le scadenze accademiche e focalizzare lo sviluppo sul valore _core_, sono stati definiti i seguenti confini operativi che delimitano il perimetro del prototipo realizzato:

- *Focalizzazione sul profilo Developer:* l'implementazione corrente supporta verticalmente le funzionalità operative dedicate al _Developer_. Le *dashboard* strategiche, le metriche di costo e le viste aggregate dedicate ai profili _Project Manager_ e _Business Owner_ sono considerate sviluppi futuri e non sono incluse in questa versione.

- *Integrazione esclusiva GitHub:* Il sistema supporta unicamente _repository_ ospitati sulla piattaforma _GitHub_, utilizzando le sue API specifiche per l'autenticazione e la gestione del codice. Non sono previste integrazioni con altri provider in questa fase.

- *remediation semi-automatica:* Per motivi di sicurezza e affidabilità, le azioni di correzione del codice proposte dagli agenti non verranno mai applicate automaticamente sul _branch_ principale. Il sistema si limita a generare _pull request_ o _snippet_ di codice che richiedono la revisione e l'approvazione umana.

- *Limiti dell'Intelligenza Artificiale:* Essendo il sistema basato su _Large Language Models_ (LLM), i suggerimenti di analisi e refactoring sono soggetti ai limiti intrinseci di tale tecnologia, inclusa la possibilità di "allucinazioni" (suggerimenti sintatticamente corretti ma semanticamente errati) o falsi positivi nell'individuazione delle vulnerabilità.

- [Altro...]

#pagebreak()

= Casi d'uso

== Introduzione

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

  [*Identificatore*],[È un codice univoco, strutturato secondo la notazione gerarchica UCx.y (o UCx.y.z per casi specifici),, che viene assegnato a ogni singolo Caso d'Uso per individuarlo in modo inequivocabile all'interno dell'intera documentazione di progetto. La sua funzione primaria è quella di garantire una rapida rintracciabilità dei requisiti lungo tutto il ciclo di vita del software senza ambiguità.],
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

Il paragrafo successivo andrà ad identificare invece gli attori che interagiranno con il sistema.

== Attori

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

== Specifica dei casi d'uso - Utente

#outline(title: "Indice dei contenuti")

#pagebreak()


== Specifica dei casi d'uso - Utente

=== UC1 - Accesso alla piattaforma 
#align(center, [#image("../../asset/UC/user/UC1.png", height: 7cm)])
<UC1>
- *Attore principale:* Utente.

- *Attore secondario:* GitHub.

- *Descrizione:* L’utente accede a _Code Guardian_ delegando l'autenticazione al provider esterno (GitHub).

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L’utente interagisce con la funzionalità di login nella pagina iniziale.

- *Scenario principale:*
  + L’utente esprime la volontà di accedere tramite il provider GitHub.
  + L'utente completa la procedura di autenticazione esterna.
  + L'utente accede alla propria dashboard personale.

- *Scenari alternativi:* \
  Al passo 1: \
  - l'utente esprime la volontà di annullare l'autenticazione (*<\<extend>>* #link(<UC1.1>)[[UC1.1]]) 
  Al passo 2: \
  - Si verifica un errore durante la procedura.
    - Il sistema mostra un messaggio di errore.
    - Il sistema reindirizza l'utente alla pagina di Login.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* L’utente è autenticato e visualizza la dashboard.

- *Estensioni:* #link(<UC1.1>)[[UC1.1]].
- *Generalizzazioni:* #link(<UC1.2>)[[UC1.2]].
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.1 - Annullamento accesso alla piattaforma
<UC1.1>
- *Attore principale:* Utente.

- *Descrizione:* L'utente annulla la procedura di accesso alla piattaforma _Code Guardian_.

- *Precondizioni:* L'utente ha selezionato il tasto di annullamento dell'operazione di autenticazione.

- *Trigger:* Condizione di estensione dei casi d'uso #link(<UC1>)[[UC1]].

- *Scenario principale:*
  + L’utente si ritrova nella schermata iniziale di login.

- *Postcondizioni:* L’utente non è autenticato, si trova nella pagina di login.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2 - Primo accesso alla piattaforma
<UC1.2>
- *Attore principale:* Utente.

- *Descrizione:* L’utente accede per la prima volta a _Code Guardian_ delegando l'autenticazione al provider esterno (GitHub).

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L’utente interagisce con la funzionalità di login nella pagina iniziale.

- *Scenario principale:*
  + L’utente esprime la volontà di accedere tramite il provider GitHub.
  + L'utente completa la procedura di autenticazione esterna.
  + (*<\<include>>* #link(<UC1.2.1>)[[UC1.2.1]]) 
  + Il sistema mostra all'utente la dashboard personale.

- *Scenari alternativi:* \
  Al passo 1: \
  - l'utente esprime la volontà di annullare l'autenticazione (*<\<extend>>* #link(<UC1.1>)[[UC1.1]]) 
  Al passo 2: \
  - Si verifica un errore durante la procedura.
    - Il sistema mostra un messaggio di errore.
    - Il sistema reindirizza l'utente alla pagina di Login.
    - Il caso d'uso termina senza successo.
  
- *Postcondizioni:* L’utente è autenticato e visualizza la dashboard secondo il ruolo da lui selezionato.

- *Inclusioni:* #link(<UC1.2.1>)[[UC1.2.1]].
- *Estensioni:* #link(<UC1.1>)[[UC1.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2.1 - Selezione Ruolo Primo Accesso
<UC1.2.1>
- *Attore principale:* Utente.

- *Descrizione:* L'utente sceglie il ruolo iniziale che utilizzerà all'interno della piattaforma.

- *Precondizioni:* L'utente sta completando la procedura di primo accesso.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC1.2>)[[UC1.2]].

- *Scenario principale:*
  + L'utente visualizza le opzioni di ruolo disponibili: _Developer_, _Project Manager_ o _Business Owner_.
  + L'utente seleziona una tra le opzioni disponibili.
  + Il sistema evidenzia graficamente la selezione effettuata.
  + L'utente conferma la scelta.
  
- *Postcondizioni:* Il ruolo iniziale dell'utente è stato selezionato.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UC2 - Visualizzazione area personale
<UC2>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole visualizzare la propria area personale.

- *Precondizioni:* L'utente è autenticato e si trova su una qualsiasi pagina della piattaforma.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale.

- *Scenario principale:*
  + L'utente visualizza il pannello a comparsa del menù utente.
  + L'utente visualizza il riepilogo delle proprie informazioni (nome, email, ruolo attuale).
  + L'utente visualizza il pulsante per il cambio ruolo, su cui può cliccare per cambiare il ruolo operativo (*<\<extend>>* #link(<UC3>)[[UC3]]).
  + L'utente visualizza il pulsante per il logout, su cui può cliccare per terminare la sessione e tornare all'interfaccia di login (*<\<extend>>* #link(<UC4>)[[UC4]]).
  + L'utente visualizza il pulsante "X", su cui può cliccare per uscire dal menù utente e tornare alla pagina precedente.

- *Postcondizioni:* Il menù utente è attivo e le opzioni sono selezionabili.

- *Estensioni:*
  - #link(<UC3>)[[UC3]]
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC3 - Cambio Ruolo Operativo
<UC3>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole cambiare il proprio ruolo attivo all'interno della sessione corrente.

- *Precondizioni:* L'utente è autenticato e sta visualizzando la propria area personale.

- *Trigger:* L'utente seleziona il pulsante per il Cambio Ruolo.

- *Scenario principale:*
  + Il sistema visualizza l'elenco dei ruoli disponibili (es. se attualmente nel ruolo Developer i ruoli selezionabili saranno Project Manager e Business Owner).
  + L'utente seleziona il nuovo ruolo desiderato.
  + Il sistema aggiorna il contesto operativo in base al ruolo selezionato.

- *Scenario alternativo:* \
  Ai passi 1 o 2: \
  -  L'utente sceglie di annullare l'operazione selezionando il tasto di annullamento #link(<UC3.1>)[[UC3.1]]. 
  Al passo 3: \
  - Si verifica un errore durante la procedura.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* L'interfaccia è aggiornata coerentemente con il nuovo ruolo selezionato.

- *Estensioni:* #link(<UC3.1>)[[UC3.1]]
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.1 - Annullamento Cambio Ruolo Operativo
<UC3.1>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente decide di annullare l'operazione di Cambio Ruolo Operativo.

- *Precondizioni:* L'Utente è autenticato e sta eseguendo l'operazione di cambio ruolo #link(<UC3>)[[UC3]].

- *Trigger:* L'utente selzione il tasto per uscire dall'operazione di Cambio Ruolo.

- *Scenario principale:* 
+ Il sistema reindirizza l'utente alla pagina di visualizzazione Area Personale.

- *Postcondizioni:* L'utente si trova nella propria area personale senza aver effettuato un cambio ruolo.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC4 - Logout
#align(center, [#image("../../asset/UC/user/UC4.png", height: 7cm)])
<UC4>
- *Attore principale:* Utente.

- *Descrizione:* Permette all'utente di terminare la sessione di lavoro corrente.

- *Precondizioni:* L'utente è autenticato e sta visualizzando la propria Area Personale.

- *Trigger:* L'utente seleziona il pulsante di Logout.

- *Scenario principale:*
  + L’utente conferma l’operazione di logout.
  + Il sistema termina la sessione dell’utente.
  + Il sistema reindirizza l’utente alla pagina di accesso.
  + Il sistema mostra un messaggio di avvenuta disconnessione.

- *Scenari alternativi:* \
  Al passo 1:
  + L’utente annulla l’operazione di logout. Il sistema interrompe l’operazione #link(<UC4.1>)[[UC4.1]].
  Al passo 2:
  + Si verifica un errore durante la terminazione della sessione.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* La sessione dell’utente è terminata e l’utente si trova in uno stato non autenticato.

- *Estensioni:* #link(<UC4.1>)[[UC4.1]]
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC4.1 - Annullamento logout
<UC4.1>
- *Attore principale:* Utente.

- *Descrizione:* Gestisce il caso in cui l'Utente decida di annullare l'operazione di Logout.

- *Precondizioni:* L'Utente è autenticato e sta eseguendo l'operazione di logout #link(<UC4>)[[UC4]].

- *Trigger:* L'utente selziona il tasto per annullare l'operazione di logout.

- *Scenario principale:* 
+ Il sistema reindirizza l'utente alla pagina di visualizzazione area personale.

- *Postcondizioni:* L'utente è autenticato e si trova nella propria area personale senza aver effettuato il logout.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

== Specifica dei casi d'uso - developer

=== UCD1 - Aggiungi singola repository
#align(center, [#image("../../asset/UC/developer/UCD1.png", height: 7cm)])
<UCD1>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer vuole registrare un nuovo repository singolo _GitHub_ nella piattaforma.

- *Precondizioni:* Il Developer è all'interno della dashboard.

- *Trigger:* Il Developer seleziona l'opzione di Aggiunta Repository dalla dashboard.

- *Scenario principale:*
  + Il sistema mostra l’interfaccia per l’inserimento dei dati del repository.
  + Il Developer inserisce l'URL del repository _GitHub_.
  + Il Developer conferma l'operazione.
  + Il sistema valida l’URL e registra la repository.
  + Il sistema mostra un messaggio di conferma dell’avvenuta aggiunta.

- *Scenari alternativi:* \
  Al passo 1 o 2:
  - Il Developer decide di annullare l’operazione #link(<UCD1.1>)[[UCD1.1]].
  Al passo 4:
  - URL del repository non valido.
    - Il sistema mostra un messaggio di errore.
    - Il Developer può effettuare un nuovo tentativo.
  - Si verifica un errore durante il collegamento con GitHub.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il repository è stato aggiunto alla piattaforma.

- *Estensioni:* #link(<UCD1.1>)[[UCD1.1]]
- *Generalizzazioni:* #link(<UCD1.0.1>)[[UCD1.0.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD1.0.1 - Aggiungi singola repository privata
<UCD1.0.1>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer vuole registrare un nuovo repository singolo _GitHub_ nella piattaforma.

- *Precondizioni:* Il Developer è all'interno della dashboard.

- *Trigger:* Il Developer seleziona l'opzione di Aggiunta Repository dalla dashboard.

- *Scenario principale:*
  + Il sistema mostra l’interfaccia per l’inserimento dei dati del repository.
  + Il Developer inserisce l'URL del repository _GitHub_.
  + Il Developer conferma l'operazione.
  + Il sistema valida l’URL.
  + Il sistema richiede l'inserimento di un token per poter accedere alla Repository.
  + Il Developer inserisce il token.
  + Il Developer conferma l'operazione.
  + Il sistema valida il token e registra la repository.
  + Il sistema mostra un messaggio di conferma dell’avvenuta aggiunta.

- *Scenari alternativi:* \
  Al passo 1 o 2:
  - Il Developer decide di annullare l’operazione #link(<UCD1.1>)[[UCD1.1]].
  Al passo 4:
  - URL del repository non valido.
    - Il sistema mostra un messaggio di errore.
    - Il Developer può effettuare un nuovo tentativo.
  Al passo 4 o 7: \
  - Si verifica un errore durante il collegamento con GitHub.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 8: \
  - Token del repository non valido.
    - Il sistema mostra un messaggio di errore.
    - Il Developer può effettuare un nuovo tentativo di aggiunta repository.

- *Postcondizioni:* Il repository è stato aggiunto alla piattaforma.

- *Estensioni:* #link(<UCD1.1>)[[UCD1.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD1.1 - Annullamento aggiungi singola repository
<UCD1.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer decide di annullare l'operazione di aggiunta di un repository nel proprio profilo.

- *Precondizioni:* Il Developer visualizza l'interfaccia per l'inserimento dei dati del repository.

- *Trigger:* Il Developer selziona il tasto per l'annullamento di aggiunta di repoitory.

- *Scenario principale:* 
  + Il Developer viene reindirizzato alla dashboard principale della piattaforma _Code Guardian_.

- *Postcondizioni:* Il Developer si trova nuovamente nella dashboard senza aver aggiunto il repository.
  
#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


// === UCD2 - Visualizzazione lista repository personali
// <UCD2>
// - *Attore principale*: Developer.

// - *Descrizione:* Il Developer desidera visualizzare la lista delle proprie Repository presenti sulla piattaforma _Code Guardian_. Le repository non fanno parte di un progetto.

// - *Precondizioni:* Il Developer si trova all'interno della dashboard.

// - *Trigger:* Caricamento della schermata della dashboard.

// - *Scenario principale:*
//   + Il sistema visualizza all'interno della dasboard una sezione contente la lista delle repository.
//   + L'utente può scorrere per visualizzare tutte le repository presenti.

// - *Scenari alternativi:* \
//   - Il Developer decide di visualizzare una repository (*<\<extend>>* #link(<UCD5>)[[UCD5]]).

// - *Postcondizioni:* Il Developer visualizza la lista delle proprie Repository.

// #line(length: 100%, stroke: 0.5pt + gray)
// #line(length: 100%, stroke: 0.5pt + gray)

// #pagebreak()
=== UCD2 - Visualizzazione lista repository personali
#align(center, [#image("../../asset/UC/developer/UCD2.png", height: 7cm)])
<UCD2>
- *Attore principale*: Developer.

- *Descrizione:* Il Developer desidera visualizzare la lista delle proprie Repository presenti sulla piattaforma _Code Guardian_.

- *Precondizioni:* Il Developer si trova all'interno della dashboard.

- *Trigger:* Caricamento della schermata della dashboard.

- *Scenario principale:*
  + Il sistema visualizza all'interno della dasboard una sezione contente la lista delle repository.
  + L'utente può utilizzare un menù a tendina per selezionare la tipologia di repository che desidera (tutte, senza progetto) (*<\<extend>>* #link(<UCD2.1>)[[UCD2.1]]).
  + L'utente può scorrere per visualizzare tutte le repository presenti.

- *Scenari alternativi:* \
  - Il Developer decide di visualizzare una repository (*<\<extend>>* #link(<UCD5>)[[UCD5]]).

- *Postcondizioni:* Il Developer visualizza la lista delle proprie Repository.
- *Estensioni:* #link(<UCD2.1>)[[UCD2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD2.1 - Selezione preferenza repository
<UCD2.1>
- *Attore principale*: Developer.

- *Descrizione:* Il Developer desidera selezionare una preferenza per le repository da visualizzare, presenti sulla piattaforma _Code Guardian_.

- *Precondizioni:* Il Developer si trova all'interno della dashboard.

- *Trigger:* L'utente seleziona la tendina del filtro repository.

- *Scenario principale:*
  + L'utente seleziona la preferenza di visualizzazione che desidera.
  + Il sistema ricarica la pagina con le repository che soddisfano l'opzione selezionata.

- *Scenari alternativi:* \
  - Al passo 2 si verifica un errore durante il ricaricamento della pagina.
  - Il sistema mostra un messaggio d'errore.
  - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza la lista delle repository desiderate.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD3 - Visualizzazione lista progetti
#align(center, [#image("../../asset/UC/developer/UCD3.png", height: 6cm)])

<UCD3>
- *Attore principale*: Developer.

- *Descrizione:* Il Developer desidera visualizzare la lista dei progetti ai quali partecipa presenti sulla piattaforma _Code Guardian_.

- *Precondizioni:* Il Developer si trova all'interno della dashboard.

- *Trigger:* Caricamento della schermata della dashboard.

- *Scenario principale:*
  + Il sistema visualizza all'intero della dasboard una sezione contente la lista dei progetti.
  + L'utente può scorrere per visualizzare tutti i progetti presenti.
  
- *Scenari alternativi:* \
  - Il Developer decide di visualizzare un progetto nel dettaglio (*<\<extend>>* #link(<UCD4>)[[UCD4]]).

- *Postcondizioni:* Il Developer visualizza la lista dei progetti in cui è coinvolto.

- *Estensioni:* #link(<UCD4>)[[UCD4]])

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD4 - Visualizzazione dettagli progetto
#align(center, [#image("../../asset/UC/developer/UCD4.png", height: 6cm)])

<UCD4>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole accedere alla vista di uno specifico progetto.

- *Precondizioni:* Esiste almeno un progetto creato.

- *Trigger:* Il developer clicca su una card di progetto in #link(<UCD3>)[[UCD3]].

- *Scenario principale:*
  + Il sistema mostra l'intestazione del progetto.
  + Il sistema mostra i widget aggregati (analisi documentazione, test, OWASP).
  + Il sistema mostra l'elenco dei repository che compongono il progetto con i relativi indicatori di stato.
  + Il sistma mostra il pulsante per tornare alla visualizzazione della lista dei progetti. 
  
- *Scenari alternativi:* \
  Al passo 1: 
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 3:
  - Il Developer decide di visualizzare una Repository del progetto nel dettaglio (*<\<extend>>* #link(<UCD5>)[[UCD5]]).

- *Postcondizioni:* Il Developer visualizza i dati aggregati del progetto.

- *Estensioni:* #link(<UCD5>)[[UCD5]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD5 - Visalizzazione dettagli repository
#align(center, [#image("../../asset/UC/developer/UCD5.png", height: 7cm)])

<UCD5>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole accedere alla vista di una specifica Repository.

- *Precondizioni:* Esiste almeno una repository all'interno del sistema.

- *Trigger:* Il Developer clicca su una card di progetto in #link(<UCD2>)[[UCD2]] o #link(<UCD3>)[[UCD3]].

- *Scenario principale:*
  + Il sistema mostra l'intestazione del repository.
  + Il sistema mostra i widget aggregati (analisi documentazione, test, OWASP).
  + Il sistema mostra l'opzione di visualizzazione delle proposte di remediation (*<\<extend>>* #link(<UCD6>)[[UCD6]]).
  + Il sistema mostra l'opzione di visualizzazione delle analisi precedenti (*<\<extend>>* #link(<UCD14>)[[UCD14]]).
  + Il sistema mostra l'opzione per avviare un analisi sul repository (*<\<extend>>* #link(<UCD15>)[[UCD15]]).
  + Il sistma mostra il pulsante per tornare alla pagina precedente. 
- *Scenari alternativi:* \
  Al passo 1: 
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i dati aggregati del progetto.

- *Estensioni:* \
  - #link(<UCD6>)[[UCD6]]
  - #link(<UCD14>)[[UCD14]]
  - #link(<UCD15>)[[UCD15]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13 - Visualizzazione dettagli ultima analisi repository
#align(center, [#image("../../asset/UC/developer/UCD13.png", height: 9cm)])

<UCD13>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate dall'ultima analisi condotta nelle varie aree.

- *Precondizioni:* Il Developer si trova sulla dashboard del repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'ultima analisi condotta su ogni area (*<\<include>>* #link(<UCD13.1>)[[UCD13.1]], #link(<UCD13.2>)[[UCD13.2]], #link(<UCD13.3>)[[UCD13.3]]).  

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi svolta relativa ai vari agenti.

- *Inclusioni:*
  - #link(<UCD13.1>)[[UCD13.1]] 
  - #link(<UCD13.2>)[[UCD13.2]] 
  - #link(<UCD13.3>)[[UCD13.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.1 - Visualizzazione dettagli ultima analisi area test
#align(center, [#image("../../asset/UC/developer/UCD13.1.png", height: 8cm)])

<UCD13.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area test dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi sui test.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi sui test.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.1>)[[UCD6.0.1]]).
  + Il sistema mostra l'opzione per avviare un'analisi per l'area test (*<\<extend>>* #link(<UCD15.1>)[[UCD15.1]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi relativa ai test.

- *Estensioni:*  
  - #link(<UCD6.0.1>)[[UCD6.0.1]]
  - #link(<UCD15.1>)[[UCD15.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.2 - Visualizzazione dettagli ultima analisi area OWASP
#align(center, [#image("../../asset/UC/developer/UCD13.2.png", height: 8cm)])

<UCD13.2>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area OWASP dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi OWASP.

- *Trigger:* Viene caricata la pagina di dettaglio del repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi OWASP.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.2>)[[UCD6.0.2]]).
  + Il sistema mostra l'opzione per avviare un'analisi per l'area OWASP (*<\<extend>>* #link(<UCD15.2>)[[UCD15.2]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi OWASP.

- *Estensioni:*  
  - #link(<UCD6.0.2>)[[UCD6.0.2]]
  - #link(<UCD15.2>)[[UCD15.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.3 - Visualizzazione dettagli ultima analisi area documentazione
#align(center, [#image("../../asset/UC/developer/UCD13.3.png", height: 8cm)])

<UCD13.3>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area documentazione dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi sulla documentazione.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi sulla documentazione.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.3>)[[UCD6.0.3]]).
  + Il sistema mostra l'opzione per avviare un'analisi per l'area documentazione (*<\<extend>>* #link(<UCD15.3>)[[UCD15.3]]).
  + 

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi sulla documentazione.

- *Estensioni:*  
  - #link(<UCD6.0.3>)[[UCD6.0.3]]
  - #link(<UCD15.3>)[[UCD15.3]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD6 - Visualizzazione proposta remediation
#align(center, [#image("../../asset/UC/developer/UCD6.png", height: 10cm)])

<UCD6>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation che l'agente ha svolto per l'analisi sul repository.

- *Precondizioni:* Il Developer sta visualizzando la dashboard di dettaglio del repository #link(<UCD5>)[[UCD5]], dove deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per il repository.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area test. 
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area OWASP.
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area documentazione.
  - Il sistema mostra un pulsante per tornare alla pagina precedente.
  - Il sistema mostra un pulsante per accettare tutte le proposte di remediation (*<\<extend>>* #link(<UCD6.2>)[[UCD6.2]])

- *Scenari alternativi:* \
  - Il Developer seleziona un qualsiasi file presente nelle diverse liste (*<\<extend>>* #link(<UCD6.1>)[[UCD6.1]])
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali gli agenti, di ogni categoria, hanno riscontrato criticità e hanno elaborato una soluzione.

- *Estensioni:* 
  - #link(<UCD6.1>)[[UCD6.1]]
  - #link(<UCD6.2>)[[UCD6.2]]

- *Generalizzazioni:*
  - #link(<UCD6.0.1>)[[UCD6.0.1]]
  - #link(<UCD6.0.2>)[[UCD6.0.2]]
  - #link(<UCD6.0.3>)[[UCD6.0.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.1 - Visualizzazione proposta remediation test
<UCD6.0.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation relative ai test sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area test sulla dashboard di dettaglio del repository #link(<UCD13.1>)[[UCD13.1]]. Deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per i test.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area test. 
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi dei test, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* #link(<UCD6.1>)[[UCD6.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.2 - Visualizzazione proposta remediation documentazione
<UCD6.0.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation relative alla documentazione sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area documentazione sulla dashboard di dettaglio del repository #link(<UCD13.2>)[[UCD13.2]]. Deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per i test.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area documentazione. 
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi della documentazione, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* #link(<UCD6.1>)[[UCD6.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.3 - Visualizzazione proposta remediation OWASP
<UCD6.0.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation delle OWASP sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area OWASP sulla dashboard di dettaglio del repository #link(<UCD13.3>)[[UCD13.3]]. Deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per OWASP.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area OWASP. 
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi OWASP, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* #link(<UCD6.1>)[[UCD6.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1 - Visualizzazione dettaglio singolo file per remediation
#align(center, [#image("../../asset/UC/developer/UCD6.1.png", height: 7cm)])

<UCD6.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la proposta di remediation di uno specifico file.

- *Precondizioni:* Il Developer sta visualizzando una lista di file sui quali il sistema propone delle remediation: #link(<UCD6>)[[UCD6]], #link(<UCD6.0.1>)[[UCD6.0.1]], #link(<UCD6.0.2>)[[UCD6.0.2]], #link(<UCD6.0.3>)[[UCD6.0.3]]

- *Trigger:* Il Developer seleziona il file che gli interessa consultare.

- *Scenario principale:* \
  - Il sistema mostra il contenuto del file con le differenze tra il file presente e la proposta applicaile (_diff_). 
  - Il sistema mostra il path che il file seguirà all'interno del repository (*<\<extend>>* #link(<UCD6.1.2>)[[UCD6.1.2]]).
  - Il sistema mostra un pulsante per accettare la proposta dell'agente (*<\<extend>>* #link(<UCD6.2.1>)[[UCD6.2.1]]).
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta la proposta di remediation relativa ad un file specifico.

- *Estensioni:* 
  - #link(<UCD6.1.2>)[[UCD6.1.2]]
  - #link(<UCD6.2.1>)[[UCD6.2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.2 - Cambio percorso di destinazione file 
#align(center, [#image("../../asset/UC/developer/UCD6.1.2.png", height: 6cm)])

<UCD6.1.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole cambiare la destinazione di uno specifico file nel contesto di una proposta di remediation.

- *Precondizioni:* Il Developer sta visualizzando la proposta di remdiation relativa ad un singolo file #link(<UCD6.1>)[[UCD6.1]].

- *Trigger:* Il Developer seleziona il pulsante per il cambio path.

- *Scenario principale:* \
  - Il sistema mostra un pop-up con un campo sul quale inserire il nuovo path.
  - Il Developer inserisce il path all'interno del campo.
  - Il Developer conferma l'operazione.

- *Scenari alternativi:*
  - Il Developer decide di annullare l'operazione (*<\<extend>>* #link(<UCD6.1.2.1>)[[UCD6.1.2.1]])
  Al passo 3:
  - Il path inserito non è valido:
    - Il sistema mostra un messaggio di errore.
    - Viene data la possibilità di effettuare un nuovo tentativo

- *Postcondizioni:* Il file in visione al Developer ha un nuovo path all'interno del campo di destinazione. 

- *Estensioni:* #link(<UCD6.1.2.1>)[[UCD6.1.2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.2.1 Annullamento cambio percorso di destinazione file
<UCD6.1.2.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'inserimento di un nuovo percorso di destinazione di un file al quale è stata proposta remediation.

- *Precondizioni:* Il Developer annulla il Caso d'Uso #link(<UCD6.1.2>)[[UCD6.1.2]].

- *Trigger:* Il Developer seleziona l’opzione di annullamento dell'inserimeno del path.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento.
  - Il sistema ripristina lo stato precedente alla richiesta di accettazione.

- *Postcondizioni:* Il processo di inserimento del nuovo path è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell’accettazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.2 - Accettazione proposta remediation 
#align(center, [#image("../../asset/UC/developer/UCD6.2.png", height: 8cm)])

<UCD6.2>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il developer ha visualizzato le proposte di remediation e desidera accettare.
  
- *Precondizioni:* Il developer sta visualizzando una lista di file sui quali sono proposte remediation: #link(<UCD6>)[[UCD6]], #link(<UCD6.0.1>)[[UCD6.0.1]], #link(<UCD6.0.2>)[[UCD6.0.2]], #link(<UCD6.0.3>)[[UCD6.0.3]].

- *Trigger:* Il Developer seleziona il pulsante di accettazione remediation.

- *Scenario principale:*
  + Il sistema chiede conferma al Developer.
  + Il sistema valida che le proposta di remediation siano ancora disponibili e non obsolete.
  + Il sistema prepara le modifiche secondo la remediation proposta.
  + Il sistema interagisce con GitHub per creare un nuovo branch dedicato.
  + Il sistema applica automaticamente le modifiche al file nel branch.
  + Il sistema avvia una pull request verso il branch di destinazione del repository.
  + Il sistema notifica il Developer della corretta creazione della pull request.

- *Scenari alternativi*
  GitHub non è raggiungibile o restituisce un errore.
  - Il sistema notifica il Developer dell’errore e invita a riprovare. \ 
  Al passo 1: \
  - Annullamento accettazione. Il sistema reindirizza il Developer alla pagina precedente #link(<UCD6.3>)[[UCD6.3]]
  Al passo 2: \
  - Il sistema rileva che la remediation non è più valida.
  - Il sistema interrompe il processo di accettazione.
  - Il sistema notifica il Developer dell’impossibilità di procedere.
  Al passo 3: \
  - Uno o più file sono stati modificati sulla repository dopo la generazione della remediation. Il sistema rileva un conflitto durante l’applicazione delle modifiche.
  - Il sistema interrompe l’automazione.
  - Il sistema segnala il conflitto al Developer, suggerendo una risoluzione manuale.
  
- *Postcondizioni:* è stata avviata una richiesta di pull request su github che prevede l'aggiornamento del repository secondo remediation.

- *Estensioni:* #link(<UCD6.3>)[UCD6.3]

- *Generalizzazioni:* #link(<UCD6.2.1>)[[UCD.2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.2.1 - Accettazione remediation singolo file
<UCD6.2.1>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il developer ha visualizzato la proposta di remediation su un singolo file e desidera accettare #link(<UCD6.1>)[[UCD6.1]].
  
- *Precondizioni:* Il developer sta visualizzando la proposta di remediation di un singolo file.

- *Trigger:* Il Developer seleziona il pulsante di accettazione remediation.

- *Scenario principale:*
  + Il sistema chiede conferma al Developer.
  + Il sistema valida che la proposta di remediation sia ancora disponibile e non obsoleta.
  + Il sistema prepara le modifiche al file secondo la remediation proposta.
  + Il sistema interagisce con GitHub per creare una nuova branch dedicata.
  + Il sistema applica automaticamente le modifiche al file nella branch.
  + Il sistema avvia una pull request verso il branch di destinazione del repository.
  + Il sistema notifica il Developer della corretta creazione della pull request.

- *Scenari alternativi*
  GitHub non è raggiungibile o restituisce un errore.
  - Il sistema notifica il Developer dell’errore e invita a riprovare. \ 
  Al passo 1: \
  - Annullamento accettazione. Il sistema reindirizza il Developer alla pagina precedente (*<\<extend>>* #link(<UCD6.3>)[[UCD6.3]])
  Al passo 2: \
  - Il sistema rileva che la remediation non è più valida.
  - Il sistema interrompe il processo di accettazione.
  - Il sistema notifica il Developer dell’impossibilità di procedere.
  Al passo 3: \
  - Il file è stato modificato sulla repository dopo la generazione della remediation. Il sistema rileva un conflitto durante l’applicazione delle modifiche.
  - Il sistema interrompe l’automazione.
  - Il sistema segnala il conflitto al Developer, suggerendo una risoluzione manuale.
  
- *Postcondizioni:* è stata avviata una richiesta di pull request su github che prevede l'aggiornamento del repository secondo remediation.

*Estensioni:* #link(<UCD6.3>)[UCD6.3]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.3 - Annullamento accettazione remediation
<UCD6.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'accettazione della proposta di remediation #link(<UCD6.2.1>)[UCD6.2.1].

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD6.2.1>)[UCD6.2.1] e la pull request non è ancora stata creata.

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di accettazione della remediation.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento dell’accettazione.
  - Il sistema interrompe il processo di applicazione della remediation.
  - Il sistema ripristina lo stato precedente alla richiesta di accettazione.

- *Postcondizioni:* Il processo di accettazione è stato annullato. Nessuna pull request è stata creata su GitHub e lo stato del sistema è coerente con la situazione precedente all’avvio dell’accettazione.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD7 - Eliminazione singola repository
#align(center, [#image("../../asset/UC/developer/UCD7.png", height: 7cm)])

<UCD7>
- *Attore principale:* Developer

- *Descrizione:* Il Developer elimina un repository dal sistema.

- *Precondizioni:* Il Developer sta visualizzando la lista di Repository #link(<UCD2>)[[UCD2]]. 

- *Trigger:* Il Developer seleziona il tasto di cancellazione repository.

- *Scenario principale:*
  - Il sistema chiede conferma dell'operazione.
  - La Repository e tutti i dati ad essa annessi, vengono rimossi dal sistema.

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 1: \
  - Il Developer sceglie di annullare l'operazione di eliminazione (*<\<extend>>* #link(<UCD7.1>)[[UCD7.1]])

- *Postcondizioni:* Il Repository è stato correttamente eliminato dal sistema insieme ai dati ad esso associati.

- *Estensioni:* #link(<UCD7.1>)[[UCD7.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD7.1 - Annullamento Eliminazione Singola Repository
<UCD7.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di eliminazione di un Repository.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD7>)[UCD7].

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di eliminazione.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento dell'eliminazione.
  - Il sistema ripristina lo stato precedente alla richiesta di accettazione.

- *Postcondizioni:* Il processo di eliminazione è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell'eliminazione.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


=== UCD8 - Procedimenti in corso
#align(center, [#image("../../asset/UC/developer/UCD8.png", height: 8cm)])

<UCD8>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le operazioni che sono in corso .

- *Precondizioni:* Il Developer vuole visualizzare tutte le operaizioni da lui avviate e non ancora concluse. 

- *Trigger:* Il Developer si trova nella dashboard e seleziona la voce 'Procedimenti in corso'.

- *Scenario principale:*
  - Il sistema mostra l'opzione per visualizzare le remediation avviate e le analisi avviate .
  - Il Developer seleziona le due opzioni (*<\<include>>* #link(<UCD8.1>)[[UCD8.1]], *<\<include>>* #link(<UCD8.2>)[[UCD8.2]])
  - Il sistema mostra il tasto per tornare all pagina precedente (*<\<extend>>* #link(<UCD8.0.1>)[[UCD8.0.1]]).

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  - Il Developer decide di annullare la visualizzazione di una o due categorie di operazioni in corso e torna alla pagina precedente (*<\<extend>>* #link(<UCD8.0.1>)[[UCD8.0.1]]).

- *Postcondizioni:* Il Developer ha visualizzato tutte le operazioni in corso all'interno del sistema.

- *Estensioni:* #link(<UCD8.0.1>)[[UCD8.0.1]]).

- *Inclusioni:* 
  - #link(<UCD8.1>)[[UCD8.1]])
  - #link(<UCD8.2>)[[UCD8.2]])

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.0.1 - Annullamento visualizzazione procedimenti in corso
<UCD8.0.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di visualizzazione delle operazioni in corso.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD8>)[UCD8].

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di visualizzazione.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento.
  - Il sistema ripristina lo stato precedente alla richiesta di visualizzazione.

- *Postcondizioni:* Lo stato del sistema è coerente con la situazione precedente all’avvio della richiesta di visualizzazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.1 - Visualizzazione remediation avviate
#align(center, [#image("../../asset/UC/developer/UCD8.1.png", height: 7cm)])

<UCD8.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le remediation che sono state avviate .

- *Precondizioni:* Il Developer vuole visualizzare le remediation da lui avviate e non ancora confermate tramite merge con il repository coinvolto. 

- *Trigger:* Il Developer si trova nella sezione 'Procedimenti in corso' e seleziona la voce di remediation in corso.

- *Scenario principale:*
  - Il sistema mostra la lista dei branch aperti per effettuare remdiation ai quali non è stata accettata la pull request.
  - Il sistema mostra i nomi delle repository su cui un branch sta effettuando l'operazione.
  - Il sistema mostra la data relativa all'avvio del processo di remediation.
  - Il sistema mostra un pulsante per tornare alla pagina precedente

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 1: \
  - Il Developer sceglie di annullare l'operazione di remediation (*<\<extend>>* #link(<UCD9>)[[UCD9]])

- *Postcondizioni:* Il Developer sta visualizzando tutte le remediation in atto nel sistema.

- *Estensioni:* #link(<UCD9>)[[UCD9]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.2 - Visualizzazione analisi su repository in corso
#align(center, [#image("../../asset/UC/developer/UCD8.2.png", height: 7cm)])

<UCD8.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le analisi che sono state avviate .

- *Precondizioni:* Il Developer vuole visualizzare le analisi da lui avviate e non ancora confermate tramite merge con il repository coinvolto. 

- *Trigger:* Il Developer si trova nella sezione 'Procedimenti in corso' e seleziona la voce di analisi in corso.

- *Scenario principale:*
  - Il sistema mostra la lista repository sulle quali sono state avviate delle analisi.
  - Il sistema mostra la data relativa all'avvio del processo di remediation.
  - Il sistema mostra un pulsante per tornare alla pagina precedente

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 1: \
  - Il Developer sceglie di annullare l'operazione di analisi (*<\<extend>>* #link(<UCD10>)[[UCD10]])

- *Postcondizioni:* Il Developer sta visualizzando tutte le analisi in atto nel sistema.

- *Estensioni:* #link(<UCD10>)[[UCD10]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD9 - Interrompi remediation avviata
#align(center, [#image("../../asset/UC/developer/UCD9.png", height:6cm)])

<UCD9>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer desidera interrompere un'operazione di remediation in corso. L’interruzione comporta la revoca o il rifiuto della pull request generata automaticamente dal sistema tramite bot su GitHub.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD8.1>)[UCD8.1].

- *Trigger:* Il Developer seleziona l’opzione di interruzione del processo.

- *Scenario principale:*
  + Il sistema mostra al Developer una richiesta di conferma per l’interruzione della remediation.
  + Il Developer conferma l’operazione di interruzione.
  + Il sistema annulla automaticamente la pull request oppure ne imposta lo stato come rifiutata/chiusa su GitHub.
  + Il sistema notifica al Developer l’avvenuta interruzione della remediation.
  
- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  - Il Developer non conferma l'operazoine di interruzione (*<\<extend>>* #link(<UCD11>)[[UCD11]]).

- *Postcondizioni:* Una remediation in atto è stata interrotta.

- *Estensioni:* #link(<UCD11>)[[UCD11]]


#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD10 - Interrompi analisi Avviata
<UCD10>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera interrompere un'operazione di analisi in corso.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD8.2>)[UCD8.2].

- *Trigger:* Il Developer seleziona l’opzione di interruzione del processo.

- *Scenario principale:*
  + Il sistema annulla automaticamente l'analisi in corso.
  + Il sistema notifica al Developer l’avvenuta interruzione dell'analisi.
  
- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Un'analisi in atto è stata interrotta.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


=== UCD11 - Annullamento di Interruzione Operazione In corso
<UCD11>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di Interruzione di un operazione in corso.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD9>)[UCD9].

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di Interruzione.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento.
  - Il sistema ripristina lo stato precedente alla richiesta di annullamento.

- *Postcondizioni:* Lo stato del sistema è coerente con la situazione precedente all’avvio della richiesta di annullamento.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD12 - Visualizzazione esiti ultime analisi repository
#align(center, [#image("../../asset/UC/developer/UCD12.png", height: 6cm)])

<UCD12>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare l'esito delle analisi nei repository.

- *Precondizioni:* Il Developer vuole visualizzare l'esito di una o più analisi da lui avviate e non ancora confermate tramite merge con il repository coinvolto. Le analisi non sono in atto. Le analisi visualizzate saranno quelle dell'ultima settimana dalla data di visualizzazione, possono essere visualizzate un massimo di 30 analisi.

- *Trigger:* Il Developer seleziona l'opzione di visualizzazione delle ultime analisi avviate e completate.

- *Scenario principale:*
  - Il sistema mostra la lista delle ultime analisi completate.
  - Il sistema mostra il nome del repository sul quale è stata eseguita l'analisi.
  - Il sistema mostra la data relativa all'avvio del processo di remediation.
  - Il Developer consulta l'ultima analisi (*<\<extend>>* #link(<UCD5>)[[UCD5]]).
  - Il sistema mostra un pulsante per tornare alla pagina precedente

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento di una pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer ha visualizzato le ultime analisi eseguite nel sistema.

- *inclusioni:* #link(<UCD5>)[[UCD5]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


#pagebreak()

=== UCD14 - Visualizzazione Storico delle analisi sul Repository
#align(center, [#image("../../asset/UC/developer/UCD14.png", height: 6cm)])

<UCD14>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera visualizzare lo storico delle varie analisi eseguite all'interno di un repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository (#link(<UCD5>)[[UCD5]]) e sono state eseguite almeno due analisi all'interno dello stesso.

- *Trigger:* Il Developer seleziona il pulsante per visualizzare lo storico delle analisi.

- *Scenario principale:*
  - Il sistema mostra una lista che contiene:
    - Tipo di analisi (documentazione, test, OWASP)
    - Data analisi

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento di una pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  - Il Developer selezione un analisi specifica per visualizzarla (*<\<extend>>* #link(<UCD14.1>)[[UCD14.1]]).

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD14.1 - Visualizzazione storico singola analisi
<UCD14.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate da un'analisi condotta in una o più aree.

- *Precondizioni:* Il Developer sta visualizzando lo storico delle analisi effettuate (#link(<UCD14>)[[UCD14]]).

- *Trigger:* Il Developer preme su un elemento della lista.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'ultima analisi condotta nell'area test.
  + Il sistema mostra i grafici relativi all'ultima analisi condotta nell'area OWASP.  
  + Il sistema mostra i grafici relativi all'ultima analisi condotta nell'area documentazione.
  + Il sistema mostra il pulsante per tornare alla pagina precedente.   

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati di un-analisi svolta all'interno del repository.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


=== UCD15 - Avvio analisi di una repository
#align(center, [#image("../../asset/UC/developer/UCD15.png", height: 7cm)])

<UCD15>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi completa del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sul repository.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
-  *Postcondizioni:* Un'analisi sul repository è stata avviata.

-  *Estensioni:* #link(<UCD16>)[[UCD16]]

- *Generalizzazioni:*
  - #link(<UCD15.1>)[[UCD15.1]]
  - #link(<UCD15.2>)[[UCD15.2]]
  - #link(<UCD15.3>)[[UCD15.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.1 - Avvio analisi di test di una repository
<UCD15.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi test del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository relativa alle analisi test (#link(<UCD13.1>)[[UCD13.1]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sull'area test.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso in quell'area all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
  *Postcondizioni:* Un'analisi sull'area test del repository è stata avviata.

  *Estensioni:* #link(<UCD16>)[[UCD16]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.2 - Avvio analisi OWASP di una repository
<UCD15.2>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi OWASP del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository relativa alle analisi OWASP (#link(<UCD13.2>)[[UCD13.2]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sull'area OWASP.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso in quell'area all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
  *Postcondizioni:* Un'analisi sull'area OWASP del repository è stata avviata.

  *Estensioni:* #link(<UCD16>)[[UCD16]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.3 - Avvio analisi di documentazione di una repository
<UCD15.3>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi documentazione del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository relativa alle analisi documentazione (#link(<UCD13.3>)[[UCD13.3]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sull'area documentazione.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso in quell'area all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
  *Postcondizioni:* Un'analisi sull'area documentazione del repository è stata avviata.

  *Estensioni:* #link(<UCD16>)[[UCD16]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UCD16 - Annullamento Avvio di un'analisi
<UCD16>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di Avvio analisi.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD15>)[UCD15] o #link(<UCD15.1>)[UCD15.1] o #link(<UCD15.2>)[UCD15.2] o #link(<UCD15.3>)[UCD15.3].

- *Trigger:* Il Developer seleziona di annullamento dell'operazione.

- *Scenario principale:*
  - Il sistema ripristina lo stato precedente alla richiesta di analisi.

- *Postcondizioni:* Lo stato del sistema è coerente con la situazione precedente all’avvio della richiesta di analisi.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

== Specifica dei casi d'uso - Project Manager

=== UCPM1: Accesso alla dashboard generale
#align(center, [#image("../../asset/UC/project-manager/UCPM1.png", height: 5cm)])
 <UCPM1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla propria dashboard principale.

- *Precondizioni:* L'utente si è autenticato e assume il ruolo di Project Manager.

- *Trigger:* L'Utente seleziona il ruolo Project Manager o clicca sulla voce "dashboard" nel menu di navigazione.

- *Scenario principale:*
  + Il sistema carica i dati generali relativi ai progetti collegati all'account.
  + Il Project Manager visualizza di default la *Lista Progetti* (*<\<include>>* #link(<UCPM1.1>)[[UCPM1.1]]).

- *Scenari alternativi:* 
  + Il Project Manager decider di creare un nuovo progetto.

- *Postcondizioni:* Il Project Manager visualizza la lista Progetti.

- *Inclusioni:* #link(<UCPM1.1>)[[UCPM1.1]].

#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCPM1.1: Visualizzazione lista progetti 
#align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco dei Progetti attivi e i relativi indicatori di sintesi.

- *Precondizioni:* Il selettore di vista in #link(<UCPM1>)[[UCPM1]] è impostato su "Progetti".

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UCPM1>)[[UCPM1]].

- *Scenario principale:*
  + Il Project Manager visualizza la lista dei progetti, rappresentati come delle card contenenti:
    - Nome del progetto.
    - Numero di repository associate.
    - Indicatori sintetici di salute (es. media qualità).
  + Il Project Manager può selezionare un progetto specifico per accedere ai suoi dettagli (*<\<extend>>* #link(<UCPM1.1.1>)[[UCPM1.1.1]]).

- *Scenari alternativi:* Il sistema non rileva progetti: mostra uno stato vuoto e invita a creare il primo progetto tramite il pulsante "Nuovo progetto".

- *Postcondizioni:* Il Project Manager scorre la lista dei progetti.

- *Estensioni:* #link(<UCPM1.1.1>)[[UCPM1.1.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.1.1: Accesso alla dashboard di dettaglio progetto 
#align(center, [#image("../../asset/UC/project-manager/UCPM1.1.1.png", height: 10cm)])

<UCPM1.1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla vista aggregata di uno specifico progetto per analizzarne i KPI complessivi.

- *Precondizioni:* Esiste almeno un progetto creato.

- *Trigger:* Il Project Manager clicca su una card di progetto in #link(<UCPM1.1>)[[UCPM1.1]].

- *Scenario principale:*
  + Il Project Manager visualizza l'intestazione del progetto.
  + Il Project Manager visualizza i widget aggregati (Sicurezza, copertura test, adeguatezza documentazione, Avanzamento ecc...).
  + Il Project Manager visualizza il pulsante "Team & Competenze", su cui può premere per approfondire le competenze del team (*<\<extend>>* #link(<UCPM3>)[[UCPM3]]).
  + Il Project Manager visualizza il pulsante "Stack tecnologico", su cui può premere per analizzare le tecnologie utilizzate nel progetto e ricevere suggerimenti (*<\<extend>>* #link(<UCPM4>)[[UCPM4]]).
  + Il Project Manager visualizza l'elenco dei repository che compongono il progetto con i relativi indicatori di stato. (*<\<extend>>* #link(<UCPM2>)[[UCPM2]]).
 + Il Project Manager clicca "Indietro" per tornare alla lista progetti.
 - *Scenari alternativi:* 
  - Il Project Manager preme il pulsante relativo alle competenze del team  (*<\<extend>>* #link(<UCPM3>)[[UCPM3]]).
  - Il Project Manager preme il pulsante relativo all'analisi delle tecnologie utilizzate (*<\<extend>>* #link(<UCPM4>)[[UCPM4]]).
  - Il Project Manajer preme il pulsante relativo all'elenco dei repository nel progetto(*<\<extend>>* #link(<UCPM2>)[[UCPM2]]).

- *Postcondizioni:* Il Project Manager visualizza i dati aggregati del progetto.

- *Estensioni:* 
  - #link(<UCPM2>)[[UCPM2]];
  - #link(<UCPM3>)[[UCPM3]]; 
  - #link(<UCPM4>)[[UCPM4]].

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM2: Visualizzazione lista repository 
#align(center, [#image("../../asset/UC/project-manager/UCPM2.png", height: 5cm)])

<UCPM2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco completo di tutte le repository collegate al progetto.

- *Precondizioni:* l'utente sta visualizzando un progetto e si concentra sulla lista delle repositoy.

- *Trigger:* L'utente seleziona la voce "Repository" dal selettore di vista.

- *Scenario principale:*
  + Il Project Manager visualizza la tabella riepilogativa di tutte le repository importate.
  + Per ogni repository, il sistema mostra:
    - nome repository.
    - data ultimo aggiornamento.

- *Scenari alternativi:* Il Project Manager non ha aggiunto nessuna repository, visualizza un messaggio informativo che lo invita ad importarne uno tramite il pulsante "Aggiungi Repository" (*<\<extend>>* #link(<UCD1>)[[UCD1]]).

- *Postcondizioni:* Il Project Manager ha visionato le repository collegate all'account.

// Hanno senso questi due UC, 9.1 e 9.2 oppure è una granularità troppo dettagliate, magari anche corretta ma conforme a quanto fatto negli altri uc?
- *Estensioni:* #link(<UCD1>)[[UCD1]].

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()
=== UCPM3: Visualizzazione mappatura competenze 
#align(center, [#image("../../asset/UC/project-manager/UCPM3.png", height: 5cm)])

<UCPM3>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager consulta la distribuzione delle tecnologie utilizzate dal team.

- *Precondizioni:* Il Project Manager si trova nella dashboard di dettaglio di un progetto (#link(<UCPM1.1.1>)[[UCPM1.1.1]]).

- *Trigger:* Il Project Manager seleziona il pulsante "Team & Competenze".

- *Scenario principale:*
  + Il sistema visualizza una lista dei membri del team a cui vengono associate delle icone sulle tecnologie di loro competenza.
  + Il Project Manager può selezionare un membro specifico per approfondirne il profilo (*<\<include>>* #link(<UCPM3.1>)[[UCPM3.1]]).

- *Postcondizioni:* Il Project Manager ha analizzato la mappatura delle competenze all'interno del team del progetto.

- *Inclusioni:* #link(<UCPM3.1>)[[UC3.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.1: Visualizzazione dettagli membro del team <UCPM3.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Visualizzazione delle metriche specifiche di uno sviluppatore nel contesto del progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di mappatura competenze #link(<UCPM3>)[[UCPM3]].

- *Trigger:* Il Project Manager ha selezionato uno specifico membro del team.

- *Scenario principale:*
  + Il Project Manager visualizza il profilo del Developer.
  + Il Project Manage visualiza le statistiche di contribuzione (*<\<extend>>* #link(<UCPM3.1.1>)[[UCPM3.1.1]]).
  + Il Project Manager visualizza i linguaggi maggiormente utilizzati dal Developer (*<\<extend>>* #link(<UCPM3.1.2>)[[UCPM3.1.2]]).

// anche qui si possono aggiungere degli UC più specificiper entrambe le parti dello scenario principali. Quindi UC10.1.1 per visuallizare il profilo utente, UC10.1.2 per visualizzare le statistiche di contribuzione e UC1.1.3 per informazioni sui linguaggi affini.

- *Postcondizioni:* Il Project Manager ha consultato i dettagli di uno specifico membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.1.1: Visualizzazione statistiche membro del team <UCPM3.1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza le statistiche di contribuzione del membro del team relative al progetto precedentemente scelto.

- *Precondizioni:* Il Project Manager sta visualizzando il profilo di un membro del team #link(<UCPM3.1>)[[UCPM3.1]].

- *Trigger:* Il Project Manager si concentra sulle statistiche relative alle contribuzione.

- *Scenario principale:*
  + Il Project Manager visualizza una serie di statistiche come:
    - Numero di commit.
    - Numero di pull request.

- *Postcondizioni:* Il Project Manager ha consultato le statistiche di contribuzione di un membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.1.2: Visualizzazione linguaggi di un developer <UCPM3.1.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager guarda e le informazioni relativi ai linguaggi usati dal developer.

- *Precondizioni:* Il Project Manager sta visualizzando il profilo di un membro del team #link(<UCPM3.1>)[[UCPM3.1]].

- *Trigger:* Il Project Manager si concentra sulle informazioni riguardanti i linguaggi affini al developer.

- *Scenario principale:*
  + Il Project Manager visualizza una lista delle dei linguaggi di programmazione usate dal developer.

- *Postcondizioni:* Il Project Manager ha consultato i linguaggi affini a un membro del team.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM4: Stack tecnologico e suggerimenti

 <UCPM4>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager analizza lo stack tecnologico per identificare librerie obsolete e ricevere suggerimenti.

- *Precondizioni:* Il Project Manager si trova nella dashboard di dettaglio progetto (#link(<UCPM1.1.1>)[[UCPM1.1.1]]).

- *Trigger:* Il Project Manager seleziona la voce "Stack tecnologico".

- *Scenario principale:*
  + Il Project Manager visualizza l'elenco consolidato di framework e librerie usate.
  + Il sistema segnala le dipendenze deprecate o a rischio sicurezza.
  + Il Project Manager visualizza i suggerimenti strategici generati dall'IA.

// Anche qua si può pensare ad una maggiore granularità UC11.1 Segnalatori di deprecazione o sicurezza e UC11.2 Suggeriemtni strategici generati dall'IA

- *Postcondizioni:* Il Project Manager ha preso visione dello stato tecnologico del progetto analizzato.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

== Specifica dei casi d'uso - Business Owner

=== UCBO1: Visualizzazione dashboard home con statistiche 
#align(center, [#image("../../asset/UC/business-owner/UCBO1.png", height: 10cm)])

<UCBO1>

- *Attore principale:* Business Owner 
- *Descrizione:* Il Business Owner accede alla home page dell'applicazione che mostra una panoramica aggregata di tutti i progetti attraverso grafici e indicatori chiave.
- *Precondizioni:* 
  + Il Business Owner è autenticato nel sistema.
  + Esiste almeno un progetto nel sistema.
- *Trigger:* Il Business Owner accede all'applicazione o clicca su "Home"/"dashboard".
- *Scenario principale:*
  + Il sistema visualizza la dashboard home con diversi grafici e istogrammi.
  + Il Business Owner visualizza le statistiche aggregate sui progetti (*<\<include>>* #link(<UCBO1.1>)[[UCBO1.1]]).
  + Il Business Owner analizza le issue totali in lavorazione (*<\<include>>* #link(<UCBO1.2>)[[UCBO1.2]]).
  + Il Business Owner consulta il rapporto budget vs spesa complessivo (*<\<include>>* #link(<UCBO1.3>)[[UCBO1.3]]).
  + Il Business Owner valuta l'indice di coerenza tra progetti (*<\<include>>* #link(<UCBO1.4>)[[UCBO1.4]]).
  + Il Business Owner può selezionare un progetto per analizzarlo nel dettaglio (*<\<extend>>* #link(<UCBO2>)[[UCBO2]]).
- *Scenario alternativo:* Il Business Owner seleziona un progetto per vederne i dettagli #link(<UCBO2>)[[UCBO2]]).
- *Postcondizioni:* Il Business Owner ha una visione d'insieme dello stato del portafoglio progetti.
- *Inclusioni:* 
  - #link(<UCBO1.1>)[[UCBO1.1]];
  - #link(<UCBO1.2>)[[UCBO1.2]]; 
  - #link(<UCBO1.3>)[[UCBO1.3]]; 
  - #link(<UCBO1.4>)[[UCBO1.4]].
- *Estensioni:*
  - #link(<UCBO2>)[[UCBO2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.1: Visualizzazione grafici su progetti <UCBO1.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta le visualizzazioni grafiche che rappresentano statistiche aggregate sui progetti.
- *Precondizioni:* Il Business Owner sta visualizzando la dashboard "Home" (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner si concentra sulla sezione grafici della dashboard.
- *Scenario principale:*
  + Il sistema visualizza grafici a torta e/o istogrammi che rappresentano vari aspetti dei progetti.
  + Il Business Owner interpreta i grafici per comprendere distribuzioni e proporzioni.
- *Postcondizioni:* Il Business Owner ha composto un quadro visivo della situazione dei progetti.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.2: Visualizzazione issue totali in lavorazione (complessivo) <UCBO1.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta il conteggio totale delle issue attualmente in lavorazione su tutti i progetti.
- *Precondizioni:* Il Business Owner sta visualizzando la dashboard "Home" (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner consulta il widget/indicatore delle issue.
- *Scenario principale:*
  + Il sistema visualizza il numero totale di issue attualmente "in lavorazione" o "in sviluppo".
  + Il Business Owner legge il valore per comprendere il carico di lavoro complessivo.
- *Postcondizioni:* Il Business Owner è consapevole del volume totale di lavoro in corso.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.3: Visualizzazione rapporto budget vs spesa complessivo <UCBO1.3>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta l'indicatore aggregato che confronta il budget totale allocato con la spesa totale sostenuta.
- *Precondizioni:* Il Business Owner sta visualizzando la dashboard "Home" (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner consulta il widget/indicatore finanziario.
- *Scenario principale:*
  + Il sistema visualizza un indicatore che mostra budget totale e spesa totale.
  + Il Business Owner analizza se la spesa complessiva è entro il budget complessivo.
- *Postcondizioni:* Il Business Owner conosce la situazione finanziaria aggregata.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.4: Visualizzazione indice coerenza tra progetti <UCBO1.4>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta un indicatore che misura il livello di coerenza o standardizzazione tra i vari progetti.
- *Precondizioni:* Il Business Owner sta visualizzando la dashboard "Home" (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner consulta l'indicatore di coerenza.
- *Scenario principale:*
  + Il sistema visualizza un indicatore di "coerenza tra progetti".
  + Il Business Owner interpreta il valore per valutare quanto i progetti siano allineati tra loro.
- *Postcondizioni:* Il Business Owner ha una misura del livello di coerenza del portafoglio progetti.

#pagebreak()

=== UCBO2: Accedere progetto singolo 
#align(center, [#image("../../asset/UC/business-owner/UCBO2.png", height: 7cm)])

<UCBO2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner seleziona ed entra in un progetto specifico per analizzarne i dettagli: tecnologie, repository, issue, costi e team.
- *Precondizioni:* Il Business Owner sta visualizzando una lista o dashboard dei progetti.
- *Trigger:* Il Business Owner seleziona un progetto specifico dalla lista/dashboard.
- *Scenario principale:*
  + Il Business Owner visualizza le informazioni principali del progetto ad esempio nome, data di creazione ecc.
  + Il Business Owner visualizza la *lista delle tecnologie utilizzate* nel progetto (*<\<include>>* #link(<UCBO2.1>)[[UCBO2.1]]).
  + Il Business Owner consulta la *vista generale sulle repository* del progetto (*<\<include>>* #link(<UCBO2.2>)[[UC2.2]]).
  + Il Business Owner visualizza la *lista del team di sviluppo* (*<\<include>>* #link(<UCBO2.3>)[[UCBO2.3]]).
  + Il Business Owner può tornare alla dashboard "Home".
- *Postcondizioni:* Il Business Owner ha analizzato i dettagli del progetto selezionato.
- *Inclusione:* 
  - #link(<UCBO2.1>)[[UCBO2.1]]
  - #link(<UCBO2.2>)[[UCBO2.2]]
  - #link(<UCBO2.3>)[[UCBO2.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.1: Visualizzare lista tecnologie utilizzate nel progetto 
#align(center, [#image("../../asset/UC/business-owner/UCBO2.1.png", height: 3cm)])

<UCBO2.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner esamina l'elenco delle tecnologie impiegate nel progetto specifico.
- *Precondizioni:* Il Business Owner sta visualizzando un progetto (#link(<UCBO2>)[[UCBO2]]).
- *Trigger:* Il Business Owner si concentra sulla sezione "Tecnologie" del progetto.
- *Scenario principale:*
  + Il sistema visualizza una lista delle tecnologie utilizzate nel progetto.
  + Il Business Owner legge l'elenco per comprendere lo stack tecnologico.
  + Il Business Owner può verificare se ci sono *aggiornamenti disponibili* (*<\<include>>* #link(<UCBO2.1.1>)[[UCBO.2.1.1]]).
- *Postcondizioni:* Il Business Owner conosce le tecnologie utilizzate nel progetto.
- *Inclusioni:* #link(<UCBO2.1.1>)[[UCBO2.1.1]]

#line(length: 100%, stroke: 0.5pt + gray)


=== UCBO2.1.1: Identificazione aggiornamenti disponibili <UCBO2.1.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner verifica se ci sono aggiornamenti importanti disponibili per le tecnologie utilizzate nel progetto.
- *Precondizioni:* Il Business Owner sta visualizzando la lista tecnologie del progetto (#link(<UCBO2.1>)[[UCBO2.1]]).
- *Trigger:* Il Business Owner cerca specificamente informazioni sugli aggiornamenti.
- *Scenario principale:*
  + Il sistema evidenzia le tecnologie che hanno aggiornamenti disponibili.
  + Il Business Owner identifica quali tecnologie richiedono aggiornamento.
  + Il Business Owner valuta l'importanza degli aggiornamenti disponibili.
- *Postcondizioni:* Il Business Owner è consapevole degli aggiornamenti disponibili per le tecnologie del progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.2: Visualizzazione vista generale sulle repository del progetto 
#align(center, [#image("../../asset/UC/business-owner/UCBO2.2.png", height: 5cm)])

<UCBO2.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta una vista d'insieme delle repository che compongono il progetto.
- *Precondizioni:* Il Business Owner è entrato in un progetto (#link(<UCBO2>)[[UCBO2]]).
- *Trigger:* Il Business Owner si concentra sulla sezione "Repository" del progetto.
- *Scenario principale:*
  + Il sistema visualizza una lista o panoramica delle repository del progetto identificate dal nome.
  + Il Business Owner vede le *quantità di issue* per repository (*<\<include>>* #link(<UCBO2.2.1>)[[UCBO2.2.1]]).
  + Il Business Owner consulta le *stime dei costi* (*<\<include>>* #link(<UCBO2.2.2>)[[UCBO2.2.2]]).
- *Postcondizioni:* Il Business Owner ha una visione generale della struttura repository del progetto.
- *Inclusioni:* 
  - #link(<UCBO2.2.1>)[[UCBO2.2.1]] 
  - #link(<UCBO2.2.2>)[[UCBO2.2.2]]

#line(length: 100%, stroke: 0.5pt + gray)


=== UCBO2.2.1: Visualizzazione quantità issue <UCBO2.2.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta i numeri delle issue divise per stato nelle repository del progetto.
- *Precondizioni:* Il Business Owner sta visualizzando la vista repository del progetto (#link(<UCBO2.2>)[[UCBO2.2]]).
- *Trigger:* Il Business Owner cerca informazioni sullo stato delle issue.
- *Scenario principale:*
  + Il sistema visualizza i conteggi delle issue per stato:
    - Issue completate
    - Issue aperte
    - Issue in sviluppo
  + Il Business Owner analizza la distribuzione per valutare l'avanzamento.
- *Postcondizioni:* Il Business Owner comprende lo stato di avanzamento del progetto attraverso le issue.

#line(length: 100%, stroke: 0.5pt + gray)


=== UCBO2.2.2: Visualizzazione stima dei costi <UCBO2.2.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta una stima dei costi associati al progetto o alle sue repository.
- *Precondizioni:* Il Business Owner sta visualizzando la vista repository del progetto (#link(<UCBO2.2>)[[UCBO2.2]]).
- *Trigger:* Il Business Owner cerca informazioni sui costi.
- *Scenario principale:*
  + Il sistema visualizza una stima dei costi (se calcolabile dal sistema).
  + Il Business Owner legge il valore per comprendere l'impatto finanziario.
- *Postcondizioni:* Il Business Owner ha una stima dei costi del progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.3: Visualizzazione lista del team di sviluppo 
#align(center, [#image("../../asset/UC/business-owner/UCBO2.3.png", height: 6cm)])

<UCBO2.3>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner esamina l'elenco dei membri del team assegnati al progetto.
- *Precondizioni:* Il Business Owner è entrato in un progetto (#link(<UCBO2>)[[UCBO2]]).
- *Trigger:* Il Business Owner accede alla sezione "Team" del progetto.
- *Scenario principale:*
  + Il sistema visualizza una lista dei membri del team di sviluppo.
  + Il Business Owner può visualizzare le *statistiche dei singoli developer* (*<\<extend>>* #link(<UCBO3>)[[UCBO3]]).
- *Scenario alternativo:* Il Business Owner seleziona un singolo sviluppatore per vederne le statistiche *<\<extend>>* #link(<UCBO3>)[[UCBO3]]).
- *Postcondizioni:* Il Business Owner conosce la composizione del team del progetto.
- *Estensioni:* #link(<UCBO3>)[[UCBO3]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


=== UCBO3: Visualizzazione statistiche singoli developer 
#align(center, [#image("../../asset/UC/business-owner/UCBO3.png", height: 5cm)])

<UCBO3>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta le statistiche e informazioni dettagliate di uno specifico developer del team.
- *Precondizioni:* Il Business Owner sta visualizzando la lista del team (#link(<UCBO2.3>)[[UCBO2.3]]).
- *Trigger:* Il Business Owner seleziona un developer dalla lista del team.
- *Scenario principale:*
  + Il sistema visualizza le statistiche del developer selezionato.
  + Il Business Owner vede il *numero di progetti* a cui il developer ha lavorato e sta lavorando (*<\<include>>* #link(<UCBO3.1>)[[UCBO3.1]]).
  + Il Business Owner consulta i *linguaggi e tecnologie affini* del developer (*<\<include>>* #link(<UCBO3.2>)[[UCBO3.2]]).
- *Postcondizioni:* Il Business Owner ha approfondito la conoscenza delle competenze e del carico di lavoro del developer.
- *Inclusioni:* 
  - #link(<UCBO3.1>)[[UCBO3.1]]
  - #link(<UCBO3.2>)[[UCBO3.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO3.1: Visualizzazione numero progetti dello sviluppatore <UCBO3.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta l'elenco e il conteggio dei progetti associati al developer.
- *Precondizioni:* Il Business Owner sta visualizzando le statistiche di un developer (#link(<UCBO3>)[[UCBO3]]).
- *Trigger:* Il Business Owner cerca informazioni sul carico di progetti del developer.
- *Scenario principale:*
  + Il sistema visualizza:
    - Numero totale di progetti in cui il developer ha lavorato
    - Numero di progetti attualmente assegnati
    - Lista dei progetti (passati e attuali)
  + Il Business Owner valuta il carico di lavoro e l'esperienza del developer.
- *Postcondizioni:* Il Business Owner comprende il coinvolgimento del developer nei vari progetti.

#line(length: 100%, stroke: 0.5pt + gray)


=== UCBO3.2: Visualizzazione linguaggi e tecnologie affini <UCBO3.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta le competenze tecnologiche del developer.
- *Precondizioni:* Il Business Owner sta visualizzando le statistiche di un developer (#link(<UCBO3>)[[UCBO3]]).
- *Trigger:* Il Business Owner cerca informazioni sulle competenze tecniche del developer.
- *Scenario principale:*
  + Il sistema visualizza:
    - Linguaggi di programmazione conosciuti/utilizzati
    - Tecnologie e framework con esperienza
    - Livello di competenza (base/intermedio/avanzato) se disponibile
  + Il Business Owner valuta le competenze tecniche del developer.
- *Postcondizioni:* Il Business Owner conosce le competenze tecnologiche del developer.

= Requisiti
Di seguito sono esposti i requisiti individuati dal team CodeGuardian. La nomenclatura e il significato degli attributi fanno riferimento al documento _Norme di Progetto (capitolo 2.2.2.1)_. Per facilità di consultazione, si riportano di seguito le definizioni delle categorie adottate:

- *Funzionale*: Descrivono le funzionalità specifiche e i comportamenti che il sistema deve attuare per soddisfare le esigenze degli utenti.

- *Vincolo*: Requisiti obbligatori e imprescindibili, imposti da fattori esterni o scelte progettuali vincolanti.

- *Qualità*: Caratteristiche non funzionali che il sistema deve possedere per operare correttamente (es. prestazioni, affidabilità, sicurezza, manutenibilità).

- *Aspettativa*: Requisiti impliciti derivanti dai bisogni dell'utente o da standard di settore, spesso non espressi direttamente ma attesi.


== Requisiti funzionali

#table(
  columns: (auto, auto, 3cm),
  inset: 10pt,
  align: (left, left, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none }, 
  
  table.header(
  [*Codice*], [*Descrizione*], [*Fonti*]),
  //NOTA: i requisiti non dovrebbero cambiare, al massimo se ne aggiungono, ma i riferienti agli UC molto probabilmente cambiano
  [R-1-F-O],[L'utente deve poter accedere alla piattaforma CodeGuardian tramite autenticazione interna],[],
  [R-2-F-O],[L'utente deve poter inserire le proprie credianziali per l'accesso], [],
  [R-3-F-O],[L'utente deve poter accedere alla piattaforma CodeGuardian tramite GitHub], [#link(<UC1>)[UC1], #link(<UC1.2>)[UC1.2]],
  [R-4-F-O],[L'utente deve un messaggio d'errore se il tentativo di autenticazione non è andato a buon fine], [#link(<UC1>)[UC1], #link(<UC1.2>)[UC1.2]],
  [R-5-F-P],[L'utente deve poter cambiare ruolo a Business Owner se riconosicuto come tale], [],
  [R-6-F-P],[L'utente deve poter cambiare ruolo a Project Manager se riconosicuto come tale], [],
  [R-7-F-O],[L'utente deve poter annullare l'accesso alla piattaforma CodeGuardian], [#link(<UC1.1>)[UC1.1]],
  [R-8-F-O],[L'utente deve poter visualizzare la propria area personale], [#link(<UC2>)[UC2]],
  [R-9-F-O],[L'utente deve poter eseguire il logout], [#link(<UC4>)[UC4]],
  [R-10-F-O],[L'utente deve visualizzare un messaggio d'errore se il logout non è andato a buon fine], [#link(<UC4>)[UC4]],
  [R-11-F-O],[L'utente deve poter annullare l'operaiozne di logout], [#link(<UC4.1>)[UC4.1]],
  [R-12-F-O],[L'utente deve poter aggiungere una singola repository sulla piattaforma], [#link(<UCD1>)[UCD1], #link(<UCD1.0.1>)[UCD1.0.1]],
  [R-13-F-O],[L'utente deve ricevere un messaggio d'errore se l'aggiunta del repository non è andata a buon fine], [#link(<UCD1>)[UCD1], #link(<UCD1.0.1>)[UCD1.0.1]],
  [R-14-F-O],[L'utente deve poter annullare l'aggiunta di una singola repository sulla piattaforma], [#link(<UCD1.1>)[UCD1.1]],
  [R-15-F-O],[L'utente deve poter visualizzare la lista dei repository che ha inserito sulla piattaforma], [#link(<UCD2>)[UCD2]],
  [R-16-F-O],[Dalla visualizzazione della lista di repository, l'utente deve poter selezionarne una per vederne i dettagli], [#link(<UCD5>)[UCD5]],
  [R-17-F-D],[L'utente interagisce con il filtro a tendina per poter visualizzare solo le repository di suo interesse tra "Tutte" e "Senza progetto"], [#link(<UCD2.1>)[UCD2.1]],
  [R-18-F-O],[L'utente visualizza la lista dei progetti di cui fa parte], [#link(<UCD3>)[UCD3]],
  [R-19-F-O],[L'utente seleziona un progetto dalla lista dei progetti per vederne i dettagli], [#link(<UCD4>)[UCD4]],
  [R-20-F-O],[L'utente visualizza i dettagli del progetto selezionato], [#link(<UCD4>)[UCD4]],
  [R-21-F-O],[L'utente visualizza l'intestazione del progetto selezionato], [#link(<UCD4>)[UCD4]],
  [R-22-F-O],[L'utente visualizza il widget riguardante l'analisi della documentazione del progetto selezionato], [#link(<UCD4>)[UCD4]],
  [R-23-F-O],[L'utente visualizza il widget di copertura dei test per il progetto selezionato], [#link(<UCD4>)[UCD4]],
  [R-24-F-O],[L'utente visualizza il widget di analisi sicurezza OWASP per il progetto selezionato], [#link(<UCD4>)[UCD4]],
  [R-25-F-O],[L'utente deve visualizzare un messaggio d'errore se la pagina del progetto non viene caricata correttamente], [#link(<UCD4>)[UCD4]],
  [R-26-F-O],[Dalle visualizzazione dei deattagli del progetto, l'utente deve avere la possibilità si selezionare una repository facente parte di quest'ultimo, per vederne i dettagli], [#link(<UCD4>)[UCD4], #link(<UCD5>)[UCD5]],
  [R-27-F-O],[L'utente vede i dettagli del repository selezionata], [#link(<UCD5>)[UCD5]],
  [R-28-F-O],[L'utente vede l'intestazione del repository selezionata], [#link(<UCD5>)[UCD5]],
  [R-29-F-O],[L'utente vede il widget riguardante l'analisi della documentazione per repository selezionata], [#link(<UCD5>)[UCD5]],
  [R-30-F-O],[L'utente vede il widget di copertura dei test per repository selezionata], [#link(<UCD5>)[UCD5]],
  [R-31-F-O],[L'utente vede il widget di analisi sicurezza OWASP per repository selezionata], [#link(<UCD5>)[UCD5]],
  [R-32-F-O],[L'utente vede il pulsante per visualizzare le proposte di remediation per la repository selezionata], [#link(<UCD5>)[UCD5]],
  [R-33-F-O],[L'utente deve visualizzare un messaggio d'errore se la pagina del repository non viene caricata correttamente], [#link(<UCD5>)[UCD5]],
  [R-34-F-O],[L'utente visualizza l'ultima analisi effettuata], [#link(<UCD13>)[UCD13]],
  [R-35-F-O],[L'utente visualizza un messaggio d'errore se la pagina l'ultima analisi non viene caricata correttamente ], [#link(<UCD13>)[UCD13]],
  [R-36-F-O],[Sulla pagina dell'ultima analisi del repository, vengono visualizzati i grafici dell'area test], [#link(<UCD13>)[UCD13], #link(<UCD13.1>)[UCD13.1]],
  [R-37-F-O],[Sulla pagina dell'ultima analisi del repository, vengono visualizzati i grafici dell'area OWASP], [#link(<UCD13>)[UCD13], #link(<UCD13.2>)[UCD13.2]],
  [R-38-F-O],[Sulla pagina dell'ultima analisi del repository, vengono visualizzati i grafici dell'area documentazione], [#link(<UCD13>)[UCD13], #link(<UCD13.3>)[UCD13.3]],
  [R-39-F-D],[L'utente visualizza una lista delle ultime analisi della settimana. Le analisi disponibili saranno in ogni caso al massimo 30], [#link(<UCD12>)[UCD12]],
)

== Requisiti di vincolo

#table(
  columns: (auto, auto, 5.4cm),
  inset: 10pt,
  align: (left, left, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none }, 
  
  table.header(
  [*Codice*], [*Descrizione*], [*Fonti*],
  [R-1-V-O],[È necessario usare Git come software di versionamento], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-2-V-O],[È necessario che l'applicativo sia realizzato in ottica modulare], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-3-V-O],[È necessario che l'utilizzo di Node.js e Typescript per il backend], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Tecnologie"],
  [R-4-V-O],[È necessario che l'utilizzo di React.js per il frontend], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Tecnologie"],
  [R-5-V-O],[È necessario che l'utilizzo di MongoDB per la gestione database], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Tecnologie"],
  [R-6-V-O],[È necessario che l'utilizzo di GitHub Actions per l'integrazione dell'applicativo], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto]  Sezione "Tecnologie"],
  [R-7-V-O],[È necessario che l'utilizzo dell'architettura cloud AWS per la gestione degli agenti], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Tecnologie"],
  ),
)

== Requisiti di qualità

#table(
  columns: (auto, auto, 5.4cm),
  inset: 10pt,
  align: (left, left, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none }, 
  
  table.header(
  [*Codice*], [*Descrizione*], [*Fonti*],
  [R-1-Q-O],[È necessario redigere diagrammi UML relativi agli Use Cases di progetto], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-2-Q-O],[È necessario che il code coverage del progetto finale sia almeno del 70%], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-3-Q-O],[È necessario realizzare opportuni test di unità automatizzati], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-4-Q-O],[È necessario redigere lo schema design relativo alla base di dati], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-5-Q-O],[È necessario redigere il documento di requisiti di business e user story mapping], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-6-Q-O],[È necessario redigere la documentazione tecnica di Swagger API], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-7-Q-O],[È necessario redigere la documentazione descrittiva del progetto], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-8-Q-O],[È necessario redigere una documentazione sul Bug reporting], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-9-Q-O],[È necessario fornire il codice  prodotto in formato sorgente utilizzando sistemi di versionamento del codice come Git o repository online ( github, bitbucket ...)], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-10-Q-O],[È necessario redigere la documentazione tecnica formata da: "R-6-Q-O", "R-7-Q-O", "R-8-Q-O" e "R-9-Q-O"], [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di progetto] Sezione "Vincoli generali"],
  [R-11-Q-O],[È necessario soddisfare tutte le metriche presenti nel documento "Norme di Progetto"],[Analisi interna]
  ),
)

== Requisiti di aspettativa

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none }, 
  
  table.header(
  [*Codice*], [*Descrizione*],[*Fonti*],
  [R-1-A-O],[L'utente deve riuscire ad orientarsi velocemente all'interno dell'applicativo],[Analisi interna],
  [R-2-A-O],[Il tempo di caricamento della piattaforma deve essere breve],[Analisi interna],
  [R-3-A-O],[La responsività all'interazione del sistema deve essere breve (es. cambio pagine, pulsanti)],[Analisi interna],
  [R-4-A-O],[Il tempo di risposta medio degli agenti non deve superare i 15 minuti],[Analisi interna],
  [R-5-A-O],[L'applicativo deve essere gradevole alla vista],[Analisi interna],
  ),
)