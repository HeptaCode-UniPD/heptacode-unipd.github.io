/*
Domande per Cardin sul file:
1) Se ho una situazione in cui è possibile aprire un menù, completare un'azione dopodichè il sistema riporta alla schermata precedente è corretto inserire un include per lo uc della finestra precedente? (es UC10.3.2.1)
2) In 6.3, ad esempio, è formalmente corretto fare riferimento ad una situazione precedente linkando lo uc a cui ci si riferisce o è meglio descrivere nuovamente la situazione?
3) se la descrizione è "Il Developer vuole consultare un'analisi archiviata relativa all'area testing" allora non è corretto considerare l'azione di consultazione analisi archiviata come un include?
4) Se l'utente è obbligato alla fine a tornare alla pagina precedente, è giusto inserirlo nel flusso principale?
*/


#show link: it => text(fill: rgb("#6a00f4"), it)

#show table.cell: block.with(breakable: true)

#let storia_modifiche = (
  // AGGIUNGI QUI SOPRA LA NUOVA RIGA QUANDO SERVE, LA VERSIIONE DEL DOC VIENE AGGIORNATA AUTOMATICAMENTE
  ("0.11.0", "2026-02-12", "Amerigo Vegliante", "", "Stesura Diagrammi di Attività"),
  ("0.10.0", "2026-02-10", "Angela Favaro", "", "Stesura definitiva requisiti funzionali"),
  ("0.10.0", "2026-02-10", "Nicola Simionato", "Angela Favaro", "Modifica UC Project Manager e Business Owner"),
  ("0.9.0", "2026-02-09", "Angela Favaro", "Laura Venturini", "Aggiunta requisiti funzionali user e dev"),
  ("0.8.1", "2026-02-07", "Angela Canazza", "Angela Favaro", "Modifica UC di Utente e Developer"),
  ("0.8.0", "2026-01-16", "Angela Canazza", "Angela Favaro", "Scrittura requisiti e modifica errori sugli UC"),
  ("0.8.0", "2026-01-12", "Angela Favaro", "Nicola Simionato", "Finale UC Utente e Developer"),
  ("0.7.0", "2026-01-06", "Angela Favaro", "Nicola Simionato", "Revisione UC Utente e Developer"),
  ("0.6.1", "2026-01-05", "Amerigo Vegliante", "Angela Favaro", "Correzione ortografica"),
  ("0.6.0", "2026-01-05", "Amerigo Vegliante", "Angela Favaro", "Creazione UC10 e UC11 nella sezione Business Owner"),
  ("0.5.0", "2025-12-30", "Alberto Reginato", "Laura Venturini", "Creazione UC10.4,8 e 9; riorganizzato UC secondo le personas"),
  ("0.4.2", "2025-12-28", "Angela Favaro", "Laura Venturini", "Correzioni fino a UC10.3.3"),
  ("0.4.1", "2025-12-27", "Angela Favaro", "Laura Venturini", "Rifattorizzazione UC1.2"),
  ("0.4.0", "2025-12-23", "Alberto Reginato", "Angela Canazza", "Aggiunta UC da UC3.6 a UC3.7, da UC10.3 a UC10.3.4 e fix"),
  ("0.3.0", "2025-12-23", "Alberto Reginato", "Angela Canazza", "Aggiunta UC2.4 e fix"),
  ("0.2.0", "2025-12-21", "Alberto Reginato", "Angela Canazza", "Modellazione UC da UC2.3.1 a UC5.2"),
  ("0.1.2", "2025-12-18", "Alberto Reginato", "Angela Canazza", "Rimodellazione UC fino UC2.3"),
  ("0.1.1", "2025-12-17", "Alberto Reginato", "Angela Canazza", "Rimodellazione UC fino UCD2.1"),
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
  ),

  ..storia_modifiche.flatten()
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

=== UC1 - Accesso alla piattaforma
#align(center, [#image("../../asset/UC/user/UC1.png", height: 7cm)])
<UC1>
- *Attore principale:* Utente.

- *Descrizione:* L’utente accede a _Code Guardian_.

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L’utente interagisce con la funzionalità di login nella pagina iniziale.

