#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola
#import "../../templates/glossario_termini.typ": applica-glossario

#let storia_modifiche = (
  ("0.2.0", "2026/03/08", "Angela Favaro", "",  "Aggiunto capitolo 1"),
  ("0.1.0", "2026/03/07", "Angela Favaro", "",  "Creazione documento, impostazione macro-aree")
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
- Documento interno: #link("https://heptacode-unipd.github.io/docs/PB/glossario.pdf")[Glossario v2.0.0]
Questa introduzione delinea il contesto e gli scopi del progetto.
= Tecnologie 
== Linguaggi di programmazione
=== Typescript v5.7.x
Il progetto è sviluppato in Typescript, un superset di JavaScript che introduce tipizzazione statica opzionale. \  La *tipizzazione statica e riduzione degli errori a runtime* TypeScript introduce un sistema di tipi statici sopra JavaScript, consentendo di intercettare intere categorie di errori già in fase di compilazione, prima che il codice raggiunga l'ambiente di esecuzione. \ 
In un'applicazione full-stack dove frontend e backend si scambiano dati via API, la definizione di interfacce e tipi condivisi elimina ambiguità sui contratti di dato, riducendo drasticamente i bug dovuti a proprietà mancanti, tipi inattesi o refactoring parziali. \ 
Il supporto al completamento automatico, alla navigazione del codice e al refactoring assistito offerto dagli IDE come VS Code è notevolmente potenziato dalla presenza dei tipi. Questo si traduce in *cicli di sviluppo più rapidi e in un onboarding più agevole per nuovi membri del team*. \ 
Su tutti gli strati applicativi *è possibile condividere modelli di dominio, DTO (Data Transfer Object) e interfacce in un unico package condiviso*, garantendo coerenza tra le strutture dati prodotte dal backend e quelle consumate dal frontend, senza duplicazione del codice. 
Le principali librerie utilizzate nel progetto (React, NestJS) — offrono definizioni di tipo native o tramite _\@types_, garantendo una *copertura tipizzata completa senza configurazioni aggiuntive*. \ 
Un codebase tipizzato è intrinsecamente più leggibile e autodocumentante. Le firme delle funzioni, le strutture dei dati e le interfacce dei moduli comunicano l'intento del codice in modo esplicito, riducendo la dipendenza da documentazione esterna e *facilitando le operazioni di manutenzione* ordinaria e straordinaria.
== Framework 
=== NestJS v11.0.x
NestJS è il framework applicativo scelto per strutturare il layer server.

- _Architettura modulare e scalabile_: organizza il codice in moduli, controller e service, imponendo una struttura chiara che facilita la separazione delle responsabilità e la crescita ordinata del progetto nel tempo.
- _Dependency Injection nativa_: Il sistema di DI integrato rende i componenti disaccoppiati, testabili in isolamento e facilmente sostituibili, migliorando la qualità architetturale complessiva.
- _NestJS è scritto nativamente in TypeScript_: ne sfrutta appieno i decoratori e il sistema di tipi, rendendolo la scelta più coerente con il resto della stack.
- _Supporto integrato per pattern enterprise_: NestJS offre supporto per pipe di validazione, middleware e gestione centralizzata degli errori, riducendo la necessità di soluzioni custom per funzionalità trasversali.
== Librerie e dipendenze
=== React v19.2.4 
React è stato scelto come libreria UI, le motivazioni principali sono state:

- _Modello a componenti_ — L'architettura basata su componenti riutilizzabili favorisce la separazione delle responsabilità, facilita i test unitari e permette di costruire interfacce complesse in modo incrementale e controllato.
- _Ecosistema maturo_ — React dispone di un ecosistema vastissimo che spesso non richiede soluzioni custom.
- _Virtual DOM e performance_ — Il meccanismo di riconciliazione del Virtual DOM garantisce aggiornamenti efficienti dell'interfaccia, limitando le operazioni sul DOM reale ai soli nodi effettivamente modificati.
- _Integrazione nativa con TypeScript_ — React supporta pienamente TypeScript, con tipizzazione completa di props, state, hook e context, rendendo il codice frontend robusto e verificabile staticamente.
=== Dipendenze frontend (React)

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
  [\@nestjs/common, \ \@nestjs/core],[v11.0.1],[Gestisce il sistema di Dependency Injection, i moduli, i controller e i decorator. Scelto per la sua architettura modulare ispirata ad Angular, ideale per microservizi strutturati.],
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
  [bcrypt ],[v6.0.0],[Hashing delle password con salt. Usato nel layer applicativo per non salvare mai password in chiaro nel database.],
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

