#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola
#import "../../templates/glossario_termini.typ": applica-glossario

#let storia_modifiche = (
  ("2.0.0", "2026/04/06", "Laura Venturini", "Angela Favaro", "Aggiornamento del documento con l'andamento finale delle metriche"),
  ("1.1.0", "2026/03/20","Laura Venturini", "Angela Favaro", "Aggiunta nuove metriche" ),
  ("1.0.0", "2026/02/16", "Angela Canazza", "Angela Favaro",  "Aggiunto capitolo 6.2 e conclusioni"),

  ("0.5.0", "2026/02/14", "Laura Venturini",  "Angela Canazza", "Stesura del capitolo 5"),

  ("0.4.2", "2026/02/13", "Laura Venturini",  "Angela Canazza", "Stesura del paragrafo 4.1"),

  ("0.4.1", "2026/01/09", "Angela Canazza",  "Laura Venturini", "Completamento dei capitolo 3 con l'inserimento delle metriche e stesura introduzione del capitolo 4"),
  
  ("0.4.0", "2025/12/28", "Laura Venturini",  "Amerigo Vegliante", "Aggiunta di problemi incontrati e contromisure nella sezione 6.1 - Valutazione organizzativa"),
  
  ("0.3.0", "2025/12/15", "Angela Canazza",  "Amerigo Vegliante", "Stesura iniziale del capitolo 6 - Iniziative di miglioramento"),
  
  ("0.2.0", "2025/12/14", "Angela Canazza", "Nicola Simionato", "Stesura iniziale di: qualità di processo, di prodotto e dei metodi di testing"),
  
  ("0.1.0", "2025/12/12", "Nicola Simionato", "Angela Canazza", "Stesura dell'introduzione")
)

#show: doc => template_documenti(
  titolo: "Piano di Qualifica",
  descrizione: "Il presente documento contiene il piano di qualifica del gruppo _Hepta Code_ relativo al capitolato _Code Guardian_ proposto dall'azienda _Var Group_.",
  modifiche: storia_modifiche,
  lista_tabelle: true,
  lista_figure: true,
  doc
)

#show: applica-glossario

= Introduzione
== Scopo del documento
Il presente documento, Piano di Qualifica, descrive in dettaglio le strategie di verifica e validazione adottate per garantire la qualità del prodotto finale e dei processi realizzativi.\
Il documento sarà soggetto ad aggiornamenti costanti per tutta la durata del progetto; questo permetterà di monitorare i risultati delle verifiche e di intervenire tempestivamente sulla risoluzione di eventuali anomalie o metriche non conformi.
== Scopo del capitolato
Il capitolato per il progetto CodeGuardian ha come oggetto lo sviluppo di una piattaforma web per il monitoraggio e l'analisi di repository GitHub. Il sistema dovrà permettere a diverse tipologie di utenti aziendali di accedere ai report di revisione delle proprie repository e progetti in relazione alla tipologia di utente che lo visualizza.\
Nello specifico, è richiesto l'utilizzo di LLM#super[G] (Large Language Models) per analizzare tre componenti fondamentali: la documentazione, il codice sorgente (tramite analisi statica e dinamica) e la conformità agli standard di sicurezza OWASP#super[G].
== Riferimenti
=== Riferimenti normativi
- #underline[#link("../documenti/Norme_di_progetto_v1.0.0.pdf","Norme di progetto")]
- Capitolato d'appalto: #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf","CodeGuardian")] 
=== Riferimenti informativi
- #underline[#link("https://cdn.standards.iteh.ai/samples/35867/36860aa4caba4c84b26051db576456d3/ISO-IEC-90003-2004.pdf","Standard ISO/IEC 90003:2004")]
- Materiale didattico del corso:
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T0.pdf","Qualità di Prodotto")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T08.pdf","Qualità di Processo")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T09.pdf","Verifica e Validazione: introduzione")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T10.pdf","Verifica e Validazione: analisi statica")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T11.pdf","Verifica e Validazione: analisi dinamica aka testing")] 
= Qualità di processo
La qualità di processo è considerata un prerequisito fondamentale per ottenere la qualità del prodotto finale. L'approccio adottato dal gruppo si basa sull'assunto che un processo rigoroso e controllato sia l'unica garanzia per ottenere un output conforme alle aspettative e allo stato dell'arte. 

A tale scopo, il processo non viene mai lasciato a sé stesso, ma è soggetto a un controllo continuo, sono quindi necessari:

- Sensori (Metriche): Strumenti di misurazione oggettiva che rilevano lo stato attuale del processo. Questi indicatori forniscono dati quantitativi sull'andamento delle attività.

- Attuatori (Azioni Correttive): Meccanismi decisionali e regole che permettono di intervenire sull'implementazione del processo. Se i sensori rilevano una deviazione rispetto alla pianificazione, gli attuatori modificano la direzione del lavoro per riportarlo ai risultati attesi.
== Processi primari
=== Fornitura
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPC09",
    "Planned Value",
    "≥0€",
    "≤BAC",
    "MPC10",
    "Earned Value",
    "≥0€",
    "≤EAC",
    "MPC11",
    "Actual Cost",
    "≥0€",
    "≤EAC",
    "MPC12",
    "Estimate at Completion",
    "≥BAC -5%",
    "≤BAC +5%",
    "MPC13",
    "Estimate to Complete",
    "≥0€",
    "≤EAC",
    
    
  ),
  caption: [Metriche processi di fornitura],
  kind: table
)
// qui andranno inserite le tabelle contenenti le metriche con i valori accettabili decisi, non avendoli ancora decisi, lascio vuoto
== Processi di supporto
=== Verifica e validazione
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPC14",
    "Code Coverage",
    "≥80%",
    "≥90%",
    "MPC15",
    "Test Success Rate",
    "≥85%",
    "≥100%",
    "MPC16",
    "Statement Coverage",
    "≥90%",
    "100%",
    "MPC17",
    "Branch Coverage",
    "≥70%",
    "≥80%"
  ),
  caption: [Metriche processi di verifica],
  kind: table
)

=== Documentazione
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPC18",
    "Correttezza Ortografica",
    "0",
    "0"
  ),
  caption: [Metriche processi di documentazione],
  kind: table
)
== Processi organizzativi
=== Miglioramento
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPC01",
    "Schedule Variance",
    "≥-10%",
    "≥0%",
    "MPC02",
    "Cost Variance",
    "≥0€",
    "≥0€",
    "MPC03",
    "Budget Variance",
    "-10%≤BV≤10%",
    "0%",
    "MPC04",
    "Cost Performance Index",
    "≥90%",
    "100%",
    "MPC05",
    "Task Completion Rate",
    ">=75%",
    "100%",
    "MPC06",
    "Time Efficiency",
    ">=30%",
    ">=80%",
    "MPC07",
    "Percentuale di metriche soddisfatte",
    ">=60%",
    "100%",
    "MPC08",
    "Rischi non previsti",
    "<=2",
    "0"

  ),
  caption: [Metriche processi di miglioramento],
  kind: table
)




= Qualità di prodotto
La qualità del prodotto software viene intesa, in conformità con la normativa ISO#super[G], come l'insieme delle caratteristiche che permettono al sistema di soddisfare le esigenze implicite ed esplicite degli stakeholder#super[G]. Poiché la valutazione della qualità dipende dalla prospettiva di osservazione, è necessario un confronto oggettivo tra i risultati ottenuti e gli obiettivi iniziali.

Affinché le conformità vengano soddisfatte, al progetto vengono integrati tre elementi:

- Definizione degli obiettivi specifici nel Piano di Qualifica.
- Verifica puntuale del soddisfacimento dei requisiti.
- Miglioramento continuo tramite l'Analisi dei rischi e l'ottimizzazione dei processi iterazione dopo iterazione. L'approccio operativo segue il principio del "fail fast"#super[G].
== Funzionalità
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPD01", 
    "Requisiti obbligatori soddisfatti",
    "100%",
    "100%",
    "MPD02", 
    "Requisiti desiderabili soddisfatti",
    "≥0%",
    "≥60%",
    "MPD03", 
    "Requisiti opzionali soddisfatti ",
    "≥0%",
    "≥30%"
  ),
  caption: [Metriche funzionalità del prodotto],
  kind: table
)

== Efficienza
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPD04", 
    "Tempo di caricamento",
    "≤10 secondi ",
    "≤5 secondi",
    "MPD05", 
    "Tempo medio di risposta (Sistema)",
    "≤5 secondi",
    "≤2 secondi",
    "MPD06", 
    "Tempo medio di risposta (Elaborazione AI)",
    "≤15 minuti",
    "≤10 minuti"
  ),
  caption: [Metriche di efficienza del prodotto],
  kind: table
)

