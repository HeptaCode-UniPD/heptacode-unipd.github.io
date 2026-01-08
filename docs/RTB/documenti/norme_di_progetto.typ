#show link: set text(fill: color.linear-rgb(121, 1, 238))
#show link: underline

#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../../asset/logo.svg")

  #v(1.5cm)

  #text(size: 25pt, weight: "bold")[Norme di Progetto]

  #v(2.0cm)
  #align(center, text(size: 15pt, weight: "bold")[Contenuto del Documento])

  #align(center,
  [#text(12pt)[Norme e linee guida operative del team _HeptaCode_ nello sviluppo del progetto _Code Guardian_.]]
  )
])
#v(1fr)

#counter(page).update(1)

#pagebreak()

#text(size:17pt, weight: "bold")[Registro delle modifiche:]
#set text(size: 11pt, lang: "it")
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*], [*Descrizione*]
  ),

  "0.5.0",
  "2026/01/06",
  "Angela Canazza",
  "Nicola Simionato",
  "Stesura Metriche per la Qualità",

  "0.4.1",
  "2026/01/04",
  "Laura Venturini",
  "Nicola Simionato",
  "Stesura paragrafo Progettazione",

  "0.4.0",
  "2026/01/04",
  "Angela Favaro",
  "Nicola Simionato",
  "Stesura Standard per la Qualità",

  "0.3.0",
  "2026/01/03",
  "Angela Favaro",
  "Nicola Simionato",
  "Stesura Processi di Supporto",

  "0.2.0",
  "2025/12/28",
  "Riccardo Baldin",
  "Angela Favaro",
  "Stesura Processi Primari e Processi di Supporto",

  "0.1.0",
  "2025/12/10",
  "Amerigo Vegliante",
  "Riccardo Baldin",
  "Impostazione struttura del Documento"
)

#counter(page).update(0)

#pagebreak()

#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(57%) Norme di Progetto v. 0.1.1]
    #line(length: 100%, stroke: black)
  ],
)

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()

= Introduzione

== Scopo del documento

Questo documento serve a definire le norme e le linee guida del team _HeptaCode_ per lo sviluppo del progetto _CodeGuardian_.
Nello specifico, si descrivono i processi di lavoro, le modalità di collaborazione, standard di codifica e le pratiche di gestione della qualità che il team si impegna a seguire per garantire coerenza, qualità ed efficienza nel ciclo di vita del prodotto.

== Scopo del prodotto

_Code Guardian_ è un prodotto ideato dall'azienda _Var Group S.p.A_, si tratta di una piattaforma web basata su un sistema ad agenti per l'audit e la remediation dei repository software. Analizza repository GitHub per valutarne qualità, sicurezza e manutenzione, generando report automatici e suggerendo miglioramenti su test, sicurezza (OWASP) e documentazione.

== Glossario

Termini tecnici e ambiguità sono chiariti nel documento _glossario.pdf_, ogni termine presente nel glossario presenta una lettera "G" come apice, in questo modo intendiamo rendere la lettura della documentazione coerente e chiara.

== Riferimenti

=== Riferimenti Normativi

- Capitolato d'appalto C2 _Vargroup S.p.a._ - Code Guardian: 
#h(2em) #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")

- Standard ISO/x 12207:1995 - Processi di Ciclo di Vita del Software:
#h(2em) #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf"). \
#h(2em) A questo standard fanno riferimento: @processi-primari, @processi-di-supporto e @processi-organizzativi.

- Standard ISO/IEC 9126 - Modello di Qualità: 
#h(2em) #link("https://it.wikipedia.org/wiki/ISO/IEC_9126"). \
#h(2em) A questo standard fanno riferimento: @standard-per-la-qualita e @metriche-per-la-qualita.

=== Riferimenti Informativi

- Documentazione Typst: \
#h(2em) #link("https://typst.app/docs/")
- Materiale didattico del corso di Ingegneria del Software 2025/2026:
#h(2em) #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")
= Processi Primari
<processi-primari>

== Processo di Fornitura
Secondo lo standard ISO/IEC 12207:1995, comprende le attività e le risorse necessarie al fornitore (_HeptaCode_)per realizzare il progetto. \
Questo processo inizia dopo lo Studio di Fattibilità, quando le esigenze del committente sono chiare. \
Il fornitore stipula un contratto che definisce i requisiti e la data di consegna. Solo dopo l'accordo si passa alla fase esecutiva con la redazione del _Piano di Progetto_. \

Il processo si articola nelle seguenti attività:

1. _Analisi della Richiesta_: valutazione dei requisiti espressi nel Capitolato per determinare la capacità di soddisfare le attese.

2. _Preparazione della Proposta_: definizione dell'offerta tecnica e preventivo economico.

3. _Pianificazione Tecnica_: redazione della documentazione di coordinamento e programmazione delle attività del progetto, analisi delle risorse e creazione delle milestone.
   
4. _Esecuzione_: sviluppo del software e monitoraggio costante tramite milestone, test, verifiche e documentazione.

5. _Controllo_: valutazione del lavoro svolto per garantire la conformità alle regole del gruppo e ai requisiti contrattuali tramite esecuzione dei test di accettazione e revisione del codice scritto.

6. _Consegna_: trasferimento del prodotto finale al cliente.
   
=== Obiettivi
1. Ridurre al minimo le ambiguità nei requisiti.

2. Garantire un prodotto di qualità tramite verifiche sistematiche.
  
3. Mantenere una comunicazione fluida per gestire tempestivamente eventuali variazioni in corso d'opera.
   
=== Descrizione
In questo processo, il team delimita il perimetro entro cui verrà attuato tutto il lavoro tecnico. \ Stabilisce le regole con il committente, assicurando che lo sviluppo non proceda a tentoni, ma segua obiettivi precisi, tempi concordati e standard di qualità. In pratica, è una dichiarazione d'impegno per trasformare le idee del proponente in un software reale e verificato.
==== Rapporti con l'azienda Proponente
La comunicazione asincrona con il proponente avviene tramite _Slack_, mentre gli incontri telematici vengono fatti tramite la piattaforma _Microsoft Teams_.
Durante gli incontri tra il team e l'azienda vengono redatti dei verbali nei quali si evidenziano gli argomenti discussi e le decisioni prese.

==== Documentazione Fornitura
La documentazione prodotta funge da prova tangibile dell'esecuzione dei processi:

- *Analisi dei requisiti:* documento redatto da chi copre il ruolo di Analista e ha come scopo definire le funzionalità necessarie del prodotto in relazione alle richieste della azienda proponente.

- *Piano di Progetto:* documento _redatto da chi copre il ruolo di Responsabile_ e ha come scopo definire una linea guida da seguire durante tutto lo svolgimento del progetto in maniera tale da avere sotto controllo i costi, i tempi e l'andamento generale dell'avanzamento.
  
- *Piano di Qualifica:* documento _redatto da chi copre il ruolo di Amministratore_ e ha come scopo definire in dettaglio le strategie di verifica e validazione per garantire la qualità del prodotto finale e dei processi realizzativi.

- *Lettera di Presentazione:* documento formale tramite il quale il gruppo si è proposto al professor Vardanega come candidato per l'assegnazione del capitolato proposto da _Vargroup S.p.A._.

==== Strumenti

Per la gestione del processo di fornitura, il gruppo utilizza:

*Versionamento*: Git (GitHub) per il controllo dei file sorgente e della documentazione.

*Project Management*: GitHub Projects per il tracking delle task.

*Comunicazione*: Slack o Microsoft Teams per il coordinamento interno e con il committente, Telegram per la comunicazione interna al team.

*Documentazione*: Typst per la realizzazione dei documenti e dei verbali.