== Runtime enviroment
=== NodeJS v24
Node.js è l'ambiente di runtime scelto per eseguire il codice server-side. Node.js è il runtime che consente l'esecuzione di TypeScript lato server, al di fuori del browser. Le motivazioni che hanno portato il gruppo a questa scelta progettuale sono state:

- _Uniformità del linguaggio_ — L'utilizzo dello stesso linguaggio su frontend e backend elimina il context-switch cognitivo, consente la condivisione di logica e tipi comuni, e semplifica la gestione delle dipendenze.
- _Architettura non bloccante e I/O asincrono_ — Il modello event-driven di Node.js lo rende particolarmente adatto ad applicazioni con elevata concorrenza di richieste I/O, come chiamate a database e API esterne, tipico scenario nelle applicazioni web moderne.
- _Ecosistema npm_ — npm mette a disposizione il più grande repository di librerie open source esistente, coprendo in modo maturo le esigenze di autenticazione, ORM, validazione, logging ecc.

== Infrastruttura di deployment
=== Docker Engine v29.3.0
I microservizi utilizzano Docker come tecnologia di containerizzazione. Il "Dockerfile" definisce l'immagine di produzione.

== Tecnologie per la persistenza dei dati
=== MongoDB v8.0.x
La scelta di MongoDB come database principale è strettamente legata alla natura della piattaforma ad agenti basata su analisi di repository. In un sistema dove i dati prodotti e consumati dagli agenti hanno strutture eterogenee, variabili nel tempo e difficilmente riducibili a uno schema relazionale fisso (come nel caso di un repository documentale piuttosto che di sviluppo ecc.), un database orientato ai documenti è la soluzione più adatta.
Nello specifico:
- _Schema flessibile_: non richiede uno schema rigido predefinito. Questo è particolarmente vantaggioso in Code Guardian dove ogni agente può produrre output con strutture diverse, e dove il modello dati pu; cambiare facilmente.
_Dati gerarchici e annidati_: — I documenti JSON di MongoDB si prestano naturalmente a rappresentare strutture dati complesse e annidate (contesti agentici) senza dover ricorrere a join tra tabelle come in un database relazionale.
- _Scalabilità orizzontale_ — MongoDB è progettato per scalare orizzontalmente tramite sharding nativo, caratteristica importante in una piattaforma che può dover gestire volumi crescenti di sessioni agentiche in parallelo.
- _Integrazione con l'ecosistema TypeScript_ — Tramite Mongoose o il driver nativo MongoDB, la definizione di schemi e modelli tipizzati in TypeScript è diretta e ben supportata, mantenendo la coerenza con il resto della stack.

== Tecnologie per infrastruttura cloud
=== AWS
AWS è il provider cloud che ci è stato fornito dall'azienda proponente per la gestione dell'infrastruttura, in particolare per la gestione dei servizi agentici. \ Considerando anche altre opzioni è stata ritenuta la scelta più consona sia dal punto di vista progettuale che didattico. \
La scelta di AWS come provider cloud è motivata dalla sua maturità, dall'ampiezza del catalogo di servizi e dalla profonda integrazione nativa tra essi e dal vastissimo uso attuale a livello enterprise. In un'architettura ad agenti dove diversi servizi devono comunicare in modo affidabile, sicuro e scalabile, avere tutto sullo stesso ecosistema riduce la complessità operativa e la latenza inter-servizio.
==== AWS Bedrock
Bedrock consente di accedere a modelli fondazionali di diversi provider (Anthropic Claude, Meta Llama, Amazon Titan, ecc.) tramite un'unica API gestita, senza dover gestire l'infrastruttura di inferenza. In un contesto di piattaforma ad agenti questo è fondamentale: permette di scegliere e cambiare il modello sottostante senza modificare l'architettura applicativa, e garantisce compliance, sicurezza e controllo dei costi già integrati a livello di piattaforma.
==== AWS Lambda
Lambda permette di eseguire la logica dei singoli agenti in modo serverless: ogni funzione è isolata, scala automaticamente in base al carico e viene fatturata solo per il tempo di esecuzione effettivo. In un'architettura ad agenti dove i task sono spesso asincroni, paralleli e di durata variabile, questo modello è più efficiente e conveniente rispetto a server sempre attivi.
==== AWS Step Functions
Step Functions è il componente che rende possibile l'orchestrazione dell'intera piattaforma ad agenti. Permette di definire flussi di lavoro complessi come macchine a stati visive, gestendo in modo nativo la sequenza, il parallelismo, la gestione degli errori, i retry e i timeout tra i vari agenti e Lambda. Questo evita di dover implementare manualmente la logica di coordinamento tra le richieste di analisi e le analisi stesse, rendendo i flussi agentici più robusti, osservabili e manutenibili.
==== AWS S3
S3 è il servizio di storage ad oggetti di AWS, scelto per la persistenza di file e dati non strutturati all'interno della piattaforma. \ In un contesto ad agenti, S3 svolge un ruolo trasversale: può fungere da repository per i documenti su cui gli agenti operano (input/output di elaborazioni), da archivio per i log e gli artefatti prodotti dai flussi Step Functions, e da layer di scambio dati tra Lambda Functions che non comunicano direttamente. La sua integrazione nativa con tutti gli altri servizi AWS, la durabilità garantita e il modello di costo pay-per-use lo rendono la scelta naturale per qualsiasi esigenza di storage nell'ecosistema AWS.
==== AWS ECS
ECS è il servizio AWS per l'esecuzione e l'orchestrazione di container Docker. In una piattaforma ad agenti, dove componenti come il backend NestJS girano in modo continuativo e devono essere sempre disponibili, ECS rappresenta la soluzione naturale per il deploy e per gestire i container applicativi senza dover gestire l'infrastruttura dei server sottostanti.
\ ECS supporta auto-scaling dei container in base al carico, garantendo che il sistema risponda adeguatamente a picchi di utilizzo senza intervento manuale.