== Manutenibilità
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
      "MPD08", 
    "Parametri per metodo ",
    "≤6",
    "≤4",
    "MPD09", 
    "Linee di codice per file",
    "≤120",
    "≤80",
  ),
  caption: [Metriche di manutenibilità del prodotto],
  kind: table
)

== Usabilità
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPD13", 
    "Tempo di apprendimento",
    "≤10 minuti ",
    "≤5 minuti",
    "MPD14", 
    "Indice di Gulpease",
    "≥50",
    "≥70"
  ),
  caption: [Metriche usabilità del prodotto],
  kind: table
)

== Affidabilità
#figure(
  tabella-viola(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*valore ottimale*]
    ),
    
    "MPD15", 
    "Test Failure Rate",
    "≤15%",
    "≤0%"
  ),
  caption: [Metriche affidabilità del prodotto],
  kind: table
)

= Metodi di testing
Nel documento riguardante le #underline[#link("../documenti/Norme_di_progetto_v1.0.0.pdf","Norme di Progetto")], i test utilizzati per la verifica del codice saranno:

- *Test di Unità*: Viene verificato che le singole attività atomiche e indipendenti, che compongono il sistema, funzionino correttamente;

- *Test di Integrazione*: Viene verificato che le singole attività lavorino correttamente tra di loro al fine di svolgere un certo compito. Vengono effettuati dopo i test di unità;

- *Test di Sistema*: Viene verificato il funzionamento dell'intero sistema, il quale deve soddisfare tutti i requisiti indicati nell'analisi dei requisiti;

- *Test di Regressione*: a seguito di un test andato male e di una relativa correzione,ci si accerta che la correzione non causi errori nelle parti del sistema che dipendono da essa;

