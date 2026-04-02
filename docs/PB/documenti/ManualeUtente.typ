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
_Code Guardian_ è una piattaforma web che permette di richiedere a degli agenti di analizzare repository GitHub e ottenere report automatici su documentazione, test e sicurezza. \ I developer, dopo aver effettuato l'accesso, possono quindi richiedere un'analisi del repository selezionato e il sistema ad agenti fornirà un report con indicazioni su come correggere o migliorare la documentazione, i test e la sicurezza di tale repo.//....
== Scopo del documento
Lo scopo del documento Manuale Utente è introdurre gli utenti a _Code Guardian_ e assisterli nel suo utilizzo, fungendo da guida al funzionamento del software e permettendo agli utenti di sfruttare al massimo le sue funzionalità. \
Questo manuale indica al developer i requisiti di sistema per poi spiegargli come interfacciarsi con l'applicativo web. //...

== Glossario
 #link(<glossario>)[L'ultimo capitolo del documento] è dedicato al glossario, in cui vengono definiti i termini tecnici per spiegare il loro significato all'utente e per evitare ambiguità. Tali termini sono identificabili grazie alla presenza di una _G_ a pedice del termine, come nel seguente esempio:
#let tg = [termine#sub[G]]
#align(center)[#tg]
== Riferimenti
- Capitolato "Code Guardian" di VarGroup (C2):\ https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf
- GitHub Docs "About repositories" \ https://docs.github.com/en/repositories/creating-and-managing-repositories/about-repositories
//....
#[
#show regex("\bRepository\b|\brepository\b|\bGitHub\b|\bOWASP\b|\bDocumentazione\b|\bdocumnetazione\b|\bagenti\b|\banalisi\b|\bAnalisi\b|\bsessione attiva\b|\breport automatico\b|\bReport automatico\b"): it => [#it#sub[G]]

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
// screen della pagina
Se l'utente non si è autenticato in precedenza, dopo aver avviato l'applicativo sarà reinderizzato alla pagina di accesso, dove dovrà inserire il nome utente e la password forniti dall'azienda per effettuare il login e poter usufruire dei servizi di Code Guardian. \ Il seguente messaggio di errore apparirà in caso le credenziali immesses non siano più valide o incorrette: 
#figure(
  image("../../asset/errorecredenziali.png"),
  caption: [Messaggio di errore in caso di credenziali incorrette], 
) <err-credenziali>



  
=== Pagina Lista Repository
Dopo l'accesso l'utente visualizzerà la pagina principale, che inizialmente sarà questa: \
// screen della pagina senza repo
Cliccando su "#link(<AggiungiRepo>)[Aggiungi repository]" potrà aggiungere i repository GitHub pubblici che desidera analizzare. Dopo il loro inserimento nella piattaforma Code Guardian, questi repository saranno visualizzati in una lista nella pagina principale. \
// screen della lista
Cliccando su un repository, l'utente raggiungerà la pagina di visualizzazione dettagli di tale repo, da dove sarà possibile effettuare l'analisi. \
Cliccando sull'icona del profilo,/*inserire posizione profilo*/, l'utente potrà visualizzare le informazioni riguardo il proprio profilo utente.
// inserire immagine icona
Si può eliminare una repository cliccando sull'icona del cestino in sua corrispondenza. L'azione non è reversibile, tuttavia se si desidera re-inserire la repo nel sistema si può aggiungere nuovamente dalla pagina "Aggiungi Repository".
//immagine cestino ?
=== Pagina Aggiungi Repository<AggiungiRepo>
// screen della pagina
Questa è la pagina che permette di inserire nuovi repository per poi poterli analizzare. Per farlo, basta immettere il link nella barra visualizzata nella schermata. \ Attenzione: se si inserisce il link a una repository privata o un link non valido apparirà il seguente messaggio d'errore.
// screen errore repo priv
// screen errore link non val

// Una volta inserito rimango nella pagina o mi reinderizza a DettagliRepo? 
=== Pagina Dettagli Repository
// screen della pagina

=== Pagina Profilo Utente
// screen della pagina
In questa pagina è possibile visualizzare nome, cognome ed email, che non sono modificabili. È possibile eseguire il logout dalla piattaforma, cliccando sulla segunte icona: 
//icona logout
Una volta cliccata, apparirà il pop-up di conferma logout. 

]

= Glossario<glossario>
#lettera("A") 
*Agente* \
*Analisi* \
Analisi effettuata da agenti in cui viene controllata la correttezza e qualità dei test, della documentazione del repository e della sicurezza, con particolare riguardo alle linee guida OWASP.
#lettera("D") 
*Documentazione* \
#lettera("G")
*GitHub* \
Servizio web di hosting per progetti software basato su git. Permette il versionamento dei file di un progetto online, aprendo quindi la collaborazione di più persone sui file. //....
#lettera("O")
*OWASP* \
#lettera("R")
*Report automatico* \

*Repository* \
Archivio digitale utilizzato per memorizzare gestire e organizzare dati, codice sorgente e documenti. I repository GitHub possono avere più collaboratori e fungono da database per il tracciamento dei cambiamenti all'interno del set di file memorizzato.