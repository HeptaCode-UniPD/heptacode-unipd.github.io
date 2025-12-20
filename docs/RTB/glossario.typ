#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Glossario]

  #v(2.0cm)
  #align(center, text(size: 15pt, weight: "bold")[Contenuto del documento])

  #align(center,
  [#text(12pt)[ Termini ambigui e le loro definizioni
  ]])
])
#v(1fr)

#counter(page).update(1)

#pagebreak()
#set text(size: 11pt, lang: "it")
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
  ),
  "1.1.0",
  "2025/10/30",
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
#counter(page).update(0)

#pagebreak()
#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(78%) Glossario]
    #v(2pt)
    #line(length: 100%, stroke: black)
  ],
  
)

#outline(title: "Indice")
#set heading(level: 1, numbering: none)

#pagebreak()

= Scopo del Documento
Il fine di questo documento è tenere traccia di tutti i termini, ambigui o meno, che possono apparire all'interno della documentazione o nei meeting e darne una definizione quanto più precisa, in modo che le risorse e i discorsi fatti possano essere compresi facilmente.

#pagebreak()

= A 

#heading(level: 2, outlined: false)[Agente]
Sistema software capace di percepire l'ambiente circostante, ragionare su ciò che accade e compiere azioni autonome per raggiungere obiettivi specifici, "agisce" per completare un compito.

#heading(level: 2, outlined: false)[Agile]
Approccio filosofico e culturale alla gestione dei progetti. Si basa sullo sviluppo iterativo, sulla consegna continua di valore e sulla capacità di rispondere rapidamente ai cambiamenti, invece di seguire un piano rigido e lineare.

#heading(level: 2, outlined: false)[Artificial Intelligence - AI]
Branca dell'informatica che si occupa di creare sistemi hardware e software capaci di simulare processi cognitivi umani. In termini semplici, è la capacità di una macchina di mostrare abilità umane come il ragionamento, l'apprendimento, la pianificazione e la creatività.

#heading(level: 2, outlined: false)[Attore]
Ruolo svolto da un'entità esterna che interagisce con il sistema. Non è la persona fisica in sé, ma la funzione che essa ricopre mentre usa il software.

#heading(level: 2, outlined: false)[Amazon Web Services -  AWS]
Piattaforma di Cloud Computing più completa e utilizzata al mondo, offerta da Amazon. Invece di acquistare, possedere e gestire server fisici e centri dati (Data Center) di proprietà, un'azienda può noleggiare potenza di calcolo, spazio di archiviazione, database e altre tecnologie direttamente dai server di Amazon, pagando solo per ciò che consuma.

#pagebreak()

= B

#heading(level: 2, outlined: false)[Backend]
Tutto ciò che avviene "dietro le quinte" di un'applicazione. È la parte invisibile all'utente, ma è il vero "cervello" del software: gestisce la logica, il salvataggio dei dati, la sicurezza e la comunicazione con altri sistemi.

#heading(level: 2, outlined: false)[Business Owner]
Nel contesto aziendale e dello sviluppo prodotto (specialmente in ambiti Agile e Scrum), è una figura strategica che detiene la responsabilità ultima del valore di business generato da un progetto o da un prodotto.

#heading(level: 2, outlined: false)[Branch]
Si tratta di ambienti di sviluppo diversi gli uni dagli altri, tra i quali si può lavorare in modo parallelo e separando logicamente il lavoro.

#heading(level: 2, outlined: false)[Browser]
Software applicativo progettato per consentire agli utenti di accedere, recuperare e visualizzare i contenuti presenti sul World Wide Web (Internet).

#pagebreak()

= C

#heading(level: 2, outlined: false)[Commit]
Operazione che registra in modo permanente le modifiche apportate a uno o più file all'interno di un VCS. Ogni commit, solitamente accompagnato da una descrizione, crea un nuovo punto nella cronologia del progetto, permettendo di ripristinare una versione precedente.

#pagebreak()

= D

#heading(level: 2, outlined: false)[Diagrammi di PERTT]
Strumento di project management utilizzato per pianificare, organizzare e coordinare i compiti all'interno di un progetto. Rappresentazione grafica reticolare che si concentra sulle relazioni di precedenza tra le attività.

