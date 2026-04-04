#import "../templates/template-documenti.typ": template_documenti, tabella-viola

#let storia_modifiche = (
  "3.0.0",
  "2026/04/03",
  "Angela Favaro",
  "Angela Canazza",
  "Approvazione finale, rilascio ufficiale v3.0.0 ",

  "2.6.0",
  "2026/04/03",
  "Angela Favaro",
  "Angela Canazza",
  "Aggiunta terminologie per Specifica Tecnica",

  "2.5.0",
  "2026/03/29",
  "Angela Favaro",
  "Laura Venturini",
  "Aggiunta terminologie per Specifica Tecnica",

  "2.4.0",
  "2026/03/28",
  "Angela Favaro",
  "Laura Venturini",
  "Aggiunta terminologie per Piano di Progetto",

  "2.3.0",
  "2026/03/12",
  "Angela Favaro",
  "Laura Venturini",
  "Aggiunta terminologie per Piano di Progetto",

  "2.2.0",
  "2026/03/12",
  "Angela Favaro",
  "Laura Venturini",
  "Aggiunta terminologie per Specifica Tecnica",

  "2.1.0",
  "2026/03/07",
  "Angela Favaro",
  "Riccardo Baldin",
  "Aggiunta terminologie per Specifica Tecnica",

  "2.0.0",
  "2026/02/16",
  "Angela Canazza",
  "Angela Favaro",
  "Rilascio versione 2.0.0 per RTB",

  "1.2.0",
  "2025/12/21",
  "Alberto Reginato",
  "Angela Canazza",
  "Aggiunta terminologie per AdR",

  "1.1.0",
  "2025/12/20",
  "Angela Favaro",
  "Amerigo Vegliante",
  "Aggiunta terminologie per RTB",

  "1.0.0",
  "2025/10/30",
  "Angela Favaro",
  "Angela Canazza",
  "Revisione documento con nuove terminologie",
  "0.1.0",
  "2025/10/27",
  "Nicola Simionato",
  "Alberto Reginato",
  "Creazione documento e primi termini"
)

#show: doc => template_documenti(
  titolo: "Glossario",
  descrizione: "Termini ambigui e le loro definizioni",
  modifiche: storia_modifiche,
  lista_tabelle: false,
  lista_figure: false,
  doc
)


= Scopo del Documento
Il fine di questo documento è tenere traccia di tutti i termini, ambigui o meno, che possono apparire all'interno della documentazione o nei meeting e darne una definizione quanto più precisa, in modo che le risorse e i discorsi fatti possano essere compresi facilmente.

#pagebreak()

= A 

#heading(level: 2, outlined: false)[Agente]
Sistema software capace di percepire l'ambiente circostante, ragionare su ciò che accade e compiere azioni autonome per raggiungere obiettivi specifici, "agisce" per completare un compito.

#heading(level: 2, outlined: false)[Agile]
Approccio filosofico e culturale alla gestione dei progetti. Si basa sullo sviluppo iterativo, sulla consegna continua di valore e sulla capacità di rispondere rapidamente ai cambiamenti, invece di seguire un piano rigido e lineare.

#heading(level: 2, outlined: false)[AWS]
_Amazon Web Services_ \
Piattaforma di Cloud Computing più completa e utilizzata al mondo, offerta da Amazon. Invece di acquistare, possedere e gestire server fisici e centri dati (Data Center) di proprietà, un'azienda può noleggiare potenza di calcolo, spazio di archiviazione, database e altre tecnologie direttamente dai server di Amazon, pagando solo per ciò che consuma.

#heading(level: 2, outlined: false)[Anthropic]
Nome di una delle più importanti aziende di ricerca e sicurezza nell'intelligenza artificiale (AI) al mondo.

#heading(level: 2, outlined: false)[API]
Application Programming Interface. \
Insieme di definizioni e protocolli che permette a due applicazioni software di comunicare tra loro. In pratica, l’API agisce come un "messaggero" che prende la tua richiesta, la porta al sistema che deve elaborarla e ti riporta la risposta.

#heading(level: 2, outlined: false)[AI]
_Artificial Intelligence_ \
Branca dell'informatica che si occupa di creare sistemi hardware e software capaci di simulare processi cognitivi umani. In termini semplici, è la capacità di una macchina di mostrare abilità umane come il ragionamento, l'apprendimento, la pianificazione e la creatività.

#heading(level: 2, outlined: false)[Asset Software]
Qualsiasi risorsa digitale che ha valore per l'organizzazione e il progetto. Include non solo il codice sorgente, ma anche la documentazione, i dati, le immagini, le licenze e i file di configurazione necessari al funzionamento del software.