== Processo di Sviluppo
In conformità allo standard ISO/IEC 12207:1995, definisce le attività tecniche che il gruppo _HeptaCode_ mette in atto per trasformare i requisiti contrattuali in un prodotto software finito. \ 
Lo sviluppo si occupa del come realizzare concretamente secondo le regole stabilite durante il processo di Fornitura. \ 

=== Obiettivi
L'obiettivo principale è garantire che ogni riga di codice e ogni scelta siano tracciabili e rispondano direttamente alle esigenze della azienda proponente, assicurando al contempo che il prodotto sia robusto, manutenibile e privo di difetti critici.

=== Descrizione
==== Analisi dei Requisiti
Lo scopo principale dell'Analisi dei Requisiti è quello di formalizzare le specifiche funzionali, non funzionali e i vincoli del progetto "_Code Guardian_". \
Agisce come una fonte di verità unica (_single source of truth_) per il team di sviluppo e per tutti gli stakeholder, con l'obiettivo primario di garantire una comprensione comune e ridurre al minimo le ambiguità che potrebbero emergere nelle fasi successive.

Tramite questo documento è possibile comprendere:
- le necessità degli utenti
- gli obiettivi del prodotto
- il contesto in cui il prodotto verrà utilizzato

*Descrizione*

L'Analisi dei Requisiti è un documento redatto da chi copre il ruolo di Analista. \
Comprende i seguenti concetti:

- *Introduzione*: descrizione dell'obiettivo del documento e riferimenti usati per la stesura del documento.

- *Descrizione del prodotto*: illustra le funzionalità del prodotto e le caratteristiche del comportamento di esso in relazione ai vari utenti che lo utilizzano. Analizza inoltre i vincoli del prodotto e del progetto.

- *Casi d'uso*: rappresentazione in modo formale e non ambiguo le interazioni tra gli utenti (attori) e il sistema.

*Notazione dei Casi d'uso*

I Casi d'Uso rappresentano un elemento fondamentale all'interno del ciclo di vita dello sviluppo software in quanto definiscono in modo formale e non ambiguo le interazioni tra gli utenti (attori) e il sistema. 

Ciascun caso d'uso descrive una sequenza di azioni che un attore compie per raggiungere un obiettivo, fornendo così la base per la progettazione del sistema, la sua implementazione e le successive fasi di test. Tutto ciò è volto a garantire che il prodotto finale sia allineato con le aspettative degli _stakeholder_.

I termini utilizzati nell'esposizione dei casi d'uso sono i seguenti:

  - *Identificatore*: codice univoco, strutturato secondo la notazione gerarchica UCx.y (o UCx.y.z per casi specifici),, che viene assegnato a ogni singolo Caso d'Uso per individuarlo in modo inequivocabile all'interno dell'intera documentazione di progetto. La sua funzione primaria è quella di garantire una rapida rintracciabilità dei requisiti lungo tutto il ciclo di vita del software senza ambiguità;
  - *Scenario principale*: descrive cosa succede quando l'interazione tra l'attore e il sistema procede linearmente verso il successo senza intoppi;
  - *Scenario secondario*; Comprende tutti i percorsi alternativi o le gestioni delle eccezioni che si discostano dal flusso principale. Descrive come il sistema deve comportarsi quando si verificano errori o quando l'utente effettua scelte opzionali diverse da quelle standard;
  - *Precondizioni*: Lo stato in cui devono trovarsi obbligatoriamente il sistema e l'ambiente circostante prima che il Caso d'Uso inizi. Rappresentano i vincoli e i requisiti indispensabili che si assumono come veri all'inizio dell'interazione;
  - *Postcondizioni*: Lo stato finale del sistema una volta che il Caso d'Uso è stato completato con successo;
  - *Trigger*: Evento scatenante specifico che avvia il Caso d'Uso;
  - *Attori principali*: Coloro che interagiscono attivamente con il Sistema e svolgono l'azione indicata dal Caso d'Uso. Essi sono sempre gli iniziatori del processo;
  - *Attori secondari*: Entità esterne al sistema. Hanno un ruolo reattivo e partecipano all'interazione solo in risposta ad una richiesta del sistema;
  - *Inclusioni*: Relazione di dipendenza forte in cui un Caso d'Uso base incorpora il comportamento di un altro Caso d'Uso per poter portare a termine la propria funzione;
  - *Estensioni*: Identifica una relazione in cui un Caso d'Uso può arricchire o modificare il comportamento di un Caso d'Uso base, ma solo qualora si verifichino specifiche condizioni o scelte discrezionali dell'utente. A differenza dell'inclusione, questa aggiunta funzionale è del tutto opzionale;
  - *Generalizzazione*: Relazione di ereditarietà tra un elemento più generico, detto padre, e uno più specifico, detto figlio.

*Requisiti*

*Metriche*

==== Progettazione
L'attività di progettazione serve per definire l'architettura logica del prodotto, cercando una soluzione tecnica che soddisfi tutti gli stakeholder. Inoltre, suddivide il sistema in singole componenti dalla complessità individuale minore possibile in modo da facilitare la successiva fase di codifica. \ La progettazione avviene in contemporanea al rilevamento dei requisiti e si basa su di essi per definire le scelte architetturali più adatte; la realizzazione dell'architettura inizia con lo sviluppo del Proof of Concept, cioè della dimostrazione della Fattibilità della soluzione ipotizzata e della compatibilità tra le tecnologie adottate. Per effettuarla, i progettisti del team dovranno decidere di quali tecnologie avvalersi dopo aver analizzato le alternative possibili. 
  \ \
  *Aspettative* \
L'architettura progettata deve avere le seguenti proprietà: 
- Sufficienza: deve essere in grado di soddisfare tutti i requisiti funzionali e non funzionali del sistema;
- Comprensibilità: deve essere capita da tutti gli stakeholder coinvolti nel progetto;
- Modularità: deve essere suddivisa in parti chiare e indipendenti tra loro;
- Robustezza: deve essere in grado di gestire diversi tipi di ingressi da parte dall'utente e dall'ambiente senza compromettere l'integrità del sistema;

*Documentazione* \
La documentazione relativa alla progettazione verrà redatta dai progettisti. Questi membri del team dovranno assicurarsi di documentare il Proof of Concept, di conseguenza le scelte tecnologiche effettuate, le motivazioni di tali scelte e la definizione delle componenti architetturali del sistema. \ Inoltre, per  la Product Baseline dovranno essere documentati i test eseguiti per validare il Proof of Concept e i risultati ottenuti, i design pattern che si pensano adatti all'implementazione del sistema e la definizione delle classi usate nel Proof of Concept. 

*Metriche*

*Diagrammi UML*

*Design Pattern*

==== Codifica
Attività designata ai Programmatori, i quali devono rendere codice sorgente di qualità ciò che viene deciso durante la progettazione del prodotto.

Gli sviluppatori devono seguire in maniera scolastica gli standard e le linee guida definiti nel _Piano di Qualifica_ al fine di garantire la produzione di codice affidabile, pulito e facilmente manutenibile anche da chi non l'avesse mai letto prima.

*Aspettative*

L'obiettivo è la produzione di codice di qualità in linea con i requisiti e gli obiettivi del progetto che soddisfi le seguenti caratteristiche di qualità:
- Sia semplice e leggibile;
- Sia efficiente nelle prestazioni;
- Abbia una adeguata copertura dei test;
- Rispetti i requisiti del _Piano di Qualifica_

*Stile di Codifica* 

Al fine di garantire la manutenibilità del codice gli Sviluppatori dovranno attenersi alle seguenti linee guida:

- *Nomenclatura*: Le variabili, le funzioni, le classi, i metodi devono avere un nome chiaro, univoco e distintivo, al fine di rendere la lettura più semplice e la Manutenibilità del codice più rapida;
- *Indentazione*: Gli spazi e le tabulazioni devono essere utilizzate in modo corretto e uniforme;
- *Sicurezza*: Il codice deve gestire ogni potenziale attacco in maniera corretta, senza presentare vulnerabilità;
- *Efficienza*: Il codice deve poter eseguire ottimizzando il consumo di tempo e di risorse;
- *Testabilità*: Il codice deve essere facilmente testabile; Le funzioni devono avere un solo punto di ritorno e devono gestire un unico scenario; 

