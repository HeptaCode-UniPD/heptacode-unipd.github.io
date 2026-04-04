#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola
#import "../../templates/glossario_termini.typ": applica-glossario

#let storia_modifiche = (
  ("1.0.0", "2026/04/03", "Angela Favaro", "Laura Venturini",  "Approvazione finale, rilascio ufficiale v1.0.0"),

  ("0.6.0", "2026/04/03", "Alberto Reginato", "Riccardo Baldin",  "Aggiunte specifiche MS2"),
  ("0.5.0", "2026/03/02", "Amerigo Vegliante", "",  "Aggiunte specifiche MS1"),
  ("0.4.0", "2026/04/01", "Angela Favaro", "Nicola Simionato",  "Aggiunte specifiche MS3"),
  ("0.3.0", "2026/04/01", "Angela Canazza", "",  "Aggiunte specifiche MS0"),
  ("0.2.0", "2026/03/08", "Angela Favaro", "Angela Canazza",  "Aggiunto capitolo 1"),
  ("0.1.0", "2026/03/07", "Angela Favaro", "Laura Ventrini",  "Creazione documento, impostazione macro-aree")
)

#show: doc => template_documenti(
  titolo: "Specifica Tecnica",
  descrizione: "Il presente documento contiene la specifica tecnica del gruppo _Hepta Code_ relativo al capitolato _Code Guardian_ proposto dall'azienda _Var Group_.",
  modifiche: storia_modifiche,
  lista_tabelle: true,
  lista_figure: true,
  doc
)

#show: applica-glossario

= Introduzione
== Scopo del documento
Il documento di Specifica Tecnica descrive in modo preciso e dettagliato come il sistema software deve essere progettato e realizzato per soddisfare i requisiti all'interno del documento di #link("https://heptacode-unipd.github.io/docs/PB/Analisi_requisitiv3.0.0.pdf")[_Analisi dei Requisiti v3.0.0_]. \
Le funzioni del seguente documento sono:
- Guida durante l'implementazione, riducendo ambiguità e decisioni improvvisate.
- Allineamento del team su scelte architetturali e tecnologiche.
- Supporto alla manutenzione futura.
- Agevolazione dell'attività di testing, definendo comportamenti attesi e criteri di accettazione.

== Glossario
La stesura del presente documento fa uso di una terminologia specifica, legata sia al dominio applicativo del progetto "_Code Guardian_" che agli standard dell'Ingegneria del Software. Per facilitare la lettura e assicurare che ogni concetto sia compreso in modo uniforme da tutti i destinatari (team di sviluppo, committente e proponente), è stato redatto un documento di supporto dedicato.

Si faccia pertanto riferimento al #link("https://heptacode-unipd.github.io/docs/PB/glossario.pdf")[_Glossario v3.0.0_] per l'esplicitazione di:
- *Acronimi e sigle* utilizzati per brevità nel testo;
- *Termini tecnici* che potrebbero prestarsi a molteplici interpretazioni;
- *Definizioni di dominio* specifiche per il contesto di audit e qualità del software.

L'uso del glossario è raccomandato per garantire la piena coerenza semantica durante tutte le fasi del ciclo di vita del progetto.

== Riferimenti
Questa sezione elenca i documenti utilizzati come base per la stesura della presente analisi.

=== Riferimenti Normativi
- _Code Guardian_: Piattaforma ad agenti per l’audit e la remediation dei repository software (#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2p.pdf")[Capitolato])
- _Norme di progetto_: Regole, standard e procedure del gruppo _Hepta Code_ (#link("https://heptacode-unipd.github.io/docs/PB/documenti/Norme_di_progetto_v2.0.0.pdf")[Norme di progetto v2.0.0]).

=== Riferimenti Informativi
- Regolamento del progetto didattico: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/PD1.pdf")[Regolamento di progetto]
- Lezioni su progettazioni e pattern architetturali:
  - #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")[Progettazione e programmazione: Diagrammi delle classi (UML)]
 - #link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf")[Progettazione: I pattern architetturali]
 - #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")[Progettazione: I pattern strutturali]
- Documento interno: #link("https://heptacode-unipd.github.io/docs/PB/glossario.pdf")[Glossario v3.0.0]
Questa introduzione delinea il contesto e gli scopi del progetto.
= Tecnologie 
== Linguaggi di programmazione
=== Typescript v5.7.x
Il progetto è sviluppato in Typescript, un superset di JavaScript che introduce tipizzazione statica opzionale. \  La *tipizzazione statica e riduzione degli errori a runtime* TypeScript consente di intercettare intere categorie di errori già in fase di compilazione, prima che il codice raggiunga l'ambiente di esecuzione. \ 
In un'applicazione full-stack dove frontend e backend si scambiano dati via API, la definizione di interfacce e tipi condivisi elimina ambiguità sui contratti di dato, riducendo drasticamente i bug dovuti a proprietà mancanti, tipi inattesi o refactoring parziali. \ 
Il supporto al completamento automatico, alla navigazione del codice e al refactoring assistito offerto dagli IDE come VS Code è notevolmente potenziato dalla presenza dei tipi. Questo si traduce in *cicli di sviluppo più rapidi e in un onboarding più agevole per nuovi membri del team*. \ 
Su tutti gli strati applicativi *è possibile condividere modelli di dominio, DTO (Data Transfer Object) e interfacce in un unico package condiviso*, garantendo coerenza tra le strutture dati prodotte dal backend e quelle consumate dal frontend, senza duplicazione del codice.
== Framework 
=== NestJS v11.0.x
NestJS è il framework applicativo scelto per strutturare il layer server.

- _Architettura modulare e scalabile_: organizza il codice in moduli, controller e service, imponendo una struttura chiara che facilita la separazione delle responsabilità e la crescita ordinata del progetto nel tempo.
- _Dependency Injection nativa_: Il sistema di DI integrato rende i componenti disaccoppiati, testabili in isolamento e facilmente sostituibili, migliorando la qualità architetturale complessiva.
- _NestJS è scritto nativamente in TypeScript_: ne sfrutta appieno i decoratori e il sistema di tipi, rendendolo la scelta più coerente con il resto della stack.
- _Supporto integrato per pattern enterprise_: NestJS offre supporto per pipe di validazione, middleware e gestione centralizzata degli errori, riducendo la necessità di soluzioni "su misura" per funzionalità trasversali.
== Librerie e dipendenze
=== React v19.2.4 
React è stato scelto come libreria UI, le motivazioni principali sono state:

- _Modello a componenti_ — L'architettura basata su componenti riutilizzabili favorisce la separazione delle responsabilità, facilita i test unitari e permette di costruire interfacce complesse in modo incrementale e controllato.
- _Ecosistema maturo_ — React dispone di un ecosistema vastissimo che spesso non richiede soluzioni "su misura".
- _Virtual DOM e performance_ — Il meccanismo di riconciliazione del Virtual DOM garantisce aggiornamenti efficienti dell'interfaccia, limitando le operazioni sul DOM reale ai soli nodi effettivamente modificati.
- _Integrazione nativa con TypeScript_ — React supporta pienamente TypeScript, con tipizzazione completa di props, state, hook e context, rendendo il codice frontend robusto e verificabile staticamente.

=== Dipendenze frontend (React)
#figure(
  caption: [Dipendenze frontend, core],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none)
) <dipendenze-frontend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [react, \ react-dom],[v19.2.0],[Libreria principale per la costruzione dell'interfaccia utente e il rendering nel DOM. Scelto per la sua architettura a componenti e il vasto ecosistema.],
)
#figure(
  caption: [Dipendenze frontend, routing e utility],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none)
) <dipendenze-frontend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [react-router-dom],[v7.13.1],[Gestione del routing lato client. Fornisce i componenti \<Route\>, \<Link\> e gli hook useNavigate e useParams per la navigazione tra le pagine.],
  [react-icons],[v5.6.0],[Libreria di icone SVG. Aggrega i principali icon set in un unico pacchetto importabile come componenti React.],
)
#figure(
  caption: [Dipendenze frontend, build e compilazione],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none)
) <dipendenze-frontend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [vite],[v7.2.4],[Bundler e dev server. Scelto per la velocità di avvio grazie all'uso nativo dei moduli ES e all’HMR istantaneo.],
  [\@vitejs/plugin-react],[v5.1.1],[Plugin Vite che abilita il supporto a JSX e al Fast Refresh di React durante lo sviluppo.],
  [typescript],[v5.9.3],[Superset tipizzato di JavaScript. Usato per garantire la correttezza dei tipi a tempo di compilazione.],
  [\@types/react, \ \@types/react-dom, \ \@types/node, \ \@types/diff],[varie],[Definizioni dei tipi TypeScript per le rispettive librerie.],
)
#figure(
  caption: [Dipendenze frontend, testing],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none)
) <dipendenze-frontend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [vitest],[v4.1.1],[Framework di test nativo per Vite. Compatibile con l’API di Jest, condivide la configurazione di Vite evitando setup duplicati.],
  [\@vitest/coverage-v8],[v4.1.1],[Provider di code coverage basato su V8. Attivato tramite il comando test:cov, non richiede import espliciti nel codice.],
  [\@vitest/ui],[v4.1.1],[Interfaccia grafica per visualizzare i risultati dei test nel browser.],
  [\@testing-library/react, \ \@testing-library/dom],[v16.3.2 / v10.4.1],[Utility per testare componenti React simulando l'interazione reale con il DOM, senza dipendere dall'implementazione interna.],
  [\@testing-library/jest-dom],[v6.9.1],[Estende i matcher di Vitest con asserzioni specifiche per il DOM (toBeInTheDocument, toHaveClass, ecc.).],
  [\@testing-library/user-event],[v14.6.1],[Simula eventi utente realistici (click, digitazione, tab) nei test, più fedele al comportamento del browser rispetto a fireEvent.],
  [jsdom],[v29.0.1],[Implementazione del DOM in ambiente Node.js. Usato da Vitest come ambiente di test per simulare il browser.],
)
#figure(
  caption: [Dipendenze frontend, qualità del codice],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none)
) <dipendenze-frontend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [eslint, \ \@eslint/js],[v9.39.1],[Analisi statica del codice TypeScript.],
  [typescript-eslint],[v8.46.4],[Plugin ESLint per TypeScript. Abilita regole type-aware che richiedono le informazioni del compilatore.],
  [eslint-plugin-react-hooks],[v7.0.1],[Controlla il corretto utilizzo degli hook React (Rules of Hooks).],
  [eslint-plugin-react-refresh],[v0.4.24],[Avverte se un componente non è compatibile con il Fast Refresh di Vite.],
  [globals],[v16.5.0],[Fornisce le liste di variabili globali per i vari ambienti (browser, node) usate nella configurazione ESLint.],
)

