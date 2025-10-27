#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Valutazione Capitolati]

  #v(2.0cm)
  #align(center, text(size: 15pt, weight: "bold")[Contenuto del documento])

  #align(center,
  [#text(12pt)[ Valutazione e analisi di ogni capitolato proposto con decisione finale
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
  "1.0",
  "2025/10/27",
  "Laura Venturini",
  "Riccardo Baldin",
  "Aggiunte e modifica della conclusione",
  "0.1",
  "2025/10/24",
  "Angela Favaro",
  "Laura Venturini",
  "Scelta capitolato d'appalto"
)
#counter(page).update(0)

#pagebreak()
#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(57%) Valutazione Capitolati 25-10-24]
    #v(2pt)
    #line(length: 100%, stroke: black)
  ],
  
)

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()

= Premessa

Il gruppo _Hepta Code_ non ha esperienza pregressa con sviluppo software a livello commerciale e/o professionale. Pertanto tutte le valutazioni che sono state fatte sui diversi capitolati sono prettamente soggettive e non è nostra intenzione dare un giudizio puramente tecnico in quanto non riteniamo di avere la piena padronanza e competenza sulle tecnologie proposte. 


Verranno ora riportate le valutazioni e considerazioni, fatte durante le riunioni del gruppo sui nove capitolati d'appalto proposti. \ Per ogni capitolato d'interesse sono stati analizzati pregi e difetti.

= Prime valutazioni
Nella prima riunione ufficiale abbiamo sommariamente parlato delle prime impressioni avute da ogni membro sui capitolati, così da procedere con una prima secrematura e capire verso quali aziende orientarci nel chiarire i nostri dubbi. Abbiamo individuato quindi le tre aziende che meno rientravano negli interessi comuni. \ Le aziende che sono state scartate in seguito a questo incontro sono:
- _DIPReader_ dell'azienda _San Marco Informatica_ 
- _Second Brain_ dell'azienda _Zucchetti_
- _Sistema di acquisizione dati da sensori_ dell'azienda _M31_

La preferenza principale al primo incontro è stata per il capitolato _View4Life_ del gruppo _Vimar_. La scelta della preferenza l'abbiamo fatta raggruppando le preferenze personali e stilandone una classifica. Altri progetti che sono rientrati in classifica e quindi abbiamo deciso di analizzare e approfondire sono: 
- _Automated EN18031 Compliance Verification_ di _Bluewind_
- _Code Guardian_ dell'azienda _Vargroup_
- _L'app che Protegge e Trasforma_ dell'azienda _Miriade_
- _NEXUM_ dell'azienda _Eggon_
- _Smart Order_ dell'azienda _Ergon_ 

= Capitolati analizzati
== C1: Automated EN18031 Compliance Verification
Capitolato presentato dall'azienda _Bluewind_. Prevede lo sviluppo di un’interfaccia grafica che guida nella compilazione delle domande presenti nei decision tree relativi a specifici requisiti.

Il gruppo ha deciso di scrivere all'azienda una mail con dei quesiti relativi al progetto.
=== Pro
La richiesta del progetto è precisa e dettagliata. Abbiamo inoltre molto apprezzato la tempestività dell'azienda nelle risposte via mail e la disponibilità dichiarata per degli incontri in presenza. 
=== Contro
Da un punto di vista soggettivo il progetto è sembrato a tutti poco stimolante e quindi, nelle riunioni successive, abbiamo ritenuto all'unanimità che non fosse il caso di proseguire l'approfondimento.

== C2: Code Guardian
Capitolato presentato dall'azienda _VarGroup_. Questo progetto sommariamente richiede la realizzazione di una piattaforma web basata su un sistema ad agenti. 