- *Test di Accettazione*
#tabella-viola(
  columns: (2cm, auto, 3cm ,2cm),
  
  table.header([*Codice*], [*Descrizione*], [*Requisito di riferimento*], [*Stato del test*]),
  [*T-1-S*], [Verificare che l'Utente Sconosciuto non autentificato possa accedere alla piattaforma], [R-1-F-O], [NI],
  [*T-2-S*], [Verificare che l'Utente Sconosciuto abbia inserito il proprio username durante il processo di autenticazione], [R-2-F-O], [NI],
  [*T-3-S*], [Verificare che l'Utente Sconosciuto abbia inserito la propria password durante il processo di autenticazione], [R-3-F-O], [NI],
  [*T-4-S*], [Verificare che l'Utente Sconosciuto possa annullare la procedura di accesso alla piattaforma], [R-4-F-O], [NI],
  [*T-5-S*], [Verificare che l'Utente Sconosciuto visualizzi un messaggio di errore nel caso di inserimento di credenziali errate durante il processo di autenticazione], [R-5-F-O], [NI],
  [*T-16-S*], [Verificare che l'Utente Registrato possa aggiungere un repository pubblico al sistema], [R-16-F-O], [NI],
  [*T-17-S*], [Verificare che l'Utente Registrato possa aggiungere un repository privato al sistema], [R-17-F-D], [NI],
  [*T-18-S*], [Verificare che l'Utente Registrato possa inserire il Personal Access Token collegato al suo account], [R-18-F-D], [NI],
  [*T-19-S*], [Verificare che l'Utente Registrato visualizzi un messaggio di errore in caso di inserimento di Personal Access Token non valido], [R-19-F-D], [NI],
  [*T-20-S*], [Verificare che l'Utente Registrato possa annullare la procedura di inserimento di un repository nel sistema], [R-20-F-O], [NI],
  [*T-21-S*], [Verificare che l'Utente Registrato possa inserire l'URL del repository da inserire nel sistema], [R-21-F-O], [NI],
  [*T-22-S*], [Verificare che l'Utente Registrato visualizzi un messaggio di errore in caso di inserimento di URL non valido], [R-22-F-O], [NI],
  [*T-23-S*], [Verificare che l'Utente Registrato possa visualizzare la lista dei repository personali], [R-23-F-O], [NI],
  [*T-24-S*], [Verificare che l'Utente Registrato possa selezionare una preferenza sulla tipologia di repository visualizzata], [R-24-F-O], [NI],
  [*T-25-S*], [Verificare che l'Utente Registrato possa visualizzare il nome di un repository], [R-25-F-O], [NI],
  [*T-26-S*], [Verificare che l'Utente Registrato possa visualizzare il nome del progetto associato a un repository], [R-26-F-D], [NI],
  [*T-27-S*], [Verificare che l'Utente Registrato possa visualizzare l'indicatore di visibilità di un repository], [R-27-F-O], [NI],
  [*T-28-S*], [Verificare che l'Utente Registrato possa visualizzare la lista dei progetti ai quali contribuisce], [R-28-F-O], [NI],
  [*T-29-S*], [Verificare che l'Utente Registrato possa visualizzare il nome di un progetto], [R-25-F-O], [NI],
  [*T-30-S*], [Verificare che l'Utente Registrato possa visualizzare le statistiche dell'analisi sulla documentazione di un progetto], [R-30-F-O], [NI],
  [*T-31-S*], [Verificare che l'Utente Registrato possa visualizzare le statistiche dell'analisi sui test di un progetto], [R-31-F-O], [NI],
  [*T-32-S*], [Verificare che l'Utente Registrato possa visualizzare le statistiche dell'analisi OWASP di un progetto], [R-32-F-O], [NI],
  [*T-33-S*], [Verificare che l'Utente Registrato possa visualizzare le statistiche dell'analisi sulla documentazione di un repository], [R-31-F-O], [NI],
  [*T-34-S*], [Verificare che l'Utente Registrato possa visualizzare le statistiche dell'analisi sui test di un repository], [R-34-F-O], [NI],
  [*T-35-S*], [Verificare che l'Utente Registrato possa visualizzare le statistiche dell'analisi OWASP di un repository], [R-35-F-O], [NI],
  [*T-36-S*], [Verificare che l'Utente, dopo l'analisi sui test per un repository, visualizzi la lista dei file sui quali è stata proposta remediation], [R-36-F-O], [NI],  
  [*T-9-S*], [Verificare che l'Utente Registrato visualizzi la propria area personale dopo essersi autentificato], [R-9-F-O], [NI],
  [*T-10-S*], [Verificare che l'Utente Registrato possa visualizzare il proprio username], [R-10-F-O], [NI],
  [*T-11-S*], [Verificare che l'Utente Registrato possa visualizzare la propria mail], [R-10-F-O], [NI],
  [*T-12-S*], [Verificare che l'Utente Registrato possa visualizzare il proprio ruolo], [R-12-F-O], [NI],
  [*T-13-S*], [Verificare che l'Utente Registrato possa eseguire il logout dalla piattaforma], [R-13-F-O], [NI],
  [*T-14-S*], [Verificare che l'Utente Registrato possa annullare la procedura  di logout dalla piattaforma], [R-14-F-O], [NI],
  [*T-15-S*], [Verificare che l'Utente Registrato visualizzi un messaggio di errore in caso si presenti un errore durante l'esecuzione di un'operazione], [R-15-F-D], [NI],
  [*T-92-S*], [Verificare che l'Utente Registrato possa cercare un repository tramite barra di ricerca], [R-92-F-P], [NI],
  [*T-85-S*], [Verificare che l'Utente Registrato possa visualizzare un repository sulla piattaforma esterna GitHub], [R-85-F-P], [NI],
  [*T-78-S*], [Verificare che il Developer possa autenticarsi in maniera tale che gli venga assegnato il ruolo di "Developer"], [R-78-Q-P], [NI],
  [*T-6-S*], [Verificare che il Developer possa sincronizzare il proprio account GitHub], [R-6-F-D], [NI],
  [*T-7-S*], [Verificare che il Developer possa annullare l'autenticazione con il provider esterno GitHub], [R-7-F-D], [NI],
  [*T-8-S*], [Verificare che il Developer, in caso abbia precedentemente sincronizzato il proprio account GitHub, possa annullare tale sincronizzazione], [R-8-F-D], [NI],
  [*T-37-S*], [Verificare che il Developer, dopo l'analisi OWASP per un repository, visualizzi la lista dei file sui quali è stata proposta remediation], [R-37-F-O], [NI],
  [*T-38-S*], [Verificare che il Developer, dopo l'analisi sulla documentazione per un repository, visualizzi la lista dei file sui quali è stata proposta remediation.], [R-38-F-O], [NI],
  [*T-39-S*], [Verificare che il Developer possa visualizzare il dettaglio del file sul quale è stato proposto un cambiamento], [R-39-F-O], [NI],
  [*T-40-S*], [Verificare che il Developer possa cambiare il path di destinazione del file sul quale è stata proposta una remediation], [R-40-F-D], [NI],
  [*T-41-S*], [Verificare che il Developer, nel contesto di una proposta di remediation, possa inserire il nuovo path di destinazione all'interno del sistema in caso sia stato cambiato], [R-41-F-D], [NI],
  [*T-42-S*], [Verificare che il Developer, nel contesto di una proposta di remediation, possa annullare il cambio di path di destinazione del file], [R-42-F-D], [NI],
  [*T-43-S*], [Verificare che il Developer, nel contesto di una proposta di remediation, visualizzi un messaggio di errore in caso di inserimento di un path non valido], [R-43-F-D], [NI],
  [*T-44-S*], [Verificare che il Developer possa accettare una proposta di remediation], [R-44-F-D], [NI],
  [*T-45-S*], [Verificare che il Developer riceva una notifica in seguito al successo dell'invio di una pull request sul repository GitHub], [R-45-F-D], [NI],
  [*T-46-S*], [Verificare che il Developer possa annullare l'accettazione di una proposta di remediation], [R-46-F-D], [NI],
  [*T-47-S*], [Verificare che il Developer visualizzi un messaggio di errore in caso di fallimento dell'accettazione della remediation], [R-47-F-D], [NI],
  [*T-48-S*], [Verificare che il Developer venga informato in caso la remediation proposta non possa più essere effettuata in quanto non più coerente con lo stato del sistema], [R-48-F-D], [NI],
  [*T-49-S*], [Verificare che il Developer possa eliminare un repository dal sistema], [R-49-F-O], [NI],
  [*T-50-S*], [Verificare che il Developer possa annullare l'operazione di eliminazione di un repository dal sistema], [R-50-F-O], [NI],
  [*T-51-S*], [Verificare che il Developer possa visualizzare la lista dei procedimenti in corso all'interno del sistema], [R-51-F-D], [NI],
  [*T-52-S*], [Verificare che il Developer possa visualizzare il nome del repository sul quale sta avvenendo il procedimento], [R-52-F-D], [NI],
  [*T-53-S*], [Verificare che il Developer possa visualizzare la data di di avvio di ogni elemento della lista delle remediation in corso], [R-53-F-D], [NI],
  [*T-54-S*], [Verificare che il Developer possa visualizzare il nome del branch aperto di ogni elemento della lista delle remediation in corso], [R-50-F-D], [NI],
  [*T-55-S*], [Verificare che il Developer possa interrompere una remediation una volta avviata], [R-55-F-D], [NI],
  [*T-56-S*], [Verificare che il Developer, in caso richieda l'interruzione di una remediation in corso, visualizzi il messaggio di avvenuta interruzione ], [R-56-F-D], [NI],
  [*T-57-S*], [Verificare che il Developer possa annullare un'analisi in corso all'interno del sistema], [R-57-F-D], [NI],
  [*T-58-S*], [Verificare che il Developer, in seguito a una richiesta di annullamento dell'analisi in corso, visualizzi il messaggio di avvenuto annullamento dell'analisi ], [R-58-F-D], [NI],
  [*T-59-S*], [Verificare che il Developer visualizzi una lista contenente le ultime analisi portate a termine], [R-59-F-D], [NI],
  [*T-60-S*], [Verificare che il Developer possa visualizzare il nome del repository sul quale un'analisi è stata conclusa], [R-60-F-D], [NI],
  [*T-61-S*], [Verificare che il Developer possa visualizzare la data di completamento di un'analisi terminata], [R-61-F-D], [NI],
  [*T-62-S*], [Verificare che il Developer possa visualizzare la specifica di un'analisi che non sia l'ultima portata al termine all'interno di un repository], [R-62-F-D], [NI],
  [*T-63-S*], [Verificare che il Developer possa visualizzare il grafico dell'analisi sulla documentazione nel contesto della visualizzazione di un'analisi passata], [R-63-F-D], [NI],
  [*T-64-S*], [Verificare che il Developer possa visualizzare il grafico dell'analisi sui test nel contesto della visualizzazione di un'analisi passata], [R-64-F-D], [NI],
  [*T-65-S*], [Verificare che il Developer possa visualizzare il grafico dell'analisi OWASP nel contesto della visualizzazione di un'analisi passata], [R-65-F-D], [NI],
  [*T-66-S*], [Verificare che il Developer possa visualizzare le proposte di remediation elaborate in seguito all'analisi nel contesto della visualizzazione di un'analisi passata], [R-66-F-D], [NI],
  [*T-67-S*], [Verificare che il Developer possa visualizzare ogni proposta di remediation specifica inerente a un singolo file nel contesto della visualizzazione di un'analisi passata], [R-67-F-D], [NI],
  [*T-69-S*], [Verificare che il Developer possa consultare l'ultima analisi effettuata all'interno di un repository], [R-69-F-O], [NI],
  [*T-70-S*], [Verificare che il Developer possa visualizzare la data di fine di un'analisi all'interno della lista delle analisi passate relative ad un repository], [R-70-F-D], [NI],
  [*T-71-S*], [Verificare che il Developer possa visualizzare lo stato di un'analisi all'interno della lista delle analisi passate relative a un repository], [R-71-F-D], [NI],
  [*T-72-S*], [Verificare che il Developer possa avviare un'analisi generale all'interno di un repository], [R-72-F-O], [NI],
  [*T-73-S*], [Verificare che il Developer possa avviare un'analisi sui test all'interno di un repository], [R-73-F-O], [NI],
  [*T-74-S*], [Verificare che il Developer possa avviare un'analisi sulla documentazione all'interno di un repository], [R-74-F-O], [NI],
  [*T-75-S*], [Verificare che il Developer possa avviare un'analisi OWASP all'interno di un repository], [R-75-F-O], [NI],
  [*T-76-S*], [Verificare che il Developer visualizzi un messaggio di errore all'avvio di un'analisi in caso di conflitto con un'altra analisi], [R-76-F-O], [NI],
  [*T-77-S*], [Verificare che il Developer possa annullare l'operazione di avvio di un'analisi], [R-77-F-O], [NI],
  [*T-79-S*], [Verificare che il Project Manager possa autenticarsi in maniera tale che gli venga assegnato il ruolo di "Project Manager"], [R-79-Q-O], [NI],
  [*T-80-S*], [Verificare che il Project Manager possa visualizzare la lista dei propri progetti], [R-80-F-O], [NI],
  [*T-81-S*], [Verificare che il Project Manager possa visualizzare il widget sull'analisi della documentazione nella schermata di visualizzazione della lista dei progetti], [R-81-F-D], [NI],
  [*T-82-S*], [Verificare che il Project Manager possa visualizzare il widget sull'analisi della documentazione nella schermata di visualizzazione della lista dei progetti], [R-82-F-D], [NI],
  [*T-83-S*], [Verificare che il Project Manager possa visualizzare il widget sull'analisi della documentazione nella schermata di visualizzazione della lista dei progetti], [R-83-F-D], [NI],
  [*T-84-S*], [Verificare che il Project Manager possa visualizzare i dettagli di un progetto selezionato dalla lista di progetti], [R-84-F-O], [NI],
  [*T-86-S*], [Verificare che il Project Manager possa visualizzare l'elenco dei repository che lo compongono nei dettagli di un progetto], [R-86-F-O], [NI],
  [*T-87-S*], [Verificare che il Project Manager possa creare un nuovo progetto], [R-87-F-O], [NI],
  [*T-88-S*], [Verificare che il Project Manager possa inserire il nome del progetto durante la sua creazione], [R-88-F-O], [NI],
  [*T-89-S*], [Verificare che il Project Manager possa modificare il nome di un progetto ], [R-89-F-D], [NI],
  [*T-90-S*], [Verificare che il Project Manager visualizzi un errore in seguito alla creazione di un progetto che ha un nome già presente fra i progetti di quel Project Manager], [R-90-F-D], [NI],
  [*T-91-S*], [Verificare che il Project Manager possa aggiungere repository ai suoi progetti], [R-91-F-O], [NI],
  [*T-93-S*], [Verificare che il Project Manager possa visualizzare una lista di repository disponibili per essere aggiunti a un suo progetto], [R-93-F-O], [NI],
  [*T-94-S*], [Verificare che il Project Manager possa annullare l'operazione di aggiunta repository al progetto], [R-94-F-O], [NI],
  [*T-95-S*], [Verificare che il Project Manager possa aggiungere developer ai suoi progetti], [R-95-F-O], [NI],
  [*T-96-S*], [Verificare che il Project Manager possa cercare il nome di un developer tramite una barra di ricerca], [R-96-F-D], [NI],
  [*T-97-S*], [Verificare che il Project Manager possa visualizzare una lista di developer disponibili per essere aggiunti a un suo progetto], [R-97-F-O], [NI],
  [*T-98-S*], [Verificare che il Project Manager possa annullare l'operazione di aggiunta developer al progetto], [R-98-F-O], [NI],
  [*T-99-S*], [Verificare che il Project Manager possa visualizzare il nome e la foto profilo di un developer], [R-99-F-D], [NI],
  [*T-100-S*], [Verificare che il Project Manager possa visualizzare e gestire gli attuali membri del team di un progetto], [R-100-F-D], [NI],
  [*T-101-S*], [Verificare che il Project Manager possa rimuovere un developer da un suo progetto], [R-101-F-D], [NI],
  [*T-102-S*], [Verificare che il Project Manager possa annullare l'operazione di rimozione di un developer dal progetto], [R-102-F-D], [NI],
  [*T-103-S*], [Verificare che il Project Manager possa visualizzare le competenze del team di un progetto], [R-103-F-D], [NI],
  [*T-104-S*], [Verificare che il Project Manager possa visualizzare il profilo di un membro del team di un progetto], [R-104-F-D], [NI],
  [*T-105-S*], [Verificare che il Project Manager possa visualizzare il profilo GitHub di un membro del team di un progetto], [R-105-F-D], [NI],
  [*T-106-S*], [Verificare che il Project Manager visualizzi le icone delle tecnologie di competenza di un developer accanto al nome del developer], [R-106-F-D], [NI],
  [*T-107-S*], [Verificare che il Project Manager possa visualizzare le statistiche di contribuzione di un membro del team], [R-107-F-D], [NI],
  [*T-108-S*], [Verificare che il Project Manager possa visualizzare i linguaggi di programmazione maggiormente utilizzati da un membro del team di un progetto], [R-108-F-D], [NI],
  [*T-109-S*], [Verificare che il Project Manager possa visualizzare i linguaggi di programmazione maggiormente utilizzati da un membro del team di un progetto], [R-109-F-D], [NI],
  [*T-110-S*], [Verificare che il Project Manager possa visualizzare il numero di commit effettuati da un membro del team di un progetto], [R-110-F-D], [NI],
  [*T-111-S*], [Verificare che il Project Manager possa visualizzare il numero di pull request gestite da un membro del team di un progetto], [R-111-F-D], [NI],
  [*T-112-S*], [Verificare che il Project Manager possa visualizzare lo stack tecnologico utilizzato in un progetto], [R-112-F-D], [NI],
  [*T-113-S*], [Verificare che il Project Manager possa visualizzare l'elenco dei framework e delle librerie utilizzate nello stack tecnologico di un progetto], [R-113-F-D], [NI],
  [*T-114-S*], [Verificare che il Project Manager possa visualizzare l'elenco delle segnalazioni di framework e librerie con rischi di sicurezza o deprecate che sono utilizzate nello stack tecnologico di un progetto], [R-113-F-D], [NI],
  [*T-115-S*], [Verificare che il Project Manager possa visualizzare i suggerimenti generati dall'IA per la sostituzione di framework e librerie utilizzate nello stack tecnologico di un progetto], [R-115-F-D], [NI],
  [*T-139-S*], [Verificare che il Project Manager possa eliminare un suo progetto], [R-139-F-O], [NI],
  [*T-140-S*], [Verificare che il Project Manager possa annullare l'operazione di eliminazione di un suo progetto], [R-140-F-O], [NI],
  [*T-116-S*], [Verificare che il Business Owner possa visualizzare la lista dei propri progetti], [R-116-Q-P], [NI],
  [*T-117-S*], [Verificare che il Business Owner possa visualizzare il budget complessivo per il proprio progetto], [R-117-F-P], [NI],
  [*T-118-S*], [Verificare che il Business Owner possa visualizzare le spese effettuate di un progetto], [R-118-F-P], [NI],
  [*T-119-S*], [Verificare che il Business Owner possa visualizzare una comparazione fra budget e spese effettuate], [R-119-F-P], [NI],
  [*T-120-S*], [Verificare che il Business Owner possa visualizzare i dettagli di un suo progetto], [R-117-F-P], [NI],
  [*T-121-S*], [Verificare che il Business Owner possa visualizzare il nome di un progetto], [R-121-F-P], [NI],
  [*T-122-S*], [Verificare che il Business Owner possa cambiare il budget complessivo di un suo progetto], [R-121-F-P], [NI],
  [*T-123-S*], [Verificare che il Business Owner possa annullare l'operazione di cambio del budget di un suo progetto], [R-123-F-P], [NI],
  [*T-124-S*], [Verificare che il Business Owner possa cambiare la spesa effettuata in un progetto], [R-124-F-P], [NI],
  [*T-125-S*], [Verificare che il Business Owner possa annullare l'operazione di cambio spesa effettuata in un suo progetto], [R-125-F-P], [NI],
  [*T-126-S*], [Verificare che il Business Owner possa visualizzare il nome del Project Manager di un progetto], [R-126-F-P], [NI],
  [*T-127-S*], [Verificare che il Business Owner possa visualizzare la mail del Project Manager di un progetto], [R-127-F-P], [NI],
  [*T-128-S*], [Verificare che il Business Owner possa visualizzare la data di creazione di un progetto], [R-128-F-P], [NI],
  [*T-129-S*], [Verificare che il Business Owner possa visualizzare la lista di tecnologie utilizzate in un progetto], [R-129-F-P], [NI],
  [*T-130-S*], [Verificare che il Business Owner possa visualizzare il logo di ogni tecnologia presente nella lista dello stack tecnologico di un progetto], [R-130-F-P], [NI],
  [*T-131-S*], [Verificare che il Business Owner possa visualizzare il nome di ogni tecnologia presente nella lista dello stack tecnologico di un progetto], [R-121-F-P], [NI],
  [*T-109-S*], [Verificare che il Business Owner possa visualizzare l'utilizzo che si fa di ogni tecnologia presente nella lista dello stack tecnologico di un progetto], [R-109-F-P], [NI],
  [*T-132-S*], [Verificare che il Business Owner possa visualizzare la lista contenente i membri del team di sviluppo di un progetto], [R-132-F-P], [NI],
  [*T-133-S*], [Verificare che il Business Owner possa visualizzare il nome di ogni sviluppatore contenuto nella lista del team di sviluppo di un progetto], [R-133-F-P], [NI],
  [*T-134-S*], [Verificare che il Business Owner possa visualizzare il ruolo all'interno del progetto di ogni sviluppatore contenuto nella lista del team di sviluppo], [R-134-F-P], [NI],
  [*T-135-S*], [Verificare che il Business Owner possa visualizzare i dettagli di ogni sviluppatore contenuto nella lista del team di sviluppo di un progetto], [R-135-F-P], [NI],
  [*T-136-S*], [Verificare che il Business Owner possa visualizzare il numero di progetti ai quali uno sviluppatore ha preso parte], [R-136-F-P], [NI],
  [*T-137-S*], [Verificare che il Business Owner possa visualizzare le tecnologie che uno sviluppatore sa utilizzare], [R-137-F-P], [NI],
  [*T-138-S*], [Verificare che il Business Owner possa visualizzare i ruoli che uno sviluppatore può assumere], [R-138-F-P], [NI],
)

#pagebreak()
= Valutazione lavoro
In questa sezione sono riportate le misurazioni della qualità effettuate durante lo svolgimento delle attività dedicate al raggiungimento della Requirements and Technology Baseline. Inoltre, sono presenti i ragionamenti sulla differenza fra le tendenze attese e quelle effettivamente osservate. 

//LISTE PER FACILITARE LA CREAZIONE DI TABELLE E GRAFICI AUTOMATICI

#let lista_Ac = (
  0.00,     //AGGIUDICAZIONE 
  252.50,   //SPRINT 1
  687.50,   //SPRINT 2
  1360,     //SPRINT 3
  2100,     //SPRINT 4
  2560,     //SPRINT 5
  2905,     //SPRINT 6
  3265,     //SPRINT 7
  3850,     //SPRINT 8
  4410,  //SPRINT 9
  5380,  //SPRINT 10
  5925,  //SPRINT 11
  6245, //SPRINT 12
  8415, //13
  10055, //14
  12845 //15
)

#let lista_Pv = (
  0.00,     //AGGIUDICAZIONE 
  203.12,   //SPRINT 1
  551.33,   //SPRINT 2
  1083.31,  //SPRINT 3
  1683.00,  //SPRINT 4
  2244.01,  //SPRINT 5
  2650.25,  //SPRINT 6
  3075.84,  //SPRINT 7
  3598.15,  //SPRINT 8
  4159.15,  //SPRINT 9
  5165.08,  //SPRINT 10
  5687.39,  //SPRINT 11 
  6091.86, //SPRINT 12
  7895.37, //SPRINT 13
  9458.41, //SPRINT 14
  12845.00 //SPRINT 15 
)

#let lista_Ev = (
  0.00,     //AGGIUDICAZIONE 
  203.12,   //SPRINT 1
  551.33,   //SPRINT 2
  1083.31,  //SPRINT 3
  1683.00,  //SPRINT 4
  2069.90,  //SPRINT 5
  2360.08,  //SPRINT 6
  2708.28,  //SPRINT 7
  3230.59,  //SPRINT 8
  3694.87,  //SPRINT 9
  4662.12,  //SPRINT 10
  5281.15,  //SPRINT 11
  5791.27, //SPRINT 12
  7835.25, //SPRINT 13
  9398.29, //SPRINT 14
  12845.00, //SPRINT 15

)

== MPC01 e MPC02 - Schedule Variance
*Schedule Variance*: indicatore che rappresenta il divario, espresso in termini monetari, tra il valore del lavoro effettivamente realizzato (Earned Value) e quello del lavoro che era stato pianificato (Planned Value) alla data corrente. \
 
// schedule variance EV - PV
#let listaEv-Pv = range(lista_Ev.len()).map(i => {
  (i, lista_Ev.at(i), lista_Pv.at(i))
})

#figure(
  caption: [Tabella per periodo di Schedule Variance],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Earned Value*], [*Planned Value*], [*Schedule Variance*]),
      ..listaEv-Pv.map(riga => {
        let (p, ev, pv) = riga
        let periodo-testo = if p == 0 [Aggiudicazione] else [Sprint #p]

        let sv = if p == 0 { 0.0 } else { ev - pv }
        let sv-testo = calc.round(sv, digits: 2)

        (periodo-testo, [€#ev], [€#pv], [€#sv-testo])
      }).flatten()
    )
  )
]

#figure(
  caption: [Grafico per periodo di Schedule Variance],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *

      plot.plot(
        size: (16, 9),
        legend: "inner-north-east",
        x-tick-step: 1,
        y-tick-step: 250, 
        y-min: -1000,
        y-max: 500,
        x-max: listaEv-Pv.at(-1).at(0) + 0.25,
        x-format: v => if v == 0 [Agg.] else [S. #v],
        y-grid: true,
        y-label: [SV],
        x-label: [Numero Sprint],
        {
          plot.add(
            ((0, 0.0), (listaEv-Pv.at(-1).at(0), 0)),
            label: [Target (0)],
            style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          plot.add(
            listaEv-Pv.map(it => {
              let (p, ev, pv) = it
              let sv = if p == 0 { 0.0 } else { ev - pv }
              (p,sv)
            }),
            label: [Schedule Variance (SV)],
            style: (stroke: red),
            line: "linear",
            mark: "o",
          )
        }
      )
    })
  )
]

*Andamento RTB* \
Dai grafici si può capire che le ore effettive e le ore previste corrispondono per i primi 4 sprint in cui SV ha valore 0, invece a partire dal quinto sprint il team ha spesso lavorato per meno ore rispetto a quelle programmate a causa del tempo necessario per altre attività universitarie. \
\ *Andamento PB* \
Durante il PB il team ha avuto più tempo a disposizione da dedicare al progetto a causa dell'assenza di impegni universitari e quindi è riuscito gradualmente a recuperare le ore "di debito", cioè quelle pianificate per la fase di RTB che non erano state svolte in tempo. In particolare, la maggior parte delle ore è stata recuperata durante il dodicesimo sprint
//------------------------------------------------------------------------------------------------------------------------------------------------------

 == MPC03 - Budget Variance 
*Budget Variance*: indice che misura lo scostamento percentuale tra il costo pianificato (PV) e il costo effettivo sostenuto (AC) alla data corrente.
#let listaPv-Ac = range(lista_Pv.len()).map(i => {
  (i, lista_Pv.at(i), lista_Ac.at(i))
})

#figure(
  caption: [Tabella per periodo di Budget Variance],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Planned Value*], [*Actual Cost*], [*Budget Variance*]),
      ..listaPv-Ac.map(riga => {
        let (p, pv, ac) = riga
        let periodo-testo = if p == 0 [Aggiudicazione] else [Sprint #p]
        let bv = if p == 0 or pv == 0 {
          "0.00" 
        } else {
          let valore = 100 * (pv - ac) / pv
          let arrotondato = calc.round(valore, digits: 2)
          let s = str(arrotondato)
          
          if not s.contains(".") { s + ".00" }
          else if s.split(".").at(1).len() == 1 { s + "0" }
          else { s }
        }
        (periodo-testo, [€#pv], [€#ac], [#bv%])
      }).flatten()
    )
  )
]

#figure(
  caption: [Grafico per periodo di Budget Variance],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *

      let min_BV = calc.min(..listaPv-Ac.enumerate().map(((i, it)) => {
        if i == 0 {
          0.0
        } else {
          100 * (it.at(1) - it.at(2)) / (it.at(1))
        }
      }))

      plot.plot(
        size: (16,9),
        legend: "inner-north-west",
        x-tick-step: 1,
        y-tick-step: 0.1, 
        y-min: -0.5,
        y-max: 0.5,
        x-max: listaPv-Ac.at(-1).at(0) + 0.25,
        y-format: v => { if v == 0 { [0] } else { [#{v * 100}%] } },
        x-format: v => if v == 0 [Agg.] else [S. #v],
        y-grid: true,
        y-label: [BV],
        x-label: [Numero Sprint],
        {
          plot.add(
            ((0, 0.0), (listaPv-Ac.at(-1).at(0), 0.0)),
            label: [Target (0.0)],
            style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          plot.add(
            ((0, 0.1), (listaPv-Ac.at(-1).at(0), 0.1)),
            label: [valore accettabile (+10%)],
            style: (stroke: (paint: yellow, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          plot.add(
            ((0, -0.1), (listaPv-Ac.at(-1).at(0), -0.1)),
            label: [valore accettabile (-10%)],
            style: (stroke: (paint: blue, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )                    

          plot.add(
            listaPv-Ac.map(it => {
              let (p, pv, ac) = it
              let bv = if p == 0 { 0.0 } else {  (pv - ac) / pv }
              (p, bv)
            }),
            label: [Budget Variance (BV)],
            style: (stroke: red),
            mark: "o",
            line: "spline",
          )
        }
      )
    })
  )
]
*Andamento RTB* \
 La Budget Variance ha un valore negativo durante la fase RTB a causa dell'utilizzo dei ruoli più costosi durante questa fase. Il miglioramento a partire dallo sprint 5 è dovuto alla riduzione del volume orario lavorato rispetto alla pianificazione originaria. //Dovrebbe arrivare a 0 quando si recupereranno le ore e si inizieranno a utilizzare di più ruoli meno costosi.
 \
\ *Andamento PB* \
Durante la fase di PB il volume di ore produttive svolte settimanalmente è aumentato rispetto alla fase precedente e sono state svolte più ore rispetto alle previsioni originali per recuperare le ore previste ma non svolte nella prima fase. Così facendo c'è stato un utilizzo maggiore di budget negli sprint in cui si sono recuperate più ore, che si riflette nel grafico con un calo nell'andamento nello sprint 13 e 14. Inoltre, sono stati utilizzati ruoli meno costosi come programmatori e verificatori e si è concluso stando perfettamente entro il budget, motivo per cui il Budget Variance finale vale 0%.
//------------------------------------------------------------------------------------------------------------------------------------------------------

== MPC04 - CPI (Cost Performance Index)
*Cost Performance Index*: indice che misura l'efficienza economica di un progetto, si ottiene calcolando il rapporto tra il valore del lavoro effettivamente realizzato (EV) e i costi sostenuti per realizzarlo (AC).
#let listaEv-Ac-CPI = range(lista_Ev.len()).map(i => {
  (i, lista_Ev.at(i), lista_Ac.at(i))
})

#figure(
  caption: [Tabella per periodo di Cost Performance Index],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Earned Value*], [*Actual Cost*], [*CPI*]),
      ..listaEv-Ac-CPI.map(riga => {
        let (p, ev, ac) = riga
        let periodo-testo = if p == 0 [Aggiudicazione] else [Sprint #p]
        let cpi = if p == 0 {
          "1.00" 
        } else {
          str(calc.round(ev / ac, digits: 2))
        }
        (periodo-testo, [€#ev], [€#ac], [#cpi])
      }).flatten()
    )
  )
]

#figure(
  caption: [Grafico per periodo di Cost Performance Index],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *

      plot.plot(
        size: (16,9),
        legend: "inner-north-west",
        x-tick-step: 1,
        y-tick-step: 0.1, 
        y-min: 0.5,
        y-max: 1.5,
        x-max: listaEv-Ac-CPI.at(-1).at(0) + 0.25,
        x-format: v => if v == 0 [Agg.] else [S. #v],
        y-grid: true,
        y-label: [CPI],
        x-label: [Numero Sprint],
        {
          plot.add(
            ((0, 1.0), (listaEv-Ac-CPI.at(-1).at(0), 1.0)),
            label: [Target (1.0)],
            style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          plot.add(
            listaEv-Ac-CPI.map(it => {
              let (p, ev, ac) = it
              let cpi = if p == 0 { 1.0 } else { ev / ac }
              (p, cpi)
            }),
            label: [CPI],
            style: (stroke: red),
            mark: "o",
            line: "spline",
          )
        }
      )
    })
  )
]
*Andamento RTB* \
Il CPI è costantemente minore di 1, il valore ottimale, anche questo è dovuto all'utilizzo dei ruoli più costosi durante la fase di RTB. Siccome dopo questa fase lavoreranno di più figure meno costose come programmatore e verificatore, il CPI dovrebbe arrivare a raggiungere il valore ottimale. \
\ *Andamento PB* \
Come previsto, l'utilizzo maggiore di ruoli meno costosi quali programmatore e verificatore durante l'ultima fase del progetto ha portato ad un graduale aumento del CPI. Questo inoltre dimostra come il gruppo sia riuscito a gestire meglio il budget, guadagnando più valore di quello speso, fino a raggiungere il valore ottimale di CPI durante l'ultimo sprint. 


== MPC05 - Task Completition Rate (TCR)
*Task Completion Rate*: indice che rappresenta la percentuale di attività completate rispetto al totale delle attività pianificate in un progetto.

#let lista-TCR = (
  (12, 5, 5, 100.00),
  (13, 11, 12, 91.67),
  (14, 14, 14, 100.00),
  (15, 18, 18, 100.00)
)

// --- TABELLA TCR ---
#figure(
  caption: [Tabella per periodo di Task Completion Rate (TCR)],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Task Completate*], [*Task Totali*], [*TCR (%)*]),
      ..lista-TCR.map(riga => {
        let (p, compl, tot, tcr) = riga
        ([Sprint #p], str(compl), str(tot), [#tcr%])
      }).flatten()
    )
  )
]

// --- GRAFICO TCR ---
#figure(
  caption: [Grafico per periodo di Task Completion Rate],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *

      plot.plot(
        size: (10, 9),
        legend: "inner-north-west",
        x-tick-step: 1,
        y-tick-step: 5, 
        y-min: 65,  
        y-max: 110, 
        x-min: 12, 
        x-max: 15.1,
        x-format: v => [S. #calc.round(v)],
        y-grid: true,
        y-label: [TCR (%)],
        x-label: [Numero Sprint],
        {
          plot.add(
            ((11.5, 100.0), (15.5, 100.0)),
            label: [Target (100%)],
            style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          // Linea dell'andamento reale (TCR)
          plot.add(
            lista-TCR.map(it => {
              let (p, compl, tot, tcr) = it
              (p, tcr)
            }),
            label: [TCR],
            style: (stroke: red),
            mark: "o",
            line: "linear",
          )
        }
      )
    })
  )
]
*Andamento RTB* \
Non disponibile perché la metrica TCR è stata misurata solamente durante il PB.

*Andamento PB* \
Grazie all'assenza di impegni universitari diversi dal progetto, il team è riuscito quasi sempre a svolgere tutti i task previsti, talvolta aggiungendone ulteriori rispetto a quelli pianificati nello sprint planning, 
 Questo è frutto e dimostrazione di una migliore organizzazione rispetto a quella effettuata durante il periodo di RTB, nel quale invece spesso non si è riuscito a completare tutti i task previsti durante il loro sprint.

== MPC06 - Time Efficiency
*Time Efficiency*: indice che rappresenta l'efficienza temporale di un progetto, si ottiene calcolando il rapporto tra le ore dedicate ad attività produttive e le ore totali necessarie per concludere il progetto.

#let lista-TE = (
  (12, 16, 57, 28.07),
  (13, 102, 157, 69.39),
  (14, 78, 104, 75.00),
  (15, 172, 186, 92.47)
)

// --- TABELLA TE ---
#figure(
  caption: [Tabella per periodo di Time Efficiency],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Ore produttive*], [*Ore Totali*], [*Time Efficiency (%)*]),
      ..lista-TE.map(riga => {
        let (p, compl, tot, tcr) = riga
        ([Sprint #p], str(compl), str(tot), [#tcr%])
      }).flatten()
    )
  )
]

// --- GRAFICO TE ---
#figure(
  caption: [Grafico per periodo di Time Efficiency],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *

      plot.plot(
        size: (10, 9),
        legend: "inner-north-west",
        x-tick-step: 1,
        y-tick-step: 10, 
        y-min: 0,  
        y-max: 110, 
        x-min: 12, 
        x-max: 15.1,
        x-format: v => [S. #calc.round(v)],
        y-grid: true,
        y-label: [Time Efficiency (%)],
        x-label: [Numero Sprint],
        {
          plot.add(
            ((11.5, 100.0), (15.5, 100.0)),
            label: [Target (100%)],
            style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          // Linea dell'andamento reale (TCR)
          plot.add(
            lista-TE.map(it => {
              let (p, compl, tot, tcr) = it
              (p, tcr)
            }),
            label: [TCR],
            style: (stroke: red),
            mark: "o",
            line: "linear",
          )
        }
      )
    })
  )
]
*Andamento RTB* \
Non disponibile perché la metrica Time Efficiency è stata misurata solamente durante il PB.
*Andamento PB* \
Nel dodicesimo e tredicesimo sprint sono state dedicate molte ore allo studio della progettazione, causando così un basso livello di Time Efficiency, che però ha permesso di dedicare la maggior parte delle ore dei due sprint finali ad attività produttive.

== MPC07 - Percentuale di metriche soddisfatte //per ultima
*Descrizione*: \ // inserire la descrizione che verrà messa nel NdP
//tabella
//grafico 

*Andamento PB* \
// descrizione andamento

== MPC08 - Numero Rischi Non Previsti
*Descrizione*: il numero di rischi non previsti che si verificano durante uno sprint.
#let lista-rischi = (
  (12, 0),
  (13, 1),
  (14, 2),
  (15, 0)
)

// --- TABELLA rischi ---
#figure(
  caption: [Tabella per il numero di rischi non previsti],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Rischi non previsti*]),
      ..lista-rischi.map(riga => {
        let (p, compl) = riga
        ([Sprint #p], str(compl))
      }).flatten()
    )
  )
]
*Andamento RTB* \
Non disponibile perché la metrica Rischi Non Previsti è stata misurata solamente durante il PB.

*Andamento PB* \
La maggior parte dei rischi che si sono presentati durante la fase di PB è stata velocemente mitigata grazie al piano di mitigazione per rischi simili. Nella tabella sono stati inseriti i rischi incontrati che non sono stati facilmente e velocemente risolvibili, come la necessità di modificare sostanzialmente l'architettura dopo l'incontro con il professor Cardin.



== MPC09 e MPC10 - Planned Value ed Earned Value
*Planned Value*: indicatore che rappresenta il valore del lavoro pianificato rispetto al budget totale previsto.\
*Earned Value*: indicatore che rappresenta il valore del lavoro completato rispetto al budget totale previsto.

#let listaSpese = range(lista_Ev.len()).map(i => {
  (i, lista_Pv.at(i), lista_Ev.at(i))
})


#figure(
  caption: [Tabella per periodo di Planned Value ed Earned Value],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Planned Value*], [*Earned Value*]),
      ..listaSpese.map(riga => {
        let (p, pv, ev) = riga
        let periodo-testo = if p == 0 [Aggiudicazione] else [Sprint #p]
        (periodo-testo, [€#pv], [€#ev])
      }).flatten()
    )
  )
]

#figure(
  caption: [Grafico per periodo di Planned Value ed Earned Value],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *
      
      let maxListaSpese = calc.max(..listaSpese.map(it => calc.max(it.at(1), it.at(2))))

      plot.plot(
        size: (16,9),
        legend: "inner-north-west",
        x-tick-step: 1,
        y-tick-step: 1000, 
        y-min: 0,
        y-max: calc.ceil(maxListaSpese / 1000) * 1000,
        x-max: listaSpese.at(-1).at(0) + 0.25,
        x-format: v => if v == 0 [Agg.] else [S. #v],
        y-grid: true,
        y-label: [Euro (€)],
        x-label: [Numero Sprint],
        {
          plot.add(
            listaSpese.map(it => (it.at(0), it.at(1))),
            label: [Planned Value (PV)],
            mark-style: (stroke: blue),
            line: "spline",
            mark: "o"
          )

          plot.add(
            listaSpese.map(it => (it.at(0), it.at(2))),
            label: [Earned Value (EV)],
            mark-style: (stroke: red),
            line: "spline",
            mark: "o"
          )
        }
      )
    })
  )
]
*Andamento RTB* \
Si osservi che il valore di EV è allineato a quello di PV fino al quarto sprint, mentre il lavoro svolto non è più in linea con la pianificazione iniziale a partire dal quinto sprint. In particolare, negli sprint attorno all'ottavo il valore prodotto è diminuito rispetto a quello pianificato a causa di rallentamenti dovuti alla sessione di esami universitari. \ //, ma prevediamo il recupero di questo ritardo negli ultimi sprint, nei quali si prevede di lavorare per un maggior numero di ore.\
\ *Andamento PB* \
Il disallineamento tra valore pianificato e guadagnato è stato gradualmente risolto grazie ad un maggior apporto di ore dedicate al progetto, risultato possibile grazie al termine della sessione universitaria di esami. In particolare, intorno al tredicesimo sprint il lavoro svolto è tornato ad essere quasi in linea con quello pianificato e nello sprint finale PV e EV risultano entrambi valere 12845, che è il valore originariamente pianificato per il budget.




== MPC11 e MPC013 - Actual Cost ed Estimate to Complete
*Actual Cost*: indice che rappresenta il costo effettivamente sostenuto alla data corrente.\ 
*Estimate to Complete*: indice che rappresenta la stima dei costi necessari per completare tutte le attività previste rimanenti.
#let listaACETC = range(lista_Ac.len()).map(i => {
  (i, lista_Ac.at(i), 12845 -lista_Ev.at(i))
})

#figure(
  caption: [Tabella per periodo di Actual Cost ed Estimate to Complete],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*Actual Cost*], [*Estimate to Complete*]),
        ..listaACETC.map(riga => {
          let p = riga.at(0)
          let ac = riga.at(1)
          let etc= riga.at(2)
          let periodo-testo = if p == 0 [Aggiudicazione] else [Sprint #p]
          (periodo-testo, [€ #calc.round(ac, digits: 2)], [€ #calc.round(etc, digits: 2)])        }).flatten()
    )
  )
]

#figure(
  caption: [Grafico per periodo di Actual Cost ed Estimate to Complete],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: * // [cite: 17]

      plot.plot(
        size: (16,9), // [cite: 128, 176]
        legend: "inner-north-east",
        x-tick-step: 1, // [cite: 61, 63]
        y-tick-step: 1000, 
        y-min: 0, // [cite: 35]
        y-max: calc.ceil(12845 / 1000) * 1000, // [cite: 38]
        x-max: listaACETC.at(-1).at(0) + 0.25,
        x-format: v => if v == 0 [Agg.] else [S. #v], // [cite: 84, 86]
        y-grid: true, // [cite: 107, 120]
        y-label: [Euro (€)],
        x-label: [Numero Sprint],
        {
          plot.add(
            listaACETC.map(it => (it.at(0), it.at(1))),
            label: [Actual Cost (AC)],
            mark-style: (stroke: blue), // [cite: 157, 162]
            line: "spline",
            mark: "o"
          )

          plot.add(
            listaACETC.map(it => (it.at(0), it.at(2))),
            label: [Estimate to Complete (ETC)],
            mark-style: (stroke: red), // [cite: 157, 162]
            line: "spline",
            mark: "o"
          )
        }
      )
    })
  )
]
*Andamento RTB* \
La spesa è cresciuta in maniera abbastanza lineare negli sprint del RTB, rimanendo in linea con quanto programmato poiché le spese maggiori erano previste per gli sprint successivi alla sessione di esami universitari. L'andamento della linea dell'ETC indica budget sufficiente a intensificare le attività produttive negli ultimi sprint, in quanto si dispone ancora di più metà del budget.
\
\ *Andamento PB* \
La rapida crescita dell'AC risulta essere direttamente proporzionale alla rapida decrescita dell'ETC: questo rispecchia il veloce utilizzo della metà di budget rimanente. L'intensificazione delle attività produttive negli ultimi sprint ha portato ad un rapido consumo del budget rimanente, ma è stato possibile concludere il progetto entro il budget previsto, come dimostrato dal fatto che l'AC finale coincide con il BAC di 12845 euro e che l'ETC finale vale 0 euro.


== MPC12 - Estimate at Completion
*Estimate at Completion*: indice che  rappresenta la stima del costo totale del progetto al momento del suo completamento.
#let listaEv-Ac-EAC = range(lista_Ev.len()).map(i => {
  (i, lista_Ev.at(i), lista_Ac.at(i))
})


#figure(
  caption: [Tabella per periodo di Estimate at Completion],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Periodo*], [*BAC*], [*EAC*]),
      ..listaEv-Ac-EAC.map(riga => {
        let (p, ev, ac) = riga
        let periodo-testo = if p == 0 [Aggiudicazione] else [Sprint #p]
        let eac = if p == 0 {
          "12845" 
        } else {
          str(calc.round(12845/(ev / ac), digits: 2))
        }
        (periodo-testo, [€12845], [€#eac])
      }).flatten()
    )
  )
]

#figure(
  caption: [Grafico per periodo di Estimate at Completion],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *

      plot.plot(
        size: (16,9),
        legend: "inner-north-west",
        x-tick-step: 1,
        y-tick-step: 1000, 
        y-min: 10000,
        y-max: 20000,
        x-max: listaEv-Ac-EAC.at(-1).at(0) + 0.25,
        x-format: v => if v == 0 [Agg.] else [S. #v],
        y-grid: true,
        y-label: [EAC],
        x-label: [Numero Sprint],
        {
          plot.add(
            ((0, 12845), (listaEv-Ac-EAC.at(-1).at(0), 12845)),
            label: [BAC (12845)],
            style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          plot.add(
            listaEv-Ac-EAC.map(it => {
              let (p, ev, ac) = it
              let eac = if p == 0 { 12845 } else { 12845 / (ev / ac) }
              (p, eac)
            }),
            label: [Estimate at Completion (EAC)],
            style: (stroke: red),
            mark: "o",
            line: "spline",
          )
        }
      )
    })
  )
]
*Andamento RTB* \
Lo scostamento tra EAC e BAC è dovuto al fatto che il CPI è minore di 1 a causa dall'utilizzo frequente di figure costose nelle fasi iniziali, quindi la stima è da considerarsi sovrastimata rispetto alla realtà attesa.\
La curva dell'EAC inizia a convergere verso il valore del BAC a partire dal quarto sprint. Con il passaggio alla fase successiva e l'impiego di risorse con tariffe orarie inferiori, si era previsto un miglioramento del CPI e quindi un'ulteriore diminuzione progressiva del valore dell'EAC.\
\ *Andamento PB* \
Come previsto durante la fase precedente, l'utilizzo di risorse meno costose ha portato ad un miglioramento del CPI, che si è tradotto in una diminuzione progressiva dell'EAC. Questo è dovuto alla maggiore densità di ore dei ruoli di programmatore e verificatore, che hanno tariffe orarie più basse rispetto a quelle dei ruoli più costosi utilizzati durante la fase di RTB. L'EAC finale coincide con il BAC, dimostrando così che il progetto è stato completato entro il budget previsto.
== MPC18 - Correttezza ortografica

#figure(
  caption: [Grafico per periodo di Correttezza ortografica],
  kind: image,
)[
  #align(center,
    cetz.canvas({
      import cetz-plot: *

      plot.plot(
        size: (16,9),
        legend: "inner-north-west",
        x-tick-step: 1,
        y-tick-step: 1, 
        y-min: 0,
        y-max: 17.5,
        x-max: lista_Ac.len() - 0.75,
        x-format: v => if v == 0 [Agg.] else [S. #v],
        y-grid: true,
        y-label: [EAC],
        x-label: [Numero Sprint],
        {
          plot.add(
            ((0, 0), (lista_Ac.len(), 0)),
            label: [Target (0)],
            style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
            line: "spline",
          )

          plot.add(
            lista_Ac.enumerate().map(v => (v.at(0), 0)), 
            label: [Correttezza Ortografica],
            style: (stroke: red),
            mark: "o",
            line: "spline",
          )
        }
      )
    })
  )
]
*Andamento RTB e PB* \
Grazie all'implementazione di uno spellchecker prima della pianificazione degli sprint, il numero di errori ortografici all'interno dei documenti ufficiali è sempre stato 0.

== MPD14 - Indice di Gulpease

*Indice di Gulpease*: indice che misura la leggibilità di un testo, tarato specificatamente sulla lingua italiana. \ \
*Indice di Gulpease durante la fase di RTB* \
#import "../../../scripts/lista_gulpease1.typ" : listaGulpease1

#figure(
  caption: [Tabella indice di Gulpease dei documenti],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Documento*], [*Indice*]),
      ..listaGulpease1.map(riga => {
        let (documento, indice) = riga
        (documento, indice)
      }).flatten()
    )
  )
]

#let dati = listaGulpease1.enumerate().map(it => (it.at(0), float(it.at(1).at(1))))

#let etichette = (
  (0, "AdR"),
  (1, "NdP"),
  (2, "PdP"),
  (3, "PdQ"),
)

#figure(
  caption: [Indice di Gulpease dei documenti durante la fase di RTB],
  cetz.canvas({
    import cetz-plot: *
    plot.plot(
      legend: "inner-north-west",
      size: (12, 6),
      x-label: [Documenti],
      y-label: [Indice],
      x-tick-step: none,
      x-ticks: etichette,
      y-ticks: (0, 20, 40, 60, 80, 100),
      x-min: -0.5,
      x-max: 3.5,
      y-min: 0,
      y-max: 100,
      {
        plot.add-bar(
          dati,
          bar-width: 0.5,
        )
        plot.add(
          ((-0.5, 50), (3.5, 50)),
          label: [Valore accettabile (50)],
          style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
        )

        plot.add(
          ((-0.5, 70), (3.5, 70)),
          label: [valore ottimale (70)],
          style: (stroke: (paint: red, dash: "dashed", thickness: 1.5pt)),
        )
      }
    )
  })
)

