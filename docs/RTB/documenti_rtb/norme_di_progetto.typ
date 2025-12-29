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
  "0.2",
  "2025/12/28",
  "Riccardo Baldin",
  "",
  "Stesura Processi Primari e Processi di Supporto",
  "0.1",
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
    #align(left)[HeptaCode #h(57%) Norme di Progetto]
    #v(2pt)
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

_Code Guardian_ è un prodotto ideato dall'azienda _Var Group S.p.a_, si tratta di una piattaforma web basata su un sistema ad agenti per l'audit e la remediation dei repository software. Analizza repository GitHub per valutarne qualità, sicurezza e manutenzione, generando report automatici e suggerendo miglioramenti su test, sicurezza (OWASP) e documentazione.

== Glossario

Termini tecnici e ambiguità sono chiariti nel documento _glossario.pdf_, ogni termine presente nel glossario presenta una lettera "G" come apice, in questo modo intendiamo rendere la lettura della documentazione coerente e chiara.

== Riferimenti

=== Riferimenti Normativi

- Capitolato d'appalto C2 _Vargroup S.p.a._ - Code Guardian: \
#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")

- Standard ISO/x 12207:1995 - Processi di Ciclo di Vita del Software:
#link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")

=== Riferimenti Informativi

- Documentazione Typst: \
#link("https://typst.app/docs/")

= Processi Primari
== Fornitura

=== Scopo

Il processo di fornitura, secondo lo standard ISO/IEC 12207:1995, comprende le attività e le risorse necessarie al fornitore per realizzare il progetto. Esso monitora l'avanzamento delle operazioni del gruppo _HeptaCode_, confrontando il lavoro completato con le richieste del proponente. Questo processo inizia dopo lo Studio di Fattibilità, quando le esigenze del committente sono chiare. Il fornitore stipula un contratto che definisce i requisiti e la data di consegna. Solo dopo l'accordo si passa alla fase esecutiva con la redazione del Piano di Progetto.

==== Fasi della Fornitura
Il processo si articola nelle seguenti attività:

1. Analisi della Richiesta: Valutazione dei requisiti espressi nel Capitolato per determinare la capacità di soddisfare le attese.

2. Preparazione della Proposta: Definizione dell'offerta tecnica e preventivo economico.

3. Pianificazione Tecnica: Redazione della documentazione di coordinamento e programmazione delle attività del progetto, analisi delle risorse e creazione delle milestone.

4. Esecuzione: Sviluppo del software e monitoraggio costante tramite milestone, test, verifiche e documentazione.

5. Controllo: Valutazione del lavoro svolto per garantire la conformità alle regole del gruppo e ai requisiti contrattuali tramite esecuzione dei test di accettazione e revisione del codice scritto.

6. Consegna: Trasferimento del prodotto finale al cliente.

=== Descrizione
In questo processo, il team delimita il perimetro entro cui verrà attuato tutto il lavoro tecnico. La fornitura serve a stabilire le regole con il committente, assicurando che lo sviluppo non proceda a tentoni, ma segua obiettivi precisi, tempi concordati e standard di qualità. In pratica, è l'impegno che ci prendiamo per trasformare le idee del proponente in un software reale e verificato.

=== Aspettative
L'obiettivo principale è la massima aderenza tra quanto richiesto dal proponente e quanto realizzato. Ci si aspetta di:

1. Ridurre al minimo le ambiguità nei requisiti.

2. Garantire un prodotto di qualità tramite verifiche sistematiche.

3. Mantenere una comunicazione fluida per gestire tempestivamente eventuali variazioni in corso d'opera.

=== Rapporti con la Proponente
La comunicazione asincrona con il committente avviene tramite _Slack_, mentre gli incontri telematici vengono fatti tramite la piattaforma _Microsoft Teams_.
Durante gli incontri tra il team e la azienda vengono redatti dei verbali nei quali si evidenziano gli argomenti discussi e le decisioni prese.

=== Documentazione Fornitura
La documentazione prodotta funge da prova tangibile dell'esecuzione dei processi:

==== Analisi dei requisiti:
L'Analisi dei Requisiti è un documento redatto da chi copre il ruolo di Analista e ha come scopo definire le funzionalità necessarie del prodotto in relazione alle richieste della azienda proponente.