#heading(level: 2, outlined: false)[Attore]
Ruolo svolto da un'entità esterna che interagisce con il sistema. Non è la persona fisica in sé, ma la funzione che essa ricopre mentre usa il software.

#heading(level: 2, outlined: false)[Audit]
Revisione sistematica e indipendente del codice, dei processi o della sicurezza del sistema. Serve a verificare la conformità a standard specifici, normative o best practice e a identificare eventuali vulnerabilità o inefficienze.

#pagebreak()

= B

#heading(level: 2, outlined: false)[Backend]
Tutto ciò che avviene "dietro le quinte" di un'applicazione. È la parte invisibile all'utente, ma è il vero "cervello" del software: gestisce la logica, il salvataggio dei dati, la sicurezza e la comunicazione con altri sistemi.

#heading(level: 2, outlined: false)[Best Practice]
Insieme di metodi, tecniche o procedure che si sono dimostrati, attraverso l'esperienza e la ricerca, più efficaci di altri per raggiungere un determinato risultato. Nello sviluppo software, indicano le convenzioni raccomandate per scrivere codice pulito e manutenibile.

#heading(level: 2, outlined: false)[Branch]
Si tratta di ambienti di sviluppo diversi gli uni dagli altri, tra i quali si può lavorare in modo parallelo e separando logicamente il lavoro.

#heading(level: 2, outlined: false)[Branching]
Creazione di una linea di sviluppo separata che "si dirama" dal percorso principale.

#heading(level: 2, outlined: false)[Browser]
Software applicativo progettato per consentire agli utenti di accedere, recuperare e visualizzare i contenuti presenti sul World Wide Web (Internet).

#heading(level: 2, outlined: false)[Bug]
Errore, difetto o  guasto nel codice di un software che causa un comportamento imprevisto, errato o indesiderato.

#heading(level: 2, outlined: false)[Bundler]
Strumento che analizza l'intera struttura dei file del tuo progetto e "impacchetta" centinaia di file separati in pochi file ottimizzati, pronti per essere eseguiti dal browser.

#heading(level: 2, outlined: false)[Business Owner]
Nel contesto aziendale e dello sviluppo prodotto (specialmente in ambiti Agile e Scrum), è una figura strategica che detiene la responsabilità ultima del valore di business generato da un progetto o da un prodotto.

#pagebreak()

= C

#heading(level: 2, outlined: false)[Caso d'uso] <CasoUso>
Descrizione di una sequenza di azioni che un sistema compie per fornire un risultato di valore a un determinato utente, chiamato Attore.

#heading(level: 2, outlined: false)[Chiavi API]
Codice univoco (spesso una stringa alfanumerica) utilizzato per identificare e autenticare un'applicazione o un utente che richiede l'accesso ad un'API. Funziona come una password per i programmi.

#heading(level: 2, outlined: false)[Cloud]
Modello di fornitura di servizi informatici (come server, archiviazione, database, rete, software) tramite Internet. Permette l'accesso on-demand alle risorse senza la necessità di gestire fisicamente l'infrastruttura.

#heading(level: 2, outlined: false)[Code Coverage]
Metrica utilizzata nei test del software che indica la percentuale di codice sorgente che viene eseguita (coperta) durante l'esecuzione dei test automatici. Una copertura alta riduce la probabilità di bug non rilevati.

#heading(level: 2, outlined: false)[Code Smell]
Caratteristica del codice sorgente che, pur non essendo tecnicamente un errore (il codice funziona), indica una debolezza nella progettazione o nello stile che potrebbe causare problemi futuri o difficoltà nella manutenzione.

#heading(level: 2, outlined: false)[Commit]
Operazione che registra in modo permanente le modifiche apportate a uno o più file all'interno di un VCS. Ogni commit, solitamente accompagnato da una descrizione, crea un nuovo punto nella cronologia del progetto, permettendo di ripristinare una versione precedente.

#heading(level: 2, outlined: false)[Componenti]
Unità modulari, autonome e sostituibili di un sistema, che incapsula un insieme di funzioni correlate.

#heading(level: 2, outlined: false)[CD]
_Continuous Delivery_ \
Pratica di sviluppo software in cui le modifiche al codice vengono preparate automaticamente per il rilascio in produzione. È l'estensione della Continuous Integration e garantisce che il software sia sempre in uno stato rilasciabile.

#heading(level: 2, outlined: false)[CI]
_Continuous Integration_ \
Pratica che consiste nell'unire frequentemente le copie di lavoro di tutti gli sviluppatori in una linea principale condivisa (mainline), diverse volte al giorno. Ogni integrazione è verificata da una build automatica e da test per rilevare errori il più rapidamente possibile.

#pagebreak()

= D