*Andamento RTB* \
Ogni documento presenza un indice di leggibilità superiore al limite inferiore di 50.
\ \

*Indice di Gulpease durante la fase di PB* \

#import "../../../scripts/lista_gulpease2.typ" : listaGulpease2

#figure(
  caption: [Tabella indice di Gulpease dei documenti],
  kind: table,
)[
  #align(center,
    tabella-viola(
      columns: (auto, auto),
      inset: 10pt,
      align: center + horizon,
      table.header([*Documento*], [*Indice*]),
      ..listaGulpease2.map(riga => {
        let (documento, indice) = riga
        (documento, indice)
      }).flatten()
    )
  )
]

#let dati = listaGulpease2.enumerate().map(it => (it.at(0), float(it.at(1).at(1))))

#let etichette = (
  (0, "AdR"),
  (1, "NdP"),
  (2, "PdP"),
  (3, "PdQ"),
)

#figure(
  caption: [Indice di Gulpease dei documenti],
  cetz.canvas({
    import cetz-plot: *
    plot.plot(
      legend: "inner-north-west",
      size: (12, 6),
      x-label: [Documenti],
      y-label: [Indice],
      x-tick-step: none,
      x-ticks: etichette,
      y-ticks: (0, 20, 40, 60, 80, 100),
      x-min: -0.5,
      x-max: 3.5,
      y-min: 0,
      y-max: 100,
      {
        plot.add-bar(
          dati,
          bar-width: 0.5,
        )
        plot.add(
          ((-0.5, 50), (3.5, 50)),
          label: [Valore accettabile (50)],
          style: (stroke: (paint: green, dash: "dashed", thickness: 1.5pt)),
        )

        plot.add(
          ((-0.5, 70), (3.5, 70)),
          label: [valore ottimale (70)],
          style: (stroke: (paint: red, dash: "dashed", thickness: 1.5pt)),
        )
      }
    )
  })
)