*Metriche*

Per rendere oggettiva la qualità del software prodotto, il codice verrà monitorato tramite le seguenti metriche:
- ?? complessità ciclomatica
- ?? campi delle classi

= Processi di Supporto
<processi-di-supporto>

== Processo di Documentazione

La scrittura di documentazione è un processo essenziale per lo sviluppo software in quanto aiuta sia chi produce sia chi utilizza riguardo alla comprensione del prodotto.

Tramite la documentazione infatti vengono monitorate le attività svolte e quelle da svolgere al fine di lavorare a regola d'arte e produrre del software di qualità.

=== Obiettivi

Ciò che ci si aspetta dalla documentazione è che rispetti delle regole al momento della redazione per risultare coerente e uniforme in tutti i documenti. 

=== Descrizione
==== Ciclo di Vita dei Documenti

I documenti prodotti dal gruppo _HeptaCode_ attraverseranno le seguenti tre fasi:

- *Redazione*: scrittura del documento da parte di vari membri del gruppo a turno in relazione ai ruoli ricoperti.
- *Revisione*: controllo dei contenuti del documento da parte di una persona terza alla redazione dello stesso.
- *Distribuzione*: una volta che il documento viene revisionato da chi di dovere, esso viene pubblicato sul sito web del gruppo.

==== Template Typst

Per garantire la uniformità della documentazione il gruppo ha deciso di creare dei template in Typst sia per la stesura dei verbali (sia interni che esterni), sia per la documentazione; questa idea, oltre a velocizzare la stesura dei verbali, serve anche ad assicurare ai redattori che le loro produzioni siano coerenti con gli standard del gruppo. 

==== Documenti del Progetto

Il gruppo produce sia documenti "interni", quindi destinati a rimanere in mano ad esso, sia "esterni", cioè da mostrare a terzi come l'azienda o i professori, i documenti di questi due gruppi sono:
- *Interni*: 
  - Norme di Progetto
  - Verbali Interni
- *Esterni*:
  - Analisi dei Requisiti
  - Piano di Qualifica
  - Piano di Progetto
  - Glossario
  - Verbali Esterni

==== Struttura dei Documenti

Il template della documentazione garantisce che ogni documento pubblicato presenti la seguente struttura prima del corpo del documento:

- *Prima Pagina*:
  - Logo del gruppo;
  - Nome del documento;
  - Versione del documento;
  - Redattori e Verificatori del documento;
  - Indirizzo Email e link al sito web del gruppo.

- *Registro delle Modifiche*:
  La seconda pagina mostrerà una tabella formata da 5 colonne che traccia chi ha redatto e chi ha verificato il documento, le colonne della tabella sono:
  - *Versione*: La versione del documento in formato SemVer x.y.z;
  - *Data*: La data di redazione del documento;
  - *Autore*: Il nome e il cognome di chi ha apportato modifiche al documento;
  - *Verificatore*: Il nome e il cognome di chi ha approvato le modifiche al documento;
  - *Descrizione*: Una concisa descrizione delle modifiche apportate.

- *Indici*:
  In seguito al Registro dei Cambiamenti ogni documento presenta 3 indici, l'_Indice dei Contenuti_ elenca i capitoli e i paragrafi, l'_Indice delle Tabelle_ elenca le etichette delle tabelle presenti e l'_Indice delle Immagini_ elenca le etichette delle immagini del documento.

==== Struttura dei Verbali

I template dei Verbali differiscono da quello della documentazione e seguono il seguente standard:

- *Prima Pagina*:
  - Logo del gruppo;
  - Nome e data del verbale;
  - Ordine del Giorno.

- *Registro delle Modifiche*:
  Il registro delle modifiche risulta invariato.

- *Ubicazione e Partecipanti*:
  Viene dichiarato il luogo e l'orario dell'incontro e la partecipazione dei membri del gruppo e, nel caso di riunioni con terzi, di questi ultimi.

- *Indici*:
  In seguito al Registro dei Cambiamenti ogni documento presenta esclusivamente l'Indice dei Contenuti, non essendo i verbali esageratamente corposi, sono facilmente navigabili anche senza l'ausilio degli altri due.

==== Convenzioni Stilistiche

Ogni file di documentazione deve essere chiamato come il suo titolo, ed ogni file di verbale deve avere nel nome la data in formato YY-MM-GG al fine di rendere più rapida la ricerca e la consultazione dei documenti.

All'interno degli indici non deve essere usato il grassetto, utilizzabile invece per enfatizzare termini importanti ad esempio in elenchi puntati.

==== Strumenti

Per produrre la documentazione il gruppo adopera il linguaggio di markup Typst sfruttandone il sistema di templating per garantire coerenza grafica e uniformità strutturale tra i diversi documenti.

Per condividere i documenti tra i membri essi vengono caricati nella repository GitHub tramite la quale vengono anche effettuati controlli grammaticali e sintattici automatici con l'ausilio delle GitHub Actions.

==== Metriche

?? istituire le metriche di valutazione dei documenti (periodi lunghi / parole lunghe / etc)

==  Processo di Verifica

Il processo di verifica costituisce un'attività di supporto fondamentale volta ad accertare, mediante analisi e prove oggettive, che i prodotti intermedi e finali del progetto soddisfino i requisiti specificati in ogni fase del ciclo di vita.

L'obiettivo primario è duplice:

- _per il software_: garantire che il codice e le componenti tecniche siano conformi alle specifiche di progettazione e ai vincoli tecnici, minimizzando il rischio di difetti logici o di implementazione attraverso test funzionali e revisioni del codice.