=== Dipendenze backend (Node.js / NestJS)
#figure(
  caption: [Dipendenze backend, framework e core],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-backend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [\@nestjs/common, \ \@nestjs/core],[v11.0.1],[Gestisce il sistema di Dependency Injection, i moduli, i controller e i decorator. Ideale per microservizi strutturati.],
  [\@nestjs/platform-express],[v11.0.1],[Adattatore HTTP per NestJS basato su Express. Gestisce il server HTTP sottostante.]
)
#figure(
  caption: [Dipendenze backend, persistenza],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-backend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [\@nestjs/mongoose],[v11.0.4],[ Integrazione ufficiale NestJS con Mongoose. Fornisce i decorator \@Schema, \@Prop, \@InjectModel per collegare il layer di persistenza al framework.],
  [mongoose],[v9.3.2],[ODM per MongoDB. Gestisce la definizione degli schemi, le query e la connessione al database. Scelto per la sua maturità e integrazione nativa con NestJS.],
  [mongodb],[v7.1.1],[Driver nativo MongoDB, dipendenza di Mongoose.],
)
#figure(
  caption: [Dipendenze backend, sicurezza],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-backend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [bcrypt ],[v6.0.0],[Hashing delle password. Usato nel layer applicativo per non salvare mai password in chiaro nel database.],
)
#figure(
  caption: [Dipendenze backend, validazione],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-backend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [class-validator],[v0.15.1],[Validazione dei DTO tramite decorator (\@IsEmail, \@IsUrl, \@MinLength). Integrato con NestJS tramite ValidationPipe],
  [class-transformer],[v0.5.1],[Trasformazione degli oggetti plain in istanze di classe. Necessario per far funzionare class-validator con NestJS.],
  [jest],[v30.x],[Framework di test principale],
  [ts-jest],[v29.x],[Permette di eseguire test scritti in TypeScript direttamente senza compilazione separata.],
  [\@nestjs/testing],[v11.0.1],[Utility per creare moduli NestJS isolati nei test. Mock delle dipendenze negli unit test.],
  [supertest],[v7.0.0],[Libreria per testare endpoint HTTP e integrazione.],
)
#figure(
  caption: [Dipendenze backend, qualità del codice],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-backend>
#tabella-viola(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: (left, left, left),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [eslint],[v9.x],[Analisi statica del codice. Configurato con regole custom per complessità ciclomatica, lunghezza dei metodi e numero di parametri.],
  [typescript-eslint],[v8.x],[Plugin ESLint per TypeScript.],
  [prettier],[v3.x],[Formattazione automatica del codice.],
)

#figure(
  caption: [Dipendenze backend, integrazione cloud AWS],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-aws>