#heading(level: 2, outlined: false)[Dashboard]
Interfaccia grafica che fornisce una vista d'insieme dei dati e di altre metriche di sistema, permettendo un monitoraggio rapido e intuitivo.

#heading(level: 2, outlined: false)[Deployment] 
Processo attraverso cui un'applicazione software viene resa operativa e disponibile per l'utilizzo nel suo ambiente di destinazione — che sia un server, un cloud, un dispositivo mobile o un browser.
Tutto ciò che accade dal momento in cui il codice è pronto a quando l'utente può effettivamente usarlo.

#heading(level: 2, outlined: false)[Design Pattern] 
Soluzione generale, riutilizzabile e collaudata a un problema ricorrente che si incontra nella progettazione del software.
Non è codice pronto all'uso, ma un modello concettuale — una descrizione di come strutturare classi, oggetti e le loro interazioni per risolvere un determinato tipo di problema in un determinato contesto.

#heading(level: 2, outlined: false)[Design Thinking] Metodologia orientata alla risoluzione di problemi complessi, che parte dalla raccolta di idee generali e continua con l'affinamento delle stesse in un progetto più strutturato.

#heading(level: 2, outlined: false)[Developer] <Developer>
Professionista che progetta, scrive, testa e mantiene il codice sorgente di programmi informatici e applicazioni. È la figura che traduce i requisiti logici (il "cosa" deve fare il programma) in linguaggio macchina (il "come" farlo tecnicamente).

#heading(level: 2, outlined: false)[Diagrammi di PERTT]
Strumento di project management utilizzato per pianificare, organizzare e coordinare i compiti all'interno di un progetto. Rappresentazione grafica reticolare che si concentra sulle relazioni di precedenza tra le attività.

#heading(level: 2, outlined: false)[Disco Rigido]
Dispositivo di archiviazione principale di un computer, utilizzato per conservare i dati in modo permanente.

#heading(level: 2, outlined: false)[Discord]
Applicazione di messaggistica istantanea, VoIP e di distribuzione digitale. Gli utenti possono interagire privatamente o in comunità che possono contenere canali sia testuali che vocali.

#heading(level: 2, outlined: false)[Docs]
Abbreviazione per "documentazione". Indica l'insieme dei documenti relativi al progetto, solitamente raccolti e gestiti in una cartella denominata "docs" all'interno della repository.

#heading(level: 2, outlined: false)[DOM]
Document Object Model. \
Interfaccia di programmazione (API) che rappresenta un documento HTML o XML come una struttura ad albero. Grazie al DOM, i linguaggi di programmazione possono accedere, modificare, aggiungere o eliminare il contenuto, la struttura e lo stile di una pagina web in modo dinamico.

#heading(level: 2, outlined: false)[Driver]
Componente software specifico che permette al sistema operativo di comunicare con un hardware o con una periferica.

#heading(level: 2, outlined: false)[DTO]
Data Transfer Object. \
Pattern architetturale utilizzato per raggruppare e trasportare dati tra i vari sottosistemi di un'applicazione (ad esempio, tra un database e un'interfaccia utente) in modo efficiente.

#pagebreak()

= F
#heading(level: 2, outlined: false)[Fail Fast]
Metodologia che mira ad identificare rapidamente un malfunzionamento all'interno di un progetto, in modo da poterlo correggere prima che questo porti a un accumulo di problemi di difficile gestione.

#heading(level: 2, outlined: false)[Framework]
Struttura software preconfezionata che fornisce un'architettura di base, un insieme di strumenti e convenzioni su cui costruire un'applicazione, definendo lo scheletro entro cui lo sviluppatore inserisce il proprio codice.
Ambiente strutturato che impone un modo preciso di organizzare e sviluppare il software

#heading(level: 2, outlined: false)[Frontend]
Tutto ciò che un utente vede e con cui interagisce direttamente quando utilizza un sito web o un'applicazione. È la parte "visibile" del software, quella che trasforma il codice in una UI comprensibile.

#pagebreak()
= G

#heading(level: 2, outlined: false)[Git]
Software di versionamento distribuito dei file di una cartella, utilizzabile da linea di comando.

#heading(level: 2, outlined: false)[GitHub]
Servizio web basato su git. Permette il versionamento dei file di un progetto online, aprendo quindi la collaborazione di più persone sui file. Offre inoltre diversi altri servizi come l'Issue Tracking System, la possibilità di gestire organizzazioni oppure hostare siti web.

#heading(level: 2, outlined: false)[GitHub Action]
Sistema di automazione offerto da GitHub e personalizzabile. Permette, al trigger di determinati eventi, di eseguire script ad esempio per la compilazione di file sorgenti oppure testare il software.

#heading(level: 2, outlined: false)[Google Meet]
Servizio di videoconferenze che permette di organizzare e partecipare a riunioni online tramite video e audio in tempo reale.