- *Scenario principale:*
  + L'utente visualizza l’interfaccia per l’inserimento dei dati personali.
  + L'utente visualizza l'input per lo username.
  + L'utente visualizza l'input per la password.
  + L’utente inserisce lo username (*<\<include>>* #link(<UC1.0.1>)[UC1.0.1]).
  + L’utente inserisce la password (*<\<include>>* #link(<UC1.0.2>)[UC1.0.2]).
  + L’utente preme il pulsante di accesso.
  + L'utente viene autenticato e reindirizzato alla propria dashboard personale.

- *Scenari alternativi:* \
  - L'utente esprime la volontà di annullare l'autenticazione (*<\<extend>>* #link(<UC1.1>)[[UC1.1]]) 
  - Le credenziali risultano errate (*<\<extend>>* #link(<UC1.2>)[[UC1.2]])

- *Postcondizioni:* L’utente è autenticato e visualizza la dashboard.

- *Estensioni:* 
  - #link(<UC1.1>)[[UC1.1]].
  - #link(<UC1.2>)[[UC1.2]].

- *Inclusioni*
  - #link(<UC1.0.1>)[[UC1.0.1]]
  - #link(<UC1.0.2>)[[UC1.0.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.0.1 - Inserimento username
<UC1.0.1>
- *Attore principale:* Utente.
  
- *Descrizione:* L'utente inserisce il proprio username.
  
- *Precondizioni:* L'utente si trova nell'interfaccia di inserimento credenziali.
  
- *Trigger:* L'utente seleziona lo spazio destinato all'inserimento dello username.

- *Scenario principale:*
  + L'utente inserisce il proprio username.
  
- *Postcondizioni:* L'utente ha inserito il proprio username all'interno dello spazio dedicato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.0.2 - Inserimento password
<UC1.0.2>
- *Attore principale:* Utente.

- *Descrizione:* L'utente inserisce la propria password.
  
- *Precondizioni:* L'utente si trova nell'interfaccia di inserimento credenziali.
  
- *Trigger:* L'utente seleziona lo spazio destinato all'inserimento della password.
  
- *Scenario principale:*
  + L'utente inserisce la propria password.
   
- *Postcondizioni:* L'utente ha inserito la propria password all'interno dello spazio dedicato.
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.1 - Annullamento accesso alla piattaforma
<UC1.1>
- *Attore principale:* Utente.

- *Descrizione:* L'utente annulla la procedura di accesso alla piattaforma _Code Guardian_.

- *Precondizioni:* L'utente si trova nell'interfaccia di inserimento credenziali.

- *Trigger:* L'utente seleziona il tasto di annullamento.

- *Scenario principale:*
  + La procedura di autenticazione viene interrotta.
  + L'Utente è reindirizzato alla schermata iniziale.

- *Postcondizioni:* L’utente non è autenticato e si trova nella pagina di login.


#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2 - Credenziali errate
<UC1.2>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema gestisce l'inserimento di credenziali non valide, notificando l'utente.

- *Precondizioni:* L'utente ha confermato l'invio del modulo di login (#link(<UC1>)[[UC1]]).

- *Trigger:* Il sistema rileva una mancata corrispondenza tra le credenziali inserite e i dati a sistema.

- *Scenario principale:*
  + La richiesta di accesso viene invalidata.
  + L'utente visualizza un messaggio di errore (esempio. "Email o password errati").
  + I campi sensibili vengono svuotati e l'Utente può effettuare un nuovo tentativo.

- *Postcondizioni:* L’utente non è autenticato e rimane sulla pagina di login.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.5 - Annullamento autenticazione GitHub
<UC1.5>
- *Attore principale:* Utente.

- *Descrizione:* L’utente interrompe la procedura di autorizzazione sul portale esterno GitHub.

- *Precondizioni:* L’utente è stato reindirizzato alla pagina di autorizzazione di GitHub.

- *Trigger:* L'utente nega l'autorizzazione o chiude la finestra del provider.

- *Scenario principale:*
  + L'Utente viene riportato alla dashboard di _Code Guardian_.

- *Postcondizioni:* Nessun dato viene sincronizzato, l'utente torna alla dashboard.
  
#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UC2 - Visualizzazione area personale
#align(center, [#image("../../asset/UC/user/UC2.png", height: 7cm)])
<UC2>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole visualizzare la propria area personale.

- *Precondizioni:* L'utente è autenticato e si trova su una qualsiasi pagina della piattaforma.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale.

- *Scenario principale:*
  + L'utente visualizza il pannello a comparsa del menù utente.
  + L'utente visualizza il riepilogo delle proprie informazioni (nome, email, ruolo attuale). (*<\<include>>* #link(<UC2.1>)[[UC2.1]], *<\<include>>* #link(<UC2.2>)[[UC2.2]], *<\<include>>* #link(<UC2.3>)[[UC2.3]])
  + L'utente visualizza il pulsante per il logout (*<\<include>>* #link(<UC3>)[[UC3]]).

- *Postcondizioni:* Il menù utente è attivo, l'utente visualizza le sue informazioni personali e le opzioni sono selezionabili.

- *Inclusioni:*
  - #link(<UC2.1>)[[UC2.1]]
  - #link(<UC2.2>)[[UC2.2]]
  - #link(<UC2.3>)[[UC2.3]]
  - #link(<UC3>)[[UC3]]

=== UC2.1 - Visualizzazione nome utente
<UC2.1>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole visualizzare il proprio nome utente.

- *Precondizioni:* Il menù utente è attivo.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale e pone l'attenzione sulle informazioni personali.

- *Scenario principale:*
  + L'utente visualizza il proprio nome tra le informazioni personali.

- *Postcondizioni:* L'utente è a conoscenza del proprio nome, utilizzato sull'applicativo Code Guardian.


#line(length: 100%, stroke: 0.5pt + gray)
=== UC2.2 - Visualizzazione email
<UC2.2>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole visualizzare la propria email.

- *Precondizioni:* Il menù utente è attivo.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale e pone l'attenzione sulle informazioni personali.

- *Scenario principale:*
  + L'utente visualizza la propria email tra le informazioni personali.

- *Postcondizioni:* L'utente è a conoscenza della propria, email utilizzata sull'applicativo Code Guardian.

#line(length: 100%, stroke: 0.5pt + gray)
=== UC2.3 - Visualizzazione ruolo
<UC2.3>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole visualizzare il proprio ruolo.

- *Precondizioni:* Il menù utente è attivo.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale e pone l'attenzione sulle informazioni personali.

- *Scenario principale:*
  + L'utente visualizza il proprio ruolo tra le informazioni personali.

- *Postcondizioni:* L'utente è a conoscenza del proprio ruolo all'interno dell'applicativo Code Guardian.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC3 - Logout
#align(center, [#image("../../asset/UC/user/UC3.png", width: 15cm)])
<UC3>
- *Attore principale:* Utente.

- *Descrizione:* Permette all'utente di terminare la sessione di lavoro corrente.

- *Precondizioni:* L'utente è autenticato e sta visualizzando la propria area Personale.

- *Trigger:* L'utente seleziona il pulsante di logout.

- *Scenario principale:*
  + L’utente conferma l’operazione di logout.
  + La sessione è terminata.
  + L’Utente viene reindirizzato alla pagina di accesso.
  + L'utente vece un messaggio di avvenuta disconnessione.

- *Scenari alternativi:* \
  Al passo 1:
  + L’utente annulla l’operazione di logout. Il sistema interrompe l’operazione #link(<UC3.1>)[[UC3.1]].
  Al passo 2:
  + Si verifica un errore durante la terminazione della sessione.
    - Il Project Manager visualizza un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* La sessione dell’utente è terminata e l’utente si trova in uno stato non autenticato.

- *Estensioni:* #link(<UC3.1>)[[UC3.1]]
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.1 - Annullamento logout
<UC3.1>
- *Attore principale:* Utente.

- *Descrizione:* Gestisce il caso in cui l'Utente decida di annullare l'operazione di logout.

- *Precondizioni:* L'Utente è autenticato e sta eseguendo l'operazione di logout #link(<UC3>)[[UC3]].

- *Trigger:* L'utente seleziona il tasto per annullare l'operazione di logout.

- *Scenario principale:* 
+ L'Utente viene reindirizzato alla pagina di visualizzazione area personale.

- *Postcondizioni:* L'utente è autenticato e si trova nella propria area personale senza aver effettuato il logout.

=== UC4 - Errore generico
<UC4>
- *Attore principale:* Utente.
  
- *Descrizione:* L'utente visualizza un messaggio di errore nel caso il sistema non sia in grado di eseguire un'operazione.

- *Precondizioni:* L'utente si trova all'interno della piattaforma Code Guardian e sta attendendo l'esecuzione di un'operazione.

- *Trigger:* L'utente seleziona un'operazione da eseguire.

- *Scenario principale:*
  + Viene mostrato un messaggio di errore.
  
- *Postcondizioni:* L'utente rimane nello stato precedente alla selezione dell'operazione.
   
#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UC5 - visualizzazione dettagli repository
#align(center, [#image("../../asset/UC/developer/UCD5.png", width: 100%)])
<UC5>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente ha effettuato l'accesso. L'Utente vuole accedere alla vista di uno specifico repository.

- *Precondizioni:* L'Utente ha effettuato l'accesso. Esiste almeno un repository all'interno del sistema a cui l'Utente ha accesso.

- *Trigger:* L'Utente clicca su un repository nella dashboard (#link(<UC6>)[[UC6]]) o su un repository nei dettagli di un progetto (#link(<UC9>)[[UCD3]]).

- *Scenario principale:*
  + L'Utente visualizza l'intestazione del repository (*<\<include>>* #link(<UC5.5>)[[UC5.5]]).
  +  L'Utente visualizza il nome del progetto associato al repository (*<\<include>>* #link(<UC5.6>)[[UC5.6]]).
  +  L'Utente visualizza l’indicatore  di visibilità del repository (*<\<include>>* #link(<UC5.7>)[[UC5.7]]).
  + L'Utente visualizza il widget delle statistiche di analisi documentazione (*<\<include>>* #link(<UC5.1>)[[UC5.1]]).
  + L'Utente visualizza il widget delle statistiche di analisi di test (*<\<include>>* #link(<UC5.2>)[[UC5.2]]).
  + L'Utente visualizza il widget delle statistiche correttezza OWASP (*<\<include>>* #link(<UC5.4>)[[UC5.4]]).
  + L'Utente visualizza un pulsante per l'eliminazione del repository (#link(<UC11>)[[UC11]]). 
  + L'Utente visualizza un pulsante per tornare alla pagina precedente. 
- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
    - L'Utente visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC10]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* L'Utente visualizza i dati aggregati del repository.

- *Inclusioni:* 
  - #link(<UC5.5>)[[UC5.5]]
  - #link(<UC5.6>)[[UC5.6]]
  - #link(<UC5.7>)[[UC5.7]]
  - #link(<UC5.1>)[[UC5.1]]
  - #link(<UC5.2>)[[UC5.2]]
  - #link(<UC5.4>)[[UC5.4]]
  
- *Estensioni:*
  - #link(<UC4>)[[UC10]]

- *Generalizzazioni:*
  - #link(<UCD5>)[[UCD5]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5.1 - Visualizzazione widget analisi documentazione repository
<UC5.1>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema mostra all'Utente un widget contenente l'esito percentuale relativo alla correttezza dell'ultima analisi della documentazione effettuata.

- *Precondizioni:* L'Utente ha effettuato l'accesso. L'Utente si trova nella visualizzazione di dettaglio del repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Caricamento della schermata di dettaglio del repository.

- *Scenario principale:*
  + L'Utente rileva il valore percentuale del widget che rappresenta il livello di correttezza dei documenti analizzati.
  + L'Utente osserva l'eventuale variazione del dato rispetto alle sessioni precedenti.
  
- *Scenari alternativi:* \
  Se non sono presenti analisi pregresse, il widget viene mostrato con il valore N.D. (Non Disponibile) o un messaggio informativo.

- *Postcondizioni:* L'Utente è a conoscenza dello stato della documentazione, tramite l'indice percentuale di correttezza.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5.2 - Visualizzazione widget analisi test repository
<UC5.2>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema mostra al Utente un widget contenente l'esito percentuale relativo alla correttezza dell'ultima analisi dei test effettuata.

- *Precondizioni:* L'Utente ha effettuato l'accesso. L'Utente si trova nella visualizzazione di dettaglio del repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Caricamento della schermata di dettaglio della repository.

- *Scenario principale:*
  + L'Utente rileva, dal widget, la percentuale di correttezza risultante dall'ultima scansione disponibile.
  + L'Utente interpreta il dato per determinare se la copertura e l'esecuzione dei test soddisfano i requisiti di progetto.
  
- *Scenari alternativi:* \
  Se non sono presenti analisi pregresse, il widget viene mostrato con il valore N.D. (Non Disponibile) o un messaggio informativo.

- *Postcondizioni:* L'Utente è a conoscenza dello stato dei test, tramite l'indice percentuale di correttezza.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5.4 - Visualizzazione widget analisi OWASP repository
<UC5.4>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema mostra al Utente un widget contenente l'esito percentuale relativo alla correttezza dell'ultima analisi OWASP effettuata.

- *Precondizioni:* L'Utente ha effettuato l'accesso. L'Utente si trova nella visualizzazione di dettaglio del repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Caricamento della schermata di dettaglio del repository.

- *Scenario principale:*
+ L'Utente rileva, dal widget, l'esito percentuale che rappresenta il grado di sicurezza del codice analizzato.
+ L'Utente valuta l'integrità del repository in base alla soglia di correttezza riscontrata.
  
- *Scenari alternativi:* \
  Se non sono presenti analisi pregresse, il widget viene mostrato con il valore N.D. (Non Disponibile) o un messaggio informativo.

- *Postcondizioni:* L'Utente è a conoscenza dello stato della correttezza OWASP, tramite l'indice percentuale di correttezza.

=== UC5.5 - Visualizzazione nome repository
<UC5.5>
- *Attore principale*: Utente.
  
- *Descrizione*: Il sistema mostra il nome di un singolo repository.
  
- *Precondizioni*: Il sistema sta mostrando un elemento da una lista di repository o la schermata di dettaglio di un repository.
  
- *Trigger*: Caricamento della lista di repository (che essa sia da #link(<UC6>)[[UC6]] o da #link(<UC10>)[[UC10]]).
  
- *Scenario principale*:
  + L'Utente visualizza il nome del repository. 
  
- *Postcondizioni*: L'Utente ha visualizzato il nome di un repository.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5.6 - Visualizzazione nome progetto associato al repository
<UC5.6>
- *Attore principale*: Utente.
  
- *Descrizione*: Il sistema mostra il nome del progetto a cui appartiene un singolo repository.
  
- *Precondizioni*: Il sistema sta mostrando un elemento da una lista di repository o la schermata di dettaglio di un repository.
  
- *Trigger*: Caricamento della lista di repository (che essa sia da #link(<UC6>)[[UC6]] o da #link(<UC10>)[[UC10]]).
  
- *Scenario principale*:
  + L'Utente visualizza il nome del progetto a cui appartiene il repository. 
  
- *Postcondizioni*: L'Utente ha visualizzato il nome del progetto a cui appartiene il repository.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5.7 - Visualizzazione indicatore visibilità del repository
<UC5.7>
- *Attore principale*: Utente.
  
- *Descrizione*: Il sistema mostra l’indicatore  di visibilità associato al repository.
  
- *Precondizioni*: Il sistema sta mostrando un elemento da una lista di repository o la schermata di dettaglio di un repository.
  
- *Trigger*: Caricamento di una lista di repository (Dashboard globale o sezione progetti).
  
- *Scenario principale*:
  + L'Utente visualizza l’indicatore  di visibilità del repository. 
  
- *Postcondizioni*: L'Utente ha visualizzato l’indicatore  di visibilità del repository.

=== UC5.8 - Visualizzazione informazioni generali repository
<UC5.8>
- *Attore principale*: Utente.

- *Descrizione:* Il sistema mostra un riepilogo dei dati principali dei repository che l'Utente ha inserito all'interno della dashboard.

- *Precondizioni:* L'Utente ha effettuato l'accesso. L'Utente dispone dell'accesso a repository presenti sulla piattaforma _Code Guardian_.

- *Trigger:* Caricamento di una lista di repository (Dashboard globale o sezione progetti).

- *Scenario principale:*
  + Per ogni elemento, l'Utente visualizza il nome del repository (*<\<include>>* #link(<UC5.5>)[[UC5.5]]).
  + L'Utente visualizza il nome del progetto associato (se esistente) (*<\<include>>* #link(<UC5.6>)[[UC5.6]]).
  + L'Utente visualizza l’indicatore  di visibilità (Pubblica/Privata) (*<\<include>>* #link(<UC5.7>)[[UC5.7]]).

- *Postcondizioni:* L'Utente visualizza una panoramica sintetica dei repository.
  
- *Inclusioni:*
  - #link(<UC5.5>)[[UC5.5]]
  - #link(<UC5.6>)[[UC5.6]]
  - #link(<UC5.7>)[[UC5.7]]

- *Estensioni:*
  - #link(<UC5.5>)[[UC5.5]]
  - #link(<UC5.6>)[[UC5.6]]
  - #link(<UC5.7>)[[UC5.7]]

- *Generalizzazioni:*
  - #link(<UC5.9>)[[UC5.9]]

=== UC5.9 - Visualizzazione informazioni generali repository filtro progetto
<UC5.9>
- *Attore principale*: Utente.

- *Descrizione:* Specializzazione di #link(<UC5.8>)[[UC5.8]] in cui la lista mostrata è limitata esclusivamente ai repository appartenenti al progetto correntemente visualizzato.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'utente sta visualizzando il dettaglio di uno specifico progetto.

- *Trigger:* Caricamento della dashboard di dettaglio progetto.

- *Scenario principale:*
  + L'Utente visualizza i dati come descritto in #link(<UC5.8>)[[UC5.8]].
  + l'Utente visualizza i soli repository che appartengono al progetto selezionato.

- *Postcondizioni:* L'Utente visualizza solo i repository pertinenti al progetto selezionato.
  
#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC6 - Visualizzazione lista repository personali
//#align(center, [#image("../../asset/UC/developer/UC6.png", height: 7cm)])
<UC6>
- *Attore principale*: Utente.

- *Descrizione:* L'Utente desidera visualizzare la lista dei repository importati sulla piattaforma _Code Guardian_.

- *Precondizioni:* L'Utente si trova all'interno della dashboard.

- *Trigger:* Caricamento della schermata della dashboard. Il selettore di vista è impostato su "Repository".

- *Scenario principale:*
  + L'Utente visualizza una barra di ricerca per il nome dei repository (*<\<include>>* #link(<UC7>)[[UC7]]).
  + L'Utente visualizza un menù a tendina per selezionare la tipologia di repository che desidera (tutti/senza progetto) (*<\<include>>* #link(<UC6.1>)[[UC6.1]]).
  + L'Utente visualizza, all'interno della dashboard, una sezione contente la lista dei repository (*<\<include>>* #link(<UC5.8>)[[UC5.8]]).
  + L'Utente può scorrere per visualizzare tutti i repository presenti.

- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
  - L'Utente visualizza un messaggio d'errore *<\<extend>>* #link(<UC4>)[[UC4]].
  - Il caso d'uso termina senza successo.

- *Postcondizioni:* L'Utente visualizza la lista dei propri Repository.
  
- *Inclusioni:* 
  - #link(<UC6.1>)[[UC6.1]]
  - #link(<UC5.8>)[[UC5.8]]
  - #link(<UC7>)[[UC7]]

- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC6.1 - Selezione preferenza repository
<UC6.1>
- *Attore principale*: Utente.

- *Descrizione:* L'Utente desidera selezionare una preferenza per i repository da visualizzare, presenti sulla piattaforma _Code Guardian_.

- *Precondizioni:* L'Utente si trova all'interno della dashboard.

- *Trigger:* L'utente seleziona la tendina del filtro repository.

- *Scenario principale:*
  + L'utente seleziona la preferenza di visualizzazione che desidera (tutti/senza progetto).
  + L'Utente visualizza la pagina ricaricata con i repository che soddisfano l'opzione selezionata.

- *Postcondizioni:* Il Developer visualizza la lista dei repository desiderati.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC7 - Ricerca nome repository 
// #align(center, [#image("../../asset/UC/project-manager/UCPM2.1.png", height: 10cm)])
<UC7>

- *Attore principale:* Utente.

- *Descrizione:* L'Utente filtra la lista dei repository disponibili tramite una barra di ricerca per individuare rapidamente un elemento specifico.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente visualizza una lista di repository che contiene almeno un elemento.

- *Trigger:* L'Utente digita dei caratteri all'interno del campo di ricerca/filtro.

- *Scenario principale*:
  + L'Utente inserisce una stringa di testo (nome o cognome) nella barra di ricerca.
  + L'Utente visualizza solo i repository che corrispondono alla ricerca.

- *Scenario principale:*
  + Nessun risultato trovato: Se nessun repository corrisponde alla stringa inserita, l'Utente visualizza un messaggio informativo (es. "Nessun repository corrisponde alla ricerca").

- *Postcondizioni:* L'Utente visualizza la lista filtrata dei repository.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC8 - Aggiungi singolo repository
//#align(center, [#image("../../asset/UC/developer/UC8.png", width: 100%)])
<UC8>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente vuole registrare un nuovo repository _GitHub_ nella piattaforma.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente è all'interno della dashboard.

- *Trigger:* L'Utente seleziona l'opzione di aggiunta repository dalla dashboard.

- *Scenario principale:*
  + L'Utente visualizza l’interfaccia per l’inserimento dei dati del repository.
  + L'Utente inserisce l'URL del repository _GitHub_ *<\<include>>* #link(<UC8.2>)[[UC8.2]].
  + L'Utente conferma l'operazione.
  + L'Utente visualizza un messaggio di conferma dell’avvenuta aggiunta.

- *Scenari alternativi:* \
  - Al passo 1 o 2: L'Utente decide di annullare l’operazione #link(<UC8.1>)[[UC8.1]].
  - Al passo 3: L'URL inserito corrisponde ad un repository privato ma non ha un token valido associato (*<\<extend>>* #link(<UC8.0.1>)[[UC8.0.1]]).
  - Al passo 3: URL del repository non valido *<\<extend>>* #link(<UC8.3>)[[UC8.3]].
  - Si verifica un errore durante il collegamento con GitHub.
      - L'Utente visualizza un messaggio di errore *<\<extend>>* #link(<UC4>)[[UC4]].
      - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il repository è stato aggiunto alla piattaforma e l'utente lo può visualizzare nella sua lista.

- *Estensioni:* 
  - #link(<UC8.0.1>)[[UC8.0.1]]
  - #link(<UC8.1>)[[UC8.1]]
  - #link(<UC8.3>)[[UC8.3]]
  - #link(<UC4>)[[UC4]]

- *Inclusioni:* #link(<UC8.2>)[[UC8.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.0.1 - Inserimento token repository
//#align(center, [#image("../../asset/UC/developer/UC8.0.1.png", width: 90%)])
<UC8.0.1>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente inserisce il proprio Personal Access Token GitHub per consentire alla piattaforma l'accesso alle proprie risorse private.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  Il sistema ha rilevato l'assenza di un token valido durante un'operazione di aggiunta o sincronizzazione.

- *Trigger:* Richiesta del sistema a seguito di un tentativo di accesso a repository privati.

- *Scenario principale:*
  + L'Utente visualizza l'interfaccia di inserimento per il token GitHub.
  + L'Utente inserisce il proprio token.
  // + Il sistema salva il token associandolo stabilmente al profilo dell'utente.
  //per diagramma di attività

- *Scenari alternativi:*
- Il token inserito non è valido (*<\<extend>>* #link(<UC8.0.2>)[[UC8.0.2]]).

- *Postcondizioni:* Il profilo dell'Utente è aggiornato con un token valido, permettendo l'importazione di repository privati.
  
- *Estensioni:* 
  - #link(<UC8.0.2>)[[UC8.0.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.0.2 - Token inserito non valido
<UC8.0.2>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema notifica all'Utente che il token inserito non è valido o ha permessi insufficienti.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  Il sistema ha fallito la validazione del token in #link(<UC8.0.1>)[[UC8.0.1]].

- *Trigger:* Il token inserito non è riconosciuto da GitHub o è scaduto.

- *Scenario principale:*
  + All'Utente viene mostrato un messaggio di errore, indicando la causa del fallimento.
  + L'Utente è invitato a inserire un nuovo token o a verificare i permessi di quello attuale.

- *Postcondizioni:* L'Utente può tentare nuovamente l'inserimento o annullare l'operazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.1 - Annullamento aggiungi singola repository
<UC8.1>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente decide di annullare l'operazione di aggiunta di un repository nel proprio profilo.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente visualizza l'interfaccia per l'inserimento dei dati del repository.

- *Trigger:* L'Utente seleziona il tasto per l'annullamento dell'aggiunta repository.

- *Scenario principale:* 
  + L'Utente viene reindirizzato alla dashboard principale della piattaforma _Code Guardian_.

- *Postcondizioni:* L'Utente si trova nuovamente nella dashboard senza aver aggiunto un repository.
  
=== UC8.2 - Inserimento URL repository
<UC8.2>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente vuole inserire l'URL del repository GitHub da aggiungere alla piattaforma.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  Il repository da aggiungere non è presente nella piattaforma.

- *Trigger:* L'Utente seleziona l'opzione di aggiunta repository dalla dashboard.

- *Scenario principale:*
  + L'Utente visualizza l’interfaccia per l’inserimento dei dati del repository.
  + L'Utente inserisce l'URL del repository _GitHub_.

- *Postcondizioni:* È stato indicato un URL nell'input per il link del repository da aggiungere.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.3 - URL non valido
<UC8.3>
- *Attore principale:* Utente.

- *Descrizione:* Segnalazione al developer della mancata validità dell'URL inserito, per l'aggiunta di un repository.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'URL inserito, per aggiungere un repository alla piattaforma, non è valido.

- *Trigger:* L'Utente seleziona l'opzione di aggiunta repository dalla dashboard, l'URL inserito non è valido.

- *Scenario principale:*
  + All'Utente viene mostrato un messaggio di errore.

- *Postcondizioni:* L'Utente può effettuare un nuovo tentativo di inserimento URL.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)
#pagebreak()

=== UC9 - Visualizzazione lista progetti
<UC9>
- *Attore principale*: Utente.

- *Descrizione:* L'Utente desidera visualizzare la lista dei progetti ai quali partecipa, presenti sulla piattaforma _Code Guardian_.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente si trova all'interno della dashboard.

- *Trigger:* Caricamento della schermata della dashboard. Il selettore di vista è impostato su "Progetti".

- *Scenario principale:*
  + L'Utente visualizza, all'intero della dashboard, una sezione contente la lista dei progetti. 
  + Per ogni progetto, l'Utente ne vede il nome (*<\<include>>* #link(<UC10.1>)[[UC10.1]]).
  + L'utente può scorrere per visualizzare tutti i progetti presenti.
  
- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
  - All'utente viene mostrato un messaggio d'errore *<\<extend>>* #link(<UC4>)[[UC4]].
  - Il caso d'uso termina senza successo.

- *Postcondizioni:* L'Utente visualizza la lista dei progetti in cui è coinvolto.
  
- *Inclusioni:*
  - #link(<UC10.1>)[[UC10.1]]
  
- *Estensioni:*
  - #link(<UC4>)[[UC4]]

- *Generalizzazioni:*
  - #link(<UCPM2>)[[UCPM2]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC10 - Visualizzazione dettagli progetto
<UC10>
//#align(center, [#image("../../asset/UC/developer/UC10.png", width: 100%)])

- *Attore principale:* Utente.

- *Descrizione:* L'Utente vuole accedere alla vista di uno specifico progetto.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  Esiste almeno un progetto creato a cui l'Utente è associato.

- *Trigger:* L'Utente clicca sulla card di un progetto.

- *Scenario principale:*
  + L'Utente visualizza l'intestazione del progetto (*<\<include>>* #link(<UC10.1>)[[UC10.1]]).
  + L'Utente visualizza il widget delle statistiche di analisi documentazione(*<\<include>>* #link(<UC5>)[[UC5]]).
  + L'Utente visualizza il widget delle statistiche di test (*<\<include>>* #link(<UC10.3>)[[UC10.3]]). 
  + L'Utente visualizza il widget delle statistiche di correttezza OWASP (*<\<include>>* #link(<UC10.4>)[[UC10.4]]).
  + L'Utente visualizza l'elenco dei repository che compongono il progetto (*<\<include>>* #link(<UC5.8>)[[UC5.8]]).
  + L'Utente visualizza il pulsante per tornare alla visualizzazione della lista dei progetti. 
  
- *Scenari alternativi:* \
  Al passo 1: 
  - Si verifica un errore durante il caricamento della pagina.
    - L'Utente visualizza un messaggio di errore *<\<extend>>* #link(<UC4>)[[UC4]].
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* L'Utente visualizza i dati aggregati del progetto.

- *Inclusioni:* 
  - #link(<UC10.1>)[[UC10.1]]
  - #link(<UC5>)[[UC5]]
  - #link(<UC10.3>)[[UC10.3]]
  - #link(<UC10.4>)[[UC10.4]]

- *Estensioni:*
  - #link(<UC4>)[[UC10]]

- *Generalizzazioni:*
  - #link(<UCPM2.1>)[[UCPM2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC10.1 - Visualizzazione nome singolo progetto
<UC10.1>
- *Attore principale*: Utente. 
  
- *Descrizione*: L'Utente visualizza il nome del progetto.
  
- *Precondizioni*: Il sistema sta mostrando un elemento da una lista di progetto o la schermata di dettaglio di un progetto.
  
- *Trigger*: Caricamento della lista di repository (che essa sia da #link(<UC9>)[[UCD3]] o da #link(<UC10>)[[UC10]]).
  
- *Scenario principale*:
  + L'Utente visualizza il nome del un progetto. 
  
- *Postcondizioni*: L'Utente ha visualizzato il nome del progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC10.2 - Visualizzazione widget analisi documentazione progetto
<UC10.2>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema mostra all'Utente un widget contenente l'esito percentuale relativo alla correttezza dell'ultima analisi della documentazione effettuata.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente ha effettuato l'accesso e si trova nella visualizzazione di dettaglio del progetto.

- *Trigger:* Caricamento della schermata di dettaglio del progetto.

- *Scenario principale:*
  + L'Utente prende visualizza la media percentuale di correttezza, data dall'insieme dei dati dei repository coinvolti.
  + L'Utente valuta la coerenza della documentazione a livello globale per determinare se il progetto rispetti gli standard di qualità definiti.
  
- *Scenari alternativi:* \
  Se non sono presenti analisi pregresse, il widget viene mostrato con il valore N.D. (Non Disponibile) o un messaggio informativo.

- *Postcondizioni:* L'Utente è a conoscenza dello stato della documentazione, tramite l'indice percentuale di correttezza.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC10.3 - Visualizzazione widget analisi test progetto
<UC10.3>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema mostra all'Utente un widget contenente l'esito percentuale relativo alla correttezza dell'ultima analisi sui test effettuati.

- *Precondizioni:* L'Utente ha effettuato l'accesso e si trova nella visualizzazione di dettaglio del progetto.

- *Trigger:* Caricamento della schermata di dettaglio del progetto.

- *Scenario principale:*
  + L'Utente visualizza il valore percentuale medio, rappresentante lo stato di salute dei test per l'intero insieme di repository.
  + L'Utente interpreta il dato complessivo per determinare se la stabilità del codice a livello di progetto sia conforme agli obiettivi prefissati.
  
- *Scenari alternativi:* \
  Se non sono presenti analisi pregresse, il widget viene mostrato con il valore N.D. (Non Disponibile) o un messaggio informativo.

- *Postcondizioni:* L'Utente è a conoscenza dello stato dei test, tramite l'indice percentuale di correttezza.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC10.4 - Visualizzazione widget analisi OWASP progetto
<UC10.4>
- *Attore principale:* Utente.

- *Descrizione:* Il sistema mostra all'Utente un widget contenente l'esito percentuale relativo alla correttezza dell'ultima analisi OWASP.

- *Precondizioni:* L'Utente ha effettuato l'accesso e si trova nella visualizzazione di dettaglio del progetto.

- *Trigger:* Caricamento della schermata di dettaglio del progetto.

- *Scenario principale:*
  + L'Utente visualizza la percentuale di correttezza aggregata, che esprime la correttezza OWASP del codice sorgente complessivo.
  + L'Utente valuta la postura di sicurezza del progetto per identificare la necessità di interventi correttivi distribuiti.
  
- *Scenari alternativi:* \
  Se non sono presenti analisi pregresse, il widget viene mostrato con il valore N.D. (Non Disponibile) o un messaggio informativo.

- *Postcondizioni:* L'Utente è a conoscenza dello stato della correttezza OWASP, tramite l'indice percentuale di correttezza.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC11 - Eliminazione singola repository
//#align(center, [#image("../../asset/UC/developer/UC11.png", width: 100%)])

<UC11>
- *Attore principale:* Utente

- *Descrizione:* L'Utente elimina una repository associata al suo account dal sistema.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente sta visualizzando la lista di repository #link(<UC6>)[[UC6]] o sta visualizzando i dettagli di una repository #link(<UCD5>)[[UCD5]].

- *Trigger:* L'Utente seleziona il tasto di cancellazione repository.

- *Scenario principale:*
  - Viene chiesta conferma dell'operazione all'Utente.
  - La repository e tutti i dati ad essa annessi, vengono rimossi dal sistema, l'Utente non li potrà più visualizzare.

- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
    - All'Utente viene mostrato un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.
  Al passo 1: L'Utente sceglie di annullare l'operazione di eliminazione (*<\<extend>>* #link(<UC11.1>)[[UC11.1]]).

- *Postcondizioni:* Il Repository è stato correttamente eliminato dal sistema insieme ai dati ad esso associati.

- *Estensioni:* 
  - #link(<UC4>)[[UC4]]
  - #link(<UC11.1>)[[UC11.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC11.1 - Annullamento eliminazione singola repository
<UC11.1>
- *Attore principale:* Utente

- *Descrizione:* L'Utente desidera annullare l'operazione di eliminazione di una repository.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente ha avviato il caso d’uso #link(<UC11>)[UC11].

- *Trigger:* L'Utente seleziona l’opzione di annullamento durante il processo di eliminazione.

- *Scenario principale:*
  - L'Utente seleziona l’opzione di annullamento dell'eliminazione.
  - La pagina viene visualizzata nello stato precedente alla richiesta di eliminazione.

- *Postcondizioni:* Il processo di eliminazione è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell'eliminazione.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

== Specifica dei casi d'uso - developer

=== UCD1 - Accesso alla dashboard generale Dev
#align(center, [#image("../../asset/UC/project-manager/UCPM1.png", height: 5cm)])
 <UCD1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer accede alla propria dashboard principale.

- *Precondizioni:* L'utente si è autenticato e assume il ruolo di Developer.

- *Trigger:* L'Utente accede alla piattaforma _Code Guardian_.

- *Scenario principale:*
  + Il Project Manager visualizza di default la lista repository (*<\<include>>* #link(<UC6>)[[UC6]]).
  + Il sistema mostra un filtro per cambiare la selezione della vista (repository o progetti).

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager visualizza la lista progetti.

- *Inclusioni:* 
  - #link(<UC6>)[[UC6]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()


=== UCD2 - Sincronizzazione repository GitHub
//#align(center, [#image("../../asset/UC/user/UCD2.png", width: 100%)])
<UCD2>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer sincronizza i propri repository GitHub con la piattaforma _Code Guardian_.

- *Precondizioni:* Il Developer ha effettuato l’accesso a _Code Guardian_ ed è in possesso di un account GitHub.

- *Trigger:* Il Developer seleziona l'opzione di sincronizzazione globale deI repository GitHub.

- *Scenario principale:*
  + Il Developer avvia la procedura di sincronizzazione.
  + Il Developer completa l'autenticazione tramite il provider esterno GitHub.
  + Il Developer conferma l'operazione di sincronizzazione finale.
  + Il Developer visualizza la dashboard con i repository aggiunti.

- *Scenari alternativi:* \
  - Al passo 1: Il Developer esprime la volontà di annullare l'autenticazione (*<\<extend>>* #link(<UC1.5>)[[UC1.5]]).
  - Al passo 2: Si verifica un errore durante la procedura.
    - Il Developer visualizza un messaggio di errore.
    - Il Developer viene reindirizzato alla dashboard.
    - Il caso d'uso termina senza successo.
  - Nella sincronizzazione sono presenti repository privati, ma il Developer non ha un token valido associato (*<\<extend>>* #link(<UC8.0.1>)[[UC8.0.1]]).
  - Al passo 4: Il Developer esprime la volontà di annullare la sincronizzazione (*<\<extend>>* #link(<UCD2.1>)[[UCD2.1]]).

- *Postcondizioni:* Il Developer ha tutti suoi repository sulla dashboard.

- *Estensioni:* 
  - #link(<UCD2.1>)[[UCD2.1]].
  - #link(<UC1.5>)[[UC1.5]].
  - #link(<UC8.0.1>)[[UC8.0.1]].

#line(length: 100%, stroke: 0.5pt + gray)


=== UCD2.1 - Annullamento sincronizzazione
<UCD2.1>
- *Attore principale:* Utente.

- *Descrizione:* Il Developer annulla l'importazione dei repository prima della conferma finale.

- *Precondizioni:* Il Developer ha completato l'autenticazione esterna ma non ha confermato la sincronizzazione.

- *Trigger:* Selezione del comando di annullamento per la sincronizzazione.

- *Scenario principale:*
  + Il Developer annulla l'operazione.
  + L'importazione è interrotta e non vengono apportare modifiche alla dashboard.

- *Postcondizioni:* La dashboard rimane invariata rispetto allo stato precedente all'operazione.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)
#pagebreak()


=== UCD5 - visualizzazione dettagli repository developer
#align(center, [#image("../../asset/UC/developer/UCD5.png", width: 100%)])
<UCD5>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole accedere alla vista di uno specifico repository.

- *Precondizioni:* Esiste almeno un repository all'interno del sistema a cui il Developer ha accesso.

- *Trigger:* Il Developer clicca su un repository nella dashboard (#link(<UC6>)[[UC6]]) o su un repository nei dettagli di un progetto (#link(<UC9>)[[UCD3]]).

- *Scenario principale:*
  + Il Developer visualizza i dati come descritto in #link(<UC5>)[[UC5]].
  + Il Developer visualizza l'opzione di visualizzazione delle proposte di remediation (#link(<UCD6>)[[UCD6]]).
  + Il Developer visualizza l'opzione di visualizzazione i dettagli dell'ultima analisi effettuata sul repository (#link(<UCD13>)[[UCD13]]).
  + Il Developer visualizza l'opzione di visualizzazione delle analisi precedenti (#link(<UCD12>)[[UCD12]]).
  + Il Developer visualizza l'opzione per avviare una o più analisi sul repository (#link(<UCD15>)[[UCD15]]).
  + Il Developer visualizza il pulsante per l'eliminazione del repository (#link(<UC11>)[[UC11]]). 
  + Il Developer visualizza il pulsante per tornare alla pagina precedente. 

- *Postcondizioni:* Il Developer visualizza i dati aggregati del repository.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6 - Visualizzazione proposta remediation
#align(center, [#image("../../asset/UC/developer/UCD6.png", width: 100%)])

<UCD6>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation che l'agente ha svolto per l'analisi sul repository.

- *Precondizioni:* Il Developer sta visualizzando la dashboard di dettaglio del repository #link(<UCD5>)[[UCD5]], dove deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione proposta remediation per il repository.

- *Scenario principale:* \
  - Il Developer visualizza una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area test (*<\<include>>* #link(<UCD6.0.1>)[[UCD6.0.1]]).
  - Il Developer visualizza una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area OWASP. (*<\<include>>* #link(<UCD6.0.2>)[[UCD6.0.2]]).
  - Il Developer visualizza una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area documentazione (*<\<include>>* #link(<UCD6.0.3>)[[UCD6.0.3]]).
  - Il Developer visualizza un pulsante per accettare tutte le proposte di remediation (#link(<UCD6.2>)[[UCD6.2]])
  - Il Developer visualizza un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali gli agenti, di ogni categoria, hanno riscontrato criticità e hanno elaborato una soluzione.

- *Inclusioni:*
  - #link(<UCD6.0.1>)[[UCD6.0.1]]
  - #link(<UCD6.0.2>)[[UCD6.0.2]]
  - #link(<UCD6.0.3>)[[UCD6.0.3]]

- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.1 - Visualizzazione proposta remediation test
<UCD6.0.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation relative ai test sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area test sulla dashboard di dettaglio del repository #link(<UCD13.1>)[[UCD13.1]]. Deve essere stata eseguita almeno un analisi relativa ai test.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation.

- *Scenario principale:* \
  - Il Developer visualizza una lista di zero o più documenti dove ha riscontrato criticità sui test.
  - Al Developer vengono proposte remediation riguardante l'area di test, per ogni documento riportato. 
  - Il Developer visualizza un pulsante per tornare alla pagina precedente.
  - Il Developer visualizza un pulsante per accettare tutte le proposte di remediation sui test.

- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi dei test, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* 
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.2 - Visualizzazione proposta remediation OWASP
<UCD6.0.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation delle OWASP sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area OWASP sulla dashboard di dettaglio del repository #link(<UCD13.2>)[[UCD13.2]]. Deve essere stata eseguita almeno un analisi OWASP.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation.

- *Scenario principale:* \
  - Il Developer visualizza una lista di zero o più documenti dove ha riscontrato criticità sull'analisi OWASP.
  - AL Developer vengono proposte delle remediation riguardante l'analisi OWASP, per ogni documento riportato. 
  - Il Developer visualizza un pulsante per tornare alla pagina precedente.
  - Il Developer visualizza un pulsante per accettare tutte le proposte di remediation sull'analisi OWASP.

- *Scenari alternativi:*Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi OWASP, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* 
  - #link(<UC4>)[[UC4]]

=== UCD6.0.3 - Visualizzazione proposta remediation documentazione
<UCD6.0.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation relative alla documentazione sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area documentazione sulla dashboard di dettaglio del repository #link(<UCD13.3>)[[UCD13.3]]. Deve essere stata eseguita almeno un analisi sulla documentazione.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation.

- *Scenario principale:* \
  - Il Developer visualizza una lista di zero o più documenti dove ha riscontrato criticità sulla documentazione.
  - Al Developer vengono proposte remediation riguardante l'area di documentazione, per ogni documento riportato. 
  - Il Developer visualizza un pulsante per tornare alla pagina precedente.
  - Il Developer visualizza un pulsante per accettare tutte le proposte di remediation sulla documentazione.

- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi della documentazione, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* 
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1 - Visualizzazione dettaglio singolo file per remediation
<UCD6.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la proposta di remediation di uno specifico file.

- *Precondizioni:* Il Developer sta visualizzando una lista di file sui quali il sistema propone delle remediation: #link(<UCD6.0.1>)[[UCD6.0.1]], #link(<UCD6.0.2>)[[UCD6.0.2]], #link(<UCD6.0.3>)[[UCD6.0.3]]

- *Trigger:* Il Developer seleziona il file che gli interessa consultare.

- *Scenario principale:* \
  - Il Developer visualizza il contenuto del file con le differenze tra il file presente e la proposta applicabile (_diff_). 
  - Il Developer visualizza il path che il file seguirà all'interno del repository.
  - Il Developer visualizza un pulsante per accettare la proposta dell'agente (#link(<UCD6.2>)[[UCD6.2]]).
  - Il Developer visualizza un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer conosce la proposta di remediation relativa ad un file specifico.
  
- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.2 - Cambio percorso di destinazione file 
#align(center, [#image("../../asset/UC/developer/UCD6.1.2.png", width: 100%)])

<UCD6.1.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole cambiare la destinazione di uno specifico file nel contesto di una proposta di remediation.

- *Precondizioni:* Il Developer sta visualizzando la proposta di remediation relativa ad un singolo file #link(<UCD6.1>)[[UCD6.1]].

- *Trigger:* Il Developer seleziona il pulsante per il cambio path.

- *Scenario principale:* \
  - Il Developer visualizza un campo sul quale inserire il nuovo path.
  - Il Developer inserisce il path all'interno del campo (*<\<include>>* #link(<UCD6.1.5>)[[UCD6.1.5]]).
  - Il Developer conferma l'operazione.

- *Scenari alternativi:*
  - Il Developer decide di annullare l'operazione (*<\<extend>>* #link(<UCD6.1.3>)[[UCD6.1.3]])
  Al passo 3: Il path inserito non è valido (*<\<extend>>* #link(<UCD6.1.4>)[[UCD6.1.4]])
- *Postcondizioni:* Il file ha un nuovo path all'interno del campo di destinazione. 

- *Inclusioni:*
  - #link(<UCD6.1.5>)[[UCD6.1.5]]

- *Estensioni:* 
  - #link(<UCD6.1.3>)[[UCD6.1.3]]
  - #link(<UCD6.1.4>)[[UCD6.1.4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.3 Annullamento cambio percorso di destinazione file
<UCD6.1.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'inserimento di un nuovo percorso di destinazione di un file al quale è stata proposta remediation.

- *Precondizioni:* Il Developer annulla il caso d'Uso #link(<UCD6.1.2>)[[UCD6.1.2]].

- *Trigger:* Il Developer seleziona l’opzione di annullamento dell'inserimento del path.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento.
  - Il Developer vedrà ancora il percorso di destinazione originale.

- *Postcondizioni:* Il processo di inserimento del nuovo path è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell’accettazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.4 Nuovo percorso non valido
<UCD6.1.4>
- *Attore principale:* Developer

- *Descrizione:* Il Developer ha inserito una nuova destinazione per la remediation del file che sta visualizzando, ma il path selezionato non è valido e viene segnalato all'utente.

- *Precondizioni:* Il Developer ha immesso un path #link(<UCD6.1.2>)[[UCD6.1.2]].

- *Trigger:* Il percorso inserito non è valido.

- *Scenario principale:*
  - Il Developer visualizza un messaggio di errore.
  - Viene data la possibilità di effettuare un nuovo tentativo.

- *Postcondizioni:* Il developer è a conoscenza che il percorso inserito non è valido, ha la possibilità di inserirne un altro o di annullare l'operazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.5 - Inserimento nuovo path file
<UCD6.1.5>
- *Attore principale:* Utente.

- *Descrizione:* L'utente il path di destinazione del file.
  
- *Precondizioni:* L'utente si trova nell'interfaccia di visualizzazione di remediation di un singolo file #link(<UCD6.1.2>)[[UCD6.1.2]].
  
- *Trigger:* L'utente seleziona lo spazio destinato all'inserimento del path.
  
- *Scenario principale:*
  + L'utente inserisce il path.
   
- *Postcondizioni:* L'utente ha inserito il path all'interno dello spazio dedicato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.2 - Accettazione proposta remediation 
#align(center, [#image("../../asset/UC/developer/UCD6.2.png", width: 100%)])

<UCD6.2>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il developer ha visualizzato le proposte di remediation e desidera accettare.
  
- *Precondizioni:* Il developer sta visualizzando una lista di file sui quali sono proposte remediation: #link(<UCD6>)[[UCD6]], #link(<UCD6.0.1>)[[UCD6.0.1]], #link(<UCD6.0.2>)[[UCD6.0.2]], #link(<UCD6.0.3>)[[UCD6.0.3]], #link(<UCD6.1>)[[UCD6.1]]

- *Trigger:* Il Developer seleziona il pulsante di accettazione remediation.

- *Scenario principale:*
  + Il Developer da conferma dell'operazione.
  //questo è tutto diagramma di attività
  // + Il sistema valida che le proposta di remediation siano ancora disponibili e non obsolete.
  // + Il sistema prepara le modifiche secondo la remediation proposta.
  // + Il sistema interagisce con GitHub per creare un nuovo branch dedicato.
  // + Il sistema applica automaticamente le modifiche al file nel branch.
  // + Il sistema avvia una pull request verso il branch di destinazione del repository.
  + Il Developer viene notificato della corretta creazione della pull request (*<\<include>>* #link(<UCD6.4>)[[UCD6.4]]).

- *Scenari alternativi*
  - GitHub non è raggiungibile o restituisce un errore (*<\<extend>>* #link(<UCD6.4>)[[UCD6.4]])
  - Al passo 1: Annullamento accettazione. Il Developer viene reindirizzato alla pagina precedente (*<\<extend>>* #link(<UCD6.3>)[[UCD6.3]]).
  - Il sistema rileva che la remediation non è più valida (*<\<extend>>* #link(<UCD6.5>)[[UCD6.5]]).
  - Uno o più file sono stati modificati sulla repository dopo la generazione della remediation (*<\<extend>>* #link(<UCD6.6>)[[UCD6.6]]).
  
- *Postcondizioni:* è stata avviata una richiesta di pull request su github, il Developer dovrà accettarla.

- *Inclusioni:*
  - #link(<UCD6.4>)[[UCD6.4]]

- *Estensioni:* 
  - #link(<UCD6.3>)[UCD6.3]
  - #link(<UCD6.4>)[UCD6.4]
  - #link(<UCD6.5>)[UCD6.5]
  - #link(<UCD6.6>)[UCD6.6]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.2.1 - Visualizzazione creazione pull request
<UCD6.2.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer riceve un messaggio di avvenuta creazione di una pull request all'interno di GitHub.

- *Trigger:* Il Developer accetta una proposta di remediation #link(<UCD6.2>)[UCD6.2] e il sistema ha inviato la pull request a GitHub

- *Scenario principale:*
  + Il Developer visualizza un messaggio di pull request andata a buon fine.

- *Postcondizioni:* Il Developer ha consapevolezza della buona riuscita della remediation.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.3 - Annullamento accettazione remediation
<UCD6.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'accettazione della proposta di remediation #link(<UCD6.2>)[UCD6.2].

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD6.2>)[UCD6.2] e la pull request non è ancora stata creata.

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di accettazione della remediation.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento dell’accettazione.
  - Il sistema interrompe il processo di applicazione della remediation.
  - Il Developer visualizza la pagina allo stato precedente della richiesta di accettazione.

- *Postcondizioni:* Il processo di accettazione è stato annullato. Nessuna pull request è stata creata su GitHub e lo stato del sistema è coerente con la situazione precedente all’avvio dell’accettazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.4 - Errore GitHub
<UCD6.4>
- *Attore principale:* Developer

- *Attore secondario:* GitHub

- *Descrizione:* Il sistema gestisce il fallimento del tentativo di applicazione di una remediation #link(<UCD6.2>)[UCD6.2] a causa di problemi di connettività o errori restituiti da GitHub.

- *Precondizioni:* Il Developer ha richiesto l'applicazione di una proposta di remediation #link(<UCD6.2>)[UCD6.2] e il sistema ha tentato di comunicare con GitHub.

- *Trigger:* GitHub non è raggiungibile o risponde con un codice di errore.

- *Scenario principale:*
  // + Il sistema rileva l'impossibilità di completare l'operazione su GitHub.
  // + Il sistema interrompe la procedura di creazione della Pull Request.
  // + Il sistema esegue un rollback dello stato interno per garantire la coerenza dei dati.
  // diagramma delle attività
  + Il Developer viene notificato dell'errore riscontrato tramite un messaggio informativo.

- *Postcondizioni:* Il processo di remediation è annullato. Nessuna modifica è stata apportata ai repository su GitHub. Il sistema torna allo stato coerente precedente alla richiesta, permettendo al Developer di riprovare l'operazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.5 - Remediation non valida
<UCD6.5>
- *Attore principale:* Developer

- *Descrizione:* Il sistema impedisce l'applicazione di una remediation se rileva che la proposta non è più coerente con lo stato attuale del codice a causa di nuovi push o di un'analisi più recente ancora in corso.

- *Precondizioni:*Il Developer ha tentato di accettare una proposta di remediation #link(<UCD6.2>)[UCD6.2]. Esiste una versione più recente del codice o un'analisi pendente che rende obsoleta la proposta attuale.

- *Trigger:* Il sistema effettua un controllo di integrità prima dell'invio della richiesta a GitHub.

- *Scenario principale:*
  // + Il sistema verifica la versione del codice associata alla remediation.
  // + Il sistema rileva che il repository ha ricevuto nuovi aggiornamenti o che è stata avviata una nuova sessione di analisi.
  // + Il sistema invalida la proposta di remediation corrente.
  // + Il sistema interrompe il processo di accettazione per evitare conflitti o errori di merge.
  // + Il sistema notifica al Developer che la proposta non è più valida e suggerisce di attendere il completamento della nuova analisi.
  + Il Developer identifica che la proposta di remediation corrente è stata contrassegnata come obsoleta.
  + Il Developer rileva la segnalazione riguardante la presenza di nuovi commit sul repository o l'esecuzione di un'analisi più aggiornata.
  + Il Developer prende atto dell'annullamento della procedura di accettazione per salvaguardare l'integrità del codice.
  + Il Developer recepisce il suggerimento di attendere il completamento della nuova analisi per ottenere soluzioni coerenti con l'ultimo stato del repository.

- *Postcondizioni:* Il sistema rimane in uno stato coerente. Nessuna azione viene eseguita sul repository e il Developer viene informato della necessità di aggiornare i dati.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.6 - Conflitto con remediation
<UCD6.6>
- *Attore principale:* Developer

- *Descrizione:* Il sistema rileva un conflitto tecnico tra la proposta di remediation e lo stato attuale dei file nel repository (modifiche locali non ancora sincronizzate o commit disallineati), impedendo l'applicazione automatica.

- *Precondizioni:*Il Developer ha avviato l'accettazione della remediation #link(<UCD6.2>)[UCD6.2]. Sono state apportate modifiche ai file oggetto della remediation che generano un conflitto di merge.

- *Trigger:* Il sistema rileva un errore di conflitto durante il tentativo di applicazione delle modifiche sulla repository.

- *Scenario principale:*
  // + Il sistema tenta di applicare la Pull Request di remediation.
  // + Il sistema rileva che i file nel repository sono stati alterati in modo incompatibile con la remediation proposta.
  // + Il sistema interrompe immediatamente l'automazione per prevenire la perdita di codice o sovrascritture errate.
  // + Il sistema segnala al Developer la presenza di un conflitto specifico sui file interessati.
  // + Il sistema suggerisce al Developer di procedere con una risoluzione manuale.
  + Il Developer identifica il fallimento dell'operazione di creazione automatica della Pull Request.
  + Il Developer individua le segnalazioni relative ai conflitti riscontrati sui file interessati dalla modifica.
  + Il Developer prende atto dell'impossibilità di procedere tramite l'automazione del sistema per evitare il rischio di sovrascritture errate.
  + Il Developer recepisce il suggerimento di procedere con una risoluzione manuale del conflitto direttamente sull'ambiente di versionamento.

- *Postcondizioni:* L'automazione viene annullata. Lo stato del codice non viene alterato e la responsabilità della risoluzione passa al Developer.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD8 - Procedimenti in corso
#align(center, [#image("../../asset/UC/developer/UCD8.png", width: 100%)])

<UCD8>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza una lista delle operazioni che sono in corso.

- *Precondizioni:* Il Developer vuole visualizzare tutte le operazioni da lui avviate e non ancora concluse. 

- *Trigger:* Il Developer si trova nella dashboard e seleziona la voce per visualizzare i procedimenti in corso.

- *Scenario principale:*
  - Il Developer visualizza l'elenco delle operazioni attualmente in corso all'interno del sistema (*<\<include>>* #link(<UCD8.1>)[[UCD8.1]]).
  - Il Developer visualizza il tasto per tornare all pagina precedente.

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer ha visualizzato tutte le operazioni in corso all'interno del sistema.
  
- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.1 - Visualizzazione elemento lista operazioni in corso
<UCD8.1>
- *Attore principale:* Developer.

- *Descrizione:* Il developer visualizza un singolo elemento dalla lista delle operazioni in corso.

- *Precondizioni:* Il Developer sta visualizzando la lista delle operazioni in corso.

- *Trigger:* Viene caricata la pagina che mostra i procedimenti in corso all'interno del sistema.

- *Scenario principale:*
  - Il Developer visualizza il nome del repository in cui l'operazione è in corso (*<\<include>>* #link(<UC5.5>)[[UC5.5]]).
  - Il Developer visualizza la data relativa all'avvio del processo (*<\<include>>* #link(<UCD8.4>)[[UCD8.4]]).

- *Postcondizioni:* Il Developer ha visualizzato un singolo procedimento in corso all'interno del sistema.

- *Generalizzazioni:* 
  - #link(<UCD8.2>)[[UCD8.2]])
  - #link(<UCD8.3>)[[UCD8.3]])

- *Inclusioni:*
  - #link(<UC5.5>)[[UC5.5]]
  - #link(<UCD8.4>)[[UCD8.4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.2 - Visualizzazione remediation avviata
<UCD8.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le remediation che sono state avviate.

- *Precondizioni:* Il Developer si trova sulla scheda dei procedimenti in corso #link(<UCD8>)[[UCD8]]. Il Developer vuole visualizza una remediation da lui avviata e non ancora confermata tramite merge con il repository coinvolto. 

- *Trigger:* Il Developer si trova nella sezione dei procedimenti in corso e c'è una remediation avviata.

- *Scenario principale:*
  - Il Developer visualizza il nome del branch aperto per effettuare remediation ai quali non è stata accettata la pull request (*<\<include>>* #link(<UCD8.2.1>)[[UCD8.2.1]]).
  - Il Developer visualizza il pulsante per interrompere la remediation avviata #link(<UCD9>)[[UCD9]].

- *Postcondizioni:* Il Developer sta visualizzando una remediation in atto nel sistema.

- *Inclusioni:*
  - #link(<UCD8.2.1>)[[UCD8.2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.2.1 - Visualizzazione nome del branch aperto
<UCD8.2.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer visualizza il nome del branch aperto a seguito dell'avvio di una remediation.

- *Precondizioni:* Il Developer sta visualizzando un elemento che descrive la remediation in corso.

- *Trigger:* Il Developer si trova nella sezione dei procedimenti in corso e c'è una remediation avviata.

- *Scenario principale:* Il Developer visualizza il nome del branch che è stato aperto su GitHub a seguito dell'avvio della remediation.

- *Postcondizioni:* Il Developer ha visualizzato il nome del branch aperto dal sistema.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.3 - Visualizzazione analisi su repository in corso
<UCD8.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza un analisi avviata.

- *Precondizioni:* Il Developer vuole visualizzare un analisi da lui avviata e non ancora terminata. 

- *Trigger:* Il Developer si trova nella sezione dei procedimenti in corso.

- *Scenario principale:*
  - Il Developer visualizza un pulsante annullare un'analisi in corso (#link(<UCD10>)[[UCD10]]).

- *Postcondizioni:* Il Developer sta visualizzando un analisi in atto nel sistema.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.4 - Visualizzazione data avvio operazione in corso
<UCD8.4>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer visualizza la data di avvio di un operazione in corso.

- *Precondizioni:* Il Developer sta visualizzando un elemento che descrive l'operazione in corso (#link(<UCD8.2>)[[UCD8.2]], #link(<UCD8.3>)[[UCD8.3]]).

- *Trigger:* Il Developer si trova nella sezione dei procedimenti in corso e c'è un procedimento avviato.

- *Scenario principale:* Il Developer visualizza la data di avvio del procedimento.

- *Postcondizioni:* Il Developer ha visualizzato la data di avvio del procedimento.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD9 - Interrompi remediation avviata
<UCD9>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer desidera interrompere un'operazione di remediation in corso. L’interruzione comporta la revoca o il rifiuto della pull request generata automaticamente dal sistema tramite bot su GitHub.

- *Precondizioni:* Il Developer ha avviato una remediation #link(<UCD6.2>)[UCD6.2].

- *Trigger:* Il Developer seleziona l’opzione di interruzione del processo di remediation.

- *Scenario principale:*
  + Il Developer attiva il comando di interruzione per fermare l'integrazione del codice suggerito.
  + Il Developer osserva la chiusura della Pull Request associata direttamente a GitHub.
  + Il Developer prende atto della notifica che conferma l'avvenuta interruzione della procedura (*<\<extend>>* #link(<UCD9.1>)[[UCD9.1]]).
  
- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Una remediation in atto è stata interrotta.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD9.1 - Visualizzazione conferma remediation interrotta
<UCD9.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer visualizza il messaggio di avvenuta interruzione di una remediation precedentemente avviata.

- *Precondizioni:* Il Developer ha espresso il desiderio di interrompere un processo di remediation.

- *Trigger:* Il sistema ha interrotto l'operazione di remediation.

- *Scenario principale:*
  + Il Developer visualizza un messaggio di avvenuta interruzione della remediation precedentemente in corso.

- *Postcondizioni:* Il Developer è a conoscenza dell'interruzione della remediation da lui selezionata.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD10 - Interrompi analisi avviata
<UCD10>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer annulla un analisi in corso da lui precedentemente avviata.

- *Precondizioni:* Il Developer sta visualizzando un analisi in corso (#link(<UCD8.3>)[[UCD8.3]]).

- *Trigger:* Il Developer seleziona l'opzione di interruzione dell'analisi avviata.

- *Scenario principale:*
  + Il Developer attiva il comando di interruzione per arrestare il processo di scansione corrente.
  + Il Developer osserva l'immediata cessazione delle attività da parte degli agenti coinvolti.
  + Il Developer riceve e prende atto del messaggio di conferma relativo all'avvenuta interruzione dell'analisi (*<\<include>>* #link(<UCD10.1>)[[UCD10.1]]).

- *Scenari alternativi:*
  - Si verifica un errore durante il processo.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.
  
- *Postcondizioni:* L'analisi selezionata è stata annullata, il Developer visualizza la lista delle operazioni in corso.

- *Inclusioni:*
  - #link(<UCD10.1>)[[UCD10.1]]

- *Estensioni:*
  - #link(<UC4>)[[UC4]]


#line(length: 100%, stroke: 0.5pt + gray)

=== UCD10.1 - Visualizzazione conferma interruzione analisi in corso
<UCD10.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer visualizza il messaggio di avvenuta cancellazione di un analisi precedentemente avviata.

- *Precondizioni:* Il Developer ha espresso il desiderio di eliminare un analisi avviata.

- *Trigger:* Il sistema ha interrotto l'operazione di analisi di uno o più agenti.

- *Scenario principale:*
  + Il Developer visualizza un messaggio di avvenuta cancellazione dell'analisi in corso

- *Postcondizioni:* Il Developer è a conoscenza della cancellazione dell'analisi da lui selezionata.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


#pagebreak()

=== UCD11 - Visualizzazione lista ultimi repository analizzati
<UCD11>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza l'elenco delle analisi completate di recente per le quali non è ancora stato effettuato il merge dei suggerimenti di remediation.

- *Precondizioni:* Esistono analisi completate negli ultimi 7 giorni (fino a un massimo di 30 record). Tali analisi non hanno ancora portato a un merge definitivo sul repository.

- *Trigger:* Il Developer seleziona l'opzione per visualizzare le ultime analisi dalla dashboard.

- *Scenario principale:*
  + Il Developer visualizza la lista ordinata per data decrescente delle ultime repository analizzate.
  + Il Developer visualizza la specifica di ogni elemento (*<\<include>>* #link(<UCD11.1>)[[UCD11.1]]).
  + Al Developer è permesso selezionare un'analisi per visualizzarne il dettaglio (#link(<UCD12>)[[UCD12]]).
  - Il Developer visualizza un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* Si verifica un errore durante il caricamento di una pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer ha visualizzato la lista delle ultime repository analizzate nel sistema.

- *inclusioni:*
  - #link(<UCD11.1>)[[UCD11.1]]

- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD11.1 - Visualizzazione elemento lista ultime analisi terminate
<UCD11.1>

- *Attore principale:* Developer.

- *Descrizione:* Il developer visualizza un elemento all'interno della lista delle ultime analisi portate a termine.

- *Precondizioni:* Deve essere stata portata a termine almeno un analisi.

- *Scenario principale:*
  + Il Developer visualizza il nome del repository analizzato (*<\<include>>* #link(<UC5.5>)[[UC5.5]]).
  + Il Developer visualizza la data di completamento dell'analisi (*<\<include>>* #link(<UCD11.1.1>)[[UCD11.1.1]]).

- *Postcondizioni:* Il Developer ha visualizzato un singolo elemento dalla lista delle ultime analisi completate

- *Inclusioni:*
  - #link(<UC5.5>)[[UC5.5]]
  - #link(<UCD11.1.1>)[[UCD11.1.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD11.1.1 - Visualizzazione data completamento analisi
<UCD11.1.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer visualizza la data di conclusione di un analisi da lui avviata.

- *Precondizioni:* Deve essere portata a termine almeno un analisi.

- *Scenario principale:*
  + Il Developer visualizza la data di completamento dell'analisi.

- *Postcondizioni:* Il Developer ha visualizzato la data di terminazione dell'analisi in esame.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)
#pagebreak()

=== UCD12 - Visualizzazione dettaglio storico analisi su singola repository
<UCD12>
- *Attore principale:* Developer

- *Descrizione:* Il Developer accede ai dettagli di una specifica analisi effettuata in passato, diversa dall'ultima dispone.

- *Precondizioni:* Il Developer si trova nella lista delle ultime analisi (#link(<UCD11>)[[UCD11]]) o nello storico generale del repository (#link(<UCD14>)[[UCD14]]). Deve esistere almeno un'analisi passata.

- *Trigger:* Selezione di un record di analisi non recente.

- *Scenario principale:*
  + Il Developer visualizza il nome del repository (*<\<include>>* #link(<UC5.5>)[[UC5.5]]).
  + Il Developer visualizza la data di terminazione dell'analisi (*<\<include>>* #link(<UCD11.1.1>)[[UCD11.1.1]]).
  + Il Developer visualizza i grafici delle statistiche di analisi documentazione nella sessione di interesse (*<\<include>>* #link(<UCD12.1>)[[UCD12.1]]).
  + Il Developer visualizza i grafici delle statistiche di analisi di test nella sessione di interesse (*<\<include>>* #link(<UCD12.2>)[[UCD12.2]]).
  + Il Developer visualizza i grafici delle statistiche di correttezza OWASP nella sessione di interesse (*<\<include>>* #link(<UCD12.3>)[[UCD12.3]]).
  + Il Developer visualizza l'opzione di visualizzazione della remediation proposta contestualmente a quell'analisi.
  + Il Developer visualizza il pulsante per tornare alla pagina precedente. 
- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i dati aggregati della repository.

- *Inclusioni:* 
  - #link(<UC5.5>)[[UC5.5]]
  - #link(<UCD11.1.1>)[[UCD11.1.1]]
  - #link(<UCD12.1>)[[UCD12.1]]
  - #link(<UCD12.2>)[[UCD12.2]]
  - #link(<UCD12.3>)[[UCD12.3]]

- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)


=== UCD12.1 - Visualizzazione grafico storico documentazione
<UCD12.1>
- *Attore principale:* Developer.

- *Descrizione:* Il sistema mostra al Developer un grafico contenente l'esito percentuale relativo alla correttezza dell'analisi della documentazione per la sessione selezionata.

- *Precondizioni:* Il Developer si trova nella visualizzazione di dettaglio di una repository, la cui analisi è passata (ovvero precedente all'ultima disponibile) (#link(<UCD12>)[[UCD12]]).

- *Trigger:* Caricamento della schermata di dettaglio della repository, la cui analisi è passata.

- *Scenario principale:*
  + Il Developer osserva il grafico dedicato, che rappresenta il livello di correttezza della documentazione relativo al periodo dell'analisi selezionata.
  + Il Developer rileva il valore percentuale specifico.
  
- *Scenari alternativi:* \
  Se non è presente un'analisi per la sessione richiesta, il grafico viene mostrato con il valore N.D. (Non Disponibile).

- *Postcondizioni:* Il Developer visualizza l'indice di correttezza della documentazione relativo al periodo selezionato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD12.2 - Visualizzazione grafico storico test
<UCD12.2>
- *Attore principale:* Developer.

- *Descrizione:* Il sistema mostra al Developer un grafico contenente l'esito percentuale relativo ai test per la sessione selezionata.

- *Precondizioni:* Il Developer si trova nella visualizzazione di dettaglio di una repository, la cui analisi è passata (ovvero precedente all'ultima disponibile) (#link(<UCD12>)[[UCD12]]).

- *Trigger:* Caricamento della schermata di dettaglio della repository, la cui analisi è passata.

- *Scenario principale:*
  + Il Developer osserva il grafico dedicato, che rappresenta il livello di correttezza dei test relativi al periodo dell'analisi selezionata.
  + Il Developer rileva il valore percentuale specifico.
  
- *Scenari alternativi:* \
  Se non è presente un'analisi per la sessione richiesta, il grafico viene mostrato con il valore N.D. (Non Disponibile).

- *Postcondizioni:* Il Developer visualizza lo stato dei test al relativo al periodo selezionato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD12.3 - Visualizzazione grafico storico OWASP
<UCD12.3>
- *Attore principale:* Developer.

- *Descrizione:* Il sistema mostra al Developer un grafico contenente l'esito percentuale relativo alla correttezza OWASP per la sessione selezionata.

- *Precondizioni:* Il Developer si trova nella visualizzazione di dettaglio di una repository, la cui analisi è passata (ovvero precedente all'ultima disponibile) (#link(<UCD12>)[[UCD12]]).

- *Trigger:* Caricamento della schermata di dettaglio della repository, la cui analisi è passata.

- *Scenario principale:*
  + Il Developer osserva il grafico dedicato, che rappresenta il livello di correttezza OWASP relativa al periodo dell'analisi selezionata.
  + Il Developer rileva il valore percentuale specifico.
  
- *Scenari alternativi:* \
  Se non è presente un'analisi per la sessione richiesta, il grafico viene mostrato con il valore N.D. (Non Disponibile).

- *Postcondizioni:* Il Developer visualizza lo stato della correttezza OWASP al relativo al periodo selezionato.

=== UCD12.4 - Visualizzazione storico lista remediation
<UCD12.4>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le proposte di remediation relative alla documentazione generate durante una specifica analisi passata.

- *Precondizioni:* Il Developer ha selezionato un'analisi storica #link(<UCD12>)[[UCD12]] 

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation passate.

- *Scenario principale:* \
  - Il Developer visualizza la lista dei file sui quali erano state proposte soluzioni (remediation) dall'agente.
  - Il Developer può premere un file per avere dettagli riguardo alla proposta di remediation (#link(<UCD12.4.1>)[[UCD12.4.1]]).
  - Il Developer visualizza un pulsante per tornare alla panoramica dell'analisi selezionata.

- *Scenari alternativi:* Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza lo stato delle proposte di remediation della documentazione relative allo storico selezionato (sola lettura).

- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD12.4.1 - Visualizzazione proposta remediation passata di un file 
<UCD12.4.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare una vecchia proposta di remediation di uno specifico file.

- *Precondizioni:* Il Developer sta visualizzando una lista di file sui quali il sistema ha proposto delle remediation: #link(<UCD12.4>)[[UCD12.4]]

- *Trigger:* Il Developer seleziona il file che gli interessa consultare.

- *Scenario principale:* \
  - Il Developer visualizza il contenuto del file con le differenze tra il file presente e la proposta applicabile (_diff_). 
  - Il Developer visualizza il path che il file seguirà all'interno del repository.
  - Il Developer visualizza un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer conosce la proposta di remediation relativa ad un file specifico, relativo ad un'analisi passata.
  
- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD13 - Visualizzazione dettagli ultima analisi repository
#align(center, [#image("../../asset/UC/developer/UCD13.png", width: 100%)])

<UCD13>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate dall'ultima analisi condotta nelle varie aree.

- *Precondizioni:* Il Developer si trova sulla dashboard del repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Il developer seleziona l'opzione per la visualizzazione dell'ultima analisi.

- *Scenario principale:*
  + Il Developer visualizza i grafici relativi all'ultima analisi condotta sull'area test (*<\<include>>* #link(<UCD13.1>)[[UCD13.1]]).
  + Il Developer visualizza i grafici relativi all'ultima analisi condotta sull'area documentazione (*<\<include>>* #link(<UCD13.2>)[[UCD13.2]]).
  + Il Developer visualizza i grafici relativi all'ultima analisi condotta sull'area OWASP (*<\<include>>* #link(<UCD13.3>)[[UCD13.3]]).
  
- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC10]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati dell'ultima analisi svolta relativa ai vari agenti.

- *Inclusioni:*
  - #link(<UCD13.1>)[[UCD13.1]] 
  - #link(<UCD13.2>)[[UCD13.2]] 
  - #link(<UCD13.3>)[[UCD13.3]]

- *Estensioni:*
  - #link(<UC4>)[[UC10]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.1 - Visualizzazione dettagli ultima analisi area test
#align(center, [#image("../../asset/UC/developer/UCD13.1.png", width: 100%)])

<UCD13.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area test dall'ultima analisi condotta.

- *Precondizioni:* Il Developer ha selezionato l'opzione di visualizzazione dell'ultima analisi condotta sul repository.

- *Trigger:* Viene caricata la pagina di dettaglio dell'ultima analisi del repository.

- *Scenario principale:*
  + Il Developer visualizza i grafici relativi all'analisi sui test.
  + Il Developer visualizza le relative proposte di remediation (*<\<include>>* #link(<UCD6.0.1>)[[UCD6.0.1]]).
  + Il Developer visualizza l'opzione per avviare un'analisi per l'area test (#link(<UCD15.1>)[[UCD15.1]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC10]]).
    - Il caso d'uso termina senza successo.
  - Se non è presente un'analisi per la sessione richiesta, il grafico viene mostrato con il valore N.D. (Non Disponibile).

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi relativa ai test.

- *Inclusioni:*  
  - #link(<UCD6.0.1>)[[UCD6.0.1]]

- *Estensioni:*
  - #link(<UC4>)[[UC10]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.2 - Visualizzazione dettagli ultima analisi area OWASP
#align(center, [#image("../../asset/UC/developer/UCD13.2.png", width: 100%)])

<UCD13.2>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area OWASP dall'ultima analisi condotta.

- *Precondizioni:* Il Developer ha selezionato l'opzione di visualizzazione dell'ultima analisi condotta sul repository.

- *Trigger:* Viene caricata la pagina di dettaglio dell'ultima analisi del repository.

- *Scenario principale:*
  + Il Developer visualizza i grafici relativi all'analisi OWASP.
  + Il Developer visualizza le relative proposte di remediation (*<\<include>>* #link(<UCD6.0.2>)[[UCD6.0.2]]).
  + Il Developer visualizza l'opzione per avviare un'analisi per l'area OWASP (#link(<UCD15.3>)[[UCD15.3]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC10]]).
    - Il caso d'uso termina senza successo.
  - Se non è presente un'analisi per la sessione richiesta, il grafico viene mostrato con il valore N.D. (Non Disponibile).

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi OWASP.

- *Inclusioni:*  
  - #link(<UCD6.0.2>)[[UCD6.0.2]]

- *Estensioni:*
  - #link(<UC4>)[[UC10]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.3 - Visualizzazione dettagli ultima analisi area documentazione
#align(center, [#image("../../asset/UC/developer/UCD13.3.png", width: 100%)])

<UCD13.3>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area documentazione dall'ultima analisi condotta.

- *Precondizioni:* Il Developer ha selezionato l'opzione di visualizzazione dell'ultima analisi condotta sul repository.

- *Trigger:* Viene caricata la pagina di dettaglio dell'ultima analisi del repository.

- *Scenario principale:*
  + Il Developer visualizza i grafici relativi all'analisi sulla documentazione.
  + Il Developer visualizza le relative proposte di remediation (*<\<include>>* #link(<UCD6.0.3>)[[UCD6.0.3]]).
  + Il Developer visualizza l'opzione per avviare un'analisi per l'area documentazione (#link(<UCD15.2>)[[UCD15.2]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC10]]).
    - Il caso d'uso termina senza successo.
  - Se non è presente un'analisi per la sessione richiesta, il grafico viene mostrato con il valore N.D. (Non Disponibile).

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi sulla documentazione.

- *Inclusioni:*  
  - #link(<UCD6.0.3>)[[UCD6.0.3]]

- *Estensioni:*
  - #link(<UC4>)[[UC10]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD14 - Visualizzazione storico delle analisi sul repository
<UCD14>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera visualizzare lo storico delle varie analisi eseguite all'interno di un repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository (#link(<UCD5>)[[UCD5]]) e sono state eseguite almeno due analisi all'interno dello stesso.

- *Trigger:* Il Developer seleziona il pulsante per visualizzare lo storico delle analisi.

- *Scenario principale:*
  + Il Developer visualizza la lista delle analisi concluse per il repository indicato, ordinata per data decrescente.
  + Per ogni analisi in elenco, il Developer visualizza la data di completamento (*<\<include>>* #link(<UCD11.1.1>)[[UCD11.1.1]]).
  + Per ogni analisi in elenco il Developer visualizza lo stato della remediation (*<\<include>>* #link(<UCD14.1>)[[UCD14.1]]).

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento di una pagina.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Inclusioni:*
  - #link(<UCD11.1.1>)[[UCD11.1.1]]
  - #link(<UCD14.1>)[[UCD14.1]]

- *Estensioni:*
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD14.1 - Visualizzazione stato analisi storica
<UCD14.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer visualizza lo stato di un analisi passata effettuata in un determinato repository.

- *Precondizioni:* Il Developer sta visualizzando la lista dello storico delle analisi effettuare in un repository (#link(<UCD14>)[[UCD14]])

- *Trigger:* Viene caricata la pagine di visualizzazione dello storico delle analisi sul repository.

- *Scenario principale:*
  + Il Developer visualizza la scritta "Applicata" se la remediation proposta dall'analisi è stata applicata.
  + Il Developer visualizza la scritta "Non applicata" se la remediation proposta dall'analisi non è stata applicata.
  + Il Developer visualizza la scritta "Parzialmente applicato" se la remediation proposta dall'analisi è stata parzialmente applicata.

- *Postcondizioni:* Il Developer ha visualizzato lo stato della proposta di remediation per quell'analisi.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)
#pagebreak()

=== UCD15 - Selezione opzioni avvio analisi di un repository
#align(center, [#image("../../asset/UC/developer/UCD15.png", width: 100%)])
<UCD15>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer avvia un'analisi globale che comprende contemporaneamente i test, l'area OWASP e la documentazione.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il Developer visualizza l'opzione di avvio analisi a tutte le aree. 
  + Il Developer visualizza l'opzione di avvio analisi area test.
  + Il Developer visualizza l'opzione di avvio analisi area documentazione.
  + Il Developer visualizza l'opzione di avvio analisi area OWASP.
  + L'utente seleziona un opzione.
  
-  *Postcondizioni:* Un'analisi sul repository è stata selezionata.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.1 - Avvio analisi 
<UCD15.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer avvia un analisi all'interno di un repository.

- *Precondizioni:* L'utente si trova nell'area di selezione della tipologia di analisi da avviare.

- *Scenario principale*:
  - Il Developer visualizza la richiesta si conferma per l'avvio dell'analisi.
  - Il Developer conferma l'avvio dell'analisi.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il Developer visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.
  - Si verifica un conflitto in quanto c'è già un analisi in corso in qualche area della repository (*<\<extend>>* #link(<UCD15.6>)[[UCD15.6]]).
  - Il Developer annulla l'avvio di un analisi (*<\<extend>>* #link(<UCD15.7>)[[UCD15.7]])

*Postcondizioni:* Il Developer ha avviato un analisi all'interno del repository.

- *Generalizzazioni:*
  - #link(<UCD15.2>)[[UCD15.1]]
  - #link(<UCD15.3>)[[UCD15.2]]
  - #link(<UCD15.4>)[[UCD15.3]]
  - #link(<UCD15.5>)[[UCD15.4]]

- *Estensioni:* 
  - #link(<UC4>)[[UC4]]
  - #link(<UCD15.6>)[[UCD15.6]]
  - #link(<UCD15.7>)[[UCD15.7]]

=== UCD15.2 - Avvio analisi generale
<UCD15.2>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi generale del repository.

- *Precondizioni:* L'utente si trova nell'area di selezione della tipologia di analisi da avviare ed ha eseguito la selezione.

- *Trigger:* Il Developer preme sul tasto di conferma per l'avvio analisi generale.

- *Scenario principale:*
  + Il Developer visualizza l'avvio dell'analisi sull'area di test (*<\<include>>* #link(<UCD15.3>)[[UCD15.3]]).
  + Il Developer visualizza l'avvio dell'analisi sull'area di documentazione (*<\<include>>* #link(<UCD15.4>)[[UCD15.4]]).
  + Il Developer visualizza l'avvio dell'analisi sull'area OWASP (*<\<include>>* #link(<UCD15.5>)[[UCD15.5]]).

*Postcondizioni:* Il developer

- *Inclusioni:*
  - #link(<UCD15.3>)[[UCD15.3]]
  - #link(<UCD15.4>)[[UCD15.4]]
  - #link(<UCD15.5>)[[UCD15.5]]

=== UCD15.3 - Avvio analisi di test di una repository
<UCD15.3>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi test del repository.

- *Precondizioni:* L'utente si trova nell'area di selezione della tipologia di analisi da avviare ed ha eseguito la selezione.

- *Trigger:* Il Developer preme sul tasto di conferma per l'avvio analisi test.

- *Scenario principale:*
  + Il Developer visualizza l'avvio dell'analisi sull'area test.
  
-  *Postcondizioni:* Un'analisi sull'area test del repository è stata avviata.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.4 - Avvio analisi di documentazione di una repository
<UCD15.4>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi documentazione del repository.

- *Precondizioni:* L'utente si trova nell'area di selezione della tipologia di analisi da avviare ed ha eseguito la selezione.

- *Trigger:* Il Developer preme sul tasto di conferma per l'avvio analisi test.

- *Scenario principale:*
  + Il Developer visualizza l'avvio dell'analisi sull'area documentazione.
  
- *Postcondizioni:* Un'analisi sull'area documentazione del repository è stata avviata.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.5 - Avvio analisi OWASP di una repository
<UCD15.5>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi OWASP del repository.

- *Precondizioni:* L'utente si trova nell'area di selezione della tipologia di analisi da avviare ed ha eseguito la selezione.

- *Trigger:* Il Developer preme sul tasto di conferma di avvio analisi OWASP.

- *Scenario principale:*
  + Il Developer visualizza l'avvio dell'analisi sull'area OWASP.
  
- *Postcondizioni:* Un'analisi sull'area OWASP del repository è stata avviata.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.6 - Conflitto analisi in corso
<UCD15.6>
- *Attore principale:* Developer.

- *Descrizione:* Il sistema rileva che è già attiva un'analisi sulla repository (o sull'area specifica richiesta) e impedisce l'avvio di una nuova sessione per evitare conflitti di elaborazione.

- *Precondizioni:* Il Developer ha tentato di avviare un'analisi (#link(<UCD15.1>)[[UCD15.1]])
  
- *Trigger:* Il sistema rileva un processo di analisi attivo incompatibile con la richiesta effettuata.

- *Scenario principale:*
  // + Il sistema verifica lo stato dei processi per la repository selezionata.
  // + Il sistema rileva un'analisi già in corso.
  // + Il sistema interrompe la procedura di avvio della nuova analisi.
  + Il Developer visualizza un messaggio di avviso, indicando l'analisi attualmente attiva.
  
  *Postcondizioni:* Il sistema non avvia alcuna nuova analisi. Lo stato della repository rimane invariato e l'utente è informato dell'impedimento.

=== UCD15.7 - Annullamento procedura avvio analisi
<UCD15.7>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer annulla l'operazione di avvio di un'analisi al repository.

- *Precondizioni:* Il Developer ha selezionato un'analisi da avviare sul repository.

- *Trigger:* Il Developer seleziona l'annullamento nella richiesta di conferma dell'avvio.

- *Scenario principale:*
  + Il Developer non visualizza l'avvio di alcuna analisi.
  + Il Developer è reindirizzato alla pagina di selezione di un analisi (#link(<UCD15>)[[UCD15]]).

- *Postcondizioni:* Nessun analisi è stata avviata nell'ambito del repository di riferimento.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

== Specifica dei casi d'uso - Project Manager

=== UCPM1 - Accesso alla dashboard generale PM
#align(center, [#image("../../asset/UC/project-manager/UCPM1.png", height: 5cm)])
 <UCPM1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla propria dashboard principale.

- *Precondizioni:* L'utente si è autenticato e assume il ruolo di Project Manager.

- *Trigger:* L'Utente accede alla piattaforma _Code Guardian_.

- *Scenario principale:*
  + Il Project Manager visualizza di default la *Lista Progetti* (*<\<include>>* #link(<UCPM2>)[[UCPM2]]).
  + Il Project Manager visualizza un pulsante per creare un nuovo progetto (#link(<UCPM1.2>)[[UCPM1.2]]).
  + Il Project Manager visualizza un filtro per cambiare la selezione della vista (repository o progetti).

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager visualizza la lista progetti.

- *Inclusioni:* 
  - #link(<UCPM2>)[[UCPM1.1]]

#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCPM2 - Visualizzazione lista progetti 
#align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])
<UCPM2>

- *Attore principale*: Project Manager.

- *Descrizione:* Il Project Manager desidera visualizzare la lista dei progetti ai quali partecipa, presenti sulla piattaforma _Code Guardian_.

- *Precondizioni:* L'Utente ha effettuato l'accesso.  L'Utente si trova all'interno della dashboard.

- *Trigger:* Caricamento della schermata della dashboard. Il selettore di vista è impostato su "Progetti".

- *Scenario principale:*
  + Il Project Manager visualizza i dati come descritto in #link(<UC9>)[[UC9]].
  + Il Project Manager deve, per ogni progetto:
        - Il widget delle statistiche di analisi documentazione (*<\<include>>* #link(<UC10.2>)[[UC10.2]]).
        - Il widget delle statistiche di analisi di test (*<\<include>>* #link(<UC10.3>)[[UC10.3]]).
        - Il widget delle statistiche correttezza OWASP (*<\<include>>* #link(<UC10.4>)[[UC10.4]]).

- *Postcondizioni:* Il Project Manager scorre la lista dei progetti in cui è coinvolto.

- *Inclusioni:* 
  - #link(<UC10.2>)[[UC10.2]]
  - #link(<UC10.3>)[[UC10.3]]
  - #link(<UC10.4>)[[UC10.4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM2.1 - Visualizzazione dettagli progetto PM
//#align(center, [#image("../../asset/UC/project-manager/UCPM2.1.png", height: 10cm)])
<UCPM2.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager vuole accedere alla vista di uno specifico progetto.

- *Precondizioni:* Esiste almeno un progetto creato a cui il Project Manager è associato.

- *Trigger:* Il Project Manager clicca sulla card di un progetto.

- *Scenario principale:*
  + Il Project Manager visualizza i dati come descritto in #link(<UC10>)[[UC10]].
  + Il Project Manager visualizza il pulsante "Modifica intestazione".
  + Il Project Manager visualizza il pulsante "Aggiungi repository" sui cui può premere per inserire delle repository al progetto.
  + Il Project Manager visualizza il pulsante "Gestisci developer", su cui può premere per consultare la lista degli sviluppatori facenti parte del progetto.
  + Il Project Manager visualizza il pulsante "Team & Competenze", su cui può premere per approfondire le competenze del team.
  + Il Project Manager visualizza il pulsante "Stack tecnologico", su cui può premere per analizzare le tecnologie utilizzate nel progetto e ricevere suggerimenti.
  + Il Project Manager visualizza l'elenco dei repository che compongono il progetto con i relativi indicatori di stato (*<\<include>>* #link(<UC5.9>)[[UC5.9]]). 

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.
  
- *Postcondizioni:* L'Utente visualizza i dati aggregati del progetto.

- *Inclusioni:* 
  - #link(<UC5.9>)[[UC5.9]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.2 - Creazione nuovo progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager crea un nuovo progetto.

- *Precondizioni:* Il Project Manager ha intenzione di creare un nuovo progetto.

- *Trigger:* Il Project Manager preme il pulsante per la creazione di un nuovo progetto, dal caso d'uso #link(<UCPM1>)[[UCPM1]].

- *Scenario principale:*
  + Il Project Manager inserisce i dati necessari per il progetto:
    - Nome del progetto (*<\<include>>* #link(<UCPM1.2.1>)[[UCPM1.2.1]]).
    
- *Scenari alternativi:* Il sistema non rileva progetti: mostra uno stato vuoto e invita a creare il primo progetto tramite il pulsante "Nuovo progetto".

- *Postcondizioni:* Il Project Manager crea un nuovo progetto.

- *Estensioni:* #link(<UCPM1.2.3>)[[UCPM1.2.3]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.2.1 - Inserimento nome progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM2.1.png", height: 10cm)])

<UCPM1.2.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager inserisce il nome del progetto in fase di creazione.

- *Precondizioni:* Il sistema si trova nell'interfaccia di creazione di un nuovo progetto.

- *Trigger:* Il Project Manager ha premuto il pulsante per aggiungere un nuovo progetto e ora si trova nel caso d'uso #link(<UCPM1.2>)[[UCPM1.2]].

- *Scenario principale:*
  + Il Project Manager inserisce il nome desiderato per il nuovo progetto.

- *Scenario alternativo:*
  + Il nome inserito risulta già esistente (*<\<extend>>* #link(<UCPM1.2.3>)[[UCPM1.2.3]]).

- *Postcondizioni:* Il Project Manager ha inserito un nome valido e univoco per il progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.2.2 - Modifica nome progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM2.1.png", height: 10cm)])

<UCPM1.2.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager modifica il nome di un progetto esistente.

- *Precondizioni:* Esiste almeno un progetto associato al profilo del Project Manager.

- *Trigger:* Il Project Manager seleziona l'opzione di modifica del nome all'interno del caso d'uso #link(<UCPM1.2.3>)[[UCPM1.2.3]].

- *Scenario principale:*
  + Il Project Manager inserisce il nuovo nome per il progetto selezionato.

- *Scenario alternativo:*
  Il nome inserito risulta già esistente (*<\<extend>>* #link(<UCPM1.2.3>)[[UCPM1.2.3]]).

- *Postcondizioni*: Il nome del progetto è stato aggiornato correttamente e risulta univoco rispetto agli altri progetti dell'utente.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.2.3 - Nome del progetto già esistente 
// #align(center, [#image("../../asset/UC/project-manager/UCPM2.1.png", height: 10cm)])

<UCPM1.2.3>

- *Attore principale:* Project Manager.

- *Descrizione:* Il sistema rileva che il nome scelto per il progetto è già in uso dall'utente e lo segnala.

- *Precondizioni:* Il nome inserito nei casi d'uso #link(<UCPM1.2.1>)[[UCPM1.2.1]] o #link(<UCPM1.2.2>)[[UCPM1.2.2]] è già presente nel database per quel Project Manager.

- *Trigger:* Il sistema rileva un conflitto di univocità durante la validazione del nome.

- *Scenario principale:*
  + Il Project Manager visualizza un messaggio di errore che notifica "il nome è già in uso".
  + Il Project Manager è invitato a scegliere un nome differente.

- *Postcondizioni:* Il Project Manager è a conoscenza del conflitto di nome e può procedere con un nuovo inserimento.

=== UCPM1.3 - Aggiunta repository a progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.3>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager aggiunge delle repository esistenti ad un progetto.

- *Precondizioni:* Sono presenti nella piattaforma _Code Guardian_ almeno un repository e almeno un progetto.

- *Trigger:* Il Project Manager si trova sulla visualizzazione del progetto e preme il pulsante per l'aggiunta di repository.

- *Scenario principale:*
  + Il Project Manager visualizza una barra di ricerca per il nome dei repository (*<\<include>>* #link(<UC7>)[[UC7]]).
  + Il Project Manager visualizza una lista di repository tra cui cercare.(*<\<include>>* #link(<UCPM1.5>)[[UCPM1.5]]). 
  + Il Project Manager seleziona i repository che desidera.
  + Il Project Manager conferma l'inserimento dei repository. //nota: i repository vengono aggiunti anche alle repository importate dal PM, qua serve un diagramma delle attività
  + Il Project Manager visualizza, nel progetto, i repository che ha inserito.

- *Scenari alternativi:*
  - Il Project Manager annulla l'operazione (*<\<extend>>* #link(<UCPM1.3.1>)[[UCPM1.3.1]]).
  - Si verifica un errore durante il caricamento della conferma o delle repository.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager ha aggiunto delle repository al progetto e ne sta visualizzando la lista.

- *Inclusioni:* 
  - #link(<UC7>)[[UC7]]
  - #link(<UCPM1.5>)[[UCPM1.5]]

- *Estensioni:* 
  - #link(<UCPM1.3.1>)[[UCPM1.3.1]]
  - #link(<UC4>)[[UC4]]

  #line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.3.1 - Annulla aggiunta repository a progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.3.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager annulla l'aggiunta di repository ad un progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di inserimento repository ad un progetto.

- *Trigger:* Il Project Manager preme il pulsante per annullare l'inserimento dei repository al progetto.

- *Scenario principale:*
  + Il Project Manager preme il pulsante per annullare l'operazione di aggiunta repository.
  - Il sistema ripristina lo stato precedente all'aggiunta dei repository.

- *Postcondizioni:* Il processo di aggiunta repository è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell'aggiunta repository.

#line(length: 100%, stroke: 0.5pt + gray)


=== UCPM1.4 - Aggiunta developer a progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.4>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager aggiunge dei developer registrati sulla piattaforma _Code Guardian_ ad un progetto.

- *Precondizioni:* Sono presenti nella piattaforma _Code Guardian_ almeno un developer.

- *Trigger:* Il Project Manager si trova sulla visualizzazione di "Gestione Developer" e preme il pulsante per la sua aggiunta.

- *Scenario principale:*
  + Il Project Manager visualizza una barra di ricerca per il nome dei developer (*<\<include>>* #link(<UCPM1.4.2>)[[UCPM1.4.2]]).
  + Il Project Manager visualizza una lista di developer tra cui cercare.(*<\<include>>* #link(<UCPM1.6>)[[UCPM1.6]]). 
  + Il Project Manager seleziona i developer che desidera.
  + Il Project Manager seleziona il ruolo del developer all'interno del progetto (tra i ruoli disponibili nel profilo del developer).
  + Il Project Manager conferma l'inserimento dei developer.
  + Il Project Manager visualizza, nel progetto, i developer che ha inserito.

- *Scenari alternativi:*
  - Il Project Manager annulla l'operazione (*<\<extend>>* #link(<UCPM1.4.1>)[[UCPM1.4.1]]).
  - Si verifica un errore durante il caricamento della conferma o della lista developer.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager ha aggiunto dei developer al progetto e ne sta visualizzando la lista.

- *Inclusioni:* 
  - #link(<UCPM1.6>)[[UCPM1.6]]
  - #link(<UCPM1.4.2>)[[UCPM1.4.2]]

- *Estensioni:* 
  - #link(<UCPM1.4.1>)[[UCPM1.4.1]]
  - #link(<UC4>)[[UC4]]

  #line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.4.1 - Annulla aggiunta developer a progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.4.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager annulla l'aggiunta di developer ad un progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di inserimento developer ad un progetto.

- *Trigger:* Il Project Manager preme il pulsante per annullare l'inserimento dei developer al progetto.

- *Scenario principale:*
  + Il Project Manager preme il pulsante per annullare l'operazione di aggiunta developer.
  - Il sistema ripristina lo stato precedente all'aggiunta dei developer.

- *Postcondizioni:* Il processo di aggiunta developer è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell'aggiunta developer.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.4.2 - Ricerca nome developer  
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.4.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager filtra la lista dei developer disponibili tramite una barra di ricerca.

- *Precondizioni:* Il Project Manager visualizza una lista di developer che contiene almeno un elemento.

- *Trigger:* Il Project Manager digita dei caratteri all'interno del campo di ricerca/filtro.

- *Scenario principale*:
  + Il Project Manager inserisce una stringa di testo (nome o cognome) nella barra di ricerca.
  + Il Project Manager visualizza solo i profili dei developer che corrispondono alla ricerca.

- *Scenario alternativo:*
  + Nessun risultato trovato: Se nessun developer corrisponde alla stringa inserita, il Project Manager visualizza un messaggio informativo (es. "Nessun developer corrisponde alla ricerca").

- *Postcondizioni:* L'Utente visualizza la lista filtrata dei developer.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.5 - Lista repository da selezionare 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])
<UCPM1.5>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager consulta l'elenco dei repository disponibili per associarli al progetto in fase di configurazione.

- *Precondizioni:* Il sistema ha un progetto attivo in fase di creazione o modifica:
  - Al team di progetto è stato associato almeno un Developer.
  - I Developer del team possiedono repository su GitHub a cui il sistema ha accesso.
- *Trigger:* Il Project Manager accede alla sezione "Aggiungi repository" all'interno della gestione progetto.

- *Scenario principale:*
  + Il Project Manager visualizza una lista contenente i repository appartenenti ai Developer, facenti parte del progetto selezionato.
  + Il Project Manager può scorrere la lista per individuare i repository di interesse.

- *Postcondizioni:* Il Project Manager visualizza l'elenco dei repository potenzialmente associabili al progetto.

#line(length: 100%, stroke: 0.5pt + gray)


=== UCPM1.6 - Lista developer da selezionare 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])
<UCPM1.6>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager consulta l'elenco dei developer per associarli al progetto in fase di configurazione.

- *Precondizioni:* Il sistema ha un progetto attivo in fase di creazione o modifica, esiste almeno un developer iscritto alla piattaforma _Code Guardian_.
- *Trigger:* Il Project Manager accede alla sezione "Aggiungi developer" all'interno della gestione developer.

- *Scenario principale:*
  + Il Project Manager visualizza una lista dei profili developer (*<\<include>>* #link(<UCPM1.6.1>)[[UCPM1.6.1]]).
  + Il Project Manager scorre l'elenco per individuare i profili di cui ha interesse.

- *Postcondizioni:* Il Project Manager visualizza l'elenco dei potenziali collaboratori disponibili per l'inserimento nel team.

#line(length: 100%, stroke: 0.5pt + gray)


=== UCPM1.6.1 - Vedi identificativi Developer
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])
<UCPM1.6.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il sistema recupera e mostra le informazioni di base di un Developer registrato sulla piattaforma _Code Guardian_ per permetterne l'identificazione visiva.

- *Precondizioni:* Il profilo del Developer deve essere presente nel database di Code Guardian.

- *Trigger:* Il Project Manager sta visualizzando i dati relativi ai Developer.

- *Scenario principale:*
  + Il Project Manager visualizza il nome che il developer ha su _Code Guardian_.
  + Il Project Manager visualizza l'immagine profilo del Developer.

- *Postcondizioni:* Il Project Manager visualizza correttamente l'identità del Developer.

=== UCPM1.7 - Gestione membri del team
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])
<UCPM1.7>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager revisiona i componenti attuali del team di progetto e, se necessario, escludere specifici collaboratori.

- *Precondizioni:* Il Project Manager sta gestendo un progetto esistente al quale è associato almeno un Developer.

- *Trigger:* Il Project Manager seleziona la voce "Developer" sui dettagli del progetto.

- *Scenario principale:*
  + Il Project Manager consulta l'elenco dei Developer che partecipano attualmente al progetto.
  + Il Project Manager identifica ogni singolo profilo tramite i dati identificativi (nome, cognome e foto) (<<include>> #link(<UCPM1.6.1>)[[UCPM1.6.1]]).
  + Il Project Manager individua, per ogni collaboratore in elenco, l'opzione dedicata alla rimozione dal progetto.
  + Per ogni voce, il Project Manager visualizza un pulsante per eliminare il Developer.
  + Il Project Manager visualizza il pulsante per aggiungere nuovi Developer

- *Postcondizioni:* Il Project Manager è consapevole degli attuali membri del team, facenti parte del progetto selezionato precedentemente.

=== UCPM1.8 - Rimozione developer da progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])
<UCPM1.8>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager rimuove un developer dal progetto interessato.

- *Precondizioni:* Nel progetto selezionato è presente almeno un developer.

- *Trigger:* Il Project Manager si trova sulla visualizzazione di "Gestione Developer" e preme il pulsante per la rimozione di uno di questi.

- *Scenario principale:*
  + Il Project Manager visualizza un popup di conferma eliminazione.
  + Il Project Manager conferma l'eliminazione del developer.
  + Repository a lui associate vengono rimosse dal progetto, il Project Manager ne vedrà la lista aggiornata.

- *Scenari alternativi:*
  - Il Project Manager annulla l'operazione (*<\<extend>>* #link(<UCPM1.8.1>)[[UCPM1.8.1]]).
  - Si verifica un errore durante il caricamento della conferma.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager ha rimosso un developer dal progetto e ne sta visualizzando la lista aggiornata.

- *Estensioni:* 
  - #link(<UCPM1.8.1>)[[UCPM1.8.1]]

  #line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.8.1 - Annulla rimozione developer da progetto 
// #align(center, [#image("../../asset/UC/project-manager/UCPM1.1.png", height: 5cm)])

<UCPM1.8.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager annulla la rimozione del developer dal progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di rimozione developer da un progetto.

- *Trigger:* Il Project Manager preme il pulsante per annullare la rimozione del developer dal progetto.

- *Scenario principale:*
  + Il Project Manager preme il pulsante per annullare l'operazione di rimozione developer.
  - Il sistema ripristina lo stato precedente alla rimozione del developer.

- *Postcondizioni:* Il processo di rimozione developer è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio della rimozione developer.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)
#pagebreak()

=== UCPM3 - Visualizzazione mappatura competenze 
#align(center, [#image("../../asset/UC/project-manager/UCPM3.png", height: 5cm)])
<UCPM3>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager consulta la distribuzione delle tecnologie utilizzate dal team.

- *Precondizioni:* Il Project Manager si trova nella dashboard di dettaglio di un progetto (#link(<UCPM2.1>)[[UCPM2.1]]).

- *Trigger:* Il Project Manager seleziona il pulsante "Team & Competenze".

- *Scenario principale:*
  + Il Project Manager visualizza una lista dei membri del team a cui vengono associate delle icone sulle tecnologie di loro competenza. (*<\<include>>* #link(<UCPM3.2>)[[UCPM3.2]]).
  + Il Project Manager visualizza la lista dei developer associati al progetto, su cui può per approfondirne il profilo #link(<UCPM3.1>)[[UCPM3.1]].

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager ha analizzato la mappatura delle competenze all'interno del team del progetto.

- *Inclusioni:* #link(<UCPM3.2>)[[UC3.2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.1 - Visualizzazione dettagli membro del team
<UCPM3.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Visualizzazione delle metriche specifiche di uno sviluppatore nel contesto del progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di mappatura competenze #link(<UCPM3>)[[UCPM3]].

- *Trigger:* Il Project Manager ha selezionato uno specifico membro del team.

- *Scenario principale:*
  + Il Project Manager visualizza il link al profilo GitHub del Developer.
  + Il Project Manager visualizza i dettagli generali del developer (*<\<include>>* #link(<UCPM1.6.1>)[[UCPM1.6.1]]).
  + Il Project Manager visualizza le statistiche di contribuzione (*<\<include>>* #link(<UCPM3.3>)[[UCPM3.3]]).
  + Il Project Manager visualizza i linguaggi maggiormente utilizzati dal Developer(*<\<include>>* #link(<UCPM3.4>)[[UCPM3.4]]).

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager ha ottenuto una panoramica dettagliata della professionalità del membro del team scelto.

- *Inclusioni:* 
   - #link(<UCPM1.6.1>)[[UCPM1.6.1]].
   - #link(<UCPM3.3>)[[UCPM3.3]].
   - #link(<UCPM3.4>)[[UCPM3.4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.2 - Associazione icone tecnologiche al profilo
<UCPM3.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il sistema associa dei badge (icone) alle tecnologie padroneggiate dai membri del team per facilitare la lettura rapida delle competenze.

- *Precondizioni:* Esistono dati sulle competenze tecniche associati ai profili dei Developer su GitHub.

- *Trigger:* Caricamento della lista dei membri del team in #link(<UCPM3>)[[UCPM3]].

- *Scenario principale:*
  + Il Project Manager visualizza i badge tecnologici accanto al profilo del Developer, ordinati per rilevanza d'uso.

- *Postcondizioni:* Il Project Manager ha una visione generale delle competenze del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.3 - Visualizzazione statistiche membro del team 
<UCPM3.3>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza le statistiche di contribuzione del membro del team relative al progetto scelto.

- *Precondizioni:* Il Project Manager sta visualizzando il profilo di un membro del team #link(<UCPM3.1>)[[UCPM3.1]].

- *Trigger:* Il Project Manager ha cliccato il profilo di un developer. Il Project Manager si concentra sulle statistiche relative alle contribuzioni.

- *Scenario principale:*
  + Il Project Manager visualizza una serie di statistiche:
    - Numero di commit (*<\<include>>* #link(<UCPM3.3.1>)[[UCPM3.3.1]]).
    - Numero di pull request (*<\<include>>* #link(<UCPM3.3.2>)[[UCPM3.3.2]]).

- *Postcondizioni:* Il Project Manager ha consultato le statistiche di contribuzione di un membro del team.

- *Inclusioni:* 
   - #link(<UCPM3.3.1>)[[UCPM3.3.1]]
   - #link(<UCPM3.3.2>)[[UCPM3.3.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.3.1 - Visualizzazione numero commit
<UCPM3.3.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project manager visualizza il conteggio totale dei commit effettuati dal Developer all'interno dei repository associati al progetto.

- *Precondizioni:* Il sistema dispone dell'autorizzazione per accedere ai log delle attività dei repository su GitHub.

- *Trigger:* Inclusione dal caso d'uso #link(<UCPM3.3>)[[UCPM3.3]].

- *Scenario principale:*
  + Il Project Manager visualizza il numero di commit associati al developer.

- *Postcondizioni:* Il Project Manager conosce il numero di commit del Developer nel contesto del progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.3.2 - Visualizzazione numero pull request
<UCPM3.3.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project manager visualizza il conteggio totale dei pull request gestiti dal Developer all'interno dei repository associati al progetto.

- *Precondizioni:* Il sistema dispone dell'autorizzazione per accedere ai log delle attività dei repository su GitHub.

- *Trigger:* Inclusione dal caso d'uso #link(<UCPM3.3>)[[UCPM3.3]].

- *Scenario principale:*
  + Il Project Manager visualizza il numero di pull request associati al developer.

- *Postcondizioni:* Il Project Manager visualizza il numero di Pull Request associate al membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.4 - Visualizzazione linguaggi di un developer 
<UCPM3.4>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager guarda e le informazioni relativi ai linguaggi usati dal developer.

- *Precondizioni:* Il Project Manager sta visualizzando il profilo di un membro del team #link(<UCPM3.1>)[[UCPM3.1]].

- *Trigger:* Il Project Manager si concentra sulle informazioni riguardanti i linguaggi affini al developer.

- *Scenario principale:*
  + Il Project Manager visualizza una lista delle dei linguaggi di programmazione usati dal developer, con le relative percentuali.

- *Postcondizioni:* Il Project Manager ha consultato i linguaggi affini a un membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.5 - Reindirizzamento al profilo GitHub del developer 
<UCPM3.5>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager clicca sul link per il reindirizzamento al profilo GitHub del developer che sta visualizzando, Il Project Manager ne visualizza il profilo su GitHub.

- *Precondizioni:* Il Project Manager sta visualizzando il profilo di un membro del team #link(<UCPM3.1>)[[UCPM3.1]].

- *Trigger:* Il Project Manager clicca sul link del profilo GitHub

- *Scenario principale:*
  + Il Project Manager individua il link al profilo GitHub tra le informazioni del Developer.
  + Il Project Manager clicca il collegamento per approfondire la conoscenza del profilo professionale del membro del team.
  + Il Project Manager consulta le informazioni desiderate direttamente sulla piattaforma esterna GitHub.

- *Postcondizioni:* Il Project Manager ha effettuato l'accesso alla pagina GitHub esterna relativa al Developer selezionato.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)
#pagebreak()

=== UCPM4 - Stack tecnologico e suggerimenti
 <UCPM4>
- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager analizza lo stack tecnologico per identificare librerie obsolete e ricevere suggerimenti.

- *Precondizioni:* Il Project Manager si trova nella dashboard di dettaglio progetto (#link(<UCPM2.1>)[[UCPM2.1]]).

- *Trigger:* Il Project Manager seleziona la voce "Stack tecnologico".

- *Scenario principale:*
  + Il Project Manager visualizza l'elenco di framework e librerie usate. (*<\<include>>* #link(<UCPM4.1>)[[UCPM4.1]]).
  + Il Project Manager visualizza la possibile segnalazione di dipendenze deprecate o a rischio sicurezza (*<\<include>>* #link(<UCPM4.2>)[[UCPM4.2]]).
  + Il Project Manager visualizza i suggerimenti generati dall’IA (*<\<include>>* #link(<UCPM4.3>)[[UCPM4.3]]).

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager ha preso visione dello stato tecnologico del progetto analizzato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM4.1 - Vedi framework e librerie
 <UCPM4.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager esamina la composizione tecnologica del progetto, individuando i framework e le librerie utilizzate nei vari repository per valutarne la coerenza e la distribuzione.

- *Precondizioni:* Il Project Manager sta consultando la panoramica dello stack tecnologico del progetto (#link(<UCPM4>)[[UCPM4]]).

- *Trigger:* Il Project Manager si concentra sui framework e sulle librerie.

- *Scenario principale:*
  + Il Project Manager identifica i framework adottati all'interno del progetto, rilevando la loro percentuale sulla base del codice complessivo.
  + Il Project Manager esamina l'elenco delle librerie integrate, osservando la frequenza di utilizzo di ciascuna all'interno dei repository collegati.
  + Il Project Manager confronta le diverse tecnologie presenti per accertarsi che lo stack rispetti gli standard previsti per il progetto.

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Project Manager ha acquisito piena consapevolezza della struttura tecnologica del progetto e della distribuzione dei componenti software.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM4.2 - Segnalatori di deprecazione
 <UCPM4.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager analizza se esistono librerie obsolete che possono causare problemi per la sicurezza.

- *Precondizioni:* Il Project Manager sta consultando la panoramica dello stack tecnologico del progetto (#link(<UCPM4>)[[UCPM4]]).

- *Trigger:* Il Project Manager si concentra sulle segnalazioni di deprecazioni o rischi sicurezza.

- *Scenario principale:*
  + Il Project Manager identifica, all'interno di una lista dedicata, i framework e le librerie che presentano criticità.
  + Il Project Manager rileva per ogni elemento il grado di severità del rischio (vulnerabilità nota o deprecazione).
  + Il Project Manager valuta l'impatto di tali problematiche sulla stabilità complessiva del progetto.

- *Postcondizioni:* Il Project Manager ha ottenuto una chiara valutazione dei rischi tecnologici e delle componenti che richiedono un intervento di aggiornamento.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM4.3 - Suggerimenti strategici IA
 <UCPM4.3>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager esamina le raccomandazioni generate dall'intelligenza artificiale per ottimizzare l'architettura tecnologica.

- *Precondizioni:* Il Project Manager sta consultando la panoramica dello stack tecnologico del progetto (#link(<UCPM4>)[[UCPM4]]).

- *Trigger:* Il Project Manager si concentra sui consigli dell'AI.

- *Scenario principale:*
  + Il Project Manager consulta le proposte di ottimizzazione, riguardanti nuovi framework e nuove librerie, fornite dall'intelligenza artificiale.
  + Il Project Manager analizza le motivazioni tecniche a supporto di ogni suggerimento..
  + Il Project Manager valuta il potenziale impatto dei suggerimenti sulle tempistiche e sulle risorse del team.

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il Project Manager visualizza un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Precondizioni:* Il Project Manager ha acquisito una visione strategica sui possibili miglioramenti tecnologici suggeriti dall'intelligenza artificiale.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

== Specifica dei casi d'uso - Business Owner

=== UCBO1 - Visualizzazione dashboard home con statistiche 
#align(center, [#image("../../asset/UC/business-owner/UCBO1.png", height: 10cm)])

<UCBO1>

- *Attore principale:* Business Owner 

- *Descrizione:* Il Business Owner accede alla home page dell'applicazione che mostra una panoramica aggregata di tutti i progetti.
  
- *Precondizioni:* Il Business Owner è autenticato nel sistema.
  
- *Trigger:* Viene caricata la home page del sistema dopo aver effettuato l'accesso accede all'applicazione.
  
- *Scenario principale:*
  + Il Business Owner visualizza la lista dei propri progetti (*<\<include>>* #link(<UC9>)[[UC9]]).
  + Il Business Owner consulta il rapporto budget vs spesa complessivo per ogni progetto (*<\<include>>* #link(<UCBO1.1>)[[UCBO1.1]]).
  + Il Business Owner può selezionare un progetto per analizzarlo nel dettaglio (#link(<UCBO2>)[[UCBO2]]).
  
- *Scenario alternativo:* 
  - Si verifica un errore durante il caricamento della home page.
    - Il sistema mostra un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.
  
- *Postcondizioni:* Il Business Owner visualizza la propria home page.
  
- *Inclusioni:* 
  - #link(<UC9>)[[UC9]]
  - #link(<UCBO1.1>)[[UCBO1.1]]; 
- 
- *Estensioni:*
  - #link(<UC4>)[[UC4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.1 - Visualizzazione rapporto budget vs spesa complessivo <UCBO1.1>

- *Attore principale:* Business Owner
  
- *Descrizione:* Il Business Owner consulta l’indicatore  aggregato che confronta il budget totale allocato con la spesa totale sostenuta.
  
- *Precondizioni:* Il Business Owner sta visualizzando la propria dashboard ed è presente almeno un progetto (#link(<UCBO1>)[[UCBO1]]).
  
- *Trigger:* Viene caricata la home page del sistema dopo aver effettuato l'accesso accede all'applicazione.
  
- *Scenario principale:*
  + Il sistema mostra un indicatore che mostra budget totale allocato (*<\<include>>* #link(<UCBO1.1.1>)[[UCBO1.1.1]]).
  + Il sistema mostra un indicatore che mostra le spese sostenute (*<\<include>>* #link(<UCBO1.1.2>)[[UCBO1.1.2]]).
  + Il sistema mostra un grafico a riempimento che confronta la spesa totale e il budget allocato (*<\<include>>* #link(<UCBO1.1.3>)[[UCBO1.1.3]]).

- *Postcondizioni:* Il Business Owner ha visualizzato le spese per il progetto.

- *Inclusioni:*
  - #link(<UCBO1.1.1>)[[UCBO1.1.1]]
  - #link(<UCBO1.1.2>)[[UCBO1.1.2]]
  - #link(<UCBO1.1.3>)[[UCBO1.1.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.1.1 - Visualizzazione budget totale allocato <UCBO1.1.1>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza il budget totale da esso allocato al progetto.

- *Precondizioni:* Il Business Owner ha eseguito l'accesso.

- *Trigger:* Viene caricata la dashboard del profilo o la pagina delle specifiche di un progetto.

- *Scenario principale:* 
  + Il sistema mostra un indicatore che mostra budget totale allocato.

- *Scenari alternativi:*
  - Il Business Owner non ha ancora allocato il budget totale per il progetto:
    + Viene visualizzata la scritta N.D. (Non disponibile).

- *Postcondizioni:* Il Business Owner ha visualizzato il budget totale allocato per il progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.1.2 - Visualizzazione spese sostenute <UCBO1.1.2>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza le spese sostenute, da lui dichiarate, all'interno del progetto.

- *Precondizioni:* Il Business Owner ha eseguito l'accesso.

- *Trigger:* Viene caricata la dashboard del profilo o la pagina delle specifiche di un progetto.

- *Scenario principale:* 
  + Il sistema mostra un indicatore che mostra la spesa dichiarata in quel momento.

- *Scenari alternativi:*
  - Il Business Owner non ha ancora allocato la spesa sostenuta per il progetto:
    + Viene visualizzata la scritta N.D. (Non disponibile).

- *Postcondizioni:* Il Business Owner ha visualizzato la spesa sostenuta per il progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO1.1.3 - Grafico di confronto spese <UCBO1.1.3>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza un grafico di rapporto tra la spesa complessiva e la spesa sostenuta.

- *Precondizioni:* Il Business Owner ha eseguito l'accesso.

- *Trigger:* Viene caricata la dashboard del profilo o la pagina delle specifiche di un progetto.

- *Scenario principale:* 
  + Il sistema mostra un grafico che confronta il budget totale e la spesa fino ad ora sostenuta.

- *Scenari alternativi:*
  - Il Business Owner non ha ancora allocato il budget complessivo per il progetto:
    + Viene visualizzata la scritta N.D. (Non disponibile).

- *Postcondizioni:* Il Business Owner ha visualizzato il grafico di confronto tra la spesa complessiva e quella sostenuta.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCBO2: Accedere progetto singolo 
#align(center, [#image("../../asset/UC/business-owner/UCBO2.png", height: 7cm)])

<UCBO2>

- *Attore principale:* Business Owner
  
- *Descrizione:* Il Business Owner seleziona ed entra in un progetto specifico per analizzarne i dettagli.
  
- *Precondizioni:* Il Business Owner è proprietario di almeno un progetto.
  
- *Trigger:* Il Business Owner seleziona un progetto specifico dalla lista della propria dashboard.
  
- *Scenario principale:*
  + Il Business Owner visualizza il nome del progetto (*<\<include>>* #link(<UC10.1>)[[UC10.1]]).
  + Il Business Owner visualizza l'opzione di aggiunta del budget complessivo (#link(<UCBO2.1>)[[UCBO2.1]]).
  + Il Business Owner visualizza l'opzioine di aggiunta spese sostenute (#link(<UCBO2.2>)[[UCBO2.2]]).
  + Il sistema mostra un indicatore che mostra budget totale allocato (*<\<include>>* #link(<UCBO1.1.1>)[[UCBO1.1.1]]).
  + Il sistema mostra un indicatore che mostra le spese sostenute (*<\<include>>* #link(<UCBO1.1.2>)[[UCBO1.1.2]]).
  + Il sistema mostra un grafico a riempimento che confronta la spesa totale e il budget allocato (*<\<include>>* #link(<UCBO1.1.3>)[[UCBO1.1.3]]).
  + Il sistema mostra le informazioni del Project Manager per il progetto (*<\<include>>* #link(<UCBO2.3>)[[UCBO2.3]]).
  + Il Business Owner visualizza la lista delle tecnologie utilizzate nel progetto (*<\<include>>* #link(<UCBO2.4>)[[UCBO2.4]]).
  + Il Business Owner visualizza la lista del team di sviluppo (*<\<include>>* #link(<UCBO2.5>)[[UCBO2.5]]).
  + Il Business Owner visualizza l'opzione per tornare alla dashboard.
  
- *Postcondizioni:* Il Business Owner ha analizzato i dettagli del progetto selezionato.
  
- *Inclusione:* 
  - #link(<UC10.1>)[[UC10.1]]
  - #link(<UCBO1.1.1>)[[UCBO1.1.1]]
  - #link(<UCBO1.1.2>)[[UCBO1.1.2]]
  - #link(<UCBO1.1.3>)[[UCBO1.1.3]]
  - #link(<UCBO2.3>)[[UCBO2.3]] 
  - #link(<UCBO2.4>)[[UCBO2.4]]
  - #link(<UCBO2.5>)[[UCBO2.5]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.1 - Aggiunta budget complessivo <UCBO2.1>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner inserisce il budget complessivo per il progetto.

- *Precondizioni:* Il Business Owner è autenticato e sta visualizzando le specifiche di un progetto.

- *Trigger:* Il Business Owner seleziona l'opzione di aggiunta buget complessivo.

- *Scenario principale:*
  + Il sistema apre una finestra pop-up per l'inserimento del budget.
  + Il Business Owner inserisce il budget (*<\<include>>* #link(<UCBO2.7>)[[UCBO2.7]]).
  + Il sistema mostra l'opzione per l'annullamento dell'operazione.
  + Il Business Owner conferma l'inserimento.

- *Scenari alternativi:*
  - Il Business Owner decide di annullare l'operazione (*<\<extend>>* #link(<UCBO2.6>)[[UCBO2.6]]). 
  - - Si verifica un errore durante il caricamento della home page.
    - Il sistema mostra un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il budget complessivo è stato aggiunto al sistema.

- *Inclusioni:*
  - #link(<UCBO2.7>)[[UCBO2.7]]

- *Estensioni:*
  - #link(<UCBO2.6>)[[UCBO2.6]]
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.2 - Aggiunta spese sostenute <UCBO2.2>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner inserisce il le spese sostenute per il progetto.

- *Precondizioni:* Il Business Owner è autenticato e sta visualizzando le specifiche di un progetto.

- *Trigger:* Il Business Owner seleziona l'opzione di aggiunta delle spese sostenute.

- *Scenario principale:*
  + Il sistema apre una finestra pop-up per l'inserimento delle spese.
  + Il Business Owner inserisce le spese (*<\<include>>* #link(<UCBO2.7>)[[UCBO2.7]]).
  + Il sistema mostra l'opzione per l'annullamento dell'operazione.
  + Il Business Owner conferma l'inserimento.

- *Scenari alternativi:*
  - Il Business Owner decide di annullare l'operazione (*<\<extend>>* #link(<UCBO2.6>)[[UCBO2.6]]). 
  - - Si verifica un errore durante il caricamento della home page.
    - Il sistema mostra un messaggio di errore (*<\<extend>>* #link(<UC4>)[[UC4]]).
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Le spese sostenute complessivo sono state aggiunte al sistema.

- *Inclusioni:*
  - #link(<UCBO2.7>)[[UCBO2.7]]

- *Estensioni:*
  - #link(<UCBO2.6>)[[UCBO2.6]]
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.3 - Visualzzazione informazioni Project Manager <UCBO2.3>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza le informazioni sul Project Manager di un progetto.

- *Precondizioni:* Il Business Owner sta visualizzando i dettagli di un progetto (#link(<UCBO2>)[[UCBO2]]).

- *Trigger:* La pagina di dettaglio del progetto viene caricata.

- *Scenario principale:*
  - Il sistema mostra il nome del Project Manager del progetto (*<\<include>>* #link(<UCBO2.3.1>)[[UCBO2.3.1]]).
  - Il sistema mostra il contatto mail del Project Manager del progetto (*<\<include>>* #link(<UCBO2.3.2>)[[UCBO2.3.2]]).
  - Il sistema mostra la data di creazione del progetto (*<\<include>>* #link(<UCBO2.3.3>)[[UCBO2.3.3]]).

- *Postcondizioni:* Il Business Owner ha visualizzato le informazioni relative al Project Manager.

- *Inclusioni:*
  - #link(<UCBO2.3.1>)[[UCBO2.3.1]]
  - #link(<UCBO2.3.2>)[[UCBO2.3.2]]
  - #link(<UCBO2.3.3>)[[UCBO2.3.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.3.1 - Visualizzazione nome Project Manager di progetto <UCBO2.3.1>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza il nome del Project Manager.

- *Precondizioni:* Il Business Owner si trova nella pagina di dettaglio di un progetto (#link(<UCBO2>)[[UCBO2]]).

- *Trigger:* Viene caricata la pagina di dettaglio di un progetto.

- *Scenario principale:*
  + Il Business Owner visualizza il nome del Project Manager.

- *Postcondizioni:* Il Business Owner ha visualizzato il nome del Project Manager.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.3.2 - Visualizzazione contatto mail Project Manager di progetto <UCBO2.3.2>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza il contatto mail del Project Manager.

- *Precondizioni:* Il Business Owner si trova nella pagina di dettaglio di un progetto (#link(<UCBO2>)[[UCBO2]]).

- *Trigger:* Viene caricata la pagina di dettaglio di un progetto.

- *Scenario principale:*
  + Il Business Owner visualizza il contatto mail del Project Manager.

- *Postcondizioni:* Il Business Owner ha visualizzato il contatto mail del Project Manager.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.3.3 - Visualizzazione data creazione del progetto <UCBO2.3.3>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza la data di creazione nella quale il Project Manager ha creato il progetto.

- *Precondizioni:* Il Business Owner si trova nella pagina di dettaglio di un progetto (#link(<UCBO2>)[[UCBO2]]).

- *Trigger:* Viene caricata la pagina di dettaglio di un progetto.

- *Scenario principale:*
  + Il Business Owner visualizza la data nella quale il Project Manager ha creato il progetto.

- *Postcondizioni:* Il Business Owner ha visualizzato la data di creazione nella quale il Project Manager ha creato il progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.4 - Visualizzare lista stack tecnologico usato nel progetto 
#align(center, [#image("../../asset/UC/business-owner/UCBO2.1.png", height: 3cm)])

<UCBO2.4>

- *Attore principale:* Business Owner
  
- *Descrizione:* Il Business Owner esamina l'elenco delle tecnologie impiegate nel progetto specifico.
  
- *Precondizioni:* Il Business Owner sta visualizzando un progetto (#link(<UCBO2>)[[UCBO2]]).
  
- *Trigger:* Viene caricata la pagina di dettaglio di un progetto.
  
- *Scenario principale:*
  + Il sistema mostra un insieme di elementi che descrivono lo stack tecnologico usato (*<\<include>>* #link(<UCBO2.4.1>)[[UCBO2.4.1]]).

- *Scenari alternativi:*
  - Non è possibile recuperare lo stack tecnolgico del progetto:
    + Il sistema mostra un messaggio N.D. (Non disponibile).
  
- *Postcondizioni:* Il Business Owner visualizza lo stack tecnologico usato nel progetto.

- *Inclusioni:*
  - #link(<UCBO2.4.1>)[[UCBO2.4.1]]
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.4.1 - Visualizzazione elemento lista dello stack tecnologico <UCBO2.4.1>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza un singolo elemento tra la lista di tecnologie utilizzate.

- *Trigger:* Viene caricata la pagina di dettaglio di un progetto o la pagina di dettaglio di uno sviluppatore.

- *Scenario principale:*
  + Il sistema mostra il logo della tecnologia (*<\<include>>* #link(<UCBO2.4.2>)[[UCBO2.4.2]]).
  + Il sistema mostra il nome della tecnologia (*<\<include>>* #link(<UCBO2.4.3>)[[UCBO2.4.3]]).
  + Il sistema ne mostra l'utilizzo all'interno del progetto (backend / frontend / database ecc.) (*<\<include>>* #link(<UCBO2.4.4>)[[UCBO2.4.4]]).

- *Postcondizioni:* Il Business Owner ha visualizzato lo stack tecnologico.

- *Inclusioni:*
  - #link(<UCBO2.4.2>)[[UCBO2.4.2]]
  - #link(<UCBO2.4.3>)[[UCBO2.4.3]]
  - #link(<UCBO2.4.4>)[[UCBO2.4.4]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.4.2 - Visualizzazione logo tecnologia <UCBO2.4.2>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza il logo della tecnologia.

- *Trigger:* Viene caricata la lista dello stack tecnologico (#link(<UCBO2.4>)[[UCBO2.4]]).

- *Scenario principale:*
  + Il sistema mostra il logo della tecnologia utilizzata.

- *Scenario alternativo:*
  - Non viene identificato un logo per la tecnolgia identificata:
    + Viene mostrata un immagine di default. 

- *Postcondizioni:* Il Business Owner ha visualizzato il logo della tecnologia descritta.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.4.3 - Visualizzazione nome tecnologia <UCBO2.4.3>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza il nome della tecnologia.

- *Trigger:* Viene caricata la lista dello stack tecnologico (#link(<UCBO2.4>)[[UCBO2.4]]).

- *Scenario principale:*
  + Il sistema mostra il nome della tecnologia utilizzata.

- *Postcondizioni:* Il Business Owner ha visualizzato il nome della tecnologia descritta.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.4.4 - Visualizzazione utilizzo tecnologia <UCBO2.4.4>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza l'utilizzo che la tecnologia ha all'interno del progetto.

- *Trigger:* Viene caricata la lista dello stack tecnologico (#link(<UCBO2.4>)[[UCBO2.4]]).

- *Scenario principale:*
  + Il sistema mostra l'utilizzo che la tecnologia ha all'interno del progetto (backend, frontend, database, framework ecc.).

- *Scenario alternativo:*
  - Non viene identificato un utilizzo per la tecnolgia identificata:
    + Viene mostrata la scritta N.D. (Non disponibile).

- *Postcondizioni:* Il Business Owner ha visualizzato l'utilizzo che la tecnologia ha all'interno del progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.5 - Visualizzazione lista del team di sviluppo 
#align(center, [#image("../../asset/UC/business-owner/UCBO2.3.png", height: 6cm)])
<UCBO2.5>

- *Attore principale:* Business Owner

- *Descrizione:* Il Business Owner esamina l'elenco dei membri del team assegnati al progetto.
  
- *Precondizioni:* Il Business Owner è entrato in un progetto (#link(<UCBO2>)[[UCBO2]]).
  
- *Trigger:* Viene caricata la pagina di dettaglio di un progetto.
  
- *Scenario principale:*
  + Il sistema visualizza una lista dei membri del team di sviluppo (*<\<include>>* #link(<UCBO2.5.1>)[[UCBO2.5.1]]).

- *Scenari alternativi:*
  - Non è possibile recuperare la lista dei membri del progetto:
    + Il sistema mostra un messaggio N.D. (Non disponibile).
  
- *Postcondizioni:* Il Business Owner ha visualizzato la composizione del team del progetto.
  
- *Inclusioni:* #link(<UCBO2.5.1>)[[UCB2.5.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCB2.5.1 - Visualizzazione elemento lista del team di sviluppo <UCBO2.5.1>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner sta visualizzando il dettaglio di un elemento della lista dei componenti di un progetto (#link(<UCBO2.5>)[[UCBO2.5]]).

- *Precondizioni:* Esiste almeno un developer appartenente al progetto.

- *Trigger:* Viene caricata la lista che elenca il team di sviluppo del progetto.

- *Scenario principale:*
  + Il sistema mostra il nome del developer (*<\<include>>* #link(<UCBO2.5.2>)[[UCBO2.5.2]]).
  + Il sistema mostra il ruolo del developer (*<\<include>>* #link(<UCBO2.5.3>)[[UCBO2.5.3]]). 
  + Il Business Owner può visualizzare i dettagli del singolo developer (#link(<UCBO3>)[[UCBO3]]).

- *Postcondizioni:* Il Business Owner ha visualizzato il singolo elemento della lista del team.

- *Inclusioni:*
  - #link(<UCBO2.5.2>)[[UCBO2.5.2]]
  - #link(<UCBO2.5.3>)[[UCBO2.5.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.5.2 - Nome developer del team di sviluppo di un progetto <UCBO2.5.2>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza il nome di un membro del team di sviluppo del progetto.

- *Precondizioni:* Il Business Owner sta visualizzando un elemento della lista del team di sviluppo di un progetto (#link(<UCBO2.5.1>)[[UCBO2.5.1]])

- *Trigger:* Viene caricata la lista del team di sviluppo di un progetto.

- *Scenario principale:*
  + Il sistema mostra il nome dello sviluppatore.

- *Postocondizioni:* Il Business Owner ha visualizzato il nome dello sviluppatore.


#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.5.3 - Ruolo developer del team di sviluppo di un progetto <UCBO2.5.3>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner visualizza il ruolo di un membro del team di sviluppo del progetto.

- *Precondizioni:* Il Business Owner sta visualizzando un elemento della lista del team di sviluppo di un progetto (#link(<UCBO2.5.1>)[[UCBO2.5.1]])

- *Trigger:* Viene caricata la lista del team di sviluppo di un progetto.

- *Scenario principale:*
  + Il sistema mostra il ruolo dello sviluppatore per quel progetto.

- *Postocondizioni:* Il Business Owner ha visualizzato il ruolo dello sviluppatore.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.6 - Annullamento operazione di aggiunta <UCBO2.6>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner decide di annullare l'operazione di aggiunta del budget complessivo (#link(<UCBO2.1>)[[UCBO2.1]]) o della spesa sostenuta (#link(<UCBO2.2>)[[UCBO2.2]]).

- *Precondizioni:* Il Busindess Owner sta eseguendo un operazione di aggiunta budget complessivo o aggiunta spesa sostentuta.

- *Trigger:* Il Business Owner preme il pulsante per annullare l'operazione.

- *Scenario principale:*
  + Il sistema annulla l'operazione. 
  + Il sistema reindirizza il Business Owner alla pagina di dettaglio del progetto.

- *Postcondizioni:* Il Business Owner si trova nella pagina di dettaglio del progetto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO2.7 - Inserimento spese <UCBO2.7>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner inserisce il budget nello spazio dedicato.

- *Precondizioni:* Il Business Owner sta eseguendo la procedura di aggiunta del budget complessivo per un progetto.

- *Trigger:* Viene caricato il pop-up per l'aggiunta del budget.

- *Scenario principale:*
  + Il Business Owner inserisce la cifra desiderata.

- *Postcondizioni:* Il budget complessivo è stato inserito nello spazio dedicato.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


=== UCBO3: Visualizzazione statistiche singoli developer 
#align(center, [#image("../../asset/UC/business-owner/UCBO3.png", height: 5cm)])

<UCBO3>

- *Attore principale:* Business Owner
  
- *Descrizione:* Il Business Owner consulta le statistiche e informazioni dettagliate di uno specifico developer del team.
  
- *Precondizioni:* Il Business Owner sta visualizzando un elemento dalla lista del team (#link(<UCBO2.5.1>)[[UCBO2.5.1]]).
  
- *Trigger:* Il Business Owner seleziona la voce di dettaglio del developer dalla lista del team.
  
- *Scenario principale:*
  + Il Business Owner visualizza il nome dello sviluppatore (*<\<include>>* #link(<UCBO2.5.2>)[[UCBO2.5.2]]). 
  + Il Business Owner vede il numero di progetti a cui il developer ha lavorato e sta lavorando (*<\<include>>* #link(<UCBO3.1>)[[UCBO3.1]]).
  + Il Business Owner consulta i linguaggi e tecnologie affini del developer (*<\<include>>* #link(<UCBO3.2>)[[UCBO3.2]]).
  + Il Business Owner consulta i ruoli assumibili dal developer (*<\<include>>* #link(<UCBO3.3>)[[UCBO3.3]]).
  
- *Postcondizioni:* Il Business Owner ha approfondito la conoscenza delle competenze e del carico di lavoro del developer.
  
- *Inclusioni:* 
  - #link(<UCBO3.1>)[[UCBO3.1]]
  - #link(<UCBO3.2>)[[UCBO3.2]]
  - #link(<UCBO3.3>)[[UCBO3.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO3.1: Visualizzazione numero progetti dello sviluppatore <UCBO3.1>

- *Attore principale:* Business Owner
  
- *Descrizione:* Il Business Owner il conteggio dei progetti associati al developer.
  
- *Precondizioni:* Il Business Owner sta visualizzando i dettagli del profilo di un developer (#link(<UCBO3>)[[UCBO3]]).
  
- *Trigger:* Viene caricata la pagina di dettaglio del profilo di un developer.
  
- *Scenario principale:*
    - Il sistema mostra il numero totale di progetti in cui il developer ha lavorato
  
- *Postcondizioni:* Il Business Owner visualizza il coinvolgimento del developer in vari progetti.

#line(length: 100%, stroke: 0.5pt + gray)


=== UCBO3.2: Visualizzazione linguaggi e tecnologie affini <UCBO3.2>

- *Attore principale:* Business Owner
  
- *Descrizione:* Il Business Owner consulta le competenze tecnologiche del developer.
  
- *Precondizioni:* Il Business Owner sta visualizzando i dettagli del profilo di un developer (#link(<UCBO3>)[[UCBO3]]).
  
- *Trigger:* Viene caricata la pagina di dettaglio del profilo di un developer.
  
- *Scenario principale:*
  + Il sistema mostra una lista con i linguaggi di programmazione conosciuti/utilizzati (*<\<include>>* #link(<UCBO2.4.1>)[[UCBO2.4.1]]).
    
- *Postcondizioni:* Il Business Owner conosce le competenze tecnologiche del developer.

- *Inclusioni:*
  - #link(<UCBO2.4.1>)[[UCBO2.4.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCBO3.3 - Consultazione ruoli developer <UCBO3.3>
- *Attore principale:* Business Owner.

- *Descrizione:* Il Business Owner consulta i ruoli assumibili da un developer.

- *Precondizioni:* Il Business Owner sta visualizzando i dettagli del profilo di un developer (#link(<UCBO3>)[[UCBO3]]).

- *Trigger:* Viene caricata la pagina di dettaglio del profilo di un developer.

- *Scenario principale:*
  + Il sistema mostra una stringa con i ruoli assumibili da developer.

- *Postcondizioni:* Il Business Owner ha visualizzato i ruoli che il developer può assumere.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

= Diagrammi di Attività

== Introduzione

Mentre i Casi d’Uso definiscono "cosa" il sistema debba fare, i Diagrammi di Attività si pongono l'obiettivo di descrivere il "come", focalizzandosi sulla logica procedurale e sul flusso di controllo dei processi di business di Code Guardian. Essi rappresentano la traduzione dinamica dei requisiti, permettendo di visualizzare non solo la sequenza temporale delle operazioni, ma anche le condizioni decisionali e le ramificazioni del flusso.\
L'utilizzo di questa modellazione UML è cruciale per evidenziare la natura reattiva della piattaforma; in particolare, i diagrammi che seguono sono stati progettati per esaltare il supporto all'elaborazione parallela. Attraverso l'uso di nodi di Fork e Join, viene descritto come il sistema sia in grado di eseguire simultaneamente controlli di sicurezza, analisi di qualità e validazione documentale, ottimizzando le prestazioni e riducendo il tempo di feedback per lo sviluppatore.\
Ciascun diagramma fornisce una visione dettagliata degli aspetti dinamici dei principali casi d'uso, fungendo da ponte tra la specifica funzionale e l'architettura logica del software. Di seguito vengono presentati i flussi relativi all'analisi post-push, alla gestione proattiva delle correzioni e al monitoraggio tramite dashboard.

#v(1em)

#table(
  columns: (auto, 1fr),
  inset: 10pt,
  align: (left, left),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none },
  
  table.header(
     [*Campo*], [*Descrizione*],
  ),

  
  [*Descrizione*], [È una descrizione generale del *processo di business* che il corrispondente Diagramma di Attività schematizza.],
  [*Precondizioni*], [Definiscono lo stato in cui devono trovarsi obbligatoriamente il sistema e l'ambiente circostante prima che il Diagramma di Attività possa essere eseguito.],
  [*Postcondizioni*], [Descrivono lo stato finale del sistema una volta che il Diagramma di Attività raggiunge un *nodo finale*.],
  [*Trigger*], [Attività Iniziale che dà avvio all'esecuzione del Diagramma di Attività. Questo innesco può manifestarsi in tre modi:
  - *Nodo Iniziale*.
  - *Segnale Accettato*.
  - *Segnale Temporale*],
)

== Diagrammi

=== AD1 - Flusso di Esecuzione Analisi Integrata (Post-PUSH)

==== Descrizione Attività
- *Titolo*: Flusso di Esecuzione Analisi Integrata (Post-PUSH)
- *Descrizione*: Il processo descrive l'attivazione e l'esecuzione coordinata dei controlli di qualità, sicurezza e documentazione in seguito a una modifica del codice.
- *Precondizioni*: Il sistema ha ricevuto una notifica di push e ha salvato il contenuto del commit nel proprio ambiente.
- *Trigger*: Rilevamento di una modifica del repository.
- *Postcondizioni*: Lo stato del repository è aggiornato nella Dashboard e l'utente ha ricevuto un feedback immediato sulla qualità dell'ultimo commit.

==== Flusso Procedurale:
+ *Azione*: Il sistema identifica i file modificati e le dipendenze coinvolte.
+ *Fork*: Il sistema lancia simultaneamente tre flussi indipendenti quali:
  - *Analisi Qualità*: Fase in cui si effettua _Analisi Statica_ del codice.
    - _Code Smell_.
    - Rilevazione Bug.
    - _Code Coverage_ su Test esistenti.
  - *Analisi Sicurezza*:
    - _Secret Scanning_ per rilevare credenziali o token.
    - Analisi Vulnerabilità note di dipendenze.
    - Controllo conformità agli standard OWASP.
  - *Validazione Documentale*:
    - Verifica presenza di un file README.md.
    - Controllo coerenza tra codice e specifiche OpenAPI/Swagger.
+ *Join*: Il sistema attende il completamento di tutti i rami precedentemente menzionati prima di procedere.
+ *Azione*: Produzione di un Report di Qualità dati i risultati dei tre rami di Analisi e Validazione.
+ *Nodo di Decisione*: Il sistema valuta i risultati ottenuti.
  - *Criticità Rilevate*:
    + *Sub-Activity*: Remediation Proattiva.
  - *Successo o Warning*:
    + *Finalizzazione*.
+ *Azione*: Aggiornamento della Dashboard con nuovi parametri e invio notifica allo sviluppatore.
+ *Fine Attività*.

=== AD2 - Monitoraggio: Dashboard e Storico

==== Descrizione Attività

- *Titolo*: Visualizzazione Stato di Salute e Analisi Storica
- *Descrizione*: Il processo descrive le operazioni di recupero e aggregazione dati che il sistema compie per fornire all'utente una panoramica della qualità del software.
- *Precondizioni*: L’utente ha effettuato l’accesso alla piattaforma Code Guardian.
- *Trigger*: L’utente accede alla sezione Dashboard o seleziona un gruppo di progetti/repository.
- *Postcondizioni*: L’utente ha ottenuto una conoscenza approfondita dello stato attuale e dell'andamento temporale della qualità del software gestito.

==== Flusso Procedurale

+ *Azione*: Il sistema identifica i repository associati al profilo utente o al gruppo selezionato.
+ *Fork*: Il sistema interroga i database per recuperare informazioni distinte in modo simultaneo:
  - *Visione Aggregata*: Recupero metriche dell'ultima analisi (Code Smell, Vulnerabilità, Coverage).
  - *Storico Analisi*: Recupero dei report storici dai commit precedenti.
    - Elaborazione dei trend di evoluzione della qualità nel tempo.
+ *Join*: Il sistema attende il completamento di entrambi i recuperi dati per garantire una vista coerente.
+ *Azione*: Il sistema genera la vista grafica (grafici di trend, tabelle e contatori di stato).
+ *Azione*: Visualizzazione della Dashboard centralizzata all'utente.
+ *Nodo di Decisione*: L’utente valuta le informazioni visualizzate:
  - Consultazione Storico:  L'utente seleziona un report passato.
    - *\u{27F6}*: Il sistema visualizza il dettaglio dello storico.
  - *Esportazione*: L'utente richiede un report e il sistema genera un riepilogo in un qualche formato.
+ *Fine Attività*


=== AD3 - Ciclo di Remediation Proattiva

==== Descrizione Attività

- *Titolo*: Gestione Suggerimenti e Creazione Pull Request
- *Descrizione*: Il processo descrive come il sistema interviene attivamente per risolvere le criticità rilevate, automatizzando la proposta di codice e la gestione del repository.
- *Precondizioni*: L’Audit Automatico completato.
- *Trigger*: Il sistema rileva criticità risolvibili nell'ultimo audit effettuato.
- *Postcondizioni*: Il repository contiene una proposta di modifica concreta che non ha richiesto scrittura manuale da parte dello sviluppatore.

==== Flusso Procedurale:

+ *Azione*: Il sistema elabora lo snippet di codice correttivo e prepara i metadati della modifica
+ *Fork*:
  - *Interfaccia*: Caricamento del _Suggerimento di Correzione_ con visualizzazione del _diff_ nella dashboard.
  - *Sistema*: Verifica lo stato del repository e dei permessi di creazione branch.
+ *Join*: Il sistema è pronto a ricevere l'input dell'utente.
+ *Nodo di Decisione*: L'utente valuta la risposta.
  - *Rifiuto*: Utente scarta il suggerimento.
    - *Fine Attività*
  - *Approvazione*: L'utente accetta la correzione proposta.
    + *Azione*: Il sistema crea un proprio branch dedicato con le modifiche effettuate.
    + *Azione*: Il sistema apre una Pull Request verso il ramo principale.
+ *Fine Attività*.

#pagebreak()

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
  // UTENTE GENERICO
[R-1-F-O],[L'utente deve poter accedere alla piattaforma],[#link(<UC1>)[UC1]],
[R-2-F-O],[L'utente deve poter inserire il proprio username],[#link(<UC1.0.1>)[UC1.0.1]],
[R-3-F-O],[L'utente deve poter inserire la propria password],[#link(<UC1.0.2>)[UC1.0.2]],
[R-4-F-O],[L'utente deve poter annullare l'accesso alla piattaforma],[#link(<UC1.1>)[UC1.1]],
[R-5-F-O],[L'utente deve visualizzare un messaggio di errore nel caso di credenziali errate],[#link(<UC1.2>)[UC1.2]],
[R-7-F-D],[L'utente può annullare l'autenticazione con il provider esterno GitHub],[#link(<UC1.5>)[UC1.5]],

[R-16-F-O],[L'utente deve poter inserire un repository pubblico al sistema],[#link(<UC8>)[UC8]],
[R-17-F-D],[L'utente deve poter inserire un repository privato al sistema],[#link(<UC8.0.1>)[UC8.0.1]],
[R-18-F-D],[L'utente deve poter inserire il Personal Access Token collegato al proprio account],[#link(<UC8.0.1>)[UC8.0.1]],
[R-19-F-D],[L'utente deve ricevere un messaggio di errore in caso di token inserito non valido],[#link(<UC8.0.2>)[UC8.0.2]],
[R-20-F-O],[L'utente deve poter annullare l'inserimento di un repository],[#link(<UC8.1>)[UC8.1]],
[R-21-F-O],[L'utente deve poter inserire l'URL del repository],[#link(<UC8.2>)[UC8.2]],
[R-22-F-O],[L'utente deve ricevere un messaggio di errore nel caso di URL non valido],[#link(<UC8.3>)[UC8.3]],
[R-23-F-O],[L'utente deve poter visualizzare la lista dei propri repository personali],[#link(<UC6>)[UC6]],
[R-24-F-O],[L'utente deve poter selezionare una preferenza sulla tipologia di repository che desidera visualizzare],[#link(<UC6.1>)[UC6.1]],
[R-25-F-O],[L'utente deve poter visualizzare il nome di un repository],[#link(<UC5.8>)[UC5.8], #link(<UC5.5>)[UC5.5]],
[R-26-F-D],[L'utente deve poter visualizzare il nome del progetto associato al repository],[#link(<UC5.8>)[UC5.8], #link(<UC5.6>)[UC5.6]],
[R-27-F-O],[L'utente deve poter visualizzare l’indicatore  di visibilità di un repository],[#link(<UC5.8>)[UC5.8], #link(<UC5.7>)[UC5.7]],
[R-28-F-O],[L'utente deve poter visualizzare la lista dei progetti ai quali contribuisce],[#link(<UC9>)[UC9]],
[R-29-F-O],[L'utente deve poter visualizzare il nome di un progetto],[#link(<UC10.1>)[UC10.1]],
[R-30-F-O],[L'utente deve poter visualizzare le statistiche dell'analisi sulla documentazione di un progetto],[#link(<UC10>)[UC10], #link(<UC10.2>)[UC10.2]],
[R-31-F-O],[L'utente deve poter visualizzare le statistiche dell'analisi sui test di un progetto],[#link(<UC10>)[UC10], #link(<UC10.3>)[UC10.3]],
[R-32-F-O],[L'utente deve poter visualizzare le statistiche dell'analisi OWASP di un progetto],[#link(<UC10>)[UC10], #link(<UC10.4>)[UC10.4]],
[R-33-F-O],[L'utente deve poter visualizzare le statistiche dell'analisi sulla documentazione di un repository],[ #link(<UC5.1>)[UC5.1]],
[R-34-F-O],[L'utente deve poter visualizzare le statistiche dell'analisi sui test di un repository],[#link(<UC5.2>)[UC5.2]],
[R-35-F-O],[L'utente deve poter visualizzare le statistiche dell'analisi OWASP di un repository],[#link(<UC5.4>)[UC5.4]],
[R-36-F-O],[L'utente deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un analisi sui test per un repository],[#link(<UCD6>)[UCD6], #link(<UCD6.0.1>)[UCD6.0.1]],

[R-9-F-O],[L'utente deve visualizzare la propria area personale],[#link(<UC2>)[UC2]],
[R-10-F-O],[L'utente deve poter visualizzare il proprio nome utente],[#link(<UC2.1>)[UC2.1]],
[R-11-F-O],[L'utente deve poter visualizzare la propria mail],[#link(<UC2.2>)[UC2.2]],
[R-12-F-O],[L'utente deve poter visualizzare il proprio ruolo],[#link(<UC2.3>)[UC2.3]],
[R-13-F-O],[L'utente deve poter effettuare il logout dalla piattaforma],[#link(<UC3>)[UC3]],
[R-14-F-O],[L'utente deve poter annullare la procedura di logout dalla piattaforma],[#link(<UC3.1>)[UC3.1]],
[R-15-F-D],[L'utente deve visualizzare un messaggio di errore nel caso di errore durante l'esecuzione di un operazione],[#link(<UC4>)[UC4]],

[R-92-F-P],[L'utente deve poter cercare un repository in una barra di ricerca],[#link(<UC7>)[UC7]],

// DEV
[R-78-F-O],[Il Developer deve potersi autenticare e ricevere il ruolo di "Developer"],[#link(<UCD1>)[UCD1]],
[R-6-F-D],[Il Developer può sincronizzare il proprio account GitHub],[#link(<UCD2>)[UCD2]],
[R-8-F-D],[Il Developer deve poter annullare la sincronizzazione del proprio account GitHub],[#link(<UCD2.1>)[UCD2.1]],


[R-37-F-O],[Il Developer deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un analisi OWASP per un repository],[#link(<UCD6>)[UCD6], #link(<UCD6.0.2>)[UCD6.0.2]],
[R-38-F-O],[Il Developer deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un analisi sulla documentazione per un repository],[#link(<UCD6>)[UCD6], #link(<UCD6.0.3>)[UCD6.0.3]],
[R-39-F-O],[Il Developer deve essere n grado di visualizzare il dettaglio del file sul quale è stata proposto un cambiamento],[#link(<UCD6.1>)[UCD6.1]],
[R-40-F-D],[Il Developer deve poter cambiare il path di destinazione del file sul quale è stata proposta un remediation],[#link(<UCD6.1.2>)[UCD6.1.2]],
[R-41-F-D],[Il Developer deve poter inserire il uovo path all'interno del sistema],[#link(<UCD6.1.5>)[UCD6.1.5]],
[R-42-F-D],[Il Developer deve poter annullare il cambio di path di un file nel contesto di una proposta di remediation],[#link(<UCD6.1.3>)[UCD6.1.3]],
[R-43-F-D],[Il Developer deve visualizzare un messaggio di errore nel caso abbia inserito un path non valido per un file, nel contesto di una proposta di remediation],[#link(<UCD6.1.4>)[UCD6.1.4]],
[R-44-F-D],[Il Developer deve poter accettare una proposta di remediation],[#link(<UCD6.2>)[UCD6.2]],
[R-45-F-D],[Il Developer deve ricevere una notifica una volta che è stata inviata con successo una pull request sul repository GitHub],[#link(<UCD6.2.1>)[UCD6.2.1]],
[R-46-F-D],[Il Developer deve poter annullare l'accettazione di una proposta di remediation],[#link(<UCD6.3>)[UCD6.3]],
[R-47-F-D],[Il Developer deve ricevere un messaggio di errore nel caso di fallimento dell'accettazione della remediation],[#link(<UCD6.4>)[UCD6.4]],
[R-48-F-D],[Il Developer deve essere informato se la remediation proposta on è più coerente con lo stato del sistema, e quindi non può essere effettuata],[#link(<UCD6.5>)[UCD6.5], #link(<UCD6.6>)[UCD6.6]],
[R-49-F-O],[Il Developer deve poter eliminare un repository dal sistema],[#link(<UC11>)[UC11]],
[R-50-F-O],[Il Developer deve poter annullare l'operazione di eliminazione di un repository dal sistema],[#link(<UC11.1>)[UC11.1]],
[R-51-F-D],[Il Developer deve poter visualizzare la lista dei procedimenti in corso all'interno del sistema],[#link(<UCD8>)[UCD8], #link(<UCD8.1>)[UCD8.1]],
[R-52-F-D],[Il Developer deve visualizzare il nome del repository sul quale sta avvenendo il procedimento],[#link(<UCD8.1>)[UCD8.1], #link(<UC5.5>)[UC5.5]],
[R-53-F-D],[Il Developer deve visualizzare la data di avvio di ogni elemento dalla lista dei procedimenti in corso in corso.],[#link(<UCD8.1>)[UCD8.1], #link(<UCD8.4>)[UCD8.4]],
[R-54-F-D],[Il Developer deve visualizzare il nome branch aperto di ogni elemento della lista delle remediation in corso.],[#link(<UCD8.2>)[UCD8.2], #link(<UCD8.2.1>)[UCD8.2.1]],
[R-55-F-D],[Il Developer deve poter interrompere una remediation avviata],[#link(<UCD8.2>)[UCD8.2], #link(<UCD9>)[UCD9]],
[R-56-F-D],[Il Developer deve visualizzare un messaggio di avvenuta interruzione di una remediation in corso, in caso ne abbia richiesto la stessa],[#link(<UCD9.1>)[UCD9.1]],
[R-57-F-D],[Il Developer deve poter annullare un analisi in corso all'interno del sistema],[#link(<UCD8.3>)[UCD8.3], #link(<UCD10>)[UCD10]],
[R-58-F-D],[Il Developer deve visualizzare un messaggio di avvenuto annullamento di un analisi in corso],[#link(<UCD10.1>)[UCD10.1]],
[R-59-F-D],[Il Developer deve visualizzare una lista con le ultime analisi portate a termine],[#link(<UCD11>)[UCD11]],
[R-60-F-D],[Il Developer deve visualizzare il nome del repository sul quale un analisi  stata terminata],[#link(<UCD11.1>)[UCD11.1], #link(<UC5.5>)[UC5.5]],
[R-61-F-D],[Il Developer deve visualizzare la data di completamento di un'analisi terminata],[#link(<UCD11.1>)[UCD11.1], #link(<UCD11.1.1>)[UCD11.1.1]],
[R-62-F-D],[Il Developer deve poter visualizzare la specifica di una analisi portata a termine all'interno di un repository, che non sia l'ultima],[#link(<UCD12>)[UCD12]],
[R-63-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi sulla documentazione],[#link(<UCD12.1>)[UCD12.1]],
[R-64-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi sui test],[#link(<UCD12.2>)[UCD12.2]],
[R-65-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi OWASP],[#link(<UCD12.3>)[UCD12.3]],
[R-66-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare le proposte di remediation elaborate in seguito all'analisi],[#link(<UCD12.4>)[UCD12.4]],
[R-67-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare la proposta di remediation specifica inerente ad un singolo file],[#link(<UCD12.4.1>)[UCD12.4.1]],
[R-68-F-O],[Il Developer deve poter consultare l'ultima analisi effettuata all'interno di un repository per l'area test],[#link(<UCD13>)[UCD13], #link(<UCD13.1>)[UCD13.1]],
[R-69-F-O],[Il Developer deve poter consultare l'ultima analisi effettuata all'interno di un repository],[#link(<UCD13>)[UCD13], #link(<UCD13.1>)[UCD13.1], #link(<UCD13.2>)[UCD13.2], #link(<UCD13.3>)[UCD13.3]],
[R-70-F-D],[Il Developer deve poter visualizzare la data di fine di un analisi nella lista delle analisi passate relative ad un repository],[#link(<UCD14>)[UCD14], #link(<UCD11.1.1>)[UCD11.1.1]],
[R-71-F-D],[Il Developer deve poter visualizzare la lo stato di un analisi nella lista delle analisi passate relative ad un repository],[#link(<UCD14>)[UCD14], #link(<UCD14.1>)[UCD14.1]],
[R-72-F-O],[Il Developer deve poter avviare un analisi generale all'interno del repository],[#link(<UCD15>)[UCD15], #link(<UCD15.2>)[UCD15.2]],
[R-73-F-O],[Il Developer deve poter avviare un sui test all'interno del repository],[#link(<UCD15>)[UCD15], #link(<UCD15.3>)[UCD15.3]],
[R-74-F-O],[Il Developer deve poter avviare un analisi sulla documentazione all'interno del repository],[#link(<UCD15>)[UCD15], #link(<UCD15.4>)[UCD15.4]],
[R-75-F-O],[Il Developer deve poter avviare un analisi OWASP all'interno del repository],[#link(<UCD15>)[UCD15], #link(<UCD15.5>)[UCD15.5]],
[R-76-F-O],[Il Developer deve ricevere un messaggio di errore nel caso si verificasse un conflitto con un'altra analisi all'avvio di un'analisi],[#link(<UCD15.6>)[UCD15.6]],
[R-77-F-O],[Il Developer deve poter annullare l'avvio di un analisi],[#link(<UCD15.7>)[UCD15.7]],
// PM 
[R-79-F-D],[Il Project Manager deve potersi autenticare e ricevere il ruolo di "Project Manager"],[#link(<UCPM1>)[UCPM1]],
[R-80-F-D],[Il Project Manager deve poter visualizzare la lista dei propri progetti],[#link(<UCPM2>)[UCPM2]],
[R-81-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il widget sull'analisi della documentazione],([#link(<UCPM2>)[UCPM2], #link(<UC10.2>)[UC10.2]]),
[R-82-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il widget sull'analisi della documentazione],([#link(<UCPM2>)[UCPM2], #link(<UC10.3>)[UC10.3]]),
[R-83-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il widget sull'analisi della documentazione],([#link(<UCPM2>)[UCPM2], #link(<UC10.4>)[UC10.4]]),
[R-84-F-D],[Il Project Manager deve poter visualizzare i dettagli di un progetto],[#link(<UCPM2.1>)[UCPM2.1]],
[R-85-F-D],[Il Project Manager deve poter visualizzare i dettagli di un suo progetto],[#link(<UCPM2.1>)[UCPM2.1]],
[R-86-F-D],[Il Project Manager deve poter visualizzare, tra le altre informazioni del progetto, l'elenco dei repository che lo compongono],([#link(<UCPM2.1>)[UCPM2.1], #link(<UC5.9>)[UC5.9]]),
[R-87-F-D],[Il Project Manager deve poter creare un nuovo progetto],[#link(<UCPM1.2>)[UCPM1.2]],
[R-88-F-D],[Il Project Manager deve poter inserire il nome del progetto],[#link(<UCPM1.2.1>)[UCPM1.2.1]],
[R-89-F-D],[Il Project Manager deve poter modificare il nome di un progetto],[#link(<UCPM1.2.2>)[UCPM1.2.2]],
[R-90-F-D],[Il Project Manager deve poter ricevere un errore, se il nuovo nome del progetto che si sta inserendo è già presente per quell'utente],[#link(<UCPM1.2.3>)[UCPM1.2.3]],
[R-91-F-D],[Il Project Manager deve poter aggiungere un repository al progetto],[#link(<UCPM1.3>)[UCPM1.3]],
[R-93-F-D],[Il Project Manager deve poter visualizzare una lista di repository da poter aggiungere al progetto],[#link(<UCPM1.5>)[UCPM1.5]],
[R-94-F-D],[Il Project Manager deve poter annullare l'operazione di aggiunta repository al progetto],[#link(<UCPM1.3.1>)[UCPM1.3.1]],
[R-95-F-D],[Il Project Manager deve poter aggiungere dei developer al progetto],[#link(<UCPM1.4>)[UCPM1.4]],
[R-96-F-D],[Il Project Manager deve poter cercare il nome di un developer su una barra di ricerca ],[#link(<UCPM1.4.2>)[UCPM1.4.2]],
[R-97-F-D],[Il Project Manager deve poter visualizzare una lista di developer da poter aggiungere al progetto],[#link(<UCPM1.6>)[UCPM1.6]],
[R-98-F-D],[Il Project Manager deve poter annullare l'aggiunta dei developer al progetto],[#link(<UCPM1.4.1>)[UCPM1.4.1]],
[R-99-F-D],[Il Project Manager deve poter visualizzare il nome e la foto profilo di un developer],[#link(<UCPM1.6.1>)[UCPM1.6.1]],
[R-100-F-D],[Il Project Manager deve poter visualizzare e gestire gli attuali membri del team],[#link(<UCPM1.7>)[UCPM1.7]],
[R-101-F-D],[Il Project Manager deve poter rimuovere un developer dal progetto],[#link(<UCPM1.8>)[UCPM1.8]],
[R-102-F-D],[Il Project Manager deve poter annullare la rimozione di un developer dal progetto],[#link(<UCPM1.8.1>)[UCPM1.8.1]],
[R-103-F-D],[Il Project Manager deve poter visualizzare le competenze del team su un progetto],[#link(<UCPM3>)[UCPM3]],
[R-104-F-D],[Il Project Manager deve poter visualizzare il profilo di un membro del team (developer)],[#link(<UCPM3.1>)[UCPM3.1]],
[R-105-F-D],[Il Project Manager deve poter visualizzare il profilo GitHub di un membro del team (developer)],[#link(<UCPM3.5>)[UCPM3.5]],
[R-106-F-D],[Il Project Manager deve poter visualizzare le icone delle tecnologie di competenza, accanto al nome dei developer],[#link(<UCPM3.2>)[UCPM3.2]],
[R-107-F-D],[Il Project Manager deve poter visualizzare le statistiche di contribuzione di un membro del team],[#link(<UCPM3.3>)[UCPM3.3], #link(<UCPM3.3.1>)[UCPM3.3.1], #link(<UCPM3.3.2>)[UCPM3.3.2]],
[R-108-F-D],[Il Project Manager deve poter visualizzare i linguaggi maggiormente utilizzati da un membro del team],[#link(<UCPM3.4>)[UCPM3.4]],
[R-109-F-D],[Il Project Manager deve poter visualizzare i linguaggi maggiormente utilizzati da un membro del team],[#link(<UCPM3.4>)[UCPM3.4]],
[R-110-F-D],[Il Project Manager deve poter visualizzare il numero di commit effettuati da un membro del team],[#link(<UCPM3.3.1>)[UCPM3.3.1]],
[R-111-F-D],[Il Project Manager deve poter visualizzare il numero di pull request gestite da un membro del team],[#link(<UCPM3.3.2>)[UCPM3.3.2]],
[R-112-F-D],[Il Project Manager deve poter visualizzare lo stack tecnologico utilizzato in un progetto],[#link(<UCPM4>)[UCPM4]],
[R-113-F-D],[Il Project Manager deve poter visualizzare l'elenco dei: framework e librerie,  utilizzare nello stack tecnologico di un progetto],[#link(<UCPM4.1>)[UCPM4.1]],
[R-114-F-D],[Il Project Manager deve poter visualizzare l'elenco di segnalazioni a: framework e librerie con rischi di sicurezza o deprecate, utilizzare nello stack tecnologico di un progetto],[#link(<UCPM4.2>)[UCPM4.2]],
[R-115-F-D],[Il Project Manager deve poter visualizzare suggerimenti generati dall'IA per la sostituzione di framework e librerie, utilizzate nello stack tecnologico di un progetto],[#link(<UCPM4.3>)[UCPM4.3]],
// BO
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