==== Piano di Progetto:
Il Piano di Progetto è un documento redatto da chi copre il ruolo di Responsabile e ha come scopo definire una linea guida da seguire durante tutto lo svolgimento del progetto in maniera tale da avere sotto controllo i costi, i tempi e l'andamento generale dell'avanzamento.

==== Piano di Qualifica:
Il Piano di Qualifica è un documento redatto da chi copre il ruolo di Amministratore e ha come scopo definire in dettaglio le strategie di verifica e validazione per garantire la qualità del prodotto finale e dei processi realizzativi.

==== Lettera di Presentazione:
Documento formale tramite il quale il gruppo si è proposto al professor Vardanega come candidato per l'assegnazione del capitolato proposto da _Vargroup S.p.A._.

=== Strumenti

Per la gestione del processo di fornitura, il gruppo utilizza:

*Versionamento*: Git (GitHub) per il controllo dei file sorgente e della documentazione.

*Project Management*: GitHub Projects per il tracking delle task.

*Comunicazione*: Slack o Microsoft Teams per il coordinamento interno e con il committente, Telegram per la comunicazione interna al team.

*Documentazione*: Typst per la realizzazione dei documenti e dei verbali.

== Sviluppo

=== Scopo

Il processo di sviluppo, in conformità allo standard ISO/IEC 12207:1995, definisce le attività tecniche che il gruppo _HeptaCode_ mette in atto per trasformare i requisiti contrattuali in un prodotto software finito. Lo sviluppo si occupa del come realizzare concretamente secondo le regole stabilite durante il processo di Fornitura. L'obiettivo principale è garantire che ogni riga di codice e ogni scelta siano tracciabili e rispondano direttamente alle esigenze della azienda proponente, assicurando al contempo che il prodotto sia robusto, manutenibile e privo di difetti critici.

=== Descrizione

=== Aspettative

=== Analisi dei Requisiti

==== Scopo

Lo scopo principale dell'Analisi dei Requisiti è quello di formalizzare le specifiche funzionali, non funzionali e i vincoli del progetto "_Code Guardian_". Agisce come una fonte di verità unica (_single source of truth_) per il team di sviluppo e per tutti gli stakeholder di VarGroup, con l'obiettivo primario di garantire una comprensione comune e ridurre al minimo le ambiguità che potrebbero emergere nelle fasi successive.

Tramite questo documento è possibile comprendere:

- le necessità degli utenti
- gli obiettivi del prodotto
- il contesto in cui il prodotto verrà utilizzato

==== Descrizione

L'Analisi dei Requisiti è un documento redatto da chi copre il ruolo di Analista e comprende i seguenti concetti:

- *Introduzione*: descrizione dell'obiettivo del documento e riferimenti usati per la stesura del documento.

- *Descrizione del prodotto*: illustra le funzionalità del prodotto e le caratteristiche del comportamento di esso in relazione ai vari utenti che lo utilizzano. Analizza inoltre i vincoli del prodotto e del progetto.

- *Casi d'uso*: rappresentazione in modo formale e non ambiguo le interazioni tra gli utenti (attori) e il sistema.

==== Notazione dei Casi d'uso

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

==== Requisiti

==== Metriche

=== Codifica
==== Descrizione e Scopo

Lo sviluppo del codice è l'attività designata ai Programmatori, i quali devono rendere codice sorgente di qualità ciò che viene deciso durante la progettazione del prodotto.

Gli sviluppatori devono seguire in maniera scolastica gli standard e le linee guida definiti nel _Piano di Qualifica_ al fine di garantire la produzione di codice affidabile, pulito e facilmente manutenibile anche da chi non l'avesse mai letto prima.

==== Aspettative

L'obiettivo è la produzione di codice di qualità in linea con i requisiti e gli obiettivi del progetto che soddisfi le seguenti caratteristiche di qualità:
- Sia semplice e leggibile;
- Sia efficiente nelle prestazioni;
- Abbia una adeguata copertura dei test;
- Rispetti i requisiti del _Piano di Qualifica_

==== Stile di Codifica

Al fine di garantire la manutenibilità del codice gli Sviluppatori dovranno attenersi alle seguenti linee guida:

- *Nomenclatura*: Le variabili, le funzioni, le classi, i metodi devono avere un nome chiaro, univoco e distintivo, al fine di rendere la lettura più semplice e la Manutenibilità del codice più rapida;
- *Indentazione*: Gli spazi e le tabulazioni devono essere utilizzate in modo corretto e uniforme;
- *Sicurezza*: Il codice deve gestire ogni potenziale attacco in maniera corretta, senza presentare vulnerabilità;
- *Efficienza*: Il codice deve poter eseguire ottimizzando il consumo di tempo e di risorse;
- *Testabilità*: Il codice deve essere facilmente testabile; Le funzioni devono avere un solo punto di ritorno e devono gestire un unico scenario; 

==== Metriche

Per rendere oggettiva la qualità del software prodotto, il codice verrà monitorato tramite le seguenti metriche:
- ?? complessità ciclomatica
- ?? campi delle classi

=== Progettazione

==== Scopo

==== Descrizione

==== Aspettative

==== Documentazione

==== Metriche

==== Diagrammi UML

==== Design Pattern

= Processi di Supporto

== Documentazione

=== Descrizione e Scopo

La scrittura di documentazione è un processo essenziale per lo sviluppo software in quanto aiuta sia chi produce sia chi utilizza riguardo alla comprensione del prodotto.

Tramite la documentazione infatti vengono monitorate le attività svolte e quelle da svolgere al fine di lavorare a regola d'arte e produrre del software di qualità.

=== Aspettative

Ciò che ci si aspetta dalla documentazione è che rispetti delle regole al momento della redazione per risultare coerente e uniforme in tutti i documenti. 

=== Ciclo di Vita dei Documenti

I documenti prodotti dal gruppo _HeptaCode_ attraverseranno le seguenti tre fasi:

- *Redazione*: Scrittura del documento da parte di vari membri del gruppo a turno in relazione ai ruoli ricoperti.
- *Revisione*: Controllo dei contenuti del documento da parte di una persona terza alla redazione dello stesso.
- *Distribuzione*: Una volta che il documento viene revisionato da chi di dovere, esso viene pubblicato sul sito web del gruppo.

=== Template Typst

Per garantire la uniformità della documentazione il gruppo ha deciso di creare dei template in Typst sia per la stesura dei verbali (sia interni che esterni), sia per la documentazione; questa idea, oltre a velocizzare la stesura dei verbali, serve anche ad assicurare ai redattori che le loro produzioni siano coerenti con gli standard del gruppo. 

=== Documenti del Progetto

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

=== Struttura dei Documenti

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
  In seguito al Registro dei Cambiamenti ogni documento presenta 3 indici, l'Indice dei Contenuti elenca i capitoli e i paragrafi, l'Indice delle Tabelle elenca le etichette delle tabelle presenti e l'Indice delle immagini elenca le etichette delle immagini del documento.

=== Struttura dei Verbali

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

=== Convenzioni Stilistiche

Ogni file di documentazione deve essere chiamato come il suo titolo, ed ogni file di verbale deve avere nel nome la data in formato YY-MM-GG al fine di rendere più rapida la ricerca e la consultazione dei documenti.

All'interno degli indici non deve essere usato il grassetto, utilizzabile invece per enfatizzare termini importanti ad esempio in elenchi puntati.

=== Strumenti

Per produrre la documentazione il gruppo adopera il linguaggio di markup Typst sfruttandone il sistema di templating per garantire coerenza grafica e uniformità strutturale tra i diversi documenti.

Per condividere i documenti tra i membri essi vengono caricati nella repository GitHub tramite la quale vengono anche effettuati controlli grammaticali e sintattici automatici con l'ausilio delle GitHub Actions.

=== Metriche

?? istituire le metriche di valutazione dei documenti (periodi lunghi / parole lunghe / etc)

== Verifica

=== Descrizione e Scopo

Il processo di verifica costituisce un'attività di supporto fondamentale volta ad accertare, mediante analisi e prove oggettive, che i prodotti intermedi e finali del progetto soddisfino i requisiti specificati in ogni fase del ciclo di vita.

L'obiettivo primario è duplice:

- Per il software: garantire che il codice e le componenti tecniche siano conformi alle specifiche di progettazione e ai vincoli tecnici, minimizzando il rischio di difetti logici o di implementazione attraverso test funzionali e revisioni del codice.