In questo caso i dubbi sul progetto erano più consistenti quindi abbiamo ritenuto opportuno un contatto tramite chiamata sulla piattaforma _Google Meet_.
=== Pro
Il progetto ci è sembrato da subito interessante, sia dal punto di vista tecnico (didatticamente stimolante) sia a livello di gusti personali. \ I dubbi sulle specifiche sono stati chiariti in modo esaustivo e hanno confermato la buona impressione generale che avevamo del progetto. L'azienda si è resa disponibile anche riguardo sessioni di mentoring futuro sulle teconolgie nelle quali non ci sentiamo sicuri. 
=== Contro
Inizialmente non era stato compreso lo scopo preciso del progetto (non avendo esperienza nell'utilizzo ed uso di agenti a livello di sviluppo software), ritenevamo quindi che fosse un elemento di difficoltà il fatto di non conoscere questo tipo di tecnologie. 

== C4: L'app che Protegge e Trasforma
Capitolato presentato dall'azienda _Miriade_. Richiede la progettazione e lo sviluppo di un applicazione finalizzata alla prevenzione e supporto delle vittime di violenza di genere. 

In questo caso il capitolato presentato dall'azienda ci è sembrato molto generico, abbiamo quindi ritenuto opportuno porre dei quesiti tramite mail.
=== Pro
L'argomento è molto attuale ed importante, inoltre l'idea ci è sembrata stimolante e utile da un punto di vista etico. \ Può essere interessante analizzare lo studio di tutte le funzionalità richieste ed il modo di integrarle nel modo più consono in un contesto così importante e delicato. Inoltre è un prodotto potenzialmente concreto e che quindi può avere un impatto più 'visibile'.
=== Contro
Abbiamo ritenuto opportuno contattare l'azienda riguardo ad alcuni dubbi insorti durante una riunione del gruppo, in primis sul carico di lavoro richiesto. Sono infatti specificate molte funzionalità e la nostra preoccupazione era di non essere in grado di implementarle tutte al meglio. C'erano inoltre molti ambiti da analizzare (sicurezza, intelligienza artificiale, approfondimenti sui temi di privacy e approfondimenti sul tema della violenza di genere). Abbiamo deciso di avere più informazioni sul progetto e sul lavoro da svolgere contattando l'azienda per mail; nonostante le risposte cordiali ed esaustive abbiamo comunque deciso di orientarci verso altri progetti.  

== C5: NEXUM
Capitolato presentato dall'azienda _Eggon_. Richiede l'integrazione con il progetto _NEXUM_ già attivo e funzionante. Si tratta di aggiungere funzionalità a una piattaforma di comunicazione e gestione HR evoluta, in grado di connettere aziende, collaboratori e studi dei Consulenti del Lavoro in un unico ecosistema digitale.  
=== Pro
Ci ha stimolati l'idea di poter interagire con un sistema già in uso e quindi di avere un esempio concreto con un vero applicativo. Dopo aver contattato l'azienda tramite mail abbiamo inoltre riscontrato un'alta disponibilità e cordialità nel chiarimento di dubbi e aiuto nell'eventuale sviluppo del progetto.
=== Contro
Inizialmente l'idea di interagire con una tecnologia già in funzione ci ha allertati in quanto richiedeva lo studio della tecnologia pre-esistente (oltre ai nuovi linguaggi e meccanismi che ancora non conosciamo). Abbiamo inoltre voluto chiarire dei dubbi riguardo a tutti i casi d'uso elencati nel capitolato, che ci sembrava richiedessero un grossa mole di lavoro. 

== C8: Smart Order
Capitolato presentato dall'azienda _Ergon_. Il progetto richiede la progettazione e lo sviluppo di un software che automatizzi la ricezione di ordini interpretandoli correttamente e trasformandoli in ordini cliente strutturati e pronti per l’inserimento in un database aziendale.

Il gruppo ha deciso di approfondire l'argomento del capitolato tramite richiedendo una call, che il referente aziendale ha garantito sulla piattaforma _Zoom_.
=== Pro
Ci ha inizialmente interessato l'utilizzo delle tecnologie LLM proposte per diverse tipologie di input. Abbiamo pensato che potesse essere molto utile imparare a manipolare audio, video e testo.\ Inoltre, l'azienda ha dato da subito una misura chiara della disponibilità che avrebbe fornito agli studenti.
=== Contro
La manipolazione di varie tipologie di dati ci è sembrato inizialmente complesso volevamo comprendere con quale tipo di tecnologie e in quali modalità i dati sarebbero stati manipolati. L'azienda è stata collaborativa nelle risposte, ma a parità di interesse con altri progetti non abbiamo ritenuto di proseguire con l'approfondimento. 

== C9: View4Life
Capitolato presentato dall'azienda _Vimar_. Il progetto richiede lo sviluppo di un'applicazione web per la gestione completa degli impianti Smart nelle residenze protette. Deve essere usufruibile via browser da smartphone, tablet e computer.

=== Pro
Il capitolato è chiaro e il progetto è sembrato formativo e stimolante a tutti i membri del gruppo. Ha suscitato interesse anche il sensore che verrà dato in dotazione a chi lavorerà con l'azienda, oltre all'ottica di un eventuale tirocinio.
=== Contro
È mancato il contatto diretto con l'azienda, in quanto ha richiesto che le domande di tutti i gruppi fossero mandati da una singola persona. 

Il fatto che non richiede funzionalità relative all'intelligenza artificiale è stato giudicato come un positivamente da alcuni membri e negativamente da altri.

= Conclusioni
In una riunione conclusiva sono stati valutati tutti i colloqui fatti con le aziende di maggiore interesse. 
In questa conversazione è emerso un cambiamento nella preferenza comune; l'azienda (e di conseguenza il progetto) che più ha convinto tutti noi è stata _VarGroup_. 


La decisione finale non è dovuta a una particolare preferenza nei confronti del loro capitolato, che per noi è a pari merito con altri, bensì alla disponibilità e la volontà di collaborazione che abbiamo percepito dall'azienda. Queste sono state dimostrate dai  diversi strumenti che si sono offerti di metterci a disposizione, quali mentorign nel design thinking e aiuti nella manipolazione di nuovi linguaggi e tecnologie da noi poco conosciute.

Dichiariamo quindi che la nostra scelta finale è il capitolato *C2: Code Guardian*.

