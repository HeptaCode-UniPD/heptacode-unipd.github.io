/*
Domande per Cardin sul file:
1) Se ho una situazione in cui è possibile aprire un menù, completare un'azione dopodichè il sistema riporta alla schermata precedente è corretto inserire un include per l'UC della finestra precedente? (es UC6.2.1)
2) In 6.3, ad esempio, è formalmente corretto fare riferimento ad una situazione precedente linkando l'UC a cui ci si riferisce o è meglio descrivere nuovamente la situazione?
3) se la descrizione è "Il Developer vuole consultare un'analisi archiviata relativa all'area Testing" allora non è corretto considerare l'azione di consultazione analisi archiviata come un include?
4) Se l'utente è obbligato alla fine a tornare alla pagina precedente, è giusto inserirlo nel flusso principale?
*/


#show link: it => text(fill: rgb("#6a00f4"), it)

#show table.cell: block.with(breakable: false)

#let storia_modifiche = (
  // AGGIUNGI QUI SOPRA LA NUOVA RIGA QUANDO SERVE, LA VERSIIONE DEL DOC VIENE AGGIORNATA AUTOMATICAMENTE
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

#set heading(numbering: "1.1")

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
- _Code Guardian_: Piattaforma ad agenti per l’audit e la remediation dei repository software (#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato])
- _Norme di Progetto_: Regole, standard e procedure del gruppo _Hepta Code_ (#link("...")[Norme di Progetto]).
- [Altro ...]

=== Riferimenti Informativi
- Verbale Interno: #link("https://heptacode-unipd.github.io/docs/RTB/verbali_esterni/vargroup_1.pdf")[Primo Incontro di Design Thinking]
- Slide di lezione: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf")[Analisi dei requisiti]
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
- *Analisi Statica*: Rilevamento automatico di _code smell_, bug potenziali e violazioni delle convenzioni di stile.
- *Verifica dei Test*: Controllo della copertura dei test (_code coverage_) per garantire che le nuove funzionalità siano adeguatamente verificate.

=== Scansione di Sicurezza e Vulnerabilità
Per garantire la robustezza del software, il sistema integra strumenti di controllo specifici per la _security_:
- *Rilevamento Credenziali*: Identificazione di chiavi API, password o token involontariamente committati nel codice (_secret scanning_).
- *Analisi delle Dipendenze*: Verifica delle librerie di terze parti per individuare versioni obsolete o affette da vulnerabilità note.
- *Compliance OWASP*: Controllo della conformità agli standard di sicurezza web (es. _OWASP Top 10_).

=== Validazione della Documentazione
Il sistema assicura che il progetto mantenga un alto livello di manutenibilità verificando la presenza e la qualità della documentazione:
- *Check Strutturale*: Verifica della presenza di file essenziali (es. `README.md`).
- *Coerenza API*: Controllo della corrispondenza tra il codice implementato e la documentazione delle interfacce (es. specifiche _OpenAPI/Swagger_).

=== Remediation Proattiva
A differenza dei semplici strumenti di reportistica, _Code Guardian_ agisce attivamente per risolvere i problemi:
- *Suggerimenti di Correzione*: Il sistema non si limita a segnalare l'errore, ma genera proposte concrete di codice correttivo.
- *Creazione Pull Request*: Se l'utente approva un suggerimento, il sistema crea automaticamente un _branch_ dedicato e una _Pull Request_ pronta per la revisione, senza richiedere intervento manuale per la scrittura del codice.

=== Monitoraggio e Dashboard
Il sistema fornisce un punto di accesso centralizzato per la consultazione dello stato di salute dei progetti:
- *Visione Aggregata*: Visualizzazione di metriche chiave indicatori relativi qualità del codice per singoli _repository_ o per interi gruppi di progetti.
- *Storico Analisi*: Consultazione dei report passati per valutare l'evoluzione della qualità del software nel tempo.

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

=== Vincoli di Progetto
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

- *Remediation semi-automatica:* Per motivi di sicurezza e affidabilità, le azioni di correzione del codice proposte dagli agenti non verranno mai applicate automaticamente sul _branch_ principale. Il sistema si limita a generare _Pull Request_ o _snippet_ di codice che richiedono la revisione e l'approvazione umana.

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

Il paragrafo successivo andrà ad indentificare invece gli attori che interagiranno con il sistema.

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

=== UC1: Accesso tramite Piattaforma Esterna <UC1>
#figure(image("../../asset/UC/UC1.png", width: 80%), caption: [Diagramma del caso d'uso UC1])

- *Attore principale:* Utente.

- *Attore secondario:* GitHub.

- *Descrizione:* L’utente accede a _Code Guardian_ delegando l'autenticazione al provider esterno (GitHub).

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L’utente interagisce con la funzionalità di login nella pagina iniziale.

- *Scenario principale:*
  + L’utente esprime la volontà di accedere tramite il provider GitHub.
  + L'utente completa la procedura di autenticazione esterna (*<\<include>>* #link(<UC1.1>)[[UC1.1]]).
  + L'utente accede alla propria dashboard personale.

- *Scenari alternativi:*
+ Al passo 2, se l'esecuzione di #link(<UC1.1>)[[UC1.1]] termina con esito negativo l'utente rimane sulla pagina di login.
+ Al passo 3, se il sistema rileva che è il primo accesso assoluto, l'utente viene reindirizzato alla procedura di prima registrazione (*<\<extend>>* #link(<UC1.2>)[[UC1.2]]).

- *Postcondizioni:* L’utente è autenticato e visualizza la Dashboard.

- *Inclusioni:* #link(<UC1.1>)[[UC1.1]].
- *Estensioni:* #link(<UC1.2>)[[UC1.2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.1: Reindirizzamento al Provider di Identità <UC1.1>
#figure(image("../../asset/UC/UC1.1.png", width: 80%), caption: [Diagramma del caso d'uso UC1] )

- *Attore principale:* Utente.

- *Attore secondario:* GitHub.

- *Descrizione:* Gestisce il trasferimento dell'utente verso il provider di identità esterno, l'interazione remota e il rientro sulla piattaforma.

- *Precondizioni:* La connessione internet è attiva.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC1>)[[UC1]].

- *Scenario principale:*
  + L’utente visualizza la pagina di autenticazione del provider esterno.
  // Dal momento che questi passaggi avvengono all'esterno della piattaforma non so se lasciarli
  + L'utente concede i permessi necessari e conferma l'operazione.
  + L'utente viene reindirizzato nuovamente verso la piattaforma _Code Guardian_ con l'esito positivo.

- *Scenari alternativi:* 
  + Al passo 2, l'utente nega i consensi o annulla l'operazione sul provider (*<\<extend>>* #link(<UC1.3>)[[UC1.3]]).
  + In qualsiasi momento del flusso, si verifica un fallimento tecnico nella comunicazione (es. timeout, servizio non raggiungibile) (*<\<extend>>* #link(<UC1.4>)[[UC1.4]]).

- *Postcondizioni:* L'utente si trova nella piattaforma _Code Guardian_ nella pagina di accesso.

- *Estensioni:* #link(<UC1.3>)[[UC1.3]], #link(<UC1.4>)[[UC1.4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2: Registrazione Primo Accesso <UC1.2>
// Indecisa sulla granularità da adottare qui, potremmo chiedere al prof
#figure(image("../../asset/UC/UC1.2.png", width: 80%), caption: [Diagramma del caso d'uso UC1.2])

- *Attore principale:* Utente.

- *Descrizione:* L'utente completa la creazione del proprio profilo al primo accesso, selezionando il ruolo *iniziale* con cui operare all'interno della piattaforma.

- *Precondizioni:* L'utente ha completato con successo l'autenticazione presso il provider esterno.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1>)[[UC1]] (primo accesso rilevato al rientro dall'autenticazione).

- *Scenario principale:*
    + L'utente visualizza e verifica i dati anagrafici importati dal provider (*<\<include>>* #link(<UC1.2.1>)[[UC1.2.1]]).
    + L'utente seleziona il ruolo operativo con cui il profilo sarà inizializzato (*<\<include>>* #link(<UC1.2.2>)[[UC1.2.2]]).
    + L'utente conferma la registrazione. 
    + L'utente visualizza una notifica di avvenuta creazione dell'account.

- *Scenari alternativi:* + In qualsiasi momento prima della conferma finale, l'utente decide di annullare l'operazione e viene reindirizzato alla pagina di login (*<\<extend>>* #link(<UC1.3>)[[UC1.3]]).
  
- *Postcondizioni:* Il nuovo utente è registrato e la sessione è attiva nel ruolo selezionato.

- *Inclusioni:* #link(<UC1.2.1>)[[UC1.2.1]], #link(<UC1.2.2>)[[UC1.2.2]].
- *Estensioni:* #link(<UC1.3>)[[UC1.3]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2.1: Visualizzazione Dati Importati <UC1.2.1>

- *Attore principale:* Utente.

- *Descrizione:* L'utente prende visione dei dati recuperati automaticamente dal provider esterno.

- *Precondizioni:* L'autenticazione esterna è avvenuta con successo.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC1.2>)[[UC1.2]].

- *Scenario principale:*
    + Il sistema presenta il modulo di completamento profilo.
    + L'utente visualizza i campi (Username, Email) precompilati con le informazioni recuperate da _GitHub_.
    + L'utente verifica la correttezza dei dati mostrati.

- *Postcondizioni:* L'utente ha preso visione dei propri dati anagrafici importati.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2.2: Selezione del Ruolo <UC1.2.2>

- *Attore principale:* Utente.

- *Descrizione:* L'utente sceglie il ruolo iniziale che utilizzerà all'interno della piattaforma.

- *Precondizioni:* L'utente sta completando la procedura di registrazione.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC1.2>)[[UC1.2]].

- *Scenario principale:*
    + L'utente visualizza le opzioni di ruolo disponibili: _Developer_, _Project Manager_ o _Business Owner_.
    + L'utente seleziona una tra le opzioni disponibili.
    + Il sistema evidenzia graficamente la selezione effettuata.

- *Postcondizioni:* Il ruolo iniziale dell'utente è stato selezionato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.3: Annullamento Autenticazione <UC1.3>

- *Attore principale:* Utente.

- *Descrizione:* L'utente prende atto del mancato accesso dovuto a una sua scelta esplicita (annullamento) o per la negazione dei consensi.

- *Precondizioni:* L'utente ha selezionato "Annulla" o ha negato i consensi sull'interfaccia del provider.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1.1>)[[UC1.1]].

- *Scenario principale:*
  + L'utente visualizza un messaggio che conferma l'annullamento dell'operazione di login.
  + L’utente si ritrova nella schermata iniziale di login, pronta per un nuovo tentativo.

- *Postcondizioni:* L’utente non è autenticato, si trova nella pagina di login e visualizza un messaggio che conferma l'annullamento dell'operazione di accesso.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.4: Errore Tecnico di Comunicazione <UC1.4>

- *Attore principale:* Utente.

- *Attore secondario:* _GitHub_.

- *Descrizione:* L'utente riscontra un disservizio tecnico che impedisce il completamento del flusso di autenticazione.

- *Precondizioni:* Il servizio esterno (_GitHub_) non è raggiungibile o si è verificato un errore di rete.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC1.1>)[[UC1.1]].

- *Scenario principale:*
  + L'utente visualizza una schermata o un messaggio di avviso relativo a problemi di comunicazione con il servizio esterno (es. "Servizio non disponibile").
  + L’utente visualizza l'opzione per riprovare la connessione.

- *Postcondizioni:* L’utente non è autenticato, si trova nella pagina di login, visualizza l'avviso di errore e l'opzione per riprovare la connessione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC2: Aggiunta di un repository per l'analisi <UC2>

#figure(image("../../asset/UC/UC2.png"), caption: [Diagramma del caso d'uso UC2])

- *Attore principale:* Utente.

- *Descrizione:* L'Utente vuole registrare un nuovo repository _GitHub_ nella piattaforma.

- *Precondizioni:* L'Utente è autenticato e ha accesso alla dashboard.

- *Trigger:* L'Utente seleziona l'opzione "Aggiungi Repository" dalla dashboard.

- *Scenario principale:*
  + L'Utente visualizza l'interfaccia per l'inserimento dei dati della repository.
  + L'Utente digita o copia l'URL del repository _GitHub_ che desidera analizzare nel relativo campo di testo #link(<UC2.1>)[[UC2.1]].
  + L'Utente conferma l'operazione.
  + L'Utente visualizza il nuovo repository aggiunto correttamente alla lista dei suoi progetti.

- *Scenari alternativi:* 
  + Al passo 3, l'Utente visualizza un messaggio di errore relativo all'invalidità dell'URL (*<\<extend>>* #link(<UC2.2>)[[UC2.2]]).
  + Al passo 3, l'Utente visualizza una richiesta di autenticazione aggiuntiva poiché il repository risulta privato (*<\<extend>>* #link(<UC2.3>)[[UC2.3]]).
  + Prima della conferma (passo 3), l'Utente decide di annullare l'operazione e seleziona il tasto "Annulla" (*<\<extend>>* #link(<UC2.4>)[[UC2.4]]).

- *Postcondizioni:* Il repository è visibile nella lista dei progetti dell'Utente. 

- *Estensioni:* #link(<UC2.2>)[[UC2.2]], #link(<UC2.3>)[[UC2.3]], #link(<UC2.4>)[[UC2.4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC2.1: Inserimento URL Repository <UC2.1>

- *Attore principale:* Utente.

- *Descrizione:* L'Utente inserisce l'URL del repository _GitHub_ che desidera analizzare.

- *Precondizioni:* L'Utente è autenticato e ha accesso alla dashboard.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC2>)[[UC2]].

- *Scenario principale:*
  + L'Utente visualizza l'interfaccia per l'inserimento dell'URL del repository.
  + L'Utente digita o copia l'URL del repository _GitHub_ che desidera analizzare nel relativo campo di testo.
  + L'Utente conferma l'operazione.

- *Postcondizioni:* L'URL è stato inserito nel campo dedicato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC2.2: Errore di Validazione Repository <UC2.2>

- *Attore principale:* Utente.

- *Descrizione:* L'utente prende visione dell'impossibilità di aggiungere il repository dovuta a un formato dell'URL non valido o al mancato raggiungimento della risorsa (es. inesistente).

- *Precondizioni:* L'Utente ha confermato l'inserimento e la verifica automatica ha dato esito negativo.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC2>)[[UC2]].

- *Scenario principale:*
  + L'Utente visualizza un messaggio di errore che specifica la natura del problema (es. "Il formato dell'url è errato o il repository non è stato trovato").
  + L'Utente modifica l'URL nel campo di input per correggere l'errore.

- *Postcondizioni:* L'utente si trova nuovamente nella condizione di poter confermare l'inserimento.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC2.3: Repository Privato (Richiesta Token) <UC2.3>

- *Attore principale:* Utente.

- *Descrizione:* Gestisce il caso in cui il repository sia raggiungibile ma richieda permessi di accesso (repository privato).

- *Precondizioni:* Il repository indicato è esistente ma protetto.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC2>)[[UC2]].

- *Scenario principale:*
  + L'Utente visualizza un avviso che il repository è privato e un campo per l'inserimento del Personal Access Token.
  + L'Utente inserisce il token richiesto, per concedere i permessi alla repo sia di lettura che di scrittura (*<\<include>>* #link(<UC2.3.1>)[[UC2.3.1]]).
  + L'Utente conferma nuovamente l'operazione.
  + Il flusso riprende dalla verifica del repository.

- *Scenari alternativi:* L'Utente annulla l'operazione se non possiede il token o non desidera fornirlo.

- *Postcondizioni:* Il sistema dispone delle credenziali per accedere al repository privato.

- *Inclusioni:* #link(<UC2.3.1>)[[UC2.3.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC2.3.1: Inserimento Token di Accesso <UC2.3.1>

- *Attore principale:* Utente.

- *Descrizione:* Rappresenta l'azione dell'Utente di inserire il Personal Access Token in modo sicuro, gestendo la visibilità del dato sensibile.

- *Precondizioni:* Il sistema ha richiesto all'Utente di fornire un token di autenticazione.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC2.3>)[[UC2.3]].

- *Scenario principale:*
  + L'Utente scrive o incolla il token nel campo di testo dedicato.
  + L'Utente visualizza di default i caratteri mascherati (es. asterischi o pallini), ma dispone del controllo "Mostra/Nascondi" per verificare la correttezza della stringa inserita.

- *Postcondizioni:* Il campo di input contiene il token valido.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC2.4: Annullamento aggiunta repository <UC2.4>

- *Attore principale:* Utente.

- *Descrizione:* Gestisce il caso in cui l'Utente decida di annullare l'operazione di aggiunta di un repository nel proprio profilo.

- *Precondizioni:* L'Utente è autenticato e visualizza l'interfaccia per l'inserimento dei dati del repository.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC2>)[[UC2]] (l'utente seleziona il tasto "Annulla").