- Per la documentazione: assicurare la correttezza formale, la coerenza sintattica e la precisione semantica dei testi prodotti, verificando che le informazioni trasmesse siano complete, aggiornate e aderenti agli standard qualitativi prefissati (come l'utilizzo rigoroso dei template in Typst).

In sintesi la verifica fornisce una base di fiducia necessaria per il rilascio del sistema e del materiale di supporto.

=== Aspettative

Le aspettative del processo di Verifica sono quindi le seguenti:

- Identificare alla radice errori nel software e nella documentazione, riducendo i costi di correzione.

- Dimostrare che il software e la documentazione siano coerenti con dei requisiti pregressi.

- Accettarsi che il codice rispetti le linee guida stilistiche e la documentazione sia coerente con il template Typst.

- Generare documenti che attestino lo stato di progresso del progetto.


=== Analisi Statica

L'analisi statica viene eseguita senza l'esecuzione diretta del codice sorgente o dei documenti, focalizzandosi sulla struttura e sulla conformità formale. Per quanto riguarda il software, l'attività si concentra sulla revisione del codice per identificare potenziali vulnerabilità o errori logici. 
Per la documentazione, la verifica statica è supportata dal compilatore Typst, che garantisce la correttezza sintattica e il rispetto dei vincoli definiti nel template di gruppo. In questa fase, la verifica mira ad assicurare che ogni componente sia strutturalmente pronto per le fasi successive.

=== Analisi Dinamica

L'analisi dinamica prevede la verifica del sistema attraverso la sua esecuzione. Grazie all'integrazione di pipeline di *Continuous Integration* tramite *GitHub Actions*, gran parte di questi processi viene automatizzata per garantire feedback rapidi al team di sviluppo.

==== Test di Unità

Questi test sono mirati a verificare il corretto funzionamento delle singole unità logiche (funzioni, classi o moduli) in modo isolato. Verranno implementati utilizzando framework specifici per gli stack tecnologici scelti per validare la logica interna prima dell'integrazione.

==== Test di Integrazione

Considerando l'architettura basata su Database, Backend e Frontend, i test di integrazione verificano che la comunicazione tra questi tre livelli avvenga correttamente. L'obiettivo è assicurare che il flusso dei dati tra le API del backend e le collezioni del database sia coerente e privo di errori di interfaccia.

==== Test di Sistema

I test di sistema verificano l'intero applicativo nel suo complesso rispetto ai requisiti definiti nel capitolato. L'analisi mira a confermare che l'integrazione totale tra interfaccia utente e servizi rispetti le performance e le funzionalità attese.

==== Test di Regressione

Per ogni nuova funzionalità introdotta o bug corretto, vengono eseguiti test di regressione automatizzati tramite GitHub Actions. Questo assicura che le modifiche al codice non compromettano le funzionalità precedentemente verificate e funzionanti.

==== Test di Accettazione

Rappresentano la fase finale della verifica e mirano a confermare che il prodotto sia pronto per la consegna all'azienda cliente. Questi test si basano direttamente sui criteri di accettazione definiti con l'azienda, validando che il software soddisfi pienamente i requisiti contrattuali.

== Validazione

=== Descrizione e scopo

Il processo di validazione fornisce la conferma, attraverso la fornitura di prove oggettive, che i requisiti per l'utilizzo specifico previsto siano stati soddisfatti. L'obiettivo è assicurare che il sistema realizzato sia conforme alle aspettative dell'azienda cliente e degli utenti finali.

=== Aspettative

Le principali aspettative di questo processo includono:
- *Soddisfazione del capitolato*: dimostrare che ogni funzionalità richiesta dal committente sia stata implementata e risulti operativa;
- *Idoneità all'uso*: accertare che l'interfaccia e le logiche di business siano intuitive e risolvano i problemi reali dell'utente;
- *Accettazione formale*: ottenere l'approvazione finale dell'azienda esterna attraverso la dimostrazione del prodotto completo.

=== Proof of Concept (PoC)

Il gruppo ha previsto la realizzazione di un *Proof of Concept* come milestone fondamentale del processo di validazione. 

Lo scopo del PoC è:

- *Validazione tecnologica*: dimostrare che lo stack scelto sia idoneo a soddisfare i requisiti critici del capitolato;
- *Riduzione del rischio*: identificare tempestivamente eventuali limiti tecnici o architetturali prima della fase di sviluppo intensivo;
- *Feedback immediato*: fornire all'azienda e ai docenti una prova tangibile del funzionamento, permettendo di validare la direzione intrapresa.

== Gestione della Configurazione

=== Descrizione e Scopo

La gestione della configurazione ha l'obiettivo di identificare, organizzare e controllare le modifiche a tutti i prodotti del progetto (codice e documentazione). Il processo assicura l'integrità degli artefatti e la tracciabilità delle evoluzioni, permettendo al gruppo di lavorare in parallelo minimizzando i conflitti e garantendo la riproducibilità di ogni versione rilasciata.

=== Codice di Versionamento

Il gruppo adotta Git come sistema di controllo di versione. La strategia di branching prevede l'utilizzo di un ramo principale destinato alle versioni stabili. 
- *Documentazione*: si utilizza un approccio "branch-per-documento", dove ogni nuova sezione o revisione viene sviluppata in un ramo dedicato prima di essere integrata nel _main_ tramite operazione di merge.
- *Software*: si prevede l'adozione di un modello simile, orientato alla gestione di funzionalità isolate per mantenere il codice sorgente sempre testabile.

=== Tecnologie Adottate

Il controllo di versione e la collaborazione sono centralizzati sulla piattaforma GitHub. Per garantire l'uniformità degli ambienti di sviluppo è previsto l'utilizzo di Docker, che permetterà di containerizzare i servizi di backend, frontend e database. Per il software, la gestione delle versioni seguirà lo standard Semantic Versioning, garantendo una comunicazione chiara sull'entità degli aggiornamenti rilasciati.

=== Repository

Il progetto è organizzato in una struttura con due repository per separare logicamente le responsabilità:
- *Repository Documentale*: ospitato su una repo specifica, contiene esclusivamente i file sorgente Typst e le configurazioni per il sito web statico.
- *Repository Software*: organizzato come monorepo, contenente cartelle distinte per il frontend e il backend, facilitando la gestione delle dipendenze correlate e dei Dockerfile di orchestrazione.

=== Sincronizzazione

La sincronizzazione del lavoro tra i membri del gruppo è gestita attraverso:
- *GitHub Issues e Project Board*: per la pianificazione e l'assegnazione dei task, permettendo di collegare ogni modifica a una specifica esigenza di progetto.
- *Continuous Integration*: per la documentazione, è attiva una GitHub Action che interviene ad ogni aggiornamento dei file `.typ`. Il runner compila automaticamente i sorgenti e genera i PDF aggiornati.
- *Gestione delle Pull Request*: per garantire la stabilità del ramo `main`, il gruppo adotta il meccanismo delle Pull Request come filtro di qualità. Prima dell'integrazione definitiva, la CI verifica che il codice (o il documento) sia privo di errori sintattici; il merge è consentito solo in caso di esito positivo della compilazione, impedendo che errori accidentali interrompano la disponibilità della documentazione online.

== Gestione della Qualità

=== Descrizione e Scopo

=== PDCA

==== Plan

==== Do

==== Check

==== Act

=== Strumenti

=== Struttura delle Metriche

=== Struttura degli Obiettivi

=== Metriche

= Processi Organizzativi

== Gestione dei Processi

=== Scopo

=== Descrizione

=== Aspettative

=== Pianificazione

==== Scopo

==== Descrizione

==== Aspettative

==== Assegnazione Ruoli

==== Ticketing

=== Coordinamento

==== Scopo

==== Descrizione

==== Aspettative

==== Comunicazioni

==== Riunioni

=== Metriche

== Miglioramento

=== Scopo

=== Descrizione

==== Analisi

==== Miglioramento

==== Metriche

== Formazione

=== Scopo

=== Aspettative

=== Formazione dei Membri del Gruppo

= Standard per la Qualità

== Funzionalità

== Affidabilità

== Usabilità

== Efficienza

== Manutenibilità

== Portabilità

= Metriche per la Qualità

== Metriche Interne

== Metriche Esterne

== Metriche della Qualità in Uso

== Metriche della Qualità di Processo

=== Miglioramento

=== Fornitura

=== Codifica

=== Documentazione

== Metriche della Qualità di Prodotto

=== Funzionalità

=== Usabilità

== Manutenibilità

=== Affidabilità