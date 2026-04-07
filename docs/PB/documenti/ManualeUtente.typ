#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola

#show: doc => template_documenti(
  titolo: "Manuale Utente",
  descrizione: "Manuale d'uso del software _Code Guardian_ del gruppo _Hepta Code_",
  modifiche: (),
  lista_tabelle: true,
  lista_figure: true,
  doc
)

#let lettera(carattere) = block(breakable: false)[
  #v(0.5cm, weak: false) 
  
  #text(weight: "bold", size: 1.3em)[#carattere] 
  
  #v(-0.9em) 
    #line(length: 100%, stroke: 1pt + black) 
    #v(0.5em, weak: true) 
]

= Introduzione
== Code Guardian
_Code Guardian_ è una piattaforma web che permette di richiedere a degli agenti di analizzare repository GitHub e ottenere report automatici su documentazione, test e sicurezza. \ I developer, dopo aver effettuato l'accesso, possono quindi richiedere un'analisi del repository selezionato e il sistema ad agenti fornirà un report con indicazioni su come correggere o migliorare la documentazione, i test e la sicurezza di tale repo.
== Scopo del documento
Lo scopo del documento Manuale Utente è introdurre gli utenti a _Code Guardian_ e assisterli nel suo utilizzo, fungendo da guida al funzionamento del software e permettendo agli utenti di sfruttare al massimo le sue funzionalità. \
Questo manuale indica al developer i requisiti di sistema per poi spiegargli come interfacciarsi con l'applicativo web. 

== Glossario
 #link(<glossario>)[L'ultimo capitolo del documento] è dedicato al glossario, in cui vengono definiti i termini tecnici per spiegare il loro significato all'utente e per evitare ambiguità. Tali termini sono identificabili grazie alla presenza di una _G_ a pedice del termine, come nel seguente esempio:
#let tg = [termine#sub[G]]
#align(center)[#tg]
== Riferimenti
- Capitolato "Code Guardian" di VarGroup (C2):\ https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf
- GitHub Docs "About repositories" \ https://docs.github.com/en/repositories/creating-and-managing-repositories/about-repositories
- AWS Amazon "Cosa sono gli agenti di IA?" \ https://aws.amazon.com/it/what-is/ai-agents/
#[
#show regex("\bRepository\b|\brepository\b|\bGitHub\b|\bOWASP\b|\bDocumentazione\b|\bdocumentazione\b|\bagenti\b|\bagente\b|\bAgente\b\banalisi\b|\bAnalisi\b|\bsessione attiva\b|\breport automatico\b|\bReport automatico\b|\bcommit\b|\bCommit\b"): it => [#it#sub[G]]

= Requisiti di sistema
La funzionalità corretta dell'applicativo web è garantita nei sistemi desktop equipaggiati con sistemi operativi che supportono i seguenti browser:
#[
  #show figure.caption: none
  
  #figure(
    caption: [Compatibilità browser],
    kind: table,

    supplement: [Tabella],
    rect(width: 0pt, height: 0pt, stroke: none) 
  ) <tabella-tecnologie> 
] 

#tabella-viola(
    columns: (auto, auto),
    inset: 10pt,
    align: (left),
    table.header(
      [*Browser*], [*Versione*],
    ),
  [Google Chrome], [v. 120 o superiore],
  [Mozilla Firefox],[v. 121 o superiore],
  [Microsoft Edge], [v. 120 o superiore],
  [Apple Safari], [v. 17 o superiore]
)
Il corretto funzionamento è assicurato esclusivamente sui browser riportati sopra.


= Istruzioni all'uso
_Code Guardian_ è un applicativo web intuitivo e semplice da usare. Di seguito riportiamo le indicazioni utili per la navigazione e l'utilizzo della piattaforma. 

== Panoramica generale
Qualora l'utente non sia autenticato, l'avvio della piattaforma lo reindirizza automaticamente alla pagina di login. Una volta effettuato l'accesso (o in caso ci sia già una sessione attiva) l'utente visualizzerà la dashboard principale, dove è presente l'elenco dei repository inseriti su Code Guardian. Da questa schermata è possibile raggiungere le pagine in cui sono visualizzati i dettagli del singolo repository e da cui si possono far partire le analisi, quella per aggiungere un nuovo repository e la pagina del proprio profilo utente.  

//== Avvio dell'applicativo