== Tecnologie per Continuous Integration
=== GitHub Actions
Il progetto adotta GitHub Actions come sistema di Continuous Integration (CI). Il workflow è definito nel file con estensione ".yml" e viene eseguito automaticamente ad ogni push request sul branch main.
Il pipeline è strutturato in un job che esegue:
+ analisi statica tramite ESLint e Prettier per verificare la conformità del codice agli standard definiti, incluse metriche di qualità come complessità ciclomatica, lunghezza dei metodi e numero di parametri;
+ esecuzione degli unit test con generazione del report di coverage; esecuzione dei test di integrazione (_e2e_) con un'istanza MongoDB dedicata; verifica dell'integrità della build tramite compilazione TypeScript. Al termine del job, il report di coverage viene salvato come artifact di GitHub Actions.

= Architettura
Il sistema è strutturato secondo un'architettura a microservizi, composta da tre componenti indipendenti che collaborano per fornire le funzionalità applicative. Ciascun microservizio adotta internamente una Layered Architecture, suddividendo le responsabilità in strati distinti e garantendo separazione delle competenze (separation of concerns).
== Architettura logica
=== Layered Architecture
Ogni microservizio è organizzato nei seguenti layer:

_Ingestion Layer_ #pad(left: 0.5cm)[ Costituisce il punto di ingresso del microservizio. Si occupa della ricezione delle richieste provenienti dal Frontend o da altri microservizi, della validazione dei dati in ingresso e della loro trasformazione in strutture tipizzate (DTO) prima che vengano propagate agli strati sottostanti.]
_Service Layer_ #pad(left: 0.5cm)[Contiene la logica applicativa del microservizio, orchestrando le operazioni sui dati e coordinando le interazioni con i componenti di persistenza e con i servizi esterni. Questo layer è esposto esclusivamente tramite interfacce, in modo da disaccoppiare la logica applicativa dalla sua implementazione concreta.]
_Persistence Layer_ #pad(left: 0.5cm)[Gestisce l'accesso al layer di persistenza dei dati attraverso il pattern Repository, garantendo che il dominio applicativo rimanga indipendente dalla tecnologia di storage sottostante. La traduzione tra entità di dominio e modelli di persistenza è delegata a componenti Mapper dedicati.]

=== Component Based Architecture

== Architettura di deployment
L'architettura di deployment adottata per il sistema è basata su microservizi. Questa scelta progettuale garantisce elevata scalabilità, resilienza e una totale indipendenza nello sviluppo e nel rilascio dei singoli componenti software. Ogni microservizio costituisce un'entità autonoma, responsabile di un insieme specifico e circoscritto di funzionalità.