\ *Andamento PB* \

== MPC14 - Code Coverage (CC)
*Code Coverage*: indice che rappresenta quanto il codice è stato verificato dal processo di testing.
//tabella
//grafico
\ *Andamento PB* \

== MPC15 - Test Success Rate (TSR)
*Test Success Rate*: indice che misura la percentuale dei test superati rispetto a quelli totali. 
//tabella
//grafico
\ *Andamento PB* \

== MPD01 - Requisiti obbligatori soddisfatti (RS)
//tabella
//grafico
\ *Andamento PB* \

== MPD02 - Requisiti desiderabili soddisfatti (RDS)
 //tabella
  //grafico
\ *Andamento PB* \


= Iniziative di miglioramento
La tempestiva risoluzione delle problematiche è fondamentale per garantire la continuità del progetto e ottimizzarne sia l'efficienza che l'efficacia. In questa sezione vengono analizzate le criticità emerse durante lo sviluppo del progetto e descritte le relative contromisure adottate per garantire il rispetto degli standard qualitativi e delle tempistiche previste.

== Valutazione organizzativa
#figure(
  tabella-viola(
    columns: (auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Problema*], [*Contromisura*]
    ),
    [Eccessivo lavoro svolto in locale non conforme agli standard condivisi dal gruppo], 
    [Scomposizione dei compiti complessi in issue#super[G] granulari, gestite e assegnate tramite la Project Board di GitHub#super[G]],
    
    [Mancanza di monitoraggio dello stato di avanzamento],
    [ Comunicazione tra i membri per via telematica e creazione di Project Board ed issues per monitorare lo stato di avanzamento dei membri del team ],

    [Mancata coerenza grafica e stilistica nella documentazione],
    [Sviluppo di template standardizzati in Typst#super[G] per garantire uniformità visiva],

    [Difficoltà nella comprensione della sintassi degli Use Case e conseguente modellazione errata degli Use Case],
    [Consultazione con il docente e studio più approfondito della sintassi degli Use Case],
    [Mancato rispetto delle tempistiche pianificate],
    [Adozione di un approccio più rigoroso nella pianificazione tramite issues: queste vengono assegnate dal responsabile di progetto e devono essere completate entro lo sprint successivo; \
    utilizzo di tempo di slack negli sprint successivi per recuperare eventuali ritardi],
    [Scarso coordinamento del team],
    [Sprint planning più dettagliati, con suddivisione dei compiti tramite issues assegnate dal responsabile di progetto],
    [Rallentamento dovuto ad altri impegni personali o universitari],
    [Utilizzo di tempo di slack negli sprint successivi per recuperare eventuali ritardi; \ ridistribuzione interna dei compiti in maniera tale da riuscire a rispettare le scadenze]

  ),
  caption: [Contromisure adottate al fine di migliorare il lavoro],
  kind: table
)


