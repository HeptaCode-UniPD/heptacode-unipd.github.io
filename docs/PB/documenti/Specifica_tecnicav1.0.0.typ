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
  - Da aggiungere nel caso usiamo altre lezioni
- Documento interno: #link("https://heptacode-unipd.github.io/docs/PB/glossario.pdf")[Glossario v2.0.0]
Questa introduzione delinea il contesto e gli scopi del progetto.

= Tecnologie 
== Linguaggi di programmazione
== Framework 
== Librerie
== Tecnologie per ..

= Architettura
== Architettura logica
== Architettura di deployment
== Design pattern
== Progettazione

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
  [R-1-F-O],[L'Utente Sconosciuto deve poter accedere alla piattaforma],[],
  [R-2-F-O],[L'Utente Sconosciuto deve poter inserire il proprio username],[],
  [R-3-F-O],[L'Utente Sconosciuto deve poter inserire la propria password],[],
  [R-4-F-O],[L'Utente Sconosciuto deve poter annullare l'accesso alla piattaforma],[],
  [R-5-F-O],[L'Utente Sconosciuto deve visualizzare un messaggio di errore nel caso di credenziali errate],[],

  // UTENTE REGISTRATO
  [R-16-F-O],[L'Utente Registrato deve poter inserire un repository pubblico al sistema],[],
  [R-17-F-D],[L'Utente Registrato deve poter inserire un repository privato al sistema],[],
  [R-18-F-D],[L'Utente Registrato deve poter inserire il Personal Access Token collegato al proprio account],[],
  [R-19-F-D],[L'Utente Registrato deve ricevere un messaggio di errore in caso di token inserito non valido],[],
  [R-20-F-O],[L'Utente Registrato deve poter annullare l'inserimento di un repository],[],
  [R-21-F-O],[L'Utente Registrato deve poter inserire l'URL del repository],[],
  [R-22-F-O],[L'Utente Registrato deve ricevere un messaggio di errore nel caso di URL non valido],[],
  [R-23-F-O],[L'Utente Registrato deve poter visualizzare la lista dei propri repository personali],[],
  [R-24-F-O],[L'Utente Registrato deve poter selezionare una preferenza sulla tipologia di repository che desidera visualizzare],[],
  [R-25-F-O],[L'Utente Registrato deve poter visualizzare il nome di un repository],[],
  [R-26-F-D],[L'Utente Registrato deve poter visualizzare il nome del progetto associato al repository],[],
  [R-27-F-O],[L'Utente Registrato deve poter visualizzare l’indicatore  di visibilità di un repository],[],
  [R-28-F-O],[L'Utente Registrato deve poter visualizzare la lista dei progetti ai quali contribuisce],[],
  [R-29-F-O],[L'Utente Registrato deve poter visualizzare il nome di un progetto],[],
  [R-30-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sulla documentazione di un progetto],[],
  [R-31-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sui test di un progetto],[],
  [R-32-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi OWASP di un progetto],[],
  [R-33-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sulla documentazione di un repository],[],
  [R-34-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi sui test di un repository],[],
  [R-35-F-O],[L'Utente Registrato deve poter visualizzare le statistiche dell'analisi OWASP di un repository],[],
  [R-36-F-O],[L'Utente Registrato deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un'analisi sui test per un repository],[],
  [R-9-F-O],[L'Utente Registrato deve visualizzare la propria area personale],[],
  [R-10-F-O],[L'Utente Registrato deve poter visualizzare il proprio nome Utente Registrato],[],
  [R-11-F-O],[L'Utente Registrato deve poter visualizzare la propria mail],[],
  [R-12-F-O],[L'Utente Registrato deve poter visualizzare il proprio ruolo],[],
  [R-13-F-O],[L'Utente Registrato deve poter effettuare il logout dalla piattaforma],[],
  [R-14-F-O],[L'Utente Registrato deve poter annullare la procedura di logout dalla piattaforma],[],
  [R-15-F-D],[L'Utente Registrato deve visualizzare un messaggio di errore nel caso di errore durante l'esecuzione di un operazione],[],
  [R-92-F-P],[L'Utente Registrato deve poter cercare un repository in una barra di ricerca],[],
  [R-85-F-P],[L'Utente Registrato deve poter visualizzare un repository sulla piattaforma esterna GitHub],[],

  // DEV
  [R-78-Q-O],[Il Developer deve potersi autenticare e ricevere il ruolo di "Developer"],[],
  [R-6-F-D],[Il Developer può sincronizzare il proprio account GitHub],[],
  [R-7-F-D],[Il Developer può annullare l'autenticazione con il provider esterno GitHub],[],
  [R-8-F-D],[Il Developer deve poter annullare la sincronizzazione del proprio account GitHub],[],
  [R-37-F-O],[Il Developer deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un'analisi OWASP per un repository],[],
  [R-38-F-O],[Il Developer deve visualizzare la lista dei file sui quali è stata proposta remediation a seguito di un'analisi sulla documentazione per un repository],[],
  [R-39-F-O],[Il Developer deve essere in grado di visualizzare il dettaglio del file sul quale è stato proposto un cambiamento],[],
  [R-40-F-D],[Il Developer deve poter cambiare il path di destinazione del file sul quale è stata proposta un remediation],[],
  [R-41-F-D],[Il Developer deve poter inserire il nuovo path all'interno del sistema],[],
  [R-42-F-D],[Il Developer deve poter annullare il cambio di path di un file nel contesto di una proposta di remediation],[],
  [R-43-F-D],[Il Developer deve visualizzare un messaggio di errore nel caso abbia inserito un path non valido per un file, nel contesto di una proposta di remediation],[],
  [R-44-F-D],[Il Developer deve poter accettare una proposta di remediation],[],
  [R-45-F-D],[Il Developer deve ricevere una notifica una volta che è stata inviata con successo una pull request sul repository GitHub],[],
  [R-46-F-D],[Il Developer deve poter annullare l'accettazione di una proposta di remediation],[],
  [R-47-F-D],[Il Developer deve ricevere un messaggio di errore nel caso di fallimento dell'accettazione della remediation],[],
  [R-48-F-D],[Il Developer deve essere informato se la remediation proposta non è più coerente con lo stato del sistema, e quindi non può essere effettuata],[],
  [R-49-F-O],[Il Developer deve poter eliminare un repository dal sistema],[],
  [R-50-F-O],[Il Developer deve poter annullare l'operazione di eliminazione di un repository dal sistema],[],
  [R-51-F-D],[Il Developer deve poter visualizzare la lista dei procedimenti in corso all'interno del sistema],[],
  [R-52-F-D],[Il Developer deve visualizzare il nome del repository sul quale sta avvenendo il procedimento],[],
  [R-53-F-D],[Il Developer deve visualizzare la data di avvio di ogni elemento dalla lista dei procedimenti in corso in corso.],[],
  [R-54-F-D],[Il Developer deve visualizzare il nome branch aperto di ogni elemento della lista delle remediation in corso.],[],
  [R-55-F-D],[Il Developer deve poter interrompere una remediation avviata],[],
  [R-56-F-D],[Il Developer deve visualizzare un messaggio di avvenuta interruzione di una remediation in corso, in caso ne abbia richiesto la stessa],[],
  [R-57-F-D],[Il Developer deve poter annullare un'analisi in corso all'interno del sistema],[],
  [R-58-F-D],[Il Developer deve visualizzare un messaggio di avvenuto annullamento di un'analisi in corso],[],
  [R-59-F-D],[Il Developer deve visualizzare una lista con le ultime analisi portate a termine],[],
  [R-60-F-D],[Il Developer deve visualizzare il nome del repository sul quale un'analisi è stata terminata],[],
  [R-61-F-D],[Il Developer deve visualizzare la data di completamento di un'analisi terminata],[],
  [R-62-F-D],[Il Developer deve poter visualizzare la specifica di un'analisi portata a termine all'interno di un repository, che non sia l'ultima],[],
  [R-63-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi sulla documentazione],[],
  [R-64-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi sui test],[],
  [R-65-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare il grafico dell'analisi OWASP],[],
  [R-66-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare le proposte di remediation elaborate in seguito all'analisi],[],
  [R-67-F-D],[Il Developer, nel contesto della visualizzazione di un'analisi passata, deve poter visualizzare la proposta di remediation specifica inerente ad un singolo file],[],
  [R-69-F-O],[Il Developer deve poter consultare l'ultima analisi effettuata all'interno di un repository],[],
  [R-70-F-D],[Il Developer deve poter visualizzare la data di fine di un'analisi nella lista delle analisi passate relative ad un repository],[],
  [R-71-F-D],[Il Developer deve poter visualizzare la lo stato di un'analisi nella lista delle analisi passate relative ad un repository],[],
  [R-72-F-O],[Il Developer deve poter avviare un'analisi generale all'interno del repository],[],
  [R-73-F-O],[Il Developer deve poter avviare un'analisi sui test all'interno del repository],[],
  [R-74-F-O],[Il Developer deve poter avviare un'analisi sulla documentazione all'interno del repository],[],
  [R-75-F-O],[Il Developer deve poter avviare un'analisi OWASP all'interno del repository],[],
  [R-76-F-O],[Il Developer deve ricevere un messaggio di errore nel caso si verificasse un conflitto con un'altra analisi all'avvio di un'analisi],[],
  [R-77-F-O],[Il Developer deve poter annullare l'avvio di un'analisi],[],

  // PM 
  [R-79-Q-O],[Il Project Manager deve potersi autenticare e ricevere il ruolo di "Project Manager"],[],
  [R-80-F-O],[Il Project Manager deve poter visualizzare la lista dei propri progetti],[],
  [R-81-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il grafico percentuale sull'analisi della documentazione], [],
  [R-82-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il grafico percentuale sull'analisi dei test],[],
  [R-83-F-D],[Nella lista dei progetti, il Project Manager deve poter visualizzare il grafico percentuale sull'analisi della correttezza OWASP], [],
  [R-84-F-O],[Il Project Manager deve poter visualizzare i dettagli di un progetto],[],
  [R-87-F-O],[Il Project Manager deve poter creare un nuovo progetto],[],
  [R-88-F-O],[Il Project Manager deve poter inserire il nome del progetto],[],
  [R-89-F-D],[Il Project Manager deve poter modificare il nome di un progetto],[],
  [R-90-F-D],[Il Project Manager deve ricevere un errore se il nuovo nome del progetto che si sta inserendo è già presente per quell'utente],[],
  [R-91-F-O],[Il Project Manager deve poter aggiungere un repository al progetto],[],
  [R-93-F-O],[Il Project Manager deve poter visualizzare una lista di repository da poter aggiungere al progetto],[],
  [R-94-F-O],[Il Project Manager deve poter annullare l'operazione di aggiunta repository al progetto],[],
  [R-95-F-O],[Il Project Manager deve poter aggiungere dei developer al progetto],[],
  [R-96-F-P],[Il Project Manager deve poter cercare il nome di un developer su una barra di ricerca ],[],
  [R-97-F-O],[Il Project Manager deve poter visualizzare una lista di developer da poter aggiungere al progetto],[],
  [R-98-F-O],[Il Project Manager deve poter annullare l'aggiunta dei developer al progetto],[],
  [R-99-F-D],[Il Project Manager deve poter visualizzare il nome e la foto profilo di un developer],[],
  [R-100-F-D],[Il Project Manager deve poter visualizzare e gestire gli attuali membri del team],[],
  [R-101-F-D],[Il Project Manager deve poter rimuovere un developer dal progetto],[],
  [R-102-F-D],[Il Project Manager deve poter annullare la rimozione di un developer dal progetto],[],
  [R-103-F-D],[Il Project Manager deve poter visualizzare le competenze del team su un progetto],[],
  [R-104-F-D],[Il Project Manager deve poter visualizzare il profilo di un membro del team (developer)],[],
  [R-105-F-D],[Il Project Manager deve poter visualizzare il profilo GitHub di un membro del team (developer)],[],
  [R-106-F-D],[Il Project Manager deve poter visualizzare le icone delle tecnologie di competenza, accanto al nome dei developer],[],
  [R-107-F-D],[Il Project Manager deve poter visualizzare le statistiche di contribuzione di un membro del team],[],
  [R-108-F-D],[Il Project Manager deve poter visualizzare i linguaggi di programmazione maggiormente utilizzati da un membro del team],[],
  [R-110-F-D],[Il Project Manager deve poter visualizzare il numero di commit effettuati da un membro del team],[],
  [R-111-F-D],[Il Project Manager deve poter visualizzare il numero di pull request gestite da un membro del team],[],
  [R-112-F-D],[Il Project Manager deve poter visualizzare lo stack tecnologico utilizzato in un progetto],[],
  [R-113-F-D],[Il Project Manager deve poter visualizzare l'elenco di framework e librerie,  utilizzare nello stack tecnologico di un progetto],[],
  [R-114-F-D],[Il Project Manager deve poter visualizzare l'elenco di segnalazioni a: framework e librerie con rischi di sicurezza o deprecate, utilizzare nello stack tecnologico di un progetto],[],
  [R-115-F-D],[Il Project Manager deve poter visualizzare suggerimenti generati dall'IA per la sostituzione di framework e librerie, utilizzate nello stack tecnologico di un progetto],[],
  [R-139-F-O],[Il Project Manager deve poter eliminare un progetto di sua proprietà],[],
  [R-140-F-O],[Il Project Manager deve poter annullare l'eliminazione di un progetto di sua proprietà],[],

  // BO
  [R-116-Q-O],[Il Business Owner deve poter visualizzare la lista dei propri progetti],[],
  [R-117-F-O],[Il Business Owner deve poter visualizzare il budget complessivo per il proprio progetto],[],
  [R-118-F-O],[Il Business Owner deve visualizzare le spese affrontate per un progetto],[],
  [R-119-F-O],[Il Business Owner deve poter comparare il budget a disposizione con le spese affrontate],[],
  [R-120-F-O],[Il Business Owner deve poter visualizzare il dettaglio di un progetto],[],
  [R-121-F-O],[Il Business Owner deve poter visualizzare il nome di un progetto],[],
  [R-122-F-O],[Il Business Owner deve poter cambiare il budget complessivo per un progetto],[],
  [R-123-F-O],[Il Business Owner deve poter annullare il cambiamento del budget complessivo],[],
  [R-124-F-O],[Il Business Owner deve poter cambiare la spesa sostenuta per un progetto],[],
  [R-125-F-O],[Il Business Owner deve poter annullare il cambiamento della spesa sostenuta per un progetto],[],
  [R-126-F-O],[Il Business Owner deve poter visualizzare il nome del Project Manager di un progetto],[],
  [R-127-F-O],[Il Business Owner deve poter visualizzare la mail di contatto del Project Manager di un progetto],[],
  [R-128-F-O],[Il Business Owner deve poter visualizzare la data di creazione di un progetto],[],
  [R-129-F-O],[Il Business Owner deve poter visualizzare la lista delle tecnologie utilizzate in un progetto],[],
  [R-130-F-O],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, il logo della tecnologia],[],
  [R-131-F-O],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, il nome della tecnologia],[],
  [R-109-F-O],[Il Business Owner deve visualizzare, per ogni elemento di una lista di stack tecnologico, l'utilizzo che si fa della tecnologia],[],
  [R-132-F-O],[Il Business Owner deve poter visualizzare la lista del team di sviluppo che fa parte di un progetto],[],
  [R-133-F-O],[Il Business Owner, per ogni elemento della lista del team di sviluppo, deve visualizzare il nome dello sviluppatore],[],
  [R-134-F-O],[Il Business Owner, per ogni elemento della lista del team di sviluppo, deve visualizzare il ruolo dello sviluppatore all'interno di un progetto],[],
  [R-135-F-O],[Il Business Owner deve poter visualizzare i dettagli di un developer che lavora ad un suo progetto],[],
  [R-136-F-O],[Il Business Owner deve poter visualizzare il numero di progetti ai quali lo sviluppatore ha preso parte],[],
  [R-137-F-O],[Il Business Owner deve poter visualizzare le tecnologie che uno sviluppatore può utilizzare],[],
  [R-138-F-O],[Il Business Owner deve poter visualizzare i ruoli che uno sviluppatore può assumere],[],
)
== Grafici di stato dei requisiti
=== Requisiti funzionali
=== Requisiti funzionali obbligatori
=== Requisiti funzionali desiderabili
=== Requisiti funzionali opzionali