#pagebreak()

= H 

#heading(level: 2, outlined: false)[Hardware]
Parte fisica, tangibile e "pesante" di un sistema informatico. È l'insieme di tutti i componenti meccanici, elettronici, elettrici e magnetici che puoi toccare con mano.

#heading(level: 2, outlined: false)[Hashing]
Processo di trasformazione di un insieme di dati di qualsiasi dimensione (un testo, un file, una password) in una stringa di caratteri di lunghezza fissa, che funge da "impronta digitale" di quei dati. \
Questa stringa risultante è chiamata _hash_. L'algoritmo che compie questa trasformazione è detto _funzione di hash_.

#heading(level: 2, outlined: false)[Hook]
Meccanismo che permette a un programmatore di "agganciarsi" a un evento, a un processo o a un comportamento esistente per modificarlo o estenderlo, senza dover alterare il codice sorgente originale di quel sistema.

#pagebreak()

= I
#heading(level: 2, outlined: false)[Interfacce]
Contratti (o un protocolli) che definiscono cosa un oggetto o un componente può fare, senza specificare come lo faccia. \
In termini semplici, l'_interfaccia_ (singolare) elenca una serie di metodi (funzioni) che una classe deve obbligatoriamente implementare, ma lascia il corpo di quelle funzioni vuoto.

#heading(level: 2, outlined: false)[Issue]
Elemento atto a: pianificare, discutere e tracciare lavoro, bug, idee o nuove funzionalità all'interno di un repository di codice nella piattaforma di Github. Ad essa è possibile assegnare: un progetto, una Milestone, dei responsabili e delle etichette per rappresentarla all'interno di determinate categorie e facilitarne l'utilizzo e la ricerca.

#pagebreak()

= L
#heading(level: 2, outlined: false)[IDE]
_Integrated Development Environment o Ambiente di Sviluppo Integrato_ \
Software che fornisce ai programmatori tutti gli strumenti necessari per scrivere, testare e sottoporre a debug il codice in un'unica interfaccia.

#heading(level: 2, outlined: false)[Lambda Function]
- In ambito infrastrutturale (AWS Lambda): una Lambda function è un'unità di calcolo Serverless.
  Definizione: È un frammento di codice che viene eseguito in risposta a un evento (come il caricamento di un file, una richiesta HTTP o una modifica nel database). \
- In Programmazione (Funzioni Anonime): in informatica, una Lambda function è una funzione anonima, ovvero una funzione che non è associata a un identificativo (un nome). Viene definita "al volo" direttamente dove serve.

#heading(level: 2, outlined: false)[LLM]
_Large Language Model_ \
Tipo di AI addestrato su enormi quantità di dati testuali per comprendere, generare e elaborare il linguaggio umano in modo simile a un essere umano, Esso è capace di compiti come la scrittura, la traduzione, il riassunto di testi e la conversazione, basandosi su architetture di deep learning, i quali gli permettono di cogliere contesti complessi. 