- _per la documentazione_: assicurare la correttezza formale, la coerenza sintattica e la precisione semantica dei testi prodotti, verificando che le informazioni trasmesse siano complete, aggiornate e aderenti agli standard qualitativi prefissati (come l'utilizzo rigoroso dei template in Typst).

In sintesi la verifica fornisce una base di fiducia necessaria per il rilascio del sistema e del materiale di supporto.

=== Obiettivi

- Identificare alla radice errori nel software e nella documentazione, riducendo i costi di correzione.

- Dimostrare che il software e la documentazione siano coerenti con dei requisiti pregressi.

- Accettarsi che il codice rispetti le linee guida stilistiche e la documentazione sia coerente con il template Typst.

- Generare documenti che attestino lo stato di progresso del progetto.

=== Descrizione
==== Analisi Statica

L'analisi statica viene eseguita senza l'esecuzione diretta del codice sorgente o dei documenti, focalizzandosi sulla struttura e sulla conformità formale. Per quanto riguarda il software, l'attività si concentra sulla revisione del codice per identificare potenziali vulnerabilità o errori logici. 
Per la documentazione, la verifica statica è supportata dal compilatore Typst, che garantisce la correttezza sintattica e il rispetto dei vincoli definiti nel template di gruppo. In questa fase, la verifica mira ad assicurare che ogni componente sia strutturalmente pronto per le fasi successive.

==== Analisi Dinamica

L'analisi dinamica prevede la verifica del sistema attraverso la sua esecuzione. Grazie all'integrazione di pipeline di *Continuous Integration* tramite *GitHub Actions*, gran parte di questi processi viene automatizzata per garantire feedback rapidi al team di sviluppo.

===== Test di Unità

Questi test sono mirati a verificare il corretto funzionamento delle singole unità logiche (funzioni, classi o moduli) in modo isolato. Verranno implementati utilizzando framework specifici per gli stack tecnologici scelti per validare la logica interna prima dell'integrazione.

===== Test di Integrazione

Considerando l'architettura basata su Database, Backend e Frontend, i test di integrazione verificano che la comunicazione tra questi tre livelli avvenga correttamente. L'obiettivo è assicurare che il flusso dei dati tra le API del backend e le collezioni del database sia coerente e privo di errori di interfaccia.

===== Test di Sistema
I test di sistema verificano l'intero applicativo nel suo complesso rispetto ai requisiti definiti nel capitolato. L'analisi mira a confermare che l'integrazione totale tra interfaccia utente e servizi rispetti le performance e le funzionalità attese.

===== Test di Regressione

Per ogni nuova funzionalità introdotta o bug corretto, vengono eseguiti test di regressione automatizzati tramite GitHub Actions. Questo assicura che le modifiche al codice non compromettano le funzionalità precedentemente verificate e funzionanti.

===== Test di Accettazione
Rappresentano la fase finale della verifica e mirano a confermare che il prodotto sia pronto per la consegna all'azienda cliente. Questi test si basano direttamente sui criteri di accettazione definiti con l'azienda, validando che il software soddisfi pienamente i requisiti contrattuali.

== Processo di Validazione

Il processo di validazione fornisce la conferma, attraverso la fornitura di prove oggettive, che i requisiti per l'utilizzo specifico previsto siano stati soddisfatti. L'obiettivo è assicurare che il sistema realizzato sia conforme alle aspettative dell'azienda cliente e degli utenti finali.

=== Obiettivi
Le principali aspettative di questo processo includono:
- *Soddisfazione del capitolato*: dimostrare che ogni funzionalità richiesta dal committente sia stata implementata e risulti operativa;
- *Idoneità all'uso*: accertare che l'interfaccia e le logiche di business siano intuitive e risolvano i problemi reali dell'utente;
- *Accettazione formale*: ottenere l'approvazione finale dell'azienda esterna attraverso la dimostrazione del prodotto completo.

=== Descrizione
==== Proof of Concept (PoC)

Il gruppo ha previsto la realizzazione di un *Proof of Concept* come milestone fondamentale del processo di validazione. 

Lo scopo del PoC è:

- *Validazione tecnologica*: dimostrare che lo stack scelto sia idoneo a soddisfare i requisiti critici del capitolato;
- *Riduzione del rischio*: identificare tempestivamente eventuali limiti tecnici o architetturali prima della fase di sviluppo intensivo;
- *Feedback immediato*: fornire all'azienda e ai docenti una prova tangibile del funzionamento, permettendo di validare la direzione intrapresa.

==== Va aggiunto qualcos'altro??

== Processo di Gestione della Configurazione
Il processo assicura l'integrità degli artefatti e la tracciabilità delle evoluzioni, permettendo al gruppo di lavorare in parallelo minimizzando i conflitti e garantendo la riproducibilità di ogni versione rilasciata.

=== Obiettivi
La gestione della configurazione ha l'obiettivo di identificare, organizzare e controllare le modifiche a tutti i prodotti del progetto (codice e documentazione). 

=== Descrizione
==== Codice di Versionamento

Il gruppo adotta Git come sistema di controllo di versione. La strategia di branching prevede l'utilizzo di un ramo principale destinato alle versioni stabili. 
- *Documentazione*: si utilizza un approccio "branch-per-documento", dove ogni nuova sezione o revisione viene sviluppata in un ramo dedicato prima di essere integrata nel _main_ tramite operazione di merge.
- *Software*: si prevede l'adozione di un modello simile, orientato alla gestione di funzionalità isolate per mantenere il codice sorgente sempre testabile.

==== Tecnologie Adottate

Il controllo di versione e la collaborazione sono centralizzati sulla piattaforma GitHub. Per garantire l'uniformità degli ambienti di sviluppo è previsto l'utilizzo di Docker, che permetterà di containerizzare i servizi di backend, frontend e database. Per il software, la gestione delle versioni seguirà lo standard Semantic Versioning, garantendo una comunicazione chiara sull'entità degli aggiornamenti rilasciati.

==== Repository

Il progetto è organizzato in una struttura con due repository per separare logicamente le responsabilità:
- *Repository Documentale*: ospitato su una repo specifica, contiene esclusivamente i file sorgente Typst e le configurazioni per il sito web statico.
- *Repository Software*: organizzato come monorepo, contenente cartelle distinte per il frontend e il backend, facilitando la gestione delle dipendenze correlate e dei Dockerfile di orchestrazione.

==== Sincronizzazione

La sincronizzazione del lavoro tra i membri del gruppo è gestita attraverso:
- *GitHub Issues e Project Board*: per la pianificazione e l'assegnazione dei task, permettendo di collegare ogni modifica a una specifica esigenza di progetto.
- *Continuous Integration*: per la documentazione, è attiva una GitHub Action che interviene ad ogni aggiornamento dei file `.typ`. Il runner compila automaticamente i sorgenti e genera i PDF aggiornati.
- *Gestione delle Pull Request*: per garantire la stabilità del ramo `main`, il gruppo adotta il meccanismo delle Pull Request come filtro di qualità. Prima dell'integrazione definitiva, la CI verifica che il codice (o il documento) sia privo di errori sintattici; il merge è consentito solo in caso di esito positivo della compilazione, impedendo che errori accidentali interrompano la disponibilità della documentazione online.

== Processo di Gestione della Qualità

=== Obiettivi

=== Descrizione
==== PDCA

*Plan*
#pad(left: 2em)[
  // scrivi qui
]
*Do*
#pad(left: 2em)[
  // scrivi qui
]
*Check*
#pad(left: 2em)[ 
  // scrivi qui
]
*Act*
#pad(left: 2em)[ 
  // scrivi qui
]

==== Strumenti

==== Struttura delle Metriche

==== Struttura degli Obiettivi

==== Metriche

= Processi Organizzativi
<processi-organizzativi>
Insieme strutturato di attività correlate tra loro svolte
 in modo coordinato per raggiungere un obiettivo specifico e creare 
 valore. \
I processi organizzativi qui presenti sono:
1. Gestione dei Processi
2. Processo di Miglioramento
3. Processo di Formazione

== Processo di Gestione
Il Responsabile è incaricato della gestione del prodotto, della gestione del progetto e della gestione delle attività dei processi applicabili.

=== Obiettivi
L'obiettivo principale del Processo di Gestione è assicurare che i processi siano pianificati, eseguiti, monitorati e completati in modo efficace ed efficiente,
garantendo il raggiungimento degli obiettivi prefissati e la conformità ai requisiti stabiliti.