*Comunicazione tra i Servizi*
#pad(left: 0.5cm)[A differenza dei sistemi basati su messaggistica asincrona, i microservizi comunicano tra loro tramite interfacce API REST (Representational State Transfer). L'adozione di questo protocollo garantisce una comunicazione chiara e ben definita tra i componenti, facilitando l'integrazione e le attività di debugging. Il modello sincrono consente inoltre un flusso di dati immediato, risultando particolarmente adatto alle operazioni agentiche che richiedono una risposta in tempo reale. Ogni microservizio espone un insieme di endpoint specifici, rendendo la struttura del sistema facilmente documentabile e manutenibile]
*Containerizzazione e Deployment*
#pad(left: 0.5cm)[Il deployment dei microservizi avviene in ambienti virtualizzati tramite Docker. Ogni microservizio è incapsulato in un container indipendente, operante in un ambiente isolato che previene conflitti di dipendenze e interferenze tra i servizi. Questa soluzione semplifica le fasi di test, rilascio e aggiornamento, assicurando che il software si comporti in modo identico in qualsiasi ambiente di esecuzione. La natura dei container permette infine di replicare i singoli servizi in modo rapido ed efficiente, consentendo al sistema di adattarsi dinamicamente a carichi di lavoro variabili.]

=== Microservizi

*Microservizio Frontend - MS0*

*Microservizio di Analysis Management - MS1*  #pad(left: 0.5cm)[Ha il compito di verificare se, per un dato repository, sia già presente in memoria un'analisi relativa all'ultimo commit disponibile. Qualora l'analisi risulti assente o non aggiornata, il microservizio provvede ad inoltrare la richiesta di analisi al microservizio competente, evitando elaborazioni ridondanti e ottimizzando l'utilizzo delle risorse computazionali.]

*Microservizio di Analisi dei Repository - MS2* #pad(left: 0.5cm)[Si occupa dell'analisi del codice sorgente delle repository mediante l'impiego di agenti software. Ricevuta una richiesta, il microservizio avvia il processo di analisi, delegando l'esecuzione a uno o più agenti specializzati e restituendo i risultati al chiamante.]

*Microservizio di Autenticazione e Repository Management - MS3*: #pad(left: 0.5cm)[Responsabile della gestione degli utenti e delle repository associate. Espone funzionalità di registrazione e autenticazione degli utenti, nonché di aggiunta e rimozione di repository. L'interazione con il servizio esterno GitHub è mediata da un componente Adapter, che isola il sistema dalle specificità dell'API esterna.]
== Design pattern

// USATI IN MS1

// USATI IN MS2

// USATI IN MS3
- *Adapter*

== Progettazione
=== Progettazione backend
==== Analysis Management - MS1
==== Analisi dei Repository - MS2
==== Autenticazione e Repository Management - MS3