#heading(level: 2, outlined: false)[Disco Rigido - HDD]
Dispositivo di archiviazione principale di un computer, utilizzato per conservare i dati in modo permanente.

#heading(level: 2, outlined: false)[Discord]
Applicazione di messaggistica istantanea, VoIP e di distribuzione digitale. Gli utenti possono interagire privatamente o in comunità che possono contenere canali sia testuali che vocali.

#heading(level: 2, outlined: false)[Docs]
Abbreviazione per "documentazione". Indica l'insieme dei documenti relativi al progetto, solitamente raccolti e gestiti in una cartella denominata "docs" all'interno della repository.

#pagebreak()

= F
#heading(level: 2, outlined: false)[Fail Fast]
Metodologia che mira ad identificare rapidamente un malfunzionamento all'interno di un progetto, in modo da poterlo correggere prima che questo porti a un accumulo di problemi di difficile gestione.

#heading(level: 2, outlined: false)[Framework]
Struttura logica di supporto su cui uno Sviluppatore può poggiare la costruzione di un software.

#heading(level: 2, outlined: false)[Frontend]
Tutto ciò che un utente vede e con cui interagisce direttamente quando utilizza un sito web o un'applicazione. È la parte "visibile" del software, quella che trasforma il codice in una UI comprensibile.

#pagebreak()
= G

#heading(level: 2, outlined: false)[Git]
Software di versionamento distribuito dei file di una cartella, utilizzabile da linea di comando.

#heading(level: 2, outlined: false)[GitHub]
Servizio web basato su git. Permette il versionamento dei file di un progetto online, aprendo quindi la collaborazione di più persone sui file. Offre inoltre diversi altri servizi come l'Issue Tracking System, la possibilità di gestire organizzazioni oppure hostare siti web.

#heading(level: 2, outlined: false)[GitHub Action - GHA]
Sistema di automazione offerto da GitHub e personalizzabile. Permette, al trigger di determinati eventi, di eseguire script ad esempio per la compilazione di file sorgenti oppure testare il software.

#heading(level: 2, outlined: false)[Google Meet]
Servizio di videoconferenze che permette di organizzare e partecipare a riunioni online tramite video e audio in tempo reale.

#pagebreak()

= H 

#heading(level: 2, outlined: false)[Hardware]
Parte fisica, tangibile e "pesante" di un sistema informatico. È l'insieme di tutti i componenti meccanici, elettronici, elettrici e magnetici che puoi toccare con mano.

#pagebreak()

= I

#heading(level: 2, outlined: false)[Issue]
Elemento atto a: pianificare, discutere e tracciare lavoro, bug, idee o nuove funzionalità all'interno di un repository di codice nella piattaforma di Github. Ad essa è possibile assegnare: un progetto, una Milestone, dei responsabili e delle etichette per rappresentarla all'interno di determinate categorie e facilitarne l'utilizzo e la ricerca.

#pagebreak()

= L
#heading(level: 2, outlined: false)[Large Language Model - LLM]
Tipo di AI addestrato su enormi quantità di dati testuali per comprendere, generare e elaborare il linguaggio umano in modo simile a un essere umano, Esso è capace di compiti come la scrittura, la traduzione, il riassunto di testi e la conversazione, basandosi su architetture di deep learning, i quali gli permettono di cogliere contesti complessi. 

#pagebreak()

= M

#heading(level: 2, outlined: false)[Mail]
Messaggio digitale che viene inviato e ricevuto tramite internet. Strumento di comunicazione scritto che permette di scambiare informazioni rapidamente tra persone o gruppi.

#heading(level: 2, outlined: false)[Milestone]
Punto di controllo significativo che segna il completamento di una fase importante o il raggiungimento di un obiettivo chiave all'interno di un progetto. Rappresenta un traguardo raggiunto.

#heading(level: 2, outlined: false)[MongoDB]
Sistema di gestione di basi dati, basato su un modello a documenti, anziché sulle classiche tabelle a righe e colonne. È progettato per essere estremamente flessibile, scalabile e capace di gestire grandi quantità di dati non strutturati (come post sui social, cataloghi prodotti complessi o dati provenienti da sensori).