//attualmente non utilizzata, penso che lo faremo con il poc

 == Valutazione tecnologica
 #figure(
  tabella-viola(
    columns: (auto, auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Tecnologia*], [*Problema*], [*Contromisura*],
    "AWS", 
    "Mancanza di esperienza del servizio, dovuto anche ai suoi costi, che ne hanno limitato l'uso prima del progetto.", 
    "Partecipazione a sessioni di mentoring aziendale e pratica mediante lo sviluppo del Proof of Concept (POC).",
    
    "Glossario", 
    "L'inserimento manuale dei riferimenti ai termini del glossario nei documenti risultava oneroso e difficilmente mantenibile durante le revisioni.", 
    "Implementazione di uno script Python automatizzato, il quale legge i termini dal glossario stesso, li confronta con ciò che trova nei documenti e li marca automatica durante il merge nel main."
    ),
  ),
  caption: [Contromisure adottate al fine di migliorare l'utilizzo delle tecnologie],
  kind: table
)
 == Considerazioni finali
L'attività di monitoraggio svolta durante la fase di RTB ha confermato l'importanza del Piano di Qualifica come strumento decisionale e non solo documentale. Sebbene questa fase abbia comportato un assorbimento di risorse superiore alle attese a causa della sessione di esami, la stabilità dell'Estimate to Complete (ETC) conferma la sostenibilità complessiva del progetto. L'implementazione di contromisure tecnologiche e organizzative ha già prodotto risultati tangibili, come l'azzeramento degli errori ortografici e l'automazione della gestione dei termini del glossario. Il team riconosce le criticità emerse nelle fasi iniziali e si impegna a incrementare il rigore metodologico durante la fase di sviluppo, puntando a far convergere le stime di costo verso il budget inizialmente previsto. Questa consapevolezza dei propri limiti attuali guiderà il gruppo _Hepta Code_ verso il raggiungimento degli standard di qualità attesi per il prodotto _Code Guardian_.