#heading(level: 2, outlined: false)[Libreria]
Raccolta di codice precompilato e riutilizzabile — funzioni, classi, costanti, routine — che un programma può importare e invocare per svolgere compiti comuni senza doverli implementare da zero.
- Non detta la struttura del programma. Il codice della libreria viene invocato dallo sviluppatore.
- È riutilizzabile, per essere condivisa tra progetti diversi.
- Può essere statica (incorporata direttamente nell'eseguibile a compile-time) o dinamica (caricata a runtime e può essere condivisa tra più programmi).

#pagebreak()

= M

#heading(level: 2, outlined: false)[Machine Learning]
Sottoinsieme dell'Intelligenza Artificiale che si concentra sulla creazione di sistemi che apprendono o migliorano le proprie performance in base ai dati che utilizzano, senza essere stati esplicitamente programmati per ogni singola regola.

#heading(level: 2, outlined: false)[Mail]
Messaggio digitale che viene inviato e ricevuto tramite internet. Strumento di comunicazione scritto che permette di scambiare informazioni rapidamente tra persone o gruppi.

#heading(level: 2, outlined: false)[Matcher]
Componente o una funzione il cui scopo è verificare se un determinato input (un dato, una stringa, un oggetto) corrisponde a un insieme di criteri o a uno schema prestabilito.

#heading(level: 2, outlined: false)[Middleware]
Componente software che agisce come intermediario tra diversi sistemi o applicazioni, facilitando la comunicazione e lo scambio di dati tra di essi.

#heading(level: 2, outlined: false)[Milestone]
Punto di controllo significativo che segna il completamento di una fase importante o il raggiungimento di un obiettivo chiave all'interno di un progetto. Rappresenta un traguardo raggiunto.

#heading(level: 2, outlined: false)[MVP]
_Minimum Viable Product_ \ Versione del prodotto software che possiede appena le caratteristiche sufficienti per essere pubblicato e testato da utenti reali, con il minimo sforzo di sviluppo possibile.

#heading(level: 2, outlined: false)[Mock]
Letteralmente "simulacro" o "imitazione"; è un oggetto simulato che riproduce il comportamento di un componente reale in un ambiente controllato, tipicamente durante i test unitari (unit testing).

#heading(level: 2, outlined: false)[Mockup]
Rappresentazione statica e ad alta fedeltà dell'interfaccia di un'applicazione o sito web. Mostra come apparirà visivamente il prodotto finale — colori, typography, layout, icone, spaziature — ma senza funzionalità interattive.

#heading(level: 2, outlined: false)[MongoDB]
Sistema di gestione di basi dati, basato su un modello a documenti, anziché sulle classiche tabelle a righe e colonne. È progettato per essere estremamente flessibile, scalabile e capace di gestire grandi quantità di dati non strutturati (come post sui social, cataloghi prodotti complessi o dati provenienti da sensori).

#pagebreak()

= N

#heading(level: 2, outlined: false)[NestJS]
Framework open source per la creazione di applicazioni server-side (backend) efficienti, affidabili e scalabili, basate su Node.js.
È scritto interamente in TypeScript e combina elementi di programmazione orientata agli oggetti (OOP), programmazione funzionale (FP) e programmazione reattiva funzionale (FRP).

#heading(level: 2, outlined: false)[Node.js]
Ambiente di runtime JavaScript open-source e multipiattaforma che permette di eseguire codice JavaScript al di fuori di un browser web, tipicamente utilizzato per lo sviluppo lato server (Backend).

#heading(level: 2, outlined: false)[Normativa ISO]
Standard tecnico volontario internazionale sviluppato dall'International Organization for Standardization (ISO) per definire requisiti, linee guida o specifiche che assicurano qualità, sicurezza, efficienza e interoperabilità di prodotti, processi e servizi, creando un linguaggio e un framework comuni riconosciuti a livello globale, che le organizzazioni possono adottare e certificare.

#pagebreak()

= O
#heading(level: 2, outlined: false)[ODM]
Object Document Mapper. \ Pattern architetturale e tecnica di programmazione che permette di convertire dati tra sistemi incompatibili: nello specifico, tra gli oggetti di un linguaggio di programmazione orientato agli oggetti e i documenti memorizzati in un database NoSQL. 

#heading(level: 2, outlined: false)[OWASP]
_Open Worldwide Application Security Project_ \ Una fondazione no-profit e una comunità globale aperta che si dedica a migliorare la sicurezza delle applicazioni software rendendo disponibili gratuitamente strumenti, documentazione e best practice per sviluppatori e organizzazioni, al fine di educare e guidare nella creazione di software più sicuri. 

#pagebreak()
= P

#heading(level: 2, outlined: false)[Personas]
Rappresentazioni fittizie ma realistiche dei gruppi di utenti target, basate su dati e ricerche. Aiutano il team di sviluppo a comprendere i bisogni, le esperienze, i comportamenti e gli obiettivi degli utenti reali per cui stanno progettando il prodotto.

#heading(level: 2, outlined: false)[Plugin]
In ambito software. Componente software ausiliario che si "aggancia" a un'applicazione principale per estenderne le funzionalità o aggiungerne di nuove, senza dover modificare il codice sorgente del programma originale. L'applicazione principale (chiamata host) fornisce un'interfaccia standard (spesso chiamata API o hooks) alla quale il plugin si connette, proprio come una spina si inserisce in una presa elettrica.

#heading(level: 2, outlined: false)[Polishing]
Fase finale del ciclo di sviluppo in cui ci si concentra sul perfezionamento dei dettagli, sul miglioramento dell'esperienza utente e sull'eliminazione di piccole imperfezioni che non sono necessariamente "bug critici", ma che rendono il prodotto meno professionale.

#heading(level: 2, outlined: false)[Product Baseline]
Anche chiamata *PB*. \
Milestone che richiede la consegna del prodotto e l'accettazione da parte dei professori per essere superata.

#heading(level: 2, outlined: false)[PAB]
_Progettazione & Analisi Baseline _  \
Milestone interna al gruppo che richiede la conclusione dell'attività di Analisi e di Progettazione per essere completata.

#heading(level: 2, outlined: false)[Project Board]
Strumento di visualizzazione dei compiti (task o issue) che permette di monitorare lo stato di avanzamento di un progetto in tempo reale.

#heading(level: 2, outlined: false)[Piano di Contingenza]
Insieme di procedure da attivare dopo che un rischio si è effettivamente verificato e si è trasformato in un problema reale.

#heading(level: 2, outlined: false)[Piano di Mitigazione]
Insieme di azioni strategiche e operative pianificate in anticipo per ridurre la probabilità che un rischio si verifichi o per limitare l'impatto negativo qualora l'evento dovesse accadere.

#heading(level: 2, outlined: false)[Product Backlog]
Lista ordinata e dinamica di tutto ciò che potrebbe essere necessario per migliorare il prodotto. È l'unica fonte di requisiti per ogni modifica da apportare al software nel framework Scrum. Evolve man mano che il prodotto e l'ambiente in cui viene utilizzato cambiano.

#heading(level: 2, outlined: false)[Project Manager]
Figura professionale responsabile della pianificazione, dell'esecuzione e della chiusura di un progetto. Il suo obiettivo principale è garantire che il lavoro venga completato entro i tempi, i costi e i requisiti di qualità stabiliti (il cosiddetto "triangolo dei vincoli").

#heading(level: 2, outlined: false)[Provider]
Indica un'entità o un fornitore che eroga un servizio (es. AWS per l'infrastruttura Cloud).