#pagebreak()

= N
#heading(level: 2, outlined: false)[Normativa ISO]
Standard tecnico volontario internazionale sviluppato dall'International Organization for Standardization (ISO) per definire requisiti, linee guida o specifiche che assicurano qualità, sicurezza, efficienza e interoperabilità di prodotti, processi e servizi, creando un linguaggio e un framework comuni riconosciuti a livello globale, che le organizzazioni possono adottare e certificare.

#pagebreak()

= O
#heading(level: 2, outlined: false)[OWASP]
Acronimo per Open Worldwide Application Security Project, una fondazione no-profit e una comunità globale aperta che si dedica a migliorare la sicurezza delle applicazioni software rendendo disponibili gratuitamente strumenti, documentazione e best practice per sviluppatori e organizzazioni, al fine di educare e guidare nella creazione di software più sicuri. 

#pagebreak()
= P

#heading(level: 2, outlined: false)[PAB - Progettazione & Analisi Baseline]
Milestone interna al gruppo che richiede la conclusione dell'attività di Analisi e di Progettazione per essere completata.

#heading(level: 2, outlined: false)[PB - Product Baseline]
Milestone che richiede la consegna del prodotto e l'accettazione da parte dei professori per essere superata.

#heading(level: 2, outlined: false)[Piano di Contingenza]
Insieme di procedure da attivare dopo che un rischio si è effettivamente verificato e si è trasformato in un problema reale.

#heading(level: 2, outlined: false)[Piano di Mitigazione]
Insieme di azioni strategiche e operative pianificate in anticipo per ridurre la probabilità che un rischio si verifichi o per limitare l'impatto negativo qualora l'evento dovesse accadere.

#heading(level: 2, outlined: false)[Product Backlog]
Lista ordinata e dinamica di tutto ciò che potrebbe essere necessario per migliorare il prodotto. È l'unica fonte di requisiti per ogni modifica da apportare al software nel framework Scrum. Evolve man mano che il prodotto e l'ambiente in cui viene utilizzato cambiano.

#heading(level: 2, outlined: false)[Project Manager]
Figura professionale responsabile della pianificazione, dell'esecuzione e della chiusura di un progetto. Il suo obiettivo principale è garantire che il lavoro venga completato entro i tempi, i costi e i requisiti di qualità stabiliti (il cosiddetto "triangolo dei vincoli").

#heading(level: 2, outlined: false)[Pull]
Comando di Git usato per scaricare la versione più recente di un file o di un progetto dall'ambiente condiviso con il resto dei collaboratori.

#heading(level: 2, outlined: false)[Push]
Comando di Git usato per inviare i commit locali ad un repository remoto, condividendo così le proprie modifiche con il resto del team.

#pagebreak()

= R

#heading(level: 2, outlined: false)[Repository - Repo]
Ambiente digitale dove vengono salvati tutti i file riguardanti i progetti. Può esisterne più di una in base alla suddivisione degli argomenti per cui vengono create.

#heading(level: 2, outlined: false)[Responsabile]
Figura professionale incaricata di guidare un team tecnico nella realizzazione di un prodotto informatico, assicurando che vengano rispettati gli obiettivi di business, i tempi di consegna e i parametri di qualità.

#heading(level: 2, outlined: false)[Rischio]
Evento o una condizione incerta che, se si verifica, ha un effetto (positivo o negativo) sugli obiettivi del progetto, come i tempi, i costi, l'ambito o la qualità.

#heading(level: 2, outlined: false)[RTB - Requirements & Technology Baseline]
Milestone che fissa i requisiti da soddisfare, in accordo con il proponente; nel documento Analisi dei Requisiti motiva le tecnologie, i framework, le librerie adottate, e ne
dimostra adeguatezza e interoperabilità. Tramite Proof of Concept (demo eseguibile) rappresentativa delle richieste del capitolato. Il PoC viene posto in repo accessibile a committente e proponente.

#pagebreak()
= S