=== Descrizione
==== Definizione dello Scopo
Il processo di gestione ha inizio con la definizione degli obiettivi e dei requisiti del processo da svolgere. \
Una volta chiariti tali requisiti, il responsabile (in accordo con il gruppo) valuta se il processo è realizzabile, verificando che le risorse necessarie siano disponibili e adeguate 
e che i tempi previsti per il completamento possano essere rispettati. \
I requisiti possono essere adattati in questa fase per garantire il raggiungimento degli obiettivi finali.
==== Pianificazione delle Attività
Il Responsabile definisce le attività necessarie per realizzare il processo. \ 
Le attività descrivono i compiti previsti e i prodotti software da consegnare. 
Inoltre specificano tutti gli elementi utili a garantire una corretta esecuzione del processo, tra cui:
- le tempistiche per completare le attività;
- la stima dell’impegno richiesto;
- le risorse necessarie;
- la distribuzione dei compiti;
- le responsabilità assegnate;
- i rischi potenziali legati alle attività o al processo;
- le modalità di controllo della qualità;
- i costi previsti;
- le risorse infrastrutturali e l'ambiente operativo necessari.
==== Controllo ed Esecuzione
Il responsabile avvia il piano per raggiungere gli obiettivi prefissati, mantenendo il controllo sull'intero processo. \
Durante l'esecuzione, deve monitorare i progressi, fornendo aggiornamenti interni e (se necessario) ai professori o all’azienda. \ 
#pad(left: 2em)[*Se sorgono problemi:* \
il Responsabile deve analizzarli e risolverli. 
Eventuali soluzioni possono comportare modifiche ai piani, e spetta al Responsabile valutare e controllare l'impatto di questi cambiamenti. \
Tutti i problemi e le relative soluzioni devono essere documentati. \ 
Infine, il responsabile deve informare periodicamente sullo stato del processo, confermando l'aderenza ai piani e affrontando eventuali ritardi o ostacoli, 
tramite report interni ed esterni secondo le procedure.]
==== Valutazione
Il Responsabile deve garantire che prodotti software e piani siano esaminati per verificare che soddisfino i requisiti previsti. \ 
Deve inoltre analizzare i risultati delle valutazioni dei prodotti software, delle attività e dei compiti completati durante il processo, 
per _accertarsi che gli obiettivi siano stati raggiunti e che i piani siano stati portati a termine_.
==== Chiusura dell'Attività
Una volta completati tutti i prodotti software, le attività e i compiti, il Responsabile deve _verificare_ se il 
processo può considerarsi terminato, seguendo i criteri definiti nel contratto o nelle procedure dell’organizzazione.
Inoltre, deve controllare che i risultati e la documentazione relativi ai prodotti software, alle attività e ai compiti siano completi, 
archiviare tutto all’interno del repository del gruppo e pubblicare la documentazione nel sito.

== Processo di Miglioramento
Processo per stabilire, valutare, misurare, controllare e migliorare un processo del ciclo di vita del software.

=== Obiettivi
L'obiettivo principale del Processo di Miglioramento è garantire che i processi del ciclo di vita del software siano continuamente valutati e migliorati per aumentare l'efficacia, l'efficienza e la qualità complessiva del prodotto software.

=== Descrizione
==== Stabilimento 
Il gruppo definisce un insieme di processi per l'intero ciclo di vita del software. \
Tali processi, insieme alle modalità di applicazione a casi specifici, devono essere documentati nella documentazione
del gruppo. \ 
Quando necessario, _deve essere implementato un meccanismo di controllo dei processi_ per _garantirne lo sviluppo, il monitoraggio, la gestione e il miglioramento continuo_.
==== Valutazione 
Deve essere creata, documentata e messa in pratica una procedura per la valutazione dei processi i relativi documenti
sulla valutazione devono essere conservati e aggiornati. \ 
Vanno effettuate periodicamente revisioni dei processi, al fine di assicurarne la continua adeguatezza ed efficacia 
sulla base dei risultati delle valutazioni.
==== Miglioramento 
Devono essere implementati (da parte del gruppo) i miglioramenti ai processi ritenuti necessari a seguito delle valutazioni e delle revisioni, 
aggiornando la documentazione per riflettere le modifiche apportate.

== Processo di Formazione
Il Processo di Formazione ha lo scopo di garantire una preparazione adeguata da parte del gruppo per lo svolgimento del progetto. \ 
Per questo motivo, è essenziale pianificare e avviare la formazione fin dalle prime fasi, 
così che risorse qualificate siano pronte quando il prodotto software viene implementato o 
mantenuto.

=== Obiettivi
Ogni membro del gruppo deve acquisire le competenze necessarie per svolgere i propri compiti in modo efficace. \
La formazione (o _palestra_) deve essere continua, adattandosi alle esigenze del progetto ed acquisendo una conoscenza approfondita delle tecnologie e metodologie utilizzate. \
L'obiettivo è garantire che il team sia sempre aggiornato e in grado di affrontare i compiti richiesti dal progetto.

=== Descrizione
==== Formazione dei Membri del Gruppo
È necessario _esaminare i requisiti_ del progetto per identificare e pianificare tempestivamente lo sviluppo delle risorse e delle competenze richieste al team. \ 
Sulla base di queste informazioni, ogni membro deve organizzare autonomamente la propria formazione, utilizzando:
- risorse interne (università, docenti); 
- risorse esterne (formazione aziendale, materiale online); 
- eventualmente, il gruppo può decidere di organizzare sessioni di formazione interne per condividere conoscenze specifiche. 

= Standard per la Qualità
<standard-per-la-qualita>
Il modello di qualità di riferimento per il progetto è definito dallo standard _ISO/IEC 9126-1_. Tale norma decompone la qualità del software in sei caratteristiche fondamentali: 
  1. Funzionalità
  2. Affidabilità
  3. Usabilità
  4. Efficienza
  5. Manutenibilità
  6. Portabilità
== Funzionalità
La Funzionalità definisce la capacità del software di erogare servizi e funzioni che rispondano alle esigenze (esplicite o implicite) dell'utente, quando utilizzato sotto specifiche condizioni. Essa rappresenta il nucleo dei requisiti funzionali e si articola nelle seguenti sotto caratteristiche:

=== Appropriatezza 
Il software deve essere in grado di fornire una serie di funzioni appropriate per lo svolgimento di compiti e il raggiungimento degli obiettivi dell'utente senza complicazioni aggiuntive.
=== Accuratezza
I risultati e i calcoli prodotti dal software devono essere precisi e corrispondere sempre a quanto richiesto dagli standard del progetto.
=== Interoperabilità
La capacità del sistema di interagire e scambiare informazioni con uno o più sistemi specificati.
Nel contesto del progetto _CodeGuardian_, questa caratteristica è fondamentale per garantire l'integrazione con la piattaforma esterna _GitHub_ , permettendo l'accesso e la gestione delle repository.
=== Conformità
Il rispetto di tutte le regole e gli standard del settore in cui il software andrà a operare.

=== Sicurezza
La capacità del software di proteggere le informazioni e i dati, negando l'accesso a entità non autorizzate e garantendolo a quelle autorizzate.
Nel contesto di _CodeGuardian_, non essendo prevista la memorizzazione diretta di dati sensibili o credenziali utente (delegate alla piattaforma GitHub), non è stato implementato un modulo di sicurezza proprietario complesso. Tuttavia, vengono adottate le *best practices* di sviluppo sicuro per prevenire vulnerabilità comuni nel trattamento dei dati analizzati.

== Affidabilità
La capacità del software di mantenere un determinato livello di prestazioni quando utilizzato sotto condizioni specifiche per un determinato periodo di tempo.

=== Maturità
La capacità del software di evitare malfunzionamenti (failure) causati da difetti interni. Si ottiene attraverso test rigorosi che mirano a stabilizzare il prodotto, riducendo la frequenza di errori prima del rilascio.

=== Tolleranza agli errori (Fault Tolerance)
La capacità del sistema di mantenere un livello di prestazioni specificato anche in caso di guasti software o violazioni delle interfacce. Il sistema deve essere resiliente: gestire l'anomalia senza bloccarsi, garantendo il degrado controllato delle funzionalità o il ripristino di uno stato stabile.

=== Conformità 
La capacità del prodotto software di aderire a standard, convenzioni o regolamentazioni relative all'affidabilità. I dettagli metrici sono specificati nel _Piano di Qualifica_.

== Efficienza
La capacità del software di fornire prestazioni appropriate relative alla quantità di risorse utilizzate, sotto condizioni specifiche.

=== Comportamento rispetto al tempo
La capacità del software di fornire tempi di risposta, tempi di elaborazione e velocità di throughput (capacità di calcolo) che soddisfino i requisiti stabiliti durante l'esecuzione delle sue funzioni.

=== Utilizzo delle risorse
La capacità del software di utilizzare quantità e tipi di risorse in misura appropriata per svolgere i propri compiti, ottimizzando i consumi ed evitando sprechi ingiustificati.

=== Conformità
La capacità del prodotto di aderire a standard o convenzioni relative all'efficienza prestazionale, nel rispetto dei vincoli definiti nel _Piano di Qualifica_.