#heading(level: 2, outlined: false)[Pull]
Comando di Git usato per scaricare la versione più recente di un file o di un progetto dall'ambiente condiviso con il resto dei collaboratori.

#heading(level: 2, outlined: false)[Pull Request]
Meccanismo utilizzato nei tool di versionamento per notificare ai membri del team che una funzionalità o una modifica è stata completata su un branch secondario e si richiede la revisione del codice prima di unirla al ramo principale.

#heading(level: 2, outlined: false)[Push]
Comando di Git usato per inviare i commit locali ad un repository remoto, condividendo così le proprie modifiche con il resto del team.

#heading(level: 2, outlined: false)[Python]
Linguaggio di programmazione ad alto livello, interpretato e versatile. È ampiamente utilizzato nel campo dell'Intelligenza Artificiale, del Machine Learning e dell'analisi dati grazie alla sua sintassi semplice ed alle svariate librerie disponibili.

#pagebreak()
= Q
#heading(level: 2, outlined: false)[Query]
Istruzione o richiesta formale inviata a un database o a un sistema informativo per estrarre, manipolare o gestire dati.

#pagebreak()

= R

#heading(level: 2, outlined: false)[React.js]
Libreria JavaScript open-source utilizzata per creare interfacce utente (UI). Permette di creare componenti riutilizzabili che gestiscono il proprio stato.

#heading(level: 2, outlined: false)[Remediation]
Processo di correzione delle vulnerabilità, dei difetti o delle non conformità identificate durante un Audit o un test di sicurezza atto a ripristinare la sicurezza e l'integrità del sistema.

#heading(level: 2, outlined: false)[Refactoring]
Processo di miglioramento della struttura interna del codice senza alterare il comportamento esterno, al fine di rendere il codice più manutenibile, leggibile e performante.

#heading(level: 2, outlined: false)[Repo]
Abbreviazione di "#link(<Repo>)[Repository]". 

#heading(level: 2, outlined: false)[Repository] <Repo>
Ambiente digitale dove vengono salvati tutti i file riguardanti i progetti. Può esisterne più di una in base alla suddivisione degli argomenti per cui vengono create.

#heading(level: 2, outlined: false)[Responsabile]
Figura professionale incaricata di guidare un team tecnico nella realizzazione di un prodotto informatico, assicurando che vengano rispettati gli obiettivi di business, i tempi di consegna e i parametri di qualità.

#heading(level: 2, outlined: false)[Rischio]
Evento o una condizione incerta che, se si verifica, ha un effetto (positivo o negativo) sugli obiettivi del progetto, come i tempi, i costi, l'ambito o la qualità.

#heading(level: 2, outlined: false)[RTB]
_Requirements & Technology Baseline_ \
Milestone che fissa i requisiti da soddisfare, in accordo con il proponente; nel documento Analisi dei Requisiti motiva le tecnologie, i framework, le librerie adottate, e ne
dimostra adeguatezza e interoperabilità. Tramite Proof of Concept (demo eseguibile) rappresentativa delle richieste del capitolato. Il PoC viene posto in repo accessibile a committente e proponente.

#heading(level: 2, outlined: false)[Routing]
Processo di determinazione del percorso che un pacchetto di dati deve seguire per raggiungere la sua destinazione in una rete.

#pagebreak()
= S

#heading(level: 2, outlined: false)[Schema-less]
Caratteristica di alcuni database NoSQL (come MongoDB) che non richiedono una struttura rigida e predefinita dei dati (schema) prima dell'inserimento. Ciò permette una maggiore flessibilità nel memorizzare dati eterogenei.