#tabella-viola(
  columns: (auto, auto, auto),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [\@aws-sdk/client-s3],[v3.1017.0],[Client per l'interazione con AWS S3. Utilizzato per il salvataggio dei repository scaricati e dei report generati.],
  [\@aws-sdk/client-bedrock-agent-runtime],[v3.1019.0],[Integrazione con Amazon Bedrock per l'esecuzione di analisi tramite Large Language Models (LLM).],
  [\@aws-sdk/client-sfn],[v3.1017.0],[Gestione delle AWS Step Functions per il coordinamento dei workflow di analisi asincroni.]
)
#figure(
  caption: [Dipendenze backend, documentazione],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-docs>
#tabella-viola(
  columns: (auto, auto, auto),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [\@nestjs/swagger],[v11.2.6],[Modulo per la generazione automatica della documentazione OpenAPI tramite decorator.],
  [swagger-ui-express],[v5.0.1],[Fornisce l'interfaccia grafica interattiva per esplorare e testare gli endpoint della specifica OpenAPI.]
)
#figure(
  caption: [Dipendenze backend, utility di analisi],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-analysis>
#tabella-viola(
  columns: (auto, auto, auto),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [repomix],[v1.13.1],[Strumento utilizzato per impacchettare l'intero repository in un formato ottimizzato per il contesto degli LLM.],
  [adm-zip],[v0.5.16],[Libreria per la manipolazione di file ZIP (estrazione dei repository scaricati da sorgenti esterne).],
  [rxjs],[v7.8.1],[Libreria per la programmazione reattiva tramite Observables, cuore pulsante della gestione degli eventi in NestJS.]
)
#figure(
  caption: [Dipendenze backend, infrastruttura serverless],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <dipendenze-serverless>
#tabella-viola(
  columns: (auto, auto, auto),
  table.header([*Nome*], [*Versione*], [*Descrizione*]),
  [\@vendia/serverless-express],[v4.12.6],[Adattatore per far girare l'applicazione NestJS/Express all'interno di funzioni AWS Lambda.],
  [serverless],[v4.33.0],[Framework per il deployment e la gestione dell'infrastruttura Cloud come codice (IaC).]
)

== Runtime enviroment
=== NodeJS v24
Node.js è l'ambiente di runtime scelto per eseguire il codice server-side. Node.js è il runtime che consente l'esecuzione di TypeScript lato server, al di fuori del browser. Le motivazioni che hanno portato il gruppo a questa scelta progettuale sono state:

- _Uniformità del linguaggio_ — L'utilizzo dello stesso linguaggio su frontend e backend elimina il context-switch, consente la condivisione di logica e tipi comuni, e semplifica la gestione delle dipendenze.
- _Architettura non bloccante e I/O asincrono_ — Il modello event-driven di Node.js lo rende particolarmente adatto ad applicazioni con elevata concorrenza di richieste I/O, come chiamate a database e API esterne.
- _Ecosistema npm_ — npm mette a disposizione il più grande repository di librerie open source esistente.

== Infrastruttura di deployment
=== Docker Engine v29.3.0
I microservizi utilizzano Docker come tecnologia di containerizzazione. Il "Dockerfile" definisce l'immagine di produzione.

== Tecnologie per la persistenza dei dati
=== MongoDB v8.0.x
La scelta di MongoDB come database principale è strettamente legata alla natura della piattaforma ad agenti basata su analisi di repository. In un sistema dove i dati prodotti e consumati dagli agenti hanno strutture eterogenee, variabili nel tempo e difficilmente riducibili a uno schema relazionale fisso (come nel caso di un repository documentale piuttosto che di sviluppo ecc.), un database orientato ai documenti è la soluzione più adatta.
Nello specifico:
- _Schema flessibile_: non richiede uno schema rigido predefinito. Questo è particolarmente vantaggioso in Code Guardian dove ogni agente può produrre output con strutture diverse, e dove il modello dati pu; cambiare facilmente.
- _Dati gerarchici e annidati_: — I documenti JSON di MongoDB si prestano naturalmente a rappresentare strutture dati complesse e annidate (contesti agentici) senza dover ricorrere a join tra tabelle come in un database relazionale.
- _Scalabilità orizzontale_ — MongoDB è progettato per scalare orizzontalmente tramite sharding nativo, caratteristica importante in una piattaforma che può dover gestire volumi crescenti di sessioni agentiche in parallelo.
- _Integrazione con l'ecosistema TypeScript_ — Tramite Mongoose o il driver nativo MongoDB, la definizione di schemi e modelli tipizzati in TypeScript è diretta e ben supportata, mantenendo la coerenza con il resto della stack.

== Tecnologie per infrastruttura cloud
=== AWS
AWS è il provider cloud adottato per l'intera infrastruttura della piattaforma. La scelta è motivata dalla maturità del catalogo di servizi, dall'integrazione nativa tra essi e dalla diffusione enterprise che ne garantisce un ecosistema di riferimento consolidato. In un'architettura ad agenti dove runtime serverless, orchestratori a stati, modelli LLM e storage devono comunicare in modo affidabile, operare in un unico ecosistema riduce la complessità operativa.
==== AWS Bedrock
Bedrock fornisce accesso a modelli fondazionali LLM tramite un'unica API gestita. Ogni agente è configurato come Bedrock Agent con un proprio system prompt e invocato dalle Lambda tramite l'SDK BedrockAgentRuntimeClient. \ Il modello LLM sottostante è disaccoppiato dal codice: aggiornare versione o provider richiede solo una modifica all'alias Bedrock, senza toccare le Lambda.
==== AWS Lambda
Lambda è il runtime di tutta la logica agentica: pull del repository, planning, esecuzione degli agenti (OWASP, Test, Docs), aggregazione, polishing e notifica webhook sono ciascuno una funzione Lambda distinta. Il modello serverless è adatto a questo workload perché i task sono asincroni, di durata variabile e attivati su eventi; inoltre il costo è strettamente proporzionale all'elaborazione effettiva.
==== AWS Step Functions
Step Functions orchestra l'intero flusso agentico come macchina a stati: gestisce sequenza, parallelismo nativo (OWASP e Test Agent in contemporanea), branching condizionale sul flag runDocs, retry, timeout e propagazione degli errori verso il failure handler. Evita di dover implementare manualmente la logica di coordinamento tra Lambda e rende il flusso ispezionabile visivamente dalla console AWS.
==== AWS S3
S3 svolge due ruoli distinti nella piattaforma: archivia il repository clonato come ZIP che gli agenti recuperano autonomamente per l'analisi, e funge da bus di stato asincrono tra gli agenti paralleli — ogni domain agent scrive il proprio report parziale su S3 al termine dell'elaborazione, e l'orchestratore aggregatore li recupera e cancella nella fase successiva. Questo disaccoppia i componenti paralleli senza richiedere comunicazione diretta tra Lambda.
==== AWS Fargate
Fargate è il runtime serverless per container, utilizzato per hostare il frontend e il backend NestJS. Elimina la gestione dei nodi del cluster: i container vengono deployati tramite immagini ECR, scalano automaticamente e il traffico è instradato tramite Application Load Balancer. È la scelta naturale per i componenti con ciclo di vita HTTP continuo, a differenza della logica agentica che per sua natura è event-driven e gestita da Lambda.

== Tecnologie per Continuous Integration
=== GitHub Actions
Il progetto adotta GitHub Actions come sistema di Continuous Integration (CI). Il workflow è definito nel file con estensione ".yml" e viene eseguito automaticamente ad ogni push request sul branch main.
Il pipeline è strutturato in un job che esegue:
+ analisi statica tramite ESLint e Prettier per verificare la conformità del codice agli standard definiti, incluse metriche di qualità come complessità ciclomatica, lunghezza dei metodi e numero di parametri;
+ esecuzione degli unit test con generazione del report di coverage; esecuzione dei test di integrazione (_e2e_) con un'istanza MongoDB dedicata; verifica dell'integrità della build tramite compilazione TypeScript. Al termine del job, il report di coverage viene salvato come artifact di GitHub Actions.
+ verifica delle metriche di qualità del codice, disponibili nel documento di #link("https://heptacode-unipd.github.io/docs/PB/Piano_di_Qualificav2.0.0.pdf")[Piano di Qualifica v2.0.0].

= Architettura
Il sistema è strutturato secondo un'architettura a microservizi, composta da tre componenti indipendenti che collaborano per fornire le funzionalità applicative ed una componente di frontend. \ Ciascun microservizio adotta internamente una Layered Architecture, suddividendo le responsabilità in strati distinti e garantendo separazione delle competenze (separation of concerns).
== Architettura logica
=== Layered Architecture
Ogni microservizio è organizzato nei seguenti layer:

_Presentation Layer_ #pad(left: 0.5cm)[ Costituisce il punto di ingresso del microservizio. Si occupa della ricezione delle richieste, della validazione dei dati in ingresso e della loro trasformazione in strutture tipizzate (DTO) prima che vengano propagate agli strati sottostanti.]
_Business Layer_ #pad(left: 0.5cm)[Contiene la logica applicativa del microservizio, orchestrando le operazioni sui dati e coordinando le interazioni con i componenti di persistenza e con i servizi esterni. Questo layer è esposto esclusivamente tramite interfacce, in modo da disaccoppiare la logica applicativa dalla sua implementazione concreta.]
_Data Layer_ #pad(left: 0.5cm)[Gestisce l'accesso al layer di persistenza dei dati attraverso il pattern Repository, garantendo che il dominio applicativo rimanga indipendente dalla tecnologia di storage sottostante. La traduzione tra entità di dominio e modelli di persistenza è delegata a componenti Mapper dedicati.]
// da rifare

== Architettura di deployment
L'architettura di deployment adottata per il sistema è basata su microservizi. Questa scelta progettuale garantisce elevata scalabilità, resilienza e una totale indipendenza nello sviluppo e nel rilascio dei singoli componenti software. Ogni microservizio costituisce un'entità autonoma, responsabile di un insieme specifico e circoscritto di funzionalità.

*Comunicazione tra i servizi*
#pad(left: 0.5cm)[A differenza dei sistemi basati su messaggistica asincrona, i microservizi comunicano tra loro tramite interfacce API REST (Representational State Transfer). L'adozione di questo protocollo garantisce una comunicazione chiara e ben definita tra i componenti, facilitando l'integrazione e le attività di debugging. Il modello sincrono consente inoltre un flusso di dati immediato, risultando particolarmente adatto alle operazioni agentiche che richiedono una risposta in tempo reale.]
*Containerizzazione e Deployment*
#pad(left: 0.5cm)[Il deployment dei microservizi avviene in ambienti virtualizzati tramite Docker. Ogni microservizio è incapsulato in un container indipendente, operante in un ambiente isolato che previene conflitti di dipendenze e interferenze tra i servizi. Questa soluzione semplifica le fasi di test, rilascio e aggiornamento, assicurando che il software si comporti in modo identico in qualsiasi ambiente di esecuzione. La natura dei container permette infine di replicare i singoli servizi in modo rapido ed efficiente, consentendo al sistema di adattarsi dinamicamente a carichi di lavoro variabili.]

=== Microservizi

*Microservizio Frontend - MS0* #pad(left: 0.5cm)[Costituisce il punto di accesso dell'utente al sistema. Espone le seguenti funzionalità: autenticazione e visualizzazione del profilo utente, inserimento dell'URL di un repository GitHub da analizzare, e consultazione dei risultati dell'analisi. Quest'ultima comprende tre aree distinte: copertura dei test, qualità della documentazione e vulnerabilità di sicurezza secondo le linee guida OWASP. Per ciascuna area vengono presentati i suggerimenti di modifica, le motivazioni dietro le modifiche proposte e le criticità rilevate.]

*Microservizio di Analysis Management - MS1*  #pad(left: 0.5cm)[Ha il compito di verificare se, per un dato repository, sia già presente in memoria un'analisi relativa all'ultimo commit disponibile. Qualora l'analisi risulti assente o non aggiornata, il microservizio provvede ad inoltrare la richiesta di analisi al microservizio competente, evitando elaborazioni ridondanti e ottimizzando l'utilizzo delle risorse computazionali.]

*Microservizio di Analisi dei Repository - MS2* #pad(left: 0.5cm)[Si occupa dell'analisi del codice sorgente delle repository mediante l'impiego di agenti software. Ricevuta una richiesta, il microservizio avvia il processo di analisi, delegando l'esecuzione a due o tre agenti specializzati e restituendo i risultati al chiamante.]

*Microservizio di Autenticazione e Repository Management - MS3*:
//#figure( [#image("../../asset/Diagr-architett/architett_authrepo.png")] , caption: [Layered architecture - MS3])
#pad(left: 0.5cm)[Responsabile della gestione degli utenti e delle repository associate. Espone funzionalità di registrazione e autenticazione degli utenti, nonché di aggiunta e rimozione di repository. L'interazione con il servizio esterno GitHub è mediata da un componente Adapter, che isola il sistema dalle specificità dell’API esterna.]
== Design pattern

// USATI IN MS1

// USATI IN MS2

// USATI IN MS3
- *Dependency Injection*
Il sistema adotta il pattern Dependency Injection tramite il container IoC di NestJS. Le dipendenze tra i layer sono mediate da interfacce, garantendo disaccoppiamento e sostituibilità delle implementazioni concrete.

- *Adapter* \ Adapter Il pattern Adapter è utilizzato per isolare i microservizi dalle specificità delle librerie esterne e dei servizi cloud.

- In MS3 (Authentication & Repository Management) e MS1 (Analysis Management), un Adapter traduce le richieste interne in chiamate conformi all'API di GitHub, permettendo al sistema di interagire con i repository senza dipendere direttamente dal formato di GitHub.
- In MS2 (Analysis Service), è stato implementato un Adapter per AWS Step Functions. Questo componente isola la logica di business di NestJS dalle specificità dell'SDK di AWS, fornendo un'interfaccia semplificata per l'avvio delle "State Machine" di analisi e gestendo internamente la conversione dei payload e degli ARN di esecuzione.
= Progettazione
== Progettazione backend
=== Analysis Management - MS1
//#figure( [#image("../../asset/diagr-architett/UML/AnalysisManagementService.png")] , caption: [Diagramma delle classi - MS1])
==== Classi MS1 - Presentation Layer
==== Classi MS1 - Business Layer
==== Classi MS1 - Data Layer

#pagebreak()
=== Analisi dei Repository - MS2

//#figure( [#image("../../asset/diagr-architett/UML/ActiveAnalysisService")] , caption: [Diagramma struttura AWS - MS2])

L'architettura del microservizio di analisi (MS2) è progettata per gestire processi a lunga esecuzione in modo asincrono, separando la ricezione della richiesta dal workflow operativo. Il sistema si appoggia interamente ad un'infrastruttura serverless su AWS, utilizzando Step Functions per il controllo del workflow, AWS Bedrock per l'analisi tramite LLM e S3 per la persistenza dei dati e dei report intermedi.

==== Classi MS2 - Presentation Layer

*AppController* \
Punto di ingresso HTTP (NestJS) per l'avvio delle pipeline di analisi. Riceve le richieste dal frontend o da MS1. \
_Attributi privati:_
  - #text(font: "Courier New")[appService: AppService] — istanza iniettata del service per l'analisi.

_Metodi pubblici:_
  - #text(font: "Courier New")[startAnalysis(payload: AnalysisRequestDto)] — riceve l'URL del repository, valida il payload tramite DTO e invoca appService.triggerAnalysis(). Restituisce immediatamente una risposta contenente il messaggio di successo, un jobId e l’executionArn per il tracciamento.

*AppService* \
Service di backend che coordina l'innesco dell'infrastruttura asincrona AWS. \
_Metodi pubblici:_
  - #text(font: "Courier New")[triggerAnalysis(payload: AnalysisRequestDto)] — coordina l'avvio della pipeline inoltrando il payload all’adapter Step Functions tramite startStepFunctionExecution().

*LambdaHandler* \
Modulo di avvio Serverless (Lambda Adapter) che traduce gli eventi di API Gateway nel formato di routing interno. \
_Attributi privati:_
  - #text(font: "Courier New")[cachedServer: any] — variabile globale per il riutilizzo dell'istanza Express tra le invocazioni (Warm Start).

_Metodi pubblici:_
  - #text(font: "Courier New")[startAnalysis(event: any, context: any, callback: any)] — inizializza l'applicazione NestJS utilizzando \@vendia/serverless-express, applica la validazione globale (ValidationPipe) e inoltra l'evento di AWS Lambda all'istanza Express configurata per l'elaborazione.

==== Classi MS2 - Business Layer

===== Orchestrazione e Workflow

*OrchestratorLambda* \
Componente centrale che gestisce il ciclo di vita dell'analisi in Step Functions, suddividendo il processo in fasi decisionali e di consolidamento. \
_Metodi pubblici:_
  - #text(font: "Courier New")[orchestratorHandler(event: any)] — punto di ingresso Lambda che esegue le azioni principali in base al parametro action. Se action è PLAN valuta i metadati per generare il piano di esecuzione; se è AGGREGATE preleva i report da S3, aggrega i risultati per area e invoca il Master Lead Agent per il polishing finale.

===== Agenti di Analisi Tematica

*OwaspAgentLambda* \
Funzione Lambda specializzata nell'esecuzione dell'analisi di sicurezza (OWASP) del codice sorgente. \
_Metodi pubblici:_
  - #text(font: "Courier New")[owaspAgentHandler(event: unknown)] — scarica il file ZIP da S3 tramite unzipRepoToTemp(), utilizza SmartBundler per creare i bundle, coordina i sotto-agenti Bedrock (Dependency, Credentials, Core) e salva il report JSON finale sul bucket S3.

*TestAgentLambda* \
Funzione Lambda specializzata nell'esecuzione dell'analisi di qualità e testing del codice sorgente. \
_Metodi pubblici:_
  - #text(font: "Courier New")[testAgentHandler(event: unknown)] — estrae e impacchetta il codice sorgente, invoca in parallelo i sub-agenti Bedrock (QA, Boilerplate, Code Quality), consolida la sintesi e salva il report JSON su S3.

*DocsAgentLambda* \
Funzione Lambda specializzata nell'analisi della documentazione tecnica e degli standard legali/normativi del repository. \
_Metodi pubblici:_
  - #text(font: "Courier New")[docAgentHandler(event: unknown)] — estrae i sorgenti, delega a sub-agenti (Tech Reviewer, Compliance Officer) la revisione documentale e salva il report aggregato su S3.

===== Strumenti e Utility

*AgentInvoker* \
Modulo responsabile della comunicazione resiliente con l'infrastruttura AWS Bedrock Agents. \
_Metodi pubblici:_
  - #text(font: "Courier New")[invokeSubAgent(agentId: string, agentAliasId: string, prompt: string, agentName: string, isLead: boolean)] — gestisce l'invocazione dell'AI. Implementa il Tool-use denial per forzare l'output testuale e include logiche di retry esponenziale per gestire il throttling.
  - #text(font: "Courier New")[extractFirstMeaningfulLine(report: string, emojiPattern: RegExp)] — estrae la sintesi dinamica dal report Markdown per il riepilogo globale.

*SmartBundler* \
Wrapper per l'impacchettamento del codice sorgente, ottimizzato per rientrare nei limiti di contesto dei LLM tramite la libreria repomix. \
_Metodi pubblici:_
  - #text(font: "Courier New")[createSourceChunks(extractPath: string)] — suddivide il sorgente in porzioni sequenziali (chunk) da 150.000 caratteri rispettando i confini dei file.
  - #text(font: "Courier New")[createFullChunks(extractPath: string)] — suddivide l'intero contenuto del repository in chunk per analisi complete (es. scansione credenziali).
  - #text(font: "Courier New")[extractImportedLibraries(sourceChunks: string | string[])] — esegue l'analisi statica tramite espressioni regolari per identificare le dipendenze dichiarate senza l'uso di modelli AI.

*PullRepoLambda* \
Gestisce la fase di acquisizione iniziale del codice sorgente dal provider esterno. \
_Metodi pubblici:_
  - #text(font: "Courier New")[handler(event: any)] — clona il repository Git in una cartella temporanea, esegue il checkout sul commit specificato, estrae i metadati (tag, branch, changelog), comprime l'archivio in un file ZIP e lo carica su S3 per le fasi successive.

*WebhookSenderLambda* \
Gestisce la notifica di completamento della pipeline. \
_Metodi pubblici:_
  - #text(font: "Courier New")[handler(event: any)] — invia all'URL di destinazione configurato il report Markdown consolidato con una richiesta HTTP POST protetta da API Key.

*FailureHandlerLambda* \
Gestisce le notifiche in caso di fallimento della pipeline asincrona. \
_Metodi pubblici:_
  - #text(font: "Courier New")[handler(event: any)] — intercetta errori o crash non gestiti da AWS Step Functions e trasmette la tipologia dell'errore (errorType, cause) al sistema chiamante.

==== Classi MS2 - Data Layer

*DecompressioneZipTool* \
Modulo di utilità per l'interazione con AWS S3 in fase di lettura. \
_Metodi pubblici:_
  - #text(font: "Courier New")[unzipRepoToTemp(bucket: string, zipKey: string)] — recupera l'archivio ZIP da S3 tramite GetObjectCommand, lo salva in locale e lo decomprime nel file system temporaneo.
#pagebreak()
=== Autenticazione e Repository Management - MS3
Il diagramma è stato suddiviso in due figure per una questione di visibilità documentale. Il primo diagramma mostra le classi relative all'autenticazione, mentre il secondo mostra le classi relative alla gestione delle repository. 
L'interfaccia _IngestionInterface_ e la classe _IngestionController_ sono presenti in entrambi i diagrammi perché espongono funzionalità sia per l'autenticazione che per la gestione delle repository, fungendo da punto di ingresso unificato per le richieste HTTP relative a entrambe le aree funzionali.
#figure( [#image("../../asset/diagr-architett/UML/Auth_Diagram.png")] , caption: [Diagramma delle classi; Autenticazione - MS3])
#figure( [#image("../../asset/diagr-architett/UML/Repo_Diagram.png")] , caption: [Diagramma delle classi; Repository Management - MS3])
==== Classi MS3 - Presentation Layer
*IngestionInterface* \
Definisce il contratto di validazione del controller di ingestion.

- #text(font: "Courier New")[validateUser(data: UserDataDTO)] — contratto per la trasformazione di UserDataDTO in ValidatedUserDataDTO.
- #text(font: "Courier New")[validateSaveRepo(data: SaveRepoDto)] — contratto per la trasformazione di SaveRepoDto in ValidatedSaveRepoDTO.
- #text(font: "Courier New")[validateDeleteRepo(data: DeleteRepoDto)] — contratto per la trasformazione di DeleteRepoDto in ValidatedDeleteRepoDTO.

*IngestionController* \
Punto di ingresso HTTP dell'applicazione. Riceve le richieste, le valida tramite i metodi privati e le delega ai service appropriati.

_Attributi privati_:
  - #text(font: "Courier New")[userService: UserService] — istanza iniettata del service utente
  - #text(font: "Courier New")[repoService: RepoService] — istanza iniettata del service repository

_Metodi pubblici_:
  - #text(font: "Courier New")[login(body: UserDataDTO)] — riceve le credenziali dell'utente, le valida tramite validateUser() e invoca userService.login(). Restituisce un AuthResponseDto contenente l'id e l'email dell'utente autenticato.
  - #text(font: "Courier New")[profile(userId: string)] — riceve l'id utente come query parameter, invoca userService.getUser() e restituisce un UserResponseDTO con i dati del profilo.
  - #text(font: "Courier New")[addRepo(body: SaveRepoDto)] — riceve i dati del repository, li valida tramite validateSaveRepo() e invoca repoService.addRepo(). Restituisce l'id del repository creato.
  - #text(font: "Courier New")[deleteRepo(body: DeleteRepoDto)] — riceve i dati per l'eliminazione, li valida tramite validateDeleteRepo() e invoca repoService.deleteRepo().
  - #text(font: "Courier New")[list(userId: string)] — riceve l'id utente come query parameter, invoca repoService.listForUser() e restituisce la lista dei repository associati all'utente come array di RepoResponseDto.
  - #text(font: "Courier New")[getById(id: string)] — riceve l'id del repository come query parameter, invoca repoService.getRepoById() e restituisce il repository corrispondente come RepoResponseDto.

_Metodi privati:_
  - #text(font: "Courier New")[validateUser(data: UserDataDTO)] — mappa un UserDataDTO in un ValidatedUserDataDTO, separando il contratto HTTP dal contratto interno dell'applicazione.
  - #text(font: "Courier New")[validateSaveRepo(data: SaveRepoDto)] — mappa un SaveRepoDto in un ValidatedSaveRepoDTO.
  - #text(font: "Courier New")[validateDeleteRepo(data: DeleteRepoDto)] — mappa un DeleteRepoDto in un ValidatedDeleteRepoDTO.

==== Classi MS3 - Business Layer
===== Interfacce
*UserServiceLayerInterface* \
Definisce il contratto del service utente esposto verso il layer di presentazione.

- #text(font: "Courier New")[login(data: ValidatedUserDataDTO)] — contratto per l'autenticazione di un utente a partire da credenziali validate.
- #text(font: "Courier New")[getUser(userId: string)] — contratto per il recupero di un utente tramite il suo id.

*RepoServiceLayerInterface* \
Definisce il contratto del service repository esposto verso il layer di presentazione.

- #text(font: "Courier New")[addRepo(data: ValidatedSaveRepoDTO)] — contratto per l'aggiunta di un repository.
- #text(font: "Courier New")[deleteRepo(data: ValidatedDeleteRepoDTO)] — contratto per l'eliminazione o la rimozione di un utente da un repository.
- #text(font: "Courier New")[listForUser(userId: string)] — contratto per il recupero di tutti i repository associati a un utente.
- #text(font: "Courier New")[getRepoById(idRepo: string)] — contratto per il recupero di un singolo repository tramite id.

*IUserRepository* \
Definisce il contratto di persistenza per l'entità utente, implementato a livello infrastrutturale.

- #text(font: "Courier New")[findById(id: string)] — recupera un utente tramite il suo id. Restituisce null se non trovato.
- #text(font: "Courier New")[findByEmail(email: string)] — recupera un utente tramite email. Restituisce null se non trovato.
- #text(font: "Courier New")[save(user: UserEntity)] — persiste un nuovo utente e restituisce l'entità salvata.
- #text(font: "Courier New")[existsByEmail(email: string)] — verifica se esiste già un utente con la email fornita. Restituisce un booleano.

*IRepoRepository* \
Definisce il contratto di persistenza per l'entità repository, implementato a livello infrastrutturale.

- #text(font: "Courier New")[findById(id: string)] — recupera un repository tramite il suo id. Restituisce null se non trovato.
- #text(font: "Courier New")[findByUserId(userId: string)] — recupera tutti i repository associati a un determinato utente.
- #text(font: "Courier New")[findByUrl(repoUrl: string)] — recupera un repository tramite URL. Restituisce null se non trovato. Utile per verificare se un repository è già presente nel sistema prima di salvarlo.
- #text(font: "Courier New")[findByUrlAndUser(userId, repoUrl)] — recupera un repository tramite URL filtrandolo per utente specifico. Restituisce null se non trovato.
- #text(font: "Courier New")[save(repo: RepoEntity)] — persiste un nuovo repository e restituisce l'entità salvata.
- #text(font: "Courier New")[delete(id: string)] — elimina definitivamente un repository dal sistema. Restituisce true se l'operazione è andata a buon fine.
- #text(font: "Courier New")[addUser(repoId, idUtente)] — aggiunge un utente all’array idUtente del repository specificato. Usato quando un repository esiste già e un nuovo utente vuole aggiungerlo. Restituisce il repository aggiornato.
- #text(font: "Courier New")[removeUser(repoId, idUtente)] — rimuove un utente dall’array idUtente del repository specificato. Usato quando un utente elimina un repository che è condiviso con altri. Restituisce il repository aggiornato.

*GitHubServiceInterface* \
Definisce il contratto per la validazione di un repository GitHub tramite API esterna.

- #text(font: "Courier New")[validate(url: string)] — verifica che l'URL fornito corrisponda a un repository GitHub pubblico e accessibile. Restituisce un oggetto GitHubRepoData con i metadati del repository, oppure null se il repository non esiste o non è accessibile.

===== Servizi
*UserService* \
Implementa UserServiceLayerInterface. Contiene la logica applicativa relativa agli utenti. \
_Attributi privati:_
- #text(font: "Courier New")[userRepository: IUserRepository] — istanza iniettata del repository utente.

_Metodi pubblici:_
- #text(font: "Courier New")[login(data: ValidatedUserDataDTO)] — recupera l'utente tramite email. Se non trovato lancia UnauthorizedException. Verifica la correttezza della password tramite bcrypt.compare(). Se la verifica fallisce lancia UnauthorizedException. Restituisce la UserEntity dell'utente autenticato.
- #text(font: "Courier New")[getUser(userId: string)] — recupera l'utente tramite id. Se non trovato lancia NotFoundException. Restituisce la UserEntity.

*RepoService* \
Implementa RepoServiceLayerInterface. Contiene la logica applicativa relativa ai repository.\
_Attributi privati:_
- #text(font: "Courier New")[repoRepository: IRepoRepository] — istanza iniettata del repository.
- #text(font: "Courier New")[githubService: GitHubServiceInterface] — istanza iniettata dell’adapter GitHub.

_Metodi pubblici:_
- #text(font: "Courier New")[addRepo(data: ValidatedSaveRepoDTO)] — valida il repository tramite githubService.validate(). Se non valido lancia BadRequestException. Verifica se il repository esiste già tramite findByUrl(). Se esiste e l'utente è già associato lancia ConflictException. Se esiste ma l'utente non è associato, aggiunge l'utente tramite addUser(). Se non esiste, crea una nuova RepoEntity con un UUID generato e la persiste tramite save(). Restituisce la RepoEntity.
- #text(font: "Courier New")[deleteRepo(data: ValidatedDeleteRepoDTO)] — recupera il repository tramite id. Se non trovato lancia NotFoundException. Se l'utente non è tra quelli associati lancia NotFoundException. Se il repository ha più utenti associati, rimuove solo l'utente corrente tramite removeUser(). Se l'utente è l'unico, elimina definitivamente il repository tramite delete(). Restituisce un booleano.
- #text(font: "Courier New")[listForUser(userId: string)] — recupera tutti i repository associati all'utente tramite findByUserId(). Restituisce un array di RepoEntity.
- #text(font: "Courier New")[getRepoById(idRepo: string)] — recupera il repository tramite id. Se non trovato lancia NotFoundException. Restituisce la RepoEntity.

===== Entità di dominio
*UserEntity* \
Rappresenta l'entità di dominio dell'utente. Tutti gli attributi sono readonly e accessibili solo tramite getter, garantendo l'immutabilità. \
_Attributi privati:_
- #text(font: "Courier New")[id: string, nome: string, cognome: string, email: string, passwordHash: string]

_Getter pubblici:_ 
- id, nome, cognome, email, passwordHash

*RepoEntity* \
Rappresenta l'entità di dominio del repository. Tutti gli attributi sono readonly e accessibili solo tramite getter. L'attributo idUtente è un array per supportare la condivisione di un repository tra più utenti. \
_Attributi privati:_
- #text(font: "Courier New")[id: string, idUtente: string\*, url: string, name: string, pathStorage: string]

_Getter pubblici:_ \ 
- id, idUtente, url, name, pathStorage

==== Classi MS3 - Data Layer
*UserPersistence* \ 
Schema Mongoose per la collezione users. Mappa la struttura di UserEntity al documento MongoDB. \ 
_Attributi pubblici:_ 
- #text(font: "Courier New")[nome, cognome, email, passwordHash] — quest'ultimo con select: false per escluderlo di default dalle query e includerlo solo quando esplicitamente necessario.

*RepoPersistence* \
Schema Mongoose per la collezione repos. Mappa la struttura di RepoEntity al documento MongoDB. \
_Attributi pubblici:_ 
- #text(font: "Courier New")[\_id, idUtente (array), url, name, pathStorage]

*UserMapper* \
Classe di conversione tra UserEntity e UserPersistence. Tutti i metodi sono statici.

- #text(font: "Courier New")[toDomain(p: UserPersistence)] — converte un documento Mongoose in una UserEntity istanziando la classe con i campi corrispondenti.
- #text(font: "Courier New")[toPersistence(e: UserEntity)] — converte una UserEntity in un oggetto parziale Partial\<UserPersistence> con i campi necessari alla persistenza. Non include l'id in quanto gestito da MongoDB.

*RepoMapper* \
Classe di conversione tra RepoEntity e RepoPersistence. Tutti i metodi sono statici.

- #text(font: "Courier New")[toDomain(p: RepoPersistence)] — converte un documento Mongoose in una RepoEntity istanziando la classe con i campi corrispondenti.
- #text(font: "Courier New")[toPersistence(e: RepoEntity)] — converte una RepoEntity in un oggetto RepoPersistence con tutti i campi necessari alla persistenza, incluso \_id.

*UserMongoRepository* \
Implementa IUserRepository. Gestisce le operazioni di persistenza degli utenti su MongoDB tramite Mongoose. \
_Attributi privati:_
- #text(font: "Courier New")[model: Model\<UserDocument>] — modello Mongoose iniettato tramite \@InjectModel.

_Metodi pubblici:_
- #text(font: "Courier New")[findById(id: string)] — esegue una query findById aggiungendo .select("+passwordHash") per includere il campo normalmente escluso. Converte il documento tramite UserMapper.toDomain(). Restituisce null se non trovato.
- #text(font: "Courier New")[findByEmail(email: string)] — esegue una query findOne per email aggiungendo .select("+passwordHash"). Converte il documento tramite UserMapper.toDomain(). Restituisce null se non trovato.
- #text(font: "Courier New")[save(user: UserEntity)] — converte l'entità tramite UserMapper.toPersistence() e la persiste tramite model.create(). Restituisce l'entità convertita tramite UserMapper.toDomain().
- #text(font: "Courier New")[existsByEmail(email: string)] — esegue una countDocuments per email e restituisce true se il conteggio è maggiore di zero.

*RepoMongoRepository* \
Implementa IRepoRepository. Gestisce le operazioni di persistenza dei repository su MongoDB tramite Mongoose. \
_Attributi privati:_
- #text(font: "Courier New")[model: Model\<RepoDocument>] — modello Mongoose iniettato tramite \@InjectModel.

_Metodi pubblici:_
- #text(font: "Courier New")[findById(id: string)] — esegue findById e converte il documento tramite RepoMapper.toDomain(). Restituisce null se non trovato.
- #text(font: "Courier New")[findByUserId(userId: string)] — esegue find filtrando per idUtente, ordinando per data di creazione decrescente con limite di 100 risultati. Converte ogni documento tramite RepoMapper.toDomain().
- #text(font: "Courier New")[findByUrl(repoUrl: string)] — esegue findOne filtrando per url. Restituisce null se non trovato.
- #text(font: "Courier New")[findByUrlAndUser(userId, repoUrl)] — esegue findOne filtrando per url e idUtente contemporaneamente. Restituisce null se non trovato.
- #text(font: "Courier New")[save(repo: RepoEntity)] — converte l'entità tramite RepoMapper.toPersistence() e la persiste tramite model.create(). Restituisce l'entità convertita.
- #text(font: "Courier New")[delete(id: string)] — esegue findByIdAndDelete. Restituisce true se il documento è stato trovato ed eliminato, false altrimenti.
- #text(font: "Courier New")[addUser(repoId, idUtente)] — esegue findByIdAndUpdate con operatore \$push per aggiungere l'utente all’array. Se il documento non esiste lancia NotFoundException. Restituisce il repository aggiornato convertito tramite RepoMapper.toDomain().
- #text(font: "Courier New")[removeUser(repoId, idUtente)] — esegue findByIdAndUpdate con operatore \$pull per rimuovere l'utente dall’array. Se il documento non esiste lancia NotFoundException. Restituisce il repository aggiornato convertito tramite RepoMapper.toDomain().

*GitHubAdapter* \
Implementa GitHubServiceInterface. Gestisce la comunicazione con le API pubbliche di GitHub.

- #text(font: "Courier New")[validate(url: string)] — interpreta l'URL GitHub fornito, estrae owner e nome del repository ed esegue una chiamata alle API di GitHub per verificarne l'esistenza e l'accessibilità pubblica. Restituisce un oggetto GitHubRepoData con i metadati del repository se la chiamata ha successo, null altrimenti.

== Progettazione frontend


= Stato dei requisiti funzionali
== Stato per requisito
#figure(
  caption: [Copertura requisiti funzionali],
  kind: table,
  supplement: [Tabella],
  rect(width: 0pt, height: 0pt, stroke: none) 
) <requisiti-funzionali>
#tabella-viola(
  columns: (auto, auto, 3cm),
  inset: 10pt,
  align: (left, left, left),
   
  
  table.header([*Codice*], [*Descrizione*], [*Stato*]),

  // UTENTE SCONOSCIUTO
  [R-1-F-O],[L'Utente Sconosciuto deve poter accedere alla piattaforma],[Soddisfatto],
  [R-2-F-O],[L'Utente Sconosciuto deve poter inserire il proprio username],[Soddisfatto],
  [R-3-F-O],[L'Utente Sconosciuto deve poter inserire la propria password],[Soddisfatto],
  [R-4-F-O],[L'Utente Sconosciuto deve poter annullare l'accesso alla piattaforma],[Soddisfatto],
  [R-5-F-O],[L'Utente Sconosciuto deve visualizzare un messaggio di errore nel caso di credenziali errate],[Soddisfatto],

  // UTENTE REGISTRATO
  [R-16-F-O],[L'Utente Registrato deve poter inserire un repository pubblico al sistema],[Soddisfatto],
  [R-17-F-D],[L'Utente Registrato deve poter inserire un repository privato al sistema],[Non soddisfatto],
  [R-18-F-D],[L'Utente Registrato deve poter inserire il Personal Access Token collegato al proprio account],[Non soddisfatto],
  [R-19-F-D],[L'Utente Registrato deve ricevere un messaggio di errore in caso di token inserito non valido],[Non soddisfatto],
  [R-20-F-O],[L'Utente Registrato deve poter annullare l'inserimento di un repository],[Soddisfatto],
  [R-21-F-O],[L'Utente Registrato deve poter inserire l'URL del repository],[Soddisfatto],
  [R-22-F-O],[L'Utente Registrato deve ricevere un messaggio di errore nel caso di URL non valido],[Soddisfatto],
  [R-23-F-O],[L'Utente Registrato deve poter visualizzare la lista dei propri repository personali],[Soddisfatto],
  [R-24-F-O],[L'Utente Registrato deve poter selezionare una preferenza sulla tipologia di repository che desidera visualizzare],[Soddisfatto],
  [R-25-F-O],[L'Utente Registrato deve poter visualizzare il nome di un repository],[Soddisfatto],
  [R-26-F-D],[L'Utente Registrato deve poter visualizzare il nome del progetto associato al repository],[Non soddisfatto],
  [R-27-F-D],[L'Utente Registrato deve poter visualizzare l’indicatore  di visibilità di un repository],[Non soddisfatto],
  [R-28-F-D],[L'Utente Registrato deve poter visualizzare la lista dei progetti ai quali contribuisce],[Non soddisfatto],
  [R-29-F-D],[L'Utente Registrato deve poter visualizzare il nome di un progetto],[Non soddisfatto],
  [R-30-F-D],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sulla documentazione di un progetto],[Non soddisfatto],
  [R-31-F-D],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sui test di un progetto],[Non soddisfatto],
  [R-32-F-D],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi OWASP di un progetto],[Non soddisfatto],
  [R-33-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sulla documentazione di un repository],[Soddisfatto],
  [R-34-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sui test di un repository],[Soddisfatto],
  [R-35-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi OWASP di un repository],[Soddisfatto],
  [R-36-F-O],[L'Utente Registrato deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un'analisi sui test per un repository],[Soddisfatto],
  [R-9-F-D],[L'Utente Registrato deve visualizzare la propria area personale],[Soddisfatto],
  [R-10-F-O],[L'Utente Registrato deve poter visualizzare il proprio nome Utente Registrato],[Soddisfatto],
  [R-11-F-O],[L'Utente Registrato deve poter visualizzare la propria mail],[Soddisfatto],
  [R-12-F-D],[L'Utente Registrato deve poter visualizzare il proprio ruolo],[Non soddisfatto],
  [R-139-F-D],[L'Utente Registrato deve poter visualizzare la propria immagine del profilo],[Soddisfatto],
  [R-140-F-D],[L'Utente Registrato deve poter visualizzare l'opzione di reindirizzamento al proprio profilo Github],[Soddisfatto],
  [R-141-F-D],[L'Utente Registrato deve poter visualizzare le proprie competenze registrate nella piattaforma],[Non soddisfatto],
  [R-142-F-D],[L'Utente Registrato deve poter essere reindirizzato nel proprio profilo Github],[Non soddisfatto],
  [R-13-F-O],[L'Utente Registrato deve poter effettuare il logout dalla piattaforma],[Soddisfatto],
  [R-14-F-O],[L'Utente Registrato deve poter annullare la procedura di logout dalla piattaforma],[Soddisfatto],
  [R-15-F-O],[L'Utente Registrato deve visualizzare un messaggio di errore nel caso di errore durante l'esecuzione di un operazione],[Soddisfatto],
  [R-92-F-P],[L'Utente Registrato deve poter cercare un repository in una barra di ricerca],[Soddisfatto],
  [R-85-F-P],[L'Utente Registrato deve poter visualizzare un repository sulla piattaforma esterna GitHub],[Soddisfatto],

  // DEV
  [R-78-Q-O],[Il Developer deve potersi autenticare e ricevere il ruolo di "Developer"],[Soddisfatto],
  [R-6-F-D],[Il Developer può sincronizzare il proprio account GitHub],[Non soddisfatto],
  [R-7-F-D],[Il Developer può annullare l'autenticazione con il provider esterno GitHub],[Non soddisfatto],
  [R-8-F-D],[Il Developer deve poter annullare la sincronizzazione del proprio account GitHub],[Non soddisfatto],
  [R-37-F-O],[Il Developer deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un'analisi OWASP per un repository],[Soddisfatto],
  [R-38-F-O],[Il Developer deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un'analisi sulla documentazione per un repository],[Soddisfatto],
  [R-39-F-O],[Il Developer deve essere in grado di visualizzare il dettaglio del file sul quale è stato proposto un cambiamento],[Soddisfatto],
  [R-40-F-D],[Il Developer deve poter cambiare il path di destinazione del file sul quale è stata proposta una remediation],[Non soddisfatto],
  [R-41-F-D],[Il Developer deve poter inserire il nuovo path all'interno del sistema],[Non soddisfatto],
  [R-42-F-D],[Il Developer deve poter annullare il cambio di path di un file nel contesto di una proposta di remediation],[Non soddisfatto],
  [R-43-F-D],[Il Developer deve visualizzare un messaggio di errore nel caso abbia inserito un path non valido per un file, nel contesto di una proposta di remediation],[Non soddisfatto],
  [R-44-F-D],[Il Developer deve poter accettare una proposta di remediation],[Non soddisfatto],
  [R-45-F-D],[Il Developer deve ricevere una notifica una volta che è stata inviata con successo una pull request sul repository GitHub],[Non soddisfatto],
  [R-46-F-D],[Il Developer deve poter annullare l'accettazione di una proposta di remediation],[Non soddisfatto],
  [R-47-F-D],[Il Developer deve ricevere un messaggio di errore nel caso di fallimento dell'accettazione della remediation],[Non soddisfatto],
  [R-48-F-D],[Il Developer deve essere informato se la remediation proposta non è più coerente con lo stato del sistema, e quindi non può essere effettuata],[Non soddisfatto],
  [R-49-F-O],[Il Developer deve poter eliminare un repository dal sistema],[Soddisfatto],
  [R-50-F-O],[Il Developer deve poter annullare l'operazione di eliminazione di un repository dal sistema],[Soddisfatto],
  [R-51-F-D],[Il Developer deve poter visualizzare la lista dei procedimenti in corso all'interno del sistema],[Non soddisfatto],
  [R-52-F-D],[Il Developer deve visualizzare il nome del repository sul quale sta avvenendo il procedimento],[Non soddisfatto],
  [R-53-F-D],[Il Developer deve visualizzare la data di avvio di ogni elemento dalla lista dei procedimenti in corso in corso.],[Non soddisfatto],
  [R-54-F-D],[Il Developer deve visualizzare il nome branch aperto di ogni elemento della lista delle remediation in corso.],[Non soddisfatto],
  [R-55-F-D],[Il Developer deve poter interrompere una remediation avviata],[Non soddisfatto],
  [R-56-F-D],[Il Developer deve visualizzare un messaggio di avvenuta interruzione di una remediation in corso, in caso ne abbia richiesto la stessa],[Non soddisfatto],
  [R-57-F-D],[Il Developer deve poter annullare un'analisi in corso all'interno del sistema],[Non soddisfatto],
  [R-58-F-D],[Il Developer deve visualizzare un messaggio di avvenuto annullamento di un'analisi in corso],[Non soddisfatto],
  [R-59-F-D],[Il Developer deve visualizzare una lista con le ultime analisi portate a termine],[Non soddisfatto],
  [R-60-F-D],[Il Developer deve visualizzare il nome del repository sul quale un'analisi è stata terminata],[Non soddisfatto],
  [R-61-F-D],[Il Developer deve visualizzare la data di completamento di un'analisi terminata],[Non soddisfatto],
  [R-62-F-D],[Il Developer deve poter visualizzare la specifica di un'analisi portata a termine all'interno di un repository, che non sia l'ultima],[Non soddisfatto],
  [R-63-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi sulla documentazione],[Non soddisfatto],
  [R-64-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi sui test],[Non soddisfatto],
  [R-65-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi OWASP],[Non soddisfatto],
  [R-66-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare le proposte di remediation elaborate in seguito all'analisi],[Non soddisfatto],
  [R-67-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare la proposta di remediation specifica inerente ad un singolo file],[Non soddisfatto],
  [R-69-F-D],[Il Developer deve poter consultare l'ultima analisi effettuata all'interno di un repository],[Soddisfatto],
  [R-70-F-D],[Il Developer deve poter visualizzare la data di fine di un'analisi nella lista delle analisi passate relative ad un repository],[Non soddisfatto],
  [R-71-F-D],[Il Developer deve poter visualizzare la lo stato di un'analisi nella lista delle analisi passate relative ad un repository],[Non soddisfatto],
  [R-72-F-O],[Il Developer deve poter avviare un'analisi generale all'interno del repository],[Soddisfatto],
  [R-73-F-D],[Il Developer deve poter avviare un'analisi sui test all'interno del repository],[Non soddisfatto],
  [R-74-F-D],[Il Developer deve poter avviare un'analisi sulla documentazione all'interno del repository],[Non soddisfatto],
  [R-75-F-D],[Il Developer deve poter avviare un'analisi OWASP all'interno del repository],[Non soddisfatto],
  [R-76-F-D],[Il Developer deve ricevere un messaggio di errore nel caso si verificasse un conflitto con un'altra analisi all'avvio di un'analisi],[Non soddisfatto],
  [R-77-F-O],[Il Developer deve poter annullare l'avvio di un'analisi],[Soddisfatto],

  // PM 
  [R-79-Q-D],[Il Project Manager deve potersi autenticare e ricevere il ruolo di "Project Manager"],[Non soddisfatto],
  [R-80-F-D],[Il Project Manager deve poter visualizzare la lista dei propri progetti],[Non soddisfatto],
  [R-81-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il grafico percentuale sull'analisi della documentazione], [Non soddisfatto],
  [R-82-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il grafico percentuale sull'analisi dei test],[Non soddisfatto],
  [R-83-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il grafico percentuale sull'analisi della correttezza OWASP], [Non soddisfatto],
  [R-84-F-D],[Il Project Manager deve poter visualizzare i dettagli di un progetto],[Non soddisfatto],
  [R-87-F-D],[Il Project Manager deve poter creare un nuovo progetto],[Non soddisfatto],
  [R-88-F-D],[Il Project Manager deve poter inserire il nome del progetto],[Non soddisfatto],
  [R-89-F-D],[Il Project Manager deve poter modificare il nome di un progetto],[Non soddisfatto],
  [R-90-F-D],[Il Project Manager deve ricevere un errore se il nuovo nome del progetto che si sta inserendo è già presente per quell'utente],[Non soddisfatto],
  [R-91-F-D],[Il Project Manager deve poter aggiungere un repository al progetto],[Non soddisfatto],
  [R-93-F-D],[Il Project Manager deve poter visualizzare una lista di repository da poter aggiungere al progetto],[Non soddisfatto],
  [R-94-F-D],[Il Project Manager deve poter annullare l'operazione di aggiunta repository al progetto],[Non soddisfatto],
  [R-95-F-D],[Il Project Manager deve poter aggiungere dei developer al progetto],[Non soddisfatto],
  [R-96-F-P],[Il Project Manager deve poter cercare il nome di un developer su una barra di ricerca ],[Non soddisfatto],
  [R-97-F-D],[Il Project Manager deve poter visualizzare una lista di developer da poter aggiungere al progetto],[Non soddisfatto],
  [R-98-F-D],[Il Project Manager deve poter annullare l'aggiunta dei developer al progetto],[Non soddisfatto],
  [R-99-F-D],[Il Project Manager deve poter visualizzare il nome e la foto profilo di un developer],[Non soddisfatto],
  [R-100-F-D],[Il Project Manager deve poter visualizzare e gestire gli attuali membri del team],[Non soddisfatto],
  [R-101-F-D],[Il Project Manager deve poter rimuovere un developer dal progetto],[Non soddisfatto],
  [R-102-F-D],[Il Project Manager deve poter annullare la rimozione di un developer dal progetto],[Non soddisfatto],
  [R-103-F-D],[Il Project Manager deve poter visualizzare le competenze del team su un progetto],[Non soddisfatto],
  [R-104-F-D],[Il Project Manager deve poter visualizzare il profilo di un membro del team (developer)],[Non soddisfatto],
  [R-105-F-D],[Il Project Manager deve poter visualizzare il profilo GitHub di un membro del team (developer)],[Non soddisfatto],
  [R-106-F-D],[Il Project Manager deve poter visualizzare le icone delle tecnologie di competenza, accanto al nome dei developer],[Non soddisfatto],
  [R-107-F-D],[Il Project Manager deve poter visualizzare le statistiche di contribuzione di un membro del team],[Non soddisfatto],
  [R-108-F-D],[Il Project Manager deve poter visualizzare i linguaggi di programmazione maggiormente utilizzati da un membro del team],[Non soddisfatto],
  [R-110-F-D],[Il Project Manager deve poter visualizzare il numero di commit effettuati da un membro del team],[Non soddisfatto],
  [R-111-F-D],[Il Project Manager deve poter visualizzare il numero di pull request gestite da un membro del team],[Non soddisfatto],
  [R-112-F-D],[Il Project Manager deve poter visualizzare lo stack tecnologico utilizzato in un progetto],[Non soddisfatto],
  [R-113-F-D],[Il Project Manager deve poter visualizzare l'elenco di framework e librerie,  utilizzare nello stack tecnologico di un progetto],[Non soddisfatto],
  [R-114-F-D],[Il Project Manager deve poter visualizzare l'elenco di segnalazioni a: framework e librerie con rischi di sicurezza o deprecate, utilizzare nello stack tecnologico di un progetto],[Non soddisfatto],
  [R-115-F-D],[Il Project Manager deve poter visualizzare suggerimenti generati dall'IA per la sostituzione di framework e librerie, utilizzate nello stack tecnologico di un progetto],[Non soddisfatto],
  [R-139-F-D],[Il Project Manager deve poter eliminare un progetto di sua proprietà],[Non soddisfatto],
  [R-140-F-D],[Il Project Manager deve poter annullare l'eliminazione di un progetto di sua proprietà],[Non soddisfatto],

  // BO
  [R-116-Q-P],[Il Business Owner deve poter visualizzare la lista dei propri progetti],[Non soddisfatto],
  [R-117-F-P],[Il Business Owner deve poter visualizzare il budget complessivo per il proprio progetto],[Non soddisfatto],
  [R-118-F-P],[Il Business Owner deve visualizzare le spese affrontate per un progetto],[Non soddisfatto],
  [R-119-F-P],[Il Business Owner deve poter comparare il budget a disposizione con le spese affrontate],[Non soddisfatto],
  [R-120-F-P],[Il Business Owner deve poter visualizzare il dettaglio di un progetto],[Non soddisfatto],
  [R-121-F-P],[Il Business Owner deve poter visualizzare il nome di un progetto],[Non soddisfatto],
  [R-122-F-P],[Il Business Owner deve poter cambiare il budget complessivo per un progetto],[Non soddisfatto],
  [R-123-F-P],[Il Business Owner deve poter annullare il cambiamento del budget complessivo],[Non soddisfatto],
  [R-124-F-P],[Il Business Owner deve poter cambiare la spesa sostenuta per un progetto],[Non soddisfatto],
  [R-125-F-P],[Il Business Owner deve poter annullare il cambiamento della spesa sostenuta per un progetto],[Non soddisfatto],
  [R-126-F-P],[Il Business Owner deve poter visualizzare il nome del Project Manager di un progetto],[Non soddisfatto],
  [R-127-F-P],[Il Business Owner deve poter visualizzare la mail di contatto del Project Manager di un progetto],[Non soddisfatto],
  [R-128-F-P],[Il Business Owner deve poter visualizzare la data di creazione di un progetto],[Non soddisfatto],
  [R-129-F-P],[Il Business Owner deve poter visualizzare la lista delle tecnologie utilizzate in un progetto],[Non soddisfatto],
  [R-130-F-P],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, il logo della tecnologia],[Non soddisfatto],
  [R-131-F-P],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, il nome della tecnologia],[Non soddisfatto],
  [R-109-F-P],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, l'utilizzo che si fa della tecnologia],[Non soddisfatto],
  [R-132-F-P],[Il Business Owner deve poter visualizzare la lista del team di sviluppo che fa parte di un progetto],[Non soddisfatto],
  [R-133-F-P],[Il Business Owner, per ogni elemento della lista del team di sviluppo, deve visualizzare il nome dello sviluppatore],[Non soddisfatto],
  [R-134-F-P],[Il Business Owner, per ogni elemento della lista del team di sviluppo, deve visualizzare il ruolo dello sviluppatore all'interno di un progetto],[Non soddisfatto],
  [R-135-F-P],[Il Business Owner deve poter visualizzare i dettagli di un developer che lavora ad un suo progetto],[Non soddisfatto],
  [R-136-F-P],[Il Business Owner deve poter visualizzare il numero di progetti ai quali lo sviluppatore ha preso parte],[Non soddisfatto],
  [R-137-F-P],[Il Business Owner deve poter visualizzare le tecnologie che uno sviluppatore può utilizzare],[Non soddisfatto],
  [R-138-F-P],[Il Business Owner deve poter visualizzare i ruoli che uno sviluppatore può assumere],[Non soddisfatto],
)
#pagebreak()
== Grafici di stato dei requisiti
=== Requisiti funzionali
Sono stati individuati 142 requisiti funzionali. Di questi sono stati soddisfatti 35.

#figure(
  caption: [Requisiti funzionali soddisfatti],
)[
  #let data = (
    ([*Non soddisfatti*], 107),
    ([*Soddisfatti*], 35)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
  })]
] <fig:tortaReq>

#figure(
  caption: [Requisiti funzionali soddisfatti \ Utente generico],
)[
  #let data = (
    ([*Non soddisfatti*], 13),
    ([*Soddisfatti*], 26)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
  })]
] <fig:tortaUtente>

#figure(
  caption: [Requisiti funzionali soddisfatti \ Developer],
)[
  #let data = (
    ([*Non soddisfatti*], 35),
    ([*Soddisfatti*], 9)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
  })]
] <fig:tortaDev>

#figure(
  caption: [Requisiti funzionali soddisfatti \ Project Manager],
)[
  #let data = (
    ([*Non soddisfatti*], 35),
    ([*Soddisfatti*], 0)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
  })]
] <fig:tortaPM>

#figure(
  caption: [Requisiti funzionali soddisfatti \ Business Owner],
)[
  #let data = (
    ([*Non soddisfatti*], 24),
    ([*Soddisfatti*], 0)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
  })]
] <fig:tortaBO>
#pagebreak()
=== Requisiti funzionali obbligatori
Tutti i requisiti obbligatori sono stati soddisfatti.
#figure(
  caption: [Requisiti funzionali obbligatori soddisfatti],
)[
  #let data = (
    ([*Non soddisfatti*], 0),
    ([*Soddisfatti*], 29)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
  })]
] <fig:tortaReqObbl>
=== Requisiti funzionali desiderabili
Sono stati soddisfatti quattro requisiti desiderabili su novanta.
#figure(
  caption: [Requisiti funzionali desiderabili soddisfatti],
)[
  #let data = (
    ([*Non soddisfatti*], 86),
    ([*Soddisfatti*], 4)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
  })]
] <fig:tortaReqDes>
=== Requisiti funzionali opzionali
Sono stati soddifatti due requisiti opzionali su ventisette.
#figure(
  caption: [Requisiti funzionali opzionali soddisfatti],
)[
#let data = (
    ([*Non soddisfatti*], 25),
    ([*Soddisfatti*], 2)
  )
  #let colors = (rgb("#a814e1"), rgb("#9b66ff"))
  #align(center)[#cetz.canvas({
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 3,
      stroke: black,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (
        content: (value, label) => [#text(fill: white, label)],
        radius: 110%
      ),
      outer-label: (content: "%", radius: 120%),
    )
})]] <fig:tortaReqOpz>