== Usabilità
La capacità del prodotto software di essere semplice, intuitivo e di risultare piacevole per l'utente. Un prodotto usabile è un prodotto che non richiede sforzi eccessivi per essere capito e utilizzato.

=== Comprensibilità
La capacità del software di permettere all'utente di comprendere se il sistema è adatto ai propri compiti e di come utilizzarlo. L'utente deve poter identificare le funzionalità principali e la logica operativa fin dal primo impatto.

=== Apprendibilità
La capacità del software di essere intuitivo e permettere all'utente di imparare ad utilizzarlo con uno sforzo ridotto e in tempi minimi.

=== Operabilità 
La capacità del software di mettere l'utente in condizione di operarlo e controllarlo interamente. Include la facilità di navigazione, la gestione degli errori e l'assenza di ostacoli nel completamento dei compiti.

=== Attrattiva 
La capacità del software di essere piacevole per l'utente. L'interfaccia grafica deve essere curata, coerente e progettata per garantire un'esperienza d'uso soddisfacente.

=== Conformità 
La capacità del software di aderire a standard, convenzioni o regolamentazioni relative alle linee guida consolidate di accessibilità.


== Manutenibilità
La capacità del prodotto software di essere modificato. Le modifiche possono includere correzioni, miglioramenti o adattamenti a cambiamenti nell'ambiente senza compromettere ciò che già funziona.

=== Analizzabilità
La capacità del software di essere diagnosticato velocemente per cause di guasti o per identificare le parti da modificare. Il codice deve rispettare alcuni requisiti per ridurre il tempo di analisi e trovare con rapidità la natura di un problema: deve essere scritto in modo pulito, deve essere chiaro nella scelta dei nomi, deve essere modulare e avere una documentazione chiara. 

=== Modificabilità 
La capacità del software di permettere l'implementazione di una modifica. La struttura deve essere a basso accoppiamento o modulare affinché la modifica di un componente non richieda la riscrittura di moduli dipendenti.

=== Stabilità 
La capacità del software di minimizzare gli effetti collaterali imprevisti derivanti da modifiche. Ogni modifica deve essere sicura, il sistema deve essere solido abbastanza da evitare che la correzione di un bug ne generi altri in parti diverse del programma (_effetti collaterali_); lo si farà tramite test di regressione.

=== Testabilità
La capacità del software di essere testato facilmente e in modo automatico. Il sistema deve essere progettato per facilitare la scrittura e l'esecuzione di test automatici che verifichino la correttezza delle nuove implementazioni.

== Portabilità
La capacità del software di essere trasferito da un ambiente a un altro, sia che si tratti di hardware sottostante o del sistema operativo.

=== Adattabilità 
La capacità del software di adattarsi a diversi ambienti specificati senza dover applicare azioni pesanti o utilizzare versioni dedicare per ogni sistema.
Nel contesto di _CodeGuardian_, l'adozione della containerizzazione (Docker) garantisce che l'applicativo possa essere eseguito su qualsiasi sistema host supportato senza conflitti di dipendenze.

=== Installabilità 
La capacità del software di essere installato in un ambiente specificato. La procedura di configurazione e deploy deve essere semplice, rapida e documentata per l'ambiente di destinazione.

=== Conformità
La capacità del software di aderire a standard o convenzioni relative alla portabilità.
Nel contesto di _CodeGuardian_, tale conformità è garantita tramite l'utilizzo di container Docker. Questo approccio evita il legame con tecnologie proprietarie o specifiche di sistema, assicurando che il software rispetti le specifiche universali di distribuzione.


= Metriche per la Qualità
<metriche-per-la-qualita>

La qualità del prodotto software non è il risultato di un processo di valutazione che confronta il prodotto ottenuto con le attese prefissate. Secondo la norma ISO, la qualità è definita come l'insieme delle caratteristiche di un'entità che le conferiscono la capacità di soddisfare esigenze espresse (esplicite) ed implicite.

La valutazione della qualità dipende dal punto di vista dell'osservatore:
- *Prospettiva interna* (Sviluppatore): Focalizzata sulla struttura, la manutenibilità e la correttezza tecnica del codice.

- *Prospettiva esterna* (Utente): Focalizzata sull'uso, sull'efficacia e sulla soddisfazione dei bisogni.

- *Prospettiva terza* (Committente): Focalizzata sulla conformità ai processi e sugli standard contrattuali.


== Metriche Interne
Le metriche interne (_riferimento normativo: ISO/IEC 9126-3_) si applicano alla struttura statica del software (non eseguibile) durante le fasi di progettazione e codifica. Tali metriche valutano attributi architetturali quali: la modularità, la completezza della documentazione, la coesione e il livello di accoppiamento tra i componenti. L'obiettivo è garantire che il codice sorgente possieda elevate caratteristiche di: manutenibilità, modificabilità, analizzabilità e verificabilità.

Le metriche interne sono spesso invisibili all'utente finale, ma il loro monitoraggio è propedeutico al raggiungimento della qualità esterna e in uso, gli attributi interni influenzano direttamente il comportamento del software a runtime e l'adozione di queste metriche consente di:

- *Prevedere la qualità finale del software*, stimando il livello qualitativo del prodotto prima del rilascio.

- *Individuare anomalie strutturali e difetti potenziali* prima che venga prodotto l'eseguibile, riducendo i costi di correzione.

- Assicurare che *il progetto possa evolvere nel tempo* senza degradare in debito tecnico ingestibile.


== Metriche Esterne
Le metriche esterne (riferimento normativo: _ISO/IEC 9126-2_) misurano il comportamento del sistema software in esecuzione (runtime). A differenza delle metriche interne, queste misure si basano sulla validazione dinamica, sull'operatività e sull'osservazione degli output in ambienti di test o in simulazione operativa.

L'obiettivo è verificare la conformità del software rispetto ai requisiti tecnici e di business stabiliti, garantendo che il prodotto soddisfi le esigenze dell'utente quando viene eseguito in un contesto reale.

Le metriche esterne permettono di quantificare attributi qualitativi quali:

- *Adeguatezza funzionale*: Il software fornisce le funzioni appropriate per i task previsti.

- *Affidabilità*: Il software mantiene le prestazioni nel tempo senza rompersi.

- *Efficienza*: I tempi di risposta e l'uso delle risorse sono adeguati.

- *Usabilità*: L'utente riesce a capire e operare il software con facilità.

- *Sicurezza*: I dati e gli accessi sono protetti durante l'esecuzione.

== Metriche della Qualità in Uso
La Qualità in uso (riferimento normativo: _ISO/IEC 9126-4_) rappresenta il punto di vista dell'utente finale nell'interazione reale con il sistema. Essa può essere conseguita pienamente solo se sono stati precedentemente soddisfatti i requisiti di qualità interna e qualità esterna.

Mentre le metriche tecniche misurano il codice o il comportamento del sistema, la qualità in uso misura l'impatto del software sull'utente. L'obiettivo è validare se il sistema abilita specifici utenti a raggiungere specifici obiettivi in un determinato contesto d'uso.

Gli attributi misurati sono:

- *Efficacia*: La capacità del software di permettere agli utenti di raggiungere gli obiettivi prefissati con accuratezza e completezza.

- *Efficienza*: La relazione tra l'efficacia ottenuta e le risorse spese (tempo, sforzo cognitivo, materiali).

- *Sicurezza* (Safety): La capacità del software di mantenere i livelli di rischio per le persone, l'ambiente o le apparecchiature entro soglie accettabili. \ L'attributo della sicurezza si riferisce all'incolumità e ai danni fisici o economici, distinguendosi dalla protezione dei dati (Security). Nel contesto del progetto _CodeGuardian_, questa metrica avrà un peso minore rispetto all'efficacia e all'efficienza, in quanto il software non presenta rischi critici per l'incolumità delle persone o dell'ambiente.