#heading(level: 2, outlined: false)[Scrum]
Framework Agile più utilizzato al mondo per la gestione dello sviluppo di prodotti complessi, in particolare nel software. Non è una metodologia rigida, ma una struttura leggera che aiuta i team a generare valore attraverso soluzioni adattive a problemi complessi.

#heading(level: 2, outlined: false)[Slack]
Piattaforma di comunicazione asincrona collaborativa basata sulla messaggistica istantanea, progettata specificamente per i team di lavoro e le aziende.

#heading(level: 2, outlined: false)[Server]
Computer o un software che fornisce dati, servizi o risorse ad altri computer, chiamati client, attraverso una rete (locale o internet).

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

#heading(level: 2, outlined: false)[Sviluppatore]
Professionista che progetta, scrive, testa e mantiene il codice sorgente di programmi informatici e applicazioni. È la figura che traduce i requisiti logici (il "cosa" deve fare il programma) in linguaggio macchina (il "come" farlo tecnicamente).

#pagebreak()
= T

#heading(level: 2, outlined: false)[Telegram]
Applicazione di messaggistica istantanea tra utenti e/o gruppi. Permette in particolar modo di creare sottocategorie all'interno di un gruppo, per isolare differenti tematiche in compartimenti separati. Consente inoltre l'invio di file di tipo testuale, visivo e audio.

#heading(level: 2, outlined: false)[Training]
Processo attraverso il quale un modello di Intelligenza Artificiale o un sistema software autonomo impara a compiere azioni specifiche per raggiungere un obiettivo all'interno di un ambiente.

#heading(level: 2, outlined: false)[Typst]
Sistema di preparazione documenti basato su un linguaggio di markup leggero, progettato per essere un'alternativa moderna e più semplice a LaTeX, ma più potente di Word o Google Docs.

#pagebreak()
= U 

#heading(level: 2, outlined: false)[Use Case]
Descrizione di una sequenza di azioni che un sistema compie per fornire un risultato di valore a un determinato utente, chiamato Attore.

#heading(level: 2, outlined: false)[UCB - Use Case Baseline]
Milestone interna al gruppo che richiede la conclusione della stesura di tutti gli Use Case del progetto per essere completata. Fondamentale per definire i requisiti funzionali del software.

#heading(level: 2, outlined: false)[User Interface - UI]
Insieme di tutti gli elementi visivi e interattivi attraverso i quali un essere umano comunica con un software, un'applicazione o un dispositivo Hardware.

#pagebreak()

= V

#heading(level: 2, outlined: false)[Verificatore]
Figura professionale responsabile di esaminare un prodotto software per identificare difetti, errori (bug) o mancanze rispetto ai requisiti iniziali.

#heading(level: 2, outlined: false)[Version Control System - VCS]
Un sistema di controllo di versione che permette di tenere traccia nel tempo di tutte le modifiche riguardanti un file, compresa la sua creazione ed eliminazione. Permette di registrare la cronologia delle revisioni, ripristinare versioni precedenti e facilitare la collaborazione simultanea di più persone.

#heading(level: 2, outlined: false)[Visual Studio Code - VScode]
Editor di testo e in particolare di codice sorgente. Offre una gamma di strumenti per facilitare lo sviluppo del codice attraverso funzionalità integrate, come strumenti di debugging, controllo versione e un vasto ecosistema di estensioni.

#pagebreak()

= W

#heading(level: 2, outlined: false)[Way of Working - WoW]
Insieme di regole, metodologie, strumentazione e processi atti ad un avanzamento del progetto secondo modi concordati e accettati dai membri del gruppo.

#heading(level: 2, outlined: false)[Web App]
Software applicativo che non risiede sul disco rigido del tuo dispositivo (PC, smartphone o tablet), ma viene eseguito su un server remoto e reso accessibile tramite un comune browser web (come Chrome, Safari o Firefox).

#pagebreak()

= Z

#heading(level: 2, outlined: false)[Zoom]
Applicazione software, per computer e dispositivi mobili, che permette la creazione e gestione di conferenze online, condivisibili anche tramite calendario tramite pianificazione.