=== Progettazione frontend


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
  [R-9-F-O],[L'Utente Registrato deve visualizzare la propria area personale],[Soddisfatto],
  [R-10-F-O],[L'Utente Registrato deve poter visualizzare il proprio nome Utente Registrato],[Soddisfatto],
  [R-11-F-O],[L'Utente Registrato deve poter visualizzare la propria mail],[Soddisfatto],
  [R-12-F-D],[L'Utente Registrato deve poter visualizzare il proprio ruolo],[Non soddisfatto],
  [R-13-F-O],[L'Utente Registrato deve poter effettuare il logout dalla piattaforma],[Soddisfatto],
  [R-14-F-D],[L'Utente Registrato deve poter annullare la procedura di logout dalla piattaforma],[Non soddisfatto],
  [R-15-F-D],[L'Utente Registrato deve visualizzare un messaggio di errore nel caso di errore durante l'esecuzione di un operazione],[Soddisfatto],
  [R-92-F-P],[L'Utente Registrato deve poter cercare un repository in una barra di ricerca],[Non soddisfatto],
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
  [R-49-F-P],[Il Developer deve poter eliminare un repository dal sistema],[Non soddisfatto],
  [R-50-F-P],[Il Developer deve poter annullare l'operazione di eliminazione di un repository dal sistema],[Non soddisfatto],
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
  [R-69-F-O],[Il Developer deve poter consultare l'ultima analisi effettuata all'interno di un repository],[Soddisfatto],
  [R-70-F-D],[Il Developer deve poter visualizzare la data di fine di un'analisi nella lista delle analisi passate relative ad un repository],[Non soddisfatto],
  [R-71-F-D],[Il Developer deve poter visualizzare la lo stato di un'analisi nella lista delle analisi passate relative ad un repository],[Non soddisfatto],
  [R-72-F-O],[Il Developer deve poter avviare un'analisi generale all'interno del repository],[Soddisfatto],
  [R-73-F-D],[Il Developer deve poter avviare un'analisi sui test all'interno del repository],[Non soddisfatto],
  [R-74-F-D],[Il Developer deve poter avviare un'analisi sulla documentazione all'interno del repository],[Non soddisfatto],
  [R-75-F-D],[Il Developer deve poter avviare un'analisi OWASP all'interno del repository],[Non soddisfatto],
  [R-76-F-D],[Il Developer deve ricevere un messaggio di errore nel caso si verificasse un conflitto con un'altra analisi all'avvio di un'analisi],[Non soddisfatto],
  [R-77-F-D],[Il Developer deve poter annullare l'avvio di un'analisi],[Non soddisfatto],

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
  [R-95-F-O],[Il Project Manager deve poter aggiungere dei developer al progetto],[Non soddisfatto],
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
  [R-139-F-O],[Il Project Manager deve poter eliminare un progetto di sua proprietà],[Non soddisfatto],
  [R-140-F-O],[Il Project Manager deve poter annullare l'eliminazione di un progetto di sua proprietà],[Non soddisfatto],

  // BO
  [R-116-Q-O],[Il Business Owner deve poter visualizzare la lista dei propri progetti],[Non soddisfatto],
  [R-117-F-O],[Il Business Owner deve poter visualizzare il budget complessivo per il proprio progetto],[Non soddisfatto],
  [R-118-F-O],[Il Business Owner deve visualizzare le spese affrontate per un progetto],[Non soddisfatto],
  [R-119-F-O],[Il Business Owner deve poter comparare il budget a disposizione con le spese affrontate],[Non soddisfatto],
  [R-120-F-O],[Il Business Owner deve poter visualizzare il dettaglio di un progetto],[Non soddisfatto],
  [R-121-F-O],[Il Business Owner deve poter visualizzare il nome di un progetto],[Non soddisfatto],
  [R-122-F-O],[Il Business Owner deve poter cambiare il budget complessivo per un progetto],[Non soddisfatto],
  [R-123-F-O],[Il Business Owner deve poter annullare il cambiamento del budget complessivo],[Non soddisfatto],
  [R-124-F-O],[Il Business Owner deve poter cambiare la spesa sostenuta per un progetto],[Non soddisfatto],
  [R-125-F-O],[Il Business Owner deve poter annullare il cambiamento della spesa sostenuta per un progetto],[Non soddisfatto],
  [R-126-F-O],[Il Business Owner deve poter visualizzare il nome del Project Manager di un progetto],[Non soddisfatto],
  [R-127-F-O],[Il Business Owner deve poter visualizzare la mail di contatto del Project Manager di un progetto],[Non soddisfatto],
  [R-128-F-O],[Il Business Owner deve poter visualizzare la data di creazione di un progetto],[Non soddisfatto],
  [R-129-F-O],[Il Business Owner deve poter visualizzare la lista delle tecnologie utilizzate in un progetto],[Non soddisfatto],
  [R-130-F-O],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, il logo della tecnologia],[Non soddisfatto],
  [R-131-F-O],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, il nome della tecnologia],[Non soddisfatto],
  [R-109-F-O],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, l'utilizzo che si fa della tecnologia],[Non soddisfatto],
  [R-132-F-O],[Il Business Owner deve poter visualizzare la lista del team di sviluppo che fa parte di un progetto],[Non soddisfatto],
  [R-133-F-O],[Il Business Owner, per ogni elemento della lista del team di sviluppo, deve visualizzare il nome dello sviluppatore],[Non soddisfatto],
  [R-134-F-O],[Il Business Owner, per ogni elemento della lista del team di sviluppo, deve visualizzare il ruolo dello sviluppatore all'interno di un progetto],[Non soddisfatto],
  [R-135-F-O],[Il Business Owner deve poter visualizzare i dettagli di un developer che lavora ad un suo progetto],[Non soddisfatto],
  [R-136-F-O],[Il Business Owner deve poter visualizzare il numero di progetti ai quali lo sviluppatore ha preso parte],[Non soddisfatto],
  [R-137-F-O],[Il Business Owner deve poter visualizzare le tecnologie che uno sviluppatore può utilizzare],[Non soddisfatto],
  [R-138-F-O],[Il Business Owner deve poter visualizzare i ruoli che uno sviluppatore può assumere],[Non soddisfatto],
)
== Grafici di stato dei requisiti
=== Requisiti funzionali
=== Requisiti funzionali obbligatori
=== Requisiti funzionali desiderabili
=== Requisiti funzionali opzionali