- *Soddisfazione*: La risposta soggettiva dell'utente all'interazione con il sistema.

== Metriche della Qualità di Processo
La qualità del prodotto software è una diretta conseguenza della qualità dei processi utilizzati per realizzarlo.
Un processo di sviluppo può essere modellato come un sistema che trasforma input (bisogni, requisiti) in output (prodotti intermedi o finali), consumando risorse quali tempo, sforzo umano e strumenti. Per garantire che l'output sia quello desiderato, il processo necessita di un sistema di controllo (feedback loop), composto da:
- Metriche: Misurazioni oggettive per conoscere lo stato istantaneo del processo.
- Azioni correttive: Decisioni e regole atte a modificare l'andamento del processo per riportarlo nelle misure previste.
L'approccio adottato segue il ciclo di PDCA (Plan-Do-Check-Act): le misurazioni devono essere preventive e continue, non solo a posteriori, per permettere un miglioramento iterativo del processo stesso durante il ciclo di vita del progetto.

=== Miglioramento

==== MPC01 - Schedule Variance (SV)
- *Formula*:
$ "SV" = ("EV" - "PV")/"PV" dot 100 $
- *Valore accettabile*: $>=-10%$
- *Valore ottimale*: $>=0%$
- *Descrizione*: L'indicatore Schedule Variance rappresenta il rispetto della schedulazione delle attività di progetto pianificate nella baseline. Se il valore è superiore allo 0, vuol dire che la velocità di avanzamento del lavoro è superiore a quanto pianificato, viceversa se negativo.

====  MPC02 - Cost Variance (CV)
- *Formula*:
$ "CV" = "EV" - "AC" $
- *Valore accettabile*: $>=0€$
- *Valore ottimale*: $>=0€$
- *Descrizione*: L'indicatore Cost Variance rappresenta la differenza tra il costo realmente raggiunto dal progetto e quello del lavoro effettivamente svolto. Se si raggiunge un valore positivo, allora lo svolgimento del lavoro risulta più efficiente, viceversa se negativo. Se invece risulta pari a 0, si sta procedendo come pianificato. 

====  MPC03 - Budget Variance (BV)
- *Formula*:
$ "BV" = ("PV" - "AC")/"PV" dot 100 $
- *Valore accettabile*: $-10%>="BV"<=10%$
- *Valore ottimale*: $0%$
- *Descrizione*: L'indice Budget Variance rappresenta il costo totale raggiunto alla data corrente rispetto a quello pianificato. Se il valore è maggiore di 0, allora il budget si sta consumando più rapidamente di quanto pianificato, viceversa se negativo.

==== MPC04 - Requirements Stability Index (RSI)
- *Formula*:
$ "RSI" = (1- ("NRC"+"NRD"+"NRA")/"TNIR" dot 100) $
- *Valore accettabile*: $>=70%$
- *Valore ottimale*: $100%$
- *Descrizione*:L'indice Requirements Stability Index rappresenta le variazioni che i requisiti hanno subito durante lo svolgimento del progetto.
- *Legenda*:
  - *NRC*: Number of Requirements Changed
  - *NRD*: Number of Requirements Deleted
  - *NRA*: Number of Requirements Added
  - *TNIR*: Total Number of Initial Requirements 

=== Fornitura

==== MPC05 - Planned Value (PV)
- *Formula* 
$ "PV" = "BAC" dot ("PH") / ("THP") $
- *Valore accettabile*: $>=0€$
- *Valore ottimale*: $<="BAC"€$
- *Descrizione*: L'indicatore Planned Value rappresenta il valore del lavoro pianificato rispetto al budget totale previsto. Tale valore permette di monitorare l'avanzamento del progetto e la conformità con la sua pianificazione iniziale.

- *Legenda*:
 - *BAC*: Budget at Completion (Budget totale preventivato);
 - *PH*: Planned Hours;
 - *THP*: Total Hours Planned.

====  MPC06 - Earned Value (EV)
- *Formula*:
$ "EV" = "BAC" dot ("AH") / ("THP") $
- *Valore accettabile*: $>=0€$
- *Valore ottimale*: $<="EAC"$
- *Descrizione*: L'indicatore Earned Value rappresenta il valore del lavoro completato rispetto al budget totale previsto. Tale valore permette di valutare se lo svolgimento del progetto è rimasto in linea con le aspettative.

- *Legenda*:
 - *BAC*: Budget at Completion (Budget totale preventivato);
 - *AH*: Actual Hours;
 - *THP*: Total Hours Planned.

==== MPC07 - Actual Cost (AC)
- *Formula*:
$ "AC" = sum_(r)^(R) ("AHR"_r dot "HCR"_r) $
- *Valore accettabile*: $>=0€$
- *Valore ottimale*: $<="AEC"$
- *Descrizione*: L'indice Actual Cost rappresenta il costo effettivamente sostenuto alla data corrente.
- *Legenda*:
  - *AHR*: Actual Hours by Role;
  - *HCR*: Hourly Cost per Role.

==== MPC08 - Estimate at Completion (EAC):
- *Formula*:
$ "EAC" = "BAC"/"CPI" $
- *Valore accettabile*: $>="BAC"-5%$
- *Valore ottimale*:  $<="BAC"+5%$
- *Descrizione*: L'indice Estimate at Completion rappresenta la stima del costo totale del progetto al momento del suo completamento.
- *Legenda*:
 - *BAC*: Budget at Completion (Budget totale preventivato);
 - *CPI*: Cost Performance Index.

==== MPC09 - Estimate to Complete (ETC)
- *Formula*:
$ "ETC" = "BAC" - "EV" $
- *Valore accettabile*: $>=0€$
- *Valore ottimale*: $<="EAC"$
- *Descrizione*: L'indice Estimate to Complete rappresenta la stima dei costi necessari per completare tutte le attività previste rimanenti.
- *Legenda*:
 - *BAC*: Budget at Completion (Budget totale preventivato).


=== Verifica e validazione

==== MPC10 - Code Coverage (CC)
- *Codice*: 
- *Formula*:
$ "CC" = "Codice testato" / "Codice totale" * 100 $
- *Valore accettabile*: $>=80%$
- *Valore ottimale*: $>=90%$
- *Descrizione*: L'indice di Code Coverage misura la percentuale di codice sorgente che viene eseguita durante l'esecuzione dei test automatici. Indica quanto il codice è stato verificato dal processo di testing.

==== MPC11 - Test Success Rate (TSR)
- *Codice*: MPC13
- *Formula*:
$ "TSR" = "Test passati"/ "Test totali" * 100 $
- *Valore accettabile*: $100%$
- *Valore ottimale*:  $100%$
- *Descrizione*: L'indice Test Success Rate misura la percentuale dei test superati rispetto a quelli totali. 

==== MPC12 - Statement Coverage (SC)
- *Codice*: 
- *Formula*:
$ "SC" = ("Linee eseguite") / "Linee totali" * 100 $
- *Valore accettabile*: $>=90%$
- *Valore ottimale*: $100%$
- *Descrizione*: L'indice Statement Coverage misura la percentuale di istruzioni elementari eseguire dai test.

==== MPC13 - Branch Coverage (BC)
- *Codice*: 
- *Formula*:
$ "BC" = "Branch eseguiti"/ "Branch totali" * 100 $
- *Valore accettabile*: $>=70%$
- *Valore ottimale*:  $>=80%$
- *Descrizione*: L'indice Branch Coverage misura la percentuale di rami decisionali (i percorsi true e false delle condizioni if, while, for) che sono stati percorsi dai test.


=== Documentazione

==== MPC14 - Correttezza ortografica
- *Formula*:
$ "Correttezza ortografica" = "numero di errori ortografici" $
- *Valore accettabile*: $100%$
- *Valore ottimale*: $100%$
- *Descrizione*:  La correttezza ortografica è un indicatore della qualità della documentazione. Tutti i documenti ufficiali devono essere privi di errori ortografici.