#heading(level: 2, outlined: false)[Scrum]
Framework Agile più utilizzato al mondo per la gestione dello sviluppo di prodotti complessi, in particolare nel software. Non è una metodologia rigida, ma una struttura leggera che aiuta i team a generare valore attraverso soluzioni adattive a problemi complessi.

#heading(level: 2, outlined: false)[Secret Scanning]
Processo automatizzato che analizza il codice sorgente, i log e altri file alla ricerca di credenziali esposte accidentalmente, come password, chiavi API o token privati, per prevenire accessi non autorizzati.

#heading(level: 2, outlined: false)[Server]
Computer o un software che fornisce dati, servizi o risorse ad altri computer, chiamati client, attraverso una rete (locale o internet).

#heading(level: 2, outlined: false)[Single Page Application]
Applicazione web o sito che interagisce con l'utente riscrivendo dinamicamente la pagina corrente con nuovi dati dal server, anziché caricare intere nuove pagine. Questo rende l'esperienza utente più fluida e simile a un'applicazione desktop.

#heading(level: 2, outlined: false)[Slack]
Piattaforma di comunicazione asincrona collaborativa basata sulla messaggistica istantanea, progettata specificamente per i team di lavoro e le aziende.

#heading(level: 2, outlined: false)[SonarQube]
Piattaforma open source (con versioni commerciali) dedicata all'ispezione continua del codice sorgente. Un "revisore automatico" che scansiona il software per individuare bug, vulnerabilità di sicurezza e problemi di manutenibilità.


#heading(level: 2, outlined: false)[Specifica Tecnica]
Documento formale che descrive in modo preciso e dettagliato come un sistema software deve essere progettato e realizzato per soddisfare i requisiti stabiliti.
Ponte tra la fase di analisi e la fase di sviluppo, fornendo a tutto il team tecnico una riferimento univoco e condiviso.

#heading(level: 2, outlined: false)[Sprint]
Intervallo di tempo predefinito e limitato (solitamente tra 1 e 4 settimane) durante il quale un team di lavoro deve completare una quantità specifica di lavoro.

#heading(level: 2, outlined: false)[Sprint Backlog]
Insieme degli elementi del Product Backlog selezionati per lo Sprint corrente, con l'aggiunta di un piano dettagliato per consegnare l'incremento di prodotto e realizzare lo Sprint Goal. Una previsione a breve termine che appartiene interamente agli Sviluppatori.

#heading(level: 2, outlined: false)[Sprint Goal]
Unico scopo prefissato per lo Sprint. Sebbene lo Sprint Backlog contenga l'elenco dei singoli compiti da svolgere, lo Sprint Goal rappresenta il "perché" il team sta investendo tempo ed energie in quel ciclo di lavoro. Viene definito durante lo Sprint Planning e serve come guida condivisa per il team, fornendo flessibilità riguardo alle funzionalità specifiche che vengono implementate.

#heading(level: 2, outlined: false)[Sprint Planning]
Evento che dà ufficialmente inizio a ogni Sprint. Si tratta di una riunione collaborativa in cui l'intero Scrum Team si riunisce per definire che cosa verrà fatto nel ciclo di lavoro appena iniziato e come verrà realizzato.

#heading(level: 2, outlined: false)[Sprint Retrospective]
Una delle cerimonie fondamentali del framework Agile Scrum. Si tiene alla fine di ogni Sprint, subito dopo la Sprint Review, e ha lo scopo di analizzare come ha lavorato il team per migliorare i processi nel ciclo successivo.

#heading(level: 2, outlined: false)[Sprint Review]
Evento fondamentale del framework Scrum che si tiene alla fine di ogni Sprint. Il suo scopo principale è ispezionare l'Incremento (il lavoro completato) e adattare il Product Backlog se necessario.

#heading(level: 2, outlined: false)[Stakeholder]
Qualsiasi individuo, gruppo o organizzazione che possa essere direttamente o indirettamente coinvolto dalle attività, dalle decisioni o dai risultati di un'azienda.

#heading(level: 2, outlined: false)[Software]
Insieme delle componenti immateriali (programmi, dati e istruzioni) che dicono a un computer o a un dispositivo elettronico cosa fare.

#heading(level: 2, outlined: false)[Superset]
Relazione tra due linguaggi, librerie o specifiche in cui uno contiene l'altro e vi aggiunge nuove funzionalità.

#heading(level: 2, outlined: false)[SVG] 
Formato di immagine vettoriale basato su XML, utilizzato per creare grafiche scalabili e adatte all'uso su web.

#heading(level: 2, outlined: false)[Sviluppatore] 
Vedi definizione di #link(<Developer>, ['Developer']).