== Interfaccia utente
In questa sezione sono spiegate l'interfaccia e le funzionalità di ogni singola pagina.
=== Pagina di accesso
#figure(
  image("../../asset/login.png"),
  caption: [Pagina di accesso], 
) <login>
Se l'utente non si è autenticato in precedenza, dopo aver avviato l'applicativo sarà reinderizzato alla pagina di accesso, dove dovrà inserire il nome utente e la password forniti dall'azienda per effettuare il login e poter usufruire dei servizi di Code Guardian. \ Il seguente messaggio di errore apparirà in caso le credenziali immesse non siano più valide o incorrette: 
#figure(
  image("../../asset/errorecredenziali.png"),
  caption: [Messaggio di errore in caso di credenziali incorrette], 
) <err-credenziali>



=== Pagina Lista Repository
Dopo l'accesso l'utente visualizzerà la pagina principale, che inizialmente sarà questa: \
#figure(
  image("../../asset/no-repo.png"),
  caption: [Pagina principale senza repository inseriti], 
) <no-repo>
Cliccando sull'icona del profilo, situata nell'angolo in alto a destra, l'utente potrà visualizzare le informazioni riguardo il proprio profilo utente. 
#figure(
  image("../../asset/icona-profilo.png", width: 10%),
  caption: [Link al profilo utente], 
) <icona-profilo>
Cliccando su "#link(<AggiungiRepo>)[Aggiungi repository]" (il pulsante verde oppure che quello sulla barra di navigazione) il developer potrà aggiungere i repository GitHub pubblici che desidera analizzare. Dopo il loro inserimento nella piattaforma Code Guardian, questi repository saranno visualizzati in una lista nella pagina principale. \
#figure(
  image("../../asset/lista-repo.png"),
  caption: [Pagina principale dopo l'inserimenti di alcuni repository], 
) <lista-repo>
Tramite la barra di ricerca a sinistra è possibile cercare uno specifico repostory inserito digitando il suo nome o parte del suo nome. \
Cliccando su un repository, l'utente raggiungerà la pagina di visualizzazione dettagli di tale repo, da dove sarà possibile effettuare l'analisi. \
Si può eliminare una repository cliccando sull'icona del cestino in sua corrispondenza. L'azione non è reversibile, tuttavia se si desidera re-inserire la repo nel sistema si può aggiungere nuovamente dalla pagina "Aggiungi Repository". \
Per tornare alla pagina principale da qualsiasi altra pagina basta cliccare "Lista Repository" situato in alto a destra, accanto all'icona del profilo. 
#figure(
  image("../../asset/icona-lista.png", width: 35%),
  caption: [Link alla pagina principale], 
) <icona-lista>
=== Pagina Aggiungi Repository<AggiungiRepo>
#figure(
  image("../../asset/aggiungi-repo.png",),
  caption: [Pagina aggiungi repository], 
) <aggiungi-repo>
Questa è la pagina che permette di inserire nuovi repository per poi poterli analizzare. Per farlo, basta immettere il link nella barra visualizzata nella schermata. \ Attenzione: se si inserisce il link a una repository privata o un link non valido apparirà un messaggio d'errore, come nella seguente schermata:
#figure(
  image("../../asset/errore-aggiungi.png",),
  caption: [Pagina con messaggio di errore in caso di url non valido o repository privata], 
) <errore-aggiungi>
Una volta inserito un link valido a un repository GitHub pubblico, l'utente sarà reindirizzato alla pagina principale contente la lista dei repository, tra i quali sarà presente anche quello appena inserito. \