== Metriche della Qualità di Prodotto

=== Funzionalità

==== MPD01 - Requisiti obbligatori soddisfatti (RS)
- *Formula*:
$ "RS" = "Requisiti obbligatori soddisfatti"/"Requisiti obbligatori totali" dot 100 $ 
- *Valore accettabile*: $100%$
- *Valore ottimale*: $100%$
- *Descrizione*: L'indice dei requisiti obbligatori soddisfatti rappresenta la percentuale dei requisiti obbligatori completati.

====  MPD02 - Requisiti desiderabili soddisfatti (RDS)
- *Formula*:
$ "RDS" = "Requisiti desiderabili soddisfatti"/"Requisiti desiderabili totali" dot 100 $ 
- *Valore accettabile*: $>=0%$
- *Valore ottimale*: $>=60%$
- *Descrizione*: L'indice dei requisiti desiderabili soddisfatti rappresenta la percentuale dei requisiti desiderabili completati.

==== MPD03 - Requisiti opzionali soddisfatti (ROS)
- *Formula*:
$ "ROS" = "Requisiti opzionali soddisfatti"/"Requisiti opzionali totali" dot 100 $ 
- *Valore accettabile*: $>=0%$
- *Valore ottimale*: $>=30%$
- *Descrizione*: L'indice dei requisiti opzionali soddisfatti rappresenta la percentuale dei requisiti opzionali completati.



=== Adeguatezza funzionale


==== MPD04 - Tempo di caricamento
- *Valore accettabile*: $<=10 "secondi"$
- *Valore ottimale*: $<=5 "secondi"$
- *Descrizione*:L'indice del tempo di caricamento misura il tempo medio che il programma impiega per avviarsi.

==== MPD05 -Tempo medio di risposta (Sistema)
- *Valore accettabile*: $<= 5 "secondi" $
- *Valore ottimale*: $<= 2 "secondi" $
- *Descrizione*: Misura il tempo medio che il sistema impiega per rispondere a operazioni tecniche standard che non coinvolgono l'elaborazione dell'IA. Garantisce la fluidità dell'interazione tecnica.

==== MPD06 -Tempo medio di risposta (Elaborazione AI)
- *Valore accettabile*: $<= 15 "minuti" $
- *Valore ottimale*: $<= 10 "minuti" $
- *Descrizione*: Misura il tempo medio che il sistema impiega per restituire un risultato quando viene sollecitata una richiesta utente che coinvolge il motore di Intelligenza Artificiale.
Nel contesto di _CodeGuardian_, l'uso di modelli LLM per l'analisi e il refactoring del codice nelle repository GitHub richiede un tempo di ragionamento computazionale più alto rispetto alle operazioni standard.

== Manutenibilità

==== MPD07 - Complessità Ciclomatica
- *Formula*:
$ v(G) = E - N + 2P $
- *Valore accettabile*: $<= 15 $
- *Valore ottimale*: $<= 10 $
- *Descrizione*: Misura la complessità logica di un metodo calcolando il numero di cammini linearmente indipendenti attraverso il grafo di controllo del flusso.
Un valore elevato indica che la funzione ha troppe logiche condizionali (if, loop) ed è quindi difficile da testare e soggetta a errori. Se il valore supera la soglia accettabile, è necessario suddividere il metodo in sotto-funzioni più semplici (Refactoring).
- *Legenda*:
  - $v(G)$: Numero ciclomatico del grafo $G$;
  - $E$: Numero di archi (collegamenti) nel grafo di controllo;
  - $N$: Numero di nodi (blocchi di istruzioni) nel grafo di controllo;
  - $P$: Numero di componenti connesse (generalmente $P=1$ calcolando la metrica per singolo metodo).

==== MPD08 - Parametri per metodo

- *Valore accettabile*: $<= 6 $
- *Valore ottimale*: $<= 4 $
- *Descrizione*: L'indice rappresenta il numero massimo di parametri che un metodo può accettare nella sua firma all'interno del codice sorgente. Un numero eccessivo di parametri riduce la leggibilità e aumenta la complessità di test.

==== MPD09 - Linee di codice per metodo

- *Valore accettabile*: $<= 35 $
- *Valore ottimale*: $<= 20 $
- *Descrizione*: L'indice rappresenta il numero massimo di righe di codice da cui può essere composto un singolo metodo. Metodi troppo lunghi violano il principio di "Single Responsibility".

==== MPD10 - Linee di codice per file

- *Valore accettabile*: $<= 120 $
- *Valore ottimale*: $<= 80 $
- *Descrizione*: L'indice rappresenta il numero massimo di righe di codice da cui può essere composto un singolo file sorgente nel progetto.

==== MPD11 - Densità dei commenti (CD)

- *Formula*:
$ "CD" = ("CM" / "CL") dot 100 $
- *Valore accettabile*: $<=15% $
- *Valore ottimale*: $>=5%$
- *Descrizione*:L'indice rappresenta il rapporto percentuale tra le righe di commento e il totale delle righe di codice presenti in un modulo. Misura quanto il codice è documentato inline.
- *Legenda*:
  - *CM*: Numero di righe di commento (Comment Lines);
  - *CL*: Numero di righe di codice (Code Lines).

==== MPD12 - Coefficient of Coupling (CoC)
- *Formula*:
$ "CoC" = "Numero di dipendenze" / "Numero di componenti" $
- *Valore accettabile*: $<= 0.4 $
- *Valore ottimale*: $<= 0.2 $
- *Descrizione*: L'indice misura il grado di accoppiamento medio tra i moduli del sistema. \ Si calcola dividendo il numero totale di dipendenze (import, chiamate tra classi) per il numero totale di componenti (classi o moduli). \ Un valore basso indica un'architettura modulare e disaccoppiata (migliore manutenibilità), mentre un valore superiore a 0.4 indica un accoppiamento eccessivo che rende difficile modificare una parte del sistema senza impattare le altre.


=== Usabilità

====  MPD13 - Tempo di apprendimento
- *Valore accettabile*: $<=10 "minuti"$
- *Valore ottimale*: $<=5 "minuti"$
- *Descrizione*: L'indice del tempo di apprendimento misura il tempo medio che un utente impiega per imparare l'utilizzo del programma in analisi, nel caso di questo progetto è _CodeGuardian_.

==== MPD14 - Indice di Gulpease
- *Formula*:
 $ "Indice Gulpease" = 89 − "numero di lettere" / "numero di parole" dot 100 + "numero di frasi"/
"numero di parole" dot 300 $
- *Valore $>=$80*: La complessità del testo è molto semplice e adatta a lettori che hanno completato la scuola primaria.  
- *Valore tra 60 e 80*:  La complessità del testo è di media difficoltà e adatta a lettori che hanno completato la scuola dell'obbligo.  
- *Valore tra 40 e 60*:  La complessità del testo è di abbastanza complessa e adatta a lettori che hanno almeno un istruzione di livello superiore.  
- *Valore $<$40*:   La complessità del testo complessa e adatta a lettori che hanno un livello di istruzione universitaria.  
- *Valore accettabile*: $>=50$
- *Valore ottimale*: $>=80$
- *Descrizione*:  L'Indice Gulpease è un indice di leggibilità del testo. Tale indice serve per classificare la difficoltà di lettura di un testo per un lettore medio. La formula tiene conto del numero di lettere, parole e frasi nel testo.

=== Affidabilità

==== MPD15 - Error Rate
- *Formula*:
$ "ROS" = "Test eseguiti"/"Test falliti" dot 100 $ 
- *Valore accettabile*: $30%$
- *Valore ottimale*: $15%$
- *Descrizione*: L'indice di Error Rate indica la percentuale di errori durante l'esecuzione. Gli eventuali errori verranno riportati dai programmatori al fine di calcolare il valore della metrica.