- *Scenario principale:* 
+ L'Utente viene reindirizzato alla dashboard principale della piattaforma _Code Guardian_.
+ L'Utente visualizza a schermo il messaggio che conferma l'annullamento della procedura.

- *Postcondizioni:* L'utente si trova nuovamente nella dashboard senza aver aggiunto il repository.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5: Accesso al Menù Utente <UC5>
#figure(image("../../asset/UC/UC5.png", width: 80%), caption: [Diagramma del caso d'uso UC5])
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole visualizzare la propria area personale.

- *Precondizioni:* L'utente è autenticato e si trova su una qualsiasi pagina della piattaforma.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale.

- *Scenario principale:*
  + L'utente visualizza il pannello a comparsa del menù utente.
  + L'utente visualizza il riepilogo delle proprie informazioni (Nome, Email, Ruolo attuale).
  + L'utente visualizza il pulsante "Cambia Ruolo", su cui può cliccare per cambiare il ruolo operativo (*<\<extend>>* #link(<UC5.1>)[[UC5.1]]).
  + L'utente visualizza il pulsante "Logout", su cui può cliccare per terminare la sessione e tornare all'interfaccia di login (*<\<extend>>* #link(<UC5.2>)[[UC5.2]]).
  + L'utente visualizza il pulsante "X", su cui può cliccare per uscire dal menù utente e tornare alla pagina precedente.

- *Postcondizioni:* Il menù utente è attivo e le opzioni sono selezionabili.

- *Estensioni:*
  + #link(<UC5.1>)[[UC5.1]]: Se l'utente seleziona l'opzione "Cambia Ruolo".
  + #link(<UC5.2>)[[UC5.2]]: Se l'utente seleziona l'opzione "Logout".

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5.1: Cambio Ruolo Operativo (Context Switch) <UC5.1>

- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole cambiare il proprio ruolo attivo all'interno della sessione corrente.

- *Precondizioni:* Il menù utente è aperto.

- *Trigger:* L'utente seleziona la voce "Cambia Ruolo".

- *Scenario principale:*
  + L'utente visualizza l'elenco dei ruoli disponibili per il proprio account (es. se attualmente nel ruolo Developer i ruoli selezionabili saranno Project Manager e Business Owner).
  + L'utente seleziona il nuovo ruolo desiderato.
  + La piattaforma ricarica l'ambiente di lavoro alla dashboard principale, visualizzando i repository e le configurazioni associate al ruolo selezionato (o lo stato iniziale vuoto nel caso di primo utilizzo).
  + L’utente visualizza il messaggio di avvenuto cambio ruolo operativo.

- *Postcondizioni:* L'interfaccia è aggiornata coerentemente con il nuovo ruolo selezionato, l'utente si trova nel proprio "Menù utente".

#line(length: 100%, stroke: 0.5pt + gray)

=== UC5.2: Logout <UC5.2>

- *Attore principale:* Utente.

- *Descrizione:* Permette all'utente di terminare la sessione di lavoro corrente.

- *Precondizioni:* Il menù utente è aperto.

- *Trigger:* L'utente seleziona la voce "Logout".

- *Scenario principale:*
  + L'utente conferma l'operazione di disconnessione tramite un pulsante "Conferma Logout".
  + L'utente viene reindirizzato alla pagina pubblica di accesso (Login).
  + L'utente visualizza il messaggio di avvenuta disconnessione.

- *Postcondizioni:* La sessione utente è terminata e si trova nella pagina iniziale non autenticato dove può effettuare nuovamente l'accesso.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC7: Creazione di un Gruppo di Progetto <UC7>

- *Attore principale:* Utente.

- *Descrizione:* L'Utente crea un Progetto per aggregare più repository già importate nella piattaforma.

- *Precondizioni:* L'Utente è autenticato e ha già importato almeno una repository tramite #link(<UC2>)[[UC2]].

- *Trigger:* L'Utente seleziona il pulsante "Nuovo Progetto" dalla propria dashboard o dalla lista progetti.

- *Scenario principale:*
  + L'Utente visualizza il modulo di creazione del progetto.
  + L'Utente inserisce il *Nome del Progetto* (obbligatorio) e una *Descrizione* (opzionale).
  + L'Utente seleziona le repository da includere nel gruppo da una lista di risorse disponibili (*<\<include>>* #link(<UC7.1>)[[UC7.1]]).
  + L'Utente conferma la creazione.
  + L'Utente visualizza il nuovo progetto generato nella lista dei suoi progetti attivi.

- *Scenari alternativi:* L'Utente annulla l'operazione premendo "Annulla" in qualsiasi punto del flusso principale prima della conferma.

- *Postcondizioni:* Un nuovo progetto è stato creato e contiene le repository selezionate.

- *Inclusioni:* #link(<UC7.1>)[[UC7.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC7.1: Selezione Repository per il Gruppo <UC7.1>

- *Attore principale:* Utente.

- *Descrizione:* L'Utente seleziona quali repository, tra quelle già collegate al suo account, faranno parte del nuovo progetto.

- *Precondizioni:* Il modulo di creazione o modifica progetto è attivo.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC7>)[[UC7]].

- *Scenario principale:*
  + Il sistema mostra l'elenco di tutte le repository precedentemente importate dall'Utente.
  + L'Utente seleziona tramite checkbox una o più repository da includere nel gruppo.

- *Postcondizioni:* L'Utente ha selezionato le repository da associare al progetto in fase di creazione.

#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

== Specifica dei casi d'uso - Developer

=== UC3: Accesso alla Dashboard del Repository <UC3>
#figure(image("../../asset/UC/UC3.png"), caption: [Diagramma del caso d'uso UC3])

- *Attore principale:* Developer.

- *Descrizione:* Il Developer accede alla schermata principale di un progetto per consultare, in un'unica vista aggregata, lo stato di salute del codice relativamente a Test, Sicurezza e Documentazione.

- *Precondizioni:* Il Developer è autenticato e visualizza la lista dei propri repository precedente importati.

- *Trigger:* Il Developer seleziona un repository specifico dalla lista progetti.

- *Scenario principale:*
  + Il Developer visualizza l'intestazione del progetto (Nome repository, Branch analizzato).
  + Il Developer visualizza il widget di sintesi per l'area *Test*, contenente la percentuale di copertura e il rapporto passati/falliti.
  + Il Developer visualizza il widget di sintesi per l'area *Sicurezza*, contenente il conteggio delle vulnerabilità per gravità.
  + Il Developer visualizza il widget di sintesi per l'area *Documentazione*, contenente il rating qualitativo.
  + Il Developer visualizza il pulsante "Nuova Analisi" per avviare un aggiornamento dei dati (*<\<extend>>* #link(<UC4>)[[UC4]]).

- *Scenari alternativi:*
  + Al passo 2, 3 o 4, se non sono presenti dati storici per una specifica area (mai analizzata), il Developer visualizza un placeholder "Nessun dato disponibile" nel relativo widget.
  + Il Developer seleziona "Dettagli" nel widget Test (*<\<extend>>* #link(<UC3.1>)[[UC3.1]]).
  + Il Developer seleziona "Dettagli" nel widget Sicurezza (*<\<extend>>* #link(<UC3.2>)[[UC3.2]]).
  + Il Developer seleziona "Dettagli" nel widget Documentazione (*<\<extend>>* #link(<UC3.3>)[[UC3.3]]).

- *Postcondizioni:* L'utente visualizza i widget di sintesi attuali del repository.

- *Estensioni:* 
  + #link(<UC3.1>)[[UC3.1]], #link(<UC3.2>)[[UC3.2]], #link(<UC3.3>)[[UC3.3]]: Per l'approfondimento delle singole aree.
  + #link(<UC4>)[[UC4]]: Se l'utente seleziona "Avvia Analisi".

#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.1: Consultazione Dettagli Test <UC3.1>
#figure(image("../../asset/UC/UC3.1.png"), caption: [Diagramma del caso d'uso UC3.1])
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole approfondire le criticità identificate nell'area test dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UC3>)[[UC3]]) e sono presenti dati relativi ai test.

- *Trigger:* Il Developer clicca sul pulsante "Dettagli" nel widget dell'area Test.

- *Scenario principale:*
  + Il Developer visualizza il grafico dettagliato della Code Coverage.
  + Il Developer consulta l'elenco dei file critici (es. copertura inferiore alla soglia o test falliti).
  + Il Developer espande una voce specifica per visualizzare il dettaglio dell'errore o della mancanza.
  + Il Developer visualizza il comando "Risolvi" per visualizzare le proposte di remediation (*<\<extend>>* #link(<UC6>)[[UC6]]).

- *Scenari alternativi:* 
  + Se l'analisi visualizzata è etichettata come "Processata" o "Scartata" il comando "Risolvi" è disabilitato.
  + Il Developer seleziona il pulsante "Storico" per consultare le analisi precedenti (*<\<extend>>* #link(<UC3.4>)[[UC3.4]]).
  + Il Developer seleziona il pulsante "Indietro" per tornare alla Dashboard (#link(<UC3>)[[UC3]]).

- *Postcondizioni:* Il Developer visualizza i dettagli tecnici delle problematiche di testing.

- *Estensioni:* #link(<UC6>)[[UC6]], #link(<UC3.4>)[[UC3.4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.2: Consultazione Dettagli Sicurezza <UC3.2>
#figure(image("../../asset/UC/UC3.2.png"), caption: [Diagramma del caso d'uso UC3.2])
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole esaminare le vulnerabilità di sicurezza rilevate nel codice e nelle dipendenze dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UC3>)[[UC3]]) e sono presenti dati relativi alla sicurezza.

- *Trigger:* Il Developer clicca sul pulsante "Dettagli" nel widget dell'area Sicurezza.

- *Scenario principale:*
  + Il Developer visualizza la lista delle vulnerabilità (es. Secret esposti) raggruppate per livello di rischio (Alto, Medio, Basso).
  + Il Developer seleziona una vulnerabilità specifica per leggerne la descrizione tecnica e l'impatto.
  + Il Developer visualizza il comando "Risolvi" per visualizzare le proposte di remediation (*<\<extend>>* #link(<UC6>)[[UC6]]).

- *Scenari alternativi:* 
  + Se l'analisi visualizzata è etichettata come "Processata" o "Scartata" il comando "Risolvi" è disabilitato. 
  + Il Developer seleziona il pulsante "Storico" per consultare le analisi precedenti (*<\<extend>>* #link(<UC3.5>)[[UC3.5]]).
  + Il Developer seleziona il pulsante "Indietro" per tornare alla Dashboard (#link(<UC3>)[[UC3]]).

- *Postcondizioni:* Il Developer visualizza i dettagli tecnici delle falle di sicurezza.

- *Estensioni:* #link(<UC6>)[[UC6]], #link(<UC3.5>)[[UC3.5]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.3: Consultazione Dettagli Documentazione <UC3.3>
#figure(image("../../asset/UC/UC3.3.png"), caption: [Diagramma del caso d'uso UC3.3])
- *Attore principale:* Developer.

- *Descrizione:* Il Developer verifica la completezza e la qualità della documentazione del progetto in base all'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UC3>)[[UC3]]) e sono presenti dati relativi alla documentazione.

- *Trigger:* Il Developer clicca sul pulsante "Dettagli" nel widget dell'area Documentazione.

- *Scenario principale:*
  + Il Developer visualizza la checklist degli artefatti documentali (es. README).
  + Il Developer identifica le voci segnalate come mancanti o incomplete.
  + Il Developer visualizza il comando "Risolvi" per visualizzare le proposte di remediation (*<\<extend>>* #link(<UC6>)[[UC6]]).

- *Scenari alternativi:* 
  + Se l'analisi visualizzata è etichettata come "Processata" o "Scartata" il comando "Risolvi" è disabilitato.
  + Il Developer seleziona il pulsante "Storico" per consultare le analisi precedenti (*<\<extend>>* #link(<UC3.6>)[[UC3.6]]).
  + Il Developer seleziona il pulsante "Indietro" per tornare alla Dashboard (#link(<UC3>)[[UC3]]).

- *Postcondizioni:* Il Developer visualizza lo stato di conformità della documentazione.

- *Estensioni:* #link(<UC6>)[[UC6]], #link(<UC3.6>)[[UC3.6]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.4: Consultazione Storico Test <UC3.4>
#figure(image("../../asset/UC/UC3.4.png", width: 80%), caption: [Diagramma del caso d'uso UC3.4])

- *Attore principale:* Developer.

- *Descrizione:* Il Developer consulta le analisi archiviate relative all'area Testing.

- *Precondizioni:* Esistono almeno due analisi storiche per l'area Test.

- *Trigger:* Il Developer clicca su "Storico" dalla vista di dettaglio Test (#link(<UC3.1>)[[UC3.1]]).

- *Scenario principale:*
  + Il Developer visualizza la lista delle analisi passate (ordinate dalla più recente alla più datata).
  + Il Developer può cliccare su un report specifico della lista d'interesse per visualizzarne i dettagli (*<\<extend>>* #link(<UC3.7>)[[UC3.7]]).

- *Scenari alternativi:* Il Developer clicca "Indietro" per tornare alla vista dettaglio corrente (#link(<UC3.1>)[[UC3.1]]).

- *Postcondizioni:* Il Developer visualizza lo storico delle analisi per l'area Test.

- *Estensioni:* #link(<UC3.7>)[[UC3.7]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.5: Consultazione Storico Sicurezza <UC3.5>
#figure(image("../../asset/UC/UC3.5.png", width: 80%), caption: [Diagramma del caso d'uso UC3.5])
- *Attore principale:* Developer.

- *Descrizione:* Il Developer consulta le analisi archiviate relative all'area Sicurezza.

- *Precondizioni:* Esistono almeno due analisi storiche per l'area Sicurezza.

- *Trigger:* Il Developer clicca su "Storico" dalla vista di dettaglio Sicurezza (#link(<UC3.2>)[[UC3.2]]).

- *Scenario principale:*
  + Il Developer visualizza la lista delle analisi passate (ordinate dalla più recente alla più datata).
  + Il Developer può cliccare su un report specifico della lista d'interesse per visualizzarne i dettagli (*<\<extend>>* #link(<UC3.7>)[[UC3.7]]).

- *Scenari alternativi:* Il Developer clicca "Indietro" per tornare alla vista dettaglio corrente (#link(<UC3.2>)[[UC3.2]]).

- *Postcondizioni:* Il Developer visualizza lo storico delle analisi per l'area Sicurezza.

- *Estensioni:* #link(<UC3.7>)[[UC3.7]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.6: Consultazione Storico Documentazione <UC3.6>
#figure(image("../../asset/UC/UC3.6.png", width: 80%), caption: [Diagramma del caso d'uso UC3.6])
- *Attore principale:* Developer.

- *Descrizione:* Il Developer consulta le analisi archiviate relative all'area Documentazione.

- *Precondizioni:* Esistono almeno due analisi storiche per l'area Documentazione.

- *Trigger:* Il Developer clicca su "Storico" dalla vista di dettaglio Documentazione (#link(<UC3.3>)[[UC3.3]]).

- *Scenario principale:*
  + Il Developer visualizza la lista delle analisi passate (ordinate dalla più recente alla più datata).
  + Il Developer può cliccare su un report specifico della lista d'interesse per visualizzarne i dettagli (*<\<extend>>* #link(<UC3.7>)[[UC3.7]]).

- *Scenari alternativi:* Il Developer clicca "Indietro" per tornare alla vista dettaglio corrente (#link(<UC3.3>)[[UC3.3]]).

- *Postcondizioni:* Il Developer visualizza lo storico delle analisi per l'area Documentazione.

- *Estensioni:* #link(<UC3.7>)[[UC3.7]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.7: Consultazione Dettaglio Analisi Archiviata (Read-Only) <UC3.7>
#figure(image("../../asset/UC/UC3.7.png"), caption: [Diagramma del caso d'uso UC3.7])
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole visualizzare i risultati di un'analisi passata.

- *Precondizioni:* L'utente ha selezionato un'analisi storica da una delle liste di storico.

- *Trigger:* Il Developer seleziona un report dallo storico analisi (#link(<UC3.4>)[[UC3.4]], #link(<UC3.5>)[[UC3.5]] o #link(<UC3.6>)[[UC3.6]]).

- *Scenario principale:*
  + Il Developer visualizza l'intestazione con i metadati storici (Data esecuzione, Autore, Commit ID).
  + Il sistema renderizza il contenuto specifico dell'analisi archiviata.
  //Anche qui non so se inserire sotto UC
  + Il Developer espande le singole voci per leggere i dettagli tecnici.
  + Il Developer seleziona "Indietro" per ritornare alla lista dello storico.

- *Postcondizioni:* Il Developer visualizza l'analisi della voce che ha selezionato nella sua interezza e ritorna alla lista delle analisi storiche.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC4: Avvio di un'analisi on-demand <UC4>

#figure(image("../../asset/UC/UC4.png", height: 30%), caption: [Diagramma del caso d'uso UC4])

- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole dare avvio ad un nuovo ciclo di analisi sul repository selezionato.

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

=== UC4.1: Selezione Tipologia Analisi <UC4.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer sceglie quali moduli verticali attivare per la sessione di analisi corrente.

- *Precondizioni:* Il pannello di configurazione dell'analisi è attivo.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC4>)[[UC4]].

- *Scenario principale:*
  + Il Developer può:
    -  selezionare "Analisi Manuale" e visualizzare le opzioni disponibili (Sicurezza, Test, Documentazione) (*<\<include>>* #link(<UC4.1.1>)[[UC4.1.1]]). 
    -  selezionare "Analisi Automatica" 
   con il pulsante di conferma inizialmente disabilitato.
  + Il Developer visualizza l'abilitazione del pulsante di conferma non appena almeno una tipologia viene selezionata.

- *Postcondizioni:* Le opzioni di configurazione sono impostate e il comando di avvio è accessibile.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC4.1.1:Selezione Analisi Manuale <UC4.1.1>
- *Attore principale:* Developer.
  
- *Descrizione:* Il Developer sceglie di avviare un'Analisi Manuale.
  
- *Precondizioni:* Il pannello di configurazione dell'analisi è attivo. 
  
- *Trigger:* Il developer preme il pulsante "Analisi Manuale".
  
- *Scenario principale:*
  + Il Developer seleziona una o più tipologie di analisi tra Sicurezza, Test e Documentazione.
  + Il sistema evidenzia graficamente le selezioni effettuate.
  + Il Developer visualizza l'abilitazione del pulsante di conferma non appena almeno una tipologia viene selezionata.
  
- *Postcondizioni:* Le opzioni di configurazione sono impostate e il comando di avvio è accessibile.
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC4.2: Conflitto Tipologia Analisi <UC4.2>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer prende atto dell'impossibilità di avviare l'analisi per una o più tipologie selezionate, in quanto risulta già attivo un processo pendente per il medesimo ambito.

- *Precondizioni:* Il Developer ha richiesto l'avvio per una tipologia che è attualmente in fase di esecuzione.

- *Trigger:* Condizione di estensione del caso d'uso #link(<UC4>)[[UC4]].

- *Scenario principale:*
  + Il Developer visualizza un messaggio di errore specifico (es. "Analisi Sicurezza già in corso").
  + Il Developer nota che il sistema impedisce l'invio della nuova richiesta.
  + Il Developer può deselezionare la tipologia in conflitto o attendere il termine del processo attivo.

- *Postcondizioni:* Nessuna nuova analisi viene avviata per le tipologie in conflitto.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC6: Gestione Proposta di Remediation <UC6>
#figure(image("../../asset/UC/UC6.png"), caption: [Diagramma del caso d'uso UC6])
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole analizzare la soluzione di remediation proposta dall'IA.

- *Precondizioni:* L'utente ha selezionato il comando "Risolvi" da uno dei dettagli di analisi.

- *Trigger:* Condizione di estensione dai casi d'uso di dettaglio (#link(<UC3.1>)[[UC3.1]], #link(<UC3.2>)[[UC3.2]], #link(<UC3.3>)[[UC3.3]]).

- *Scenario principale:*
  + Il Developer visualizza l'elenco dei file coinvolti nella soluzione proposta, ciascuno affiancato da una checkbox di selezione.
  + Il Developer può espandere i singoli file per visualizzare il confronto delle modifiche (*<\<extend>>* #link(<UC6.1>)[[UC6.1]]) o le anteprime dei nuovi file creati (*<\<extend>>* #link(<UC6.2>)[[UC6.2]]).
  + Il Developer seleziona tramite checkbox uno o più file da includere nel fix.
  + Il Developer può approvare la selezione cliccando su "Applica Fix", avviando la procedura di creazione della _Pull Request_ per tutte le modifiche selezionate (*<\<extend>>* #link(<UC6.3>)[[UC6.3]]).

- *Scenari alternativi:* 
  + Il Developer ritiene la soluzione interamente non valida e decide di scartare la segnalazione (*<\<extend>>* #link(<UC6.4>)[[UC6.4]]).
  + Il Developer annulla l'operazione e torna alla schermata precedente premendo sul pulsante "Annulla".

- *Postcondizioni:* Le soluzioni proposte vengono accettate (Pull Request creata) o ignorate.

- *Estensioni:* #link(<UC6.1>)[[UC6.1]], #link(<UC6.2>)[[UC6.2]], #link(<UC6.3>)[[UC6.3]], #link(<UC6.4>)[[UC6.4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC6.1: Visualizzazione modifiche (Diff) <UC6.1>

- *Attore principale:* Developer.

- *Descrizione:* L'utente vuole visualizzare le modifiche suggerite dall'IA su un documento o file di codice già esistente nel repository al momento dell'analisi.

- *Precondizioni:* Il Developer sta analizzando la soluzione di remediation proposta dall'IA e vuole consultare le modifiche proposte per un file già esistente nel repository quando l'analisi è stata avviata.

- *Trigger:* Il Developer clicca sull'artefatto che vuole approfondire.

- *Scenario principale:*
  + Il Developer visualizza un'interfaccia di confronto che presenta in rosso le righe rimosse e in verde le righe aggiunte o modificate.
  + Il Developer analizza le differenze per validare la correttezza della logica della modifica.
  + Dopo aver consultato le modifiche proposte per lo specifico documento, il Developer preme il pulsante "X" per tornare alla schermata precedente.

- *Postcondizioni:* Il Developer ha consultato le modifiche proposte al file esistente.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC6.2: Visualizzazione Nuovo Documento <UC6.2>
#figure(image("../../asset/UC/UC6.2.png", width: 80%), caption: [Diagramma del caso d'uso UC6.2])
- *Attore principale:* Developer.

- *Descrizione:* L'utente vuole visualizzare l'anteprima completa di un nuovo file generato dall'IA.

- *Precondizioni:* Il Developer sta analizzando la soluzione di remediation proposta dall'IA e vuole consultare un artefatto proposto e generato dall'IA.

- *Trigger:* Il Developer clicca sull'artefatto che vuole approfondire.

- *Scenario principale:*
  + Il Developer visualizza l'anteprima del contenuto del file generato.
  + Il Developer visualizza la proposta di percorso di destinazione (path) per il contenuto generato.
  + Il Developer può modificare la proposta di percorso di destinazione cliccando sul tasto "Modifica Percorso" (*<\<extend>>* #link(<UC6.2.1>)[[UC6.2.1]]).
  + Il Developer legge il contenuto per verificarne la completezza e la correttezza.

- *Postcondizioni:* Il Developer ha consultato il contenuto del nuovo file proposto.

- *Estensioni:* #link(<UC6.2.1>)[[UC6.2.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC6.2.1: Selezione Percorso di Destinazione <UC6.2.1>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole modificare la cartella in cui verrà salvato il nuovo file.

- *Precondizioni:* Il Developer sta visualizzando l'anteprima di un nuovo file.

- *Trigger:* L'utente seleziona "Modifica Percorso".

- *Scenario principale:*
  + Il Developer visualizza una finestra contenente l'albero delle directory del repository corrente.
  + Il Developer naviga tra le cartelle esistenti.
  + Il Developer seleziona la cartella di destinazione desiderata.
  + Il Developer conferma la selezione cliccando sul tasto "Conferma".
  + Il Developer visualizza nuovamente la schermata di anteprima del nuovo documento con il percorso di destinazione del nuovo file aggiornato.

- *Scenari alternativi:* Il Developer annulla la modifica premendo sul tasto "Annulla", mantenendo il percorso originale suggerito.

- *Postcondizioni:* L'utente viene riportato all'interfaccia di visualizzazione del nuovo file, a cui è stato associato il percorso di destinazione desiderato.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC6.3: Creazione _Pull Request_ di Fix <UC6.3>

- *Attore principale:* Developer.
- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer vuole finalizzare la procedura di correzione.

- *Precondizioni:* Il Developer ha selezionato mediante checkbox le proposte di remediation che vuole accettare in #link(<UC6>)[[UC6]].

- *Trigger:* L'utente clicca su "Applica Fix".

- *Scenario principale:*
  + Il Developer visualizza un indicatore di elaborazione in corso (es. "Creazione PR in corso...").
  + Il Developer visualizza una notifica di successo che conferma la creazione della Pull Request.
  + Il Developer visualizza il link diretto per accedere alla _Pull Request_ sulla piattaforma _GitHub_.

- *Scenari alternativi:* Il Developer visualizza un messaggio di errore se la comunicazione con _GitHub_ fallisce (es. conflitto di merge o errore di rete) e si trova nuovamente nella schermata di visualizzazione della proposta di remediation #link(<UC6>)[[UC6]], in condizione di tentare nuovamente l'accettazione delle modifiche o annullare l'operazione.

- *Postcondizioni:* La _Pull Request_ è creata su GitHub e l'analisi di partenza viene etichettata come "Processata", inibendo la possibilità di generare ulteriori fix dalla stessa analisi.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC6.4: Ignora Remediation <UC6.4>

- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole interamente classificare una segnalazione come non pertinente, scartandone tutte le proposte.

- *Precondizioni:* Il Developer sta analizzando la proposta di remediation in #link(<UC6>)[[UC6]].

- *Trigger:* L'utente seleziona il pulsante "Ignora".

- *Scenario principale:*
  + Il Developer visualizza una finestra di dialogo che chiede la conferma dell'operazione.
  + Il Developer conferma l'operazione.
  + Il Developer visualizza un messaggio di conferma dell'avvenuta archiviazione.
  + Il Developer viene riportato alla schermata di dettaglio dell'analisi da cui era partito.

- *Scenari alternativi:* Al passo 2 il Developer annulla l'operazione e ritorna nella schermata di visualizzazione della proposta di remediation #link(<UC6>)[[UC6]].

- *Postcondizioni:* Il Developer visualizza nuovamente il dettaglio dell'analisi (#link(<UC3.1>)[[UC3.1]], #link(<UC3.2>)[[UC3.2]] o #link(<UC3.3>)[[UC3.3]]) e la segnalazione corrente viene marcata "Scartata".
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

== Specifica dei casi d'uso - Project Manager

=== UC8: Accesso alla Dashboard Portfolio <UC8>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla propria dashboard principale.

- *Precondizioni:* L'utente si è autenticato e assume il ruolo di Project Manager.

- *Trigger:* L'Utente seleziona il ruolo Project Manager o clicca sulla voce "Dashboard" nel menu di navigazione.

- *Scenario principale:*
  + Il Project Manager visualizza la barra degli strumenti contenente:
    - Il selettore di vista (Progetti / Repository).
    - Il pulsante globale "Aggiungi Repository" (*<\<extend>>* #link(<UC2>)[[UC2]]). 
    - Il pulsante "Nuovo Progetto" (*<\<extend>>* #link(<UC7>)[[UC7]]).
  + Il Project Manager visualizza di default la *Vista Progetti* (*<\<include>>* #link(<UC8.1>)[[UC8.1]]).

- *Scenari alternativi:* 
+ Il Project Manager interagisce con il selettore per cambiare vista selezionando la *Vista Repository* (*<\<extend>>* #link(<UC8.2>)[[UC8.2]]).

- *Postcondizioni:* Il Project Manager visualizza la lista Progetti.

- *Inclusioni:* #link(<UC8.1>)[[UC8.1]].
- *Estensioni:* #link(<UC2>)[[UC2]], #link(<UC7>)[[UC7]], #link(<UC8.2>)[[UC8.2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.1: Visualizzazione Lista Progetti <UC8.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco dei Progetti attivi e i relativi indicatori di sintesi.

- *Precondizioni:* Il selettore di vista in #link(<UC8>)[[UC8]] è impostato su "Progetti".

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC8>)[[UC8]].

- *Scenario principale:*
  + Il Project Manager visualizza la lista delle card di Progetto, contenenti:
    - Nome del Progetto.
    - Numero di repository associate.
    - Indicatori sintetici di salute (es. media qualità).
  + Il Project Manager può selezionare una card specifica per accedere al dettaglio del Progetto (*<\<extend>>* #link(<UC9>)[[UC9]]).

- *Scenari alternativi:* Il sistema non rileva progetti: mostra uno stato vuoto e invita a creare il primo progetto tramite il pulsante "Nuovo Progetto" (*<\<extend>>* #link(<UC7>)[[UC7]]).

- *Postcondizioni:* Il Project Manager naviga verso il dettaglio di un progetto o ne crea uno nuovo.

- *Estensioni:* #link(<UC7>)[[UC7]], #link(<UC9>)[[UC9]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.2: Visualizzazione Lista Repository <UC8.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco completo di tutte le repository precedentemente collegate all'account.

- *Precondizioni:* l'utente è autenticato nel ruolo di Project Manager e visualizza la dashboard.

- *Trigger:* L'utente seleziona la voce "Repository" dal selettore di vista.

- *Scenario principale:*
  + Il Project Manager visualizza la tabella riepilogativa di tutte le repository importate.
  + Per ogni repository, il sistema mostra colonne informative sintetiche (nome repository, progetto di appartenenza se assegnato e data ultimo aggiornamento).

- *Scenari alternativi:* Il Project Manager non ha aggiunto nessuna repository, visualizza un messaggio informativo che lo invita ad importarne uno tramite il pulsante "Aggiungi Repository" (*<\<extend>>* #link(<UC2>)[[UC2]]).

- *Postcondizioni:* Il Project Manager ha visionato le repository collegate all'account.

- *Estensioni:* #link(<UC2>)[[UC2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC9: Accesso alla Dashboard di Dettaglio Progetto <UC9>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla vista aggregata di uno specifico progetto per analizzarne i KPI complessivi.

- *Precondizioni:* Esiste almeno un progetto creato.

- *Trigger:* Il Project Manager clicca su una card di Progetto in #link(<UC8.1>)[[UC8.1]].

- *Scenario principale:*
  + Il Project Manager visualizza l'intestazione del progetto.
  + Il Project Manager visualizza i widget aggregati (Sicurezza, copertura Test, adeguatezza Documentazione, Avanzamento ecc...).
  + Il Project Manager visualizza il pulsante "Team & Competenze", su cui può premere per approfondire le competenze del team (*<\<extend>>* #link(<UC9.1>)[[UC9.1]]).
  + Il Project Manager visualizza il pulsante "Stack Tecnologico", su cui può premere per analizzare le tecnologie utilizzate nel progetto e ricevere suggerimenti (*<\<extend>>* #link(<UC9.2>)[[UC9.2]]).
  + Il Project Manager visualizza l'elenco dei Repository che compongono il progetto con i relativi indicatori di stato.
 + Il Project Manager clicca "Indietro" per tornare alla lista progetti.

- *Postcondizioni:* Il Project Manager visualizza i dati aggregati del progetto.

- *Estensioni:* #link(<UC9.1>)[[UC9.1]], #link(<UC9.2>)[[UC9.2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC9.1: Visualizzazione Mappatura Competenze <UC9.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager consulta la distribuzione delle tecnologie utilizzate dal team.

- *Precondizioni:* Il Project Manager si trova nella dashboard di dettaglio di un progetto (#link(<UC9>)[[UC9]]).

- *Trigger:* Il Project Manager seleziona il pulsante "Team & Competenze".

- *Scenario principale:*
  + Il sistema visualizza una lista dei membri del team a cui viene associata un'icona delle tecnologie di loro competenza.
  + Il Project Manager può selezionare un membro specifico per approfondirne il profilo (*<\<extend>>* #link(<UC9.1.1>)[[UC9.1.1]]).

- *Postcondizioni:* Il Project Manager ha analizzato la mappatura delle competenze all'interno del team del progetto.

- *Estensioni:* #link(<UC9.1.1>)[[UC9.1.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC9.1.1: Dettaglio Membro del Team <UC9.1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Visualizzazione delle metriche specifiche di uno sviluppatore nel contesto del progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di mappatura competenze #link(<UC9.1>)[[UC9.1]].

- *Trigger:* Il Project Manager ha selezionato uno specifico membro del team.

- *Scenario principale:*
  + Il Project Manager visualizza il profilo dell'utente e le statistiche di contribuzione (commit, PR).
  + Il Project Manager visualizza i linguaggi maggiormente utilizzati dall'utente.

- *Postcondizioni:* Il Project Manager ha consultato i dettagli di uno specifico membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC9.2: Stack Tecnologico e Suggerimenti <UC9.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager analizza lo stack tecnologico per identificare librerie obsolete e ricevere suggerimenti.

- *Precondizioni:* Il Project Manager si trova nella Dashboard di Dettaglio Progetto (#link(<UC9>)[[UC9]]).

- *Trigger:* Il Project Manager seleziona la voce "Stack Tecnologico".

- *Scenario principale:*
  + Il Project Manager visualizza l'elenco consolidato di framework e librerie usate.
  + Il sistema segnala le dipendenze deprecate o a rischio sicurezza.
  + Il Project Manager visualizza i suggerimenti strategici generati dall'IA.

- *Postcondizioni:* Il Project Manager ha preso visione dello stato tecnologico del progetto analizzato.

#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

== Specifica dei casi d'uso - Business Owner

#pagebreak()