#pagebreak()
= T

#heading(level: 2, outlined: false)[Telegram]
Applicazione di messaggistica istantanea tra utenti e/o gruppi. Permette in particolar modo di creare sottocategorie all'interno di un gruppo, per isolare differenti tematiche in compartimenti separati. Consente inoltre l'invio di file di tipo testuale, visivo e audio.

#heading(level: 2, outlined: false)[Tipizzazione]
Processo attraverso il quale il linguaggio di programmazione assegna un "tipo" a un dato (come numeri, stringhe di testo o oggetti complessi).
Il _tipo_ definisce quali valori una variabile può contenere e quali operazioni possono essere eseguite su di essa.

#heading(level: 2, outlined: false)[Token]
Oggetto digitale (spesso una stringa crittografata) che rappresenta il diritto di eseguire un'operazione. Nell'autenticazione, viene usato per provare l'identità di un utente o di un servizio senza dover reinserire le credenziali ad ogni richiesta.

#heading(level: 2, outlined: false)[Training]
Processo attraverso il quale un modello di Intelligenza Artificiale o un sistema software autonomo impara a compiere azioni specifiche per raggiungere un obiettivo all'interno di un ambiente.

#heading(level: 2, outlined: false)[Typst]
Sistema di preparazione documenti basato su un linguaggio di markup leggero, progettato per essere un'alternativa moderna e più semplice a LaTeX, ma più potente di Word o Google Docs.

#pagebreak()
= U 

#heading(level: 2, outlined: false)[Use Case]
_UC_\
Vedi definizione di #link(<CasoUso>, ['Caso d\'uso']).

#heading(level: 2, outlined: false)[UCB - Use Case Baseline]
Milestone interna al gruppo che richiede la conclusione della stesura di tutti gli Use Case del progetto per essere completata. Fondamentale per definire i requisiti funzionali del software.

#heading(level: 2, outlined: false)[UI]
_User Interface _ \
Insieme di tutti gli elementi visivi e interattivi attraverso i quali un essere umano comunica con un software, un'applicazione o un dispositivo Hardware.

#heading(level: 2, outlined: false)[Utility]
In ambito software è un tipo di software di sistema progettato per aiutare ad analizzare, configurare, ottimizzare o mantenere un computer o un'infrastruttura. Le utility servono a far sì che il sistema funzioni correttamente e in modo efficiente.

#pagebreak()

= V

#heading(level: 2, outlined: false)[Verificatore]
Figura professionale responsabile di esaminare un prodotto software per identificare difetti, errori (bug) o mancanze rispetto ai requisiti iniziali.

#heading(level: 2, outlined: false)[Version Control System]
Un sistema di controllo di versione che permette di tenere traccia nel tempo di tutte le modifiche riguardanti un file, compresa la sua creazione ed eliminazione. Permette di registrare la cronologia delle revisioni, ripristinare versioni precedenti e facilitare la collaborazione simultanea di più persone.

#heading(level: 2, outlined: false)[Virtual DOM]
Rappresentazione in memoria di un documento HTML, utilizzata per migliorare le performance del rendering delle pagine web.

#heading(level: 2, outlined: false)[Visual Studio Code] <VisualStudioCode>
Editor di testo e in particolare di codice sorgente. Offre una gamma di strumenti per facilitare lo sviluppo del codice attraverso funzionalità integrate, come strumenti di debugging, controllo versione e un vasto ecosistema di estensioni.

#heading(level: 2, outlined: false)[VScode]
Abbreviazione di "#link(<VisualStudioCode>, ['Visual Studio Code'])".


#pagebreak()

= W

#heading(level: 2, outlined: false)[Way of Working] <WayOfWorking>
Insieme di regole, metodologie, strumentazione e processi atti ad un avanzamento del progetto secondo modi concordati e accettati dai membri del gruppo.

#heading(level: 2, outlined: false)[Web App]
Software applicativo che non risiede sul disco rigido del tuo dispositivo (PC, smartphone o tablet), ma viene eseguito su un server remoto e reso accessibile tramite un comune browser web (come Chrome, Safari o Firefox).

#heading(level: 2, outlined: false)[Workload]
Definisce la quantità e il tipo di risorse arbitrarie che un computer, un server o un'intera infrastruttura cloud consumano per eseguire un determinato compito in un dato momento.

#heading(level: 2, outlined: false)[WoW]
Abbreviazione di "#link(<WayOfWorking>, ['Way of Working WoW'])".

#pagebreak()

= Z

#heading(level: 2, outlined: false)[Zoom]
Applicazione software, per computer e dispositivi mobili, che permette la creazione e gestione di conferenze online, condivisibili anche tramite calendario tramite pianificazione.