=== Pagina Dettagli Repository
Cliccando su un repository dalla pagina principale, l'utente visualizzerà la seguente pagina se non ha mai fatto partire l'analisi del repo selezionato:
#figure(
  image("../../asset/dettagli-no-analisi.png",),
  caption: [Pagina dettagli repository prima di effettuare l'analisi], 
) <dettagli-no-analisi>
Per avviare l'analisi del repository, basta cliccare sul pulsante "Avvia Analisi" e cliccare su "Conferma" nel pop-up di richiesta di conferma avvio analisi.\
Una volta avviata l'analisi, l'utente dovrà attendere qualche minuto (in media uno-due) mentre gli agenti eseguono l'analisi del repository. Durante questo periodo, al posto del pulsante "Avvia Analisi" sarà visualizzato il seguente messaggio: 
#figure(
  image("../../asset/analisi-in-corso.png", width: 50%),
  caption: [Messaggio di attesa durante l'analisi], 
) <analisi-in-corso>
Attenzione: non è possibile avviare un'analisi in caso non ci siano stati nuovi commit nel repository dopo l'ultima analisi effettuata, in quanto non ci sarebbero cambiamenti da analizzare. In questo caso, il pulsante "Avvia Analisi" non sarà cliccabile e apparirà di un colore grigiastro.\
In caso durante l'analisi ci siano problemi che la portino a durare più di 15 minuti, apparirà un messaggio "L'analisi sta impiegando troppo tempo. Riprova più tardi". \
Dopo la corretta conclusione dell'analisi, la pagina dei dettagli del repository fornirà la percentuale di copertura test del codice, della completezza della documentazione e della correttezza OWASP e la data dell'ultima analisi. Inoltre, sarà disponibile un report con i risultati dell'analisi, suddiviso in tre sezioni: OWASP, test e documentazione.
#figure(
  image("../../asset/report1.png",),
  caption: [Esempio 1 di report], 
) <report1>
#figure(
  image("../../asset/report2.png",),
  caption: [Esempio 2 di report], 
) <report2>
È possibile visualizzare il report di ogni sezione aprendo il menù a tendina corripondente.\ Attenzione: *le analisi sulla documentazione saranno eseguite esclusivamente se nel repo è presente un tag release*. \
Da questa pagina è inoltre possibile eliminare in maniera non reversibile il repository cliccando su "Elimina repository" e visitare il link ufficiale del repository cliccando "Vedi su GitHub". 
=== Pagina Profilo Utente
#figure(
  image("../../asset/pagina-utente.png",),
  caption: [Pagina profilo utente], 
) <pagina-utente>
In questa pagina è possibile visualizzare nome, cognome ed email, che non sono modificabili. È possibile eseguire il logout dalla piattaforma, cliccando sul pulsante "Esci" situato sotto le informazioni del profilo. \
Una volta cliccata, apparirà il pop-up di richiesta di conferma logout. 
#figure(
  image("../../asset/conferma-logout.png",width: 30%),
  caption: [Pop-up di conferma logout], 
) <conferma-logout>
Cliccando su "Conferma" si eseguirà il logout e si verrà reindirizzati alla pagina di accesso.
]

= Glossario<glossario>
#lettera("A") 
*Agente* \
 Programma software in grado di interagire con il suo ambiente, raccogliere dati e utilizzarli per eseguire attività autodirette che soddisfano obiettivi predeterminati.

*Analisi* \
Analisi effettuata da agenti in cui viene controllata la correttezza e qualità dei test, della documentazione del repository e della sicurezza, con particolare riguardo alle linee guida OWASP.
#lettera("C") 
*Commit* \
Operazione tramite la quale le modifiche apportate ai file vengono salvate in modo definitivo e registrate all'interno di un repository. Costituisce un'istantanea (snapshot) dello stato del progetto in un preciso momento.

#lettera("D") 
*Documentazione* \
Insieme dei file di testo, manuali e commenti presenti all'interno di un repository che descrivono il funzionamento, la struttura e le modalità d'uso del software. In _Code Guardian_, l'agente verifica che la documentazione sia chiara, completa e allineata agli standard di progetto.

#lettera("G")
*GitHub* \
Servizio web di hosting per progetti software basato su git. Permette il versionamento dei file di un progetto online, aprendo quindi la collaborazione di più persone sui file. //....
#lettera("O")
*OWASP* \
Acronimo di _Open Worldwide Application Security Project_. È una fondazione globale senza scopo di lucro che produce articoli, metodologie e strumenti per migliorare la sicurezza del software. L'analisi OWASP di _Code Guardian_ verifica che il codice non sia esposto alle vulnerabilità più note (come quelle elencate nella OWASP Top 10).

#lettera("R")
*Report automatico* \
Serie di indicazioni suggerite dagli agenti di _Code Guardian_ al termine dell'analisi di un repository, che suggeriscono al developer come migliorare la documentazione, i test e la sicurezza del repository analizzato. \
\ *Repository* \
Archivio digitale utilizzato per memorizzare gestire e organizzare dati, codice sorgente e documenti. I repository GitHub possono avere più collaboratori e fungono da database per il tracciamento dei cambiamenti all'interno del set di file memorizzato. Abbreviato in "repo".