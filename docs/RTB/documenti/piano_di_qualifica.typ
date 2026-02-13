#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart

#import "../../templates/glossario_termini.typ": applica-glossario

#show: applica-glossario


#v(1fr)
#align(center, [
  #image("../../asset/logo.svg")
  #set text(lang: "it")
  
  #v(1.5cm)
  
  #text(size: 37.5pt, weight: "bold")[Piano di Qualifica]
  
  #v(2.0cm)
])
#v(1fr)
#counter(page).update(0)

#pagebreak()
#text(size: 17pt, weight: "bold")[Registro delle modifiche:]
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
  ),
      "0.4.1",
  "2026/01/09",
  "Angela Canazza", 
  "Laura Venturini",
  "Completamento dei capitolo 3 e 4 con l'inserimento delle metriche",
    "0.4.0",
  "2025/12/28",
  "Laura Venturini", 
  "Amerigo Vegliante",
  "Aggiunta di problemi incontrati e contromisure nella sezione 6.1 - Valutazione organizzativa",
  "0.3.0",
  "2025/12/15",
  "Angela Canazza", 
  "Amerigo Vegliante",
  "Stesura iniziale del capitolo 6 - Iniziative di miglioramento",
  "0.2.0",
  "2025/12/14",
  "Angela Canazza",
  "Nicola Simionato",
  "Stesura iniziale di: qualità di processo, di prodotto e dei metodi di testing",
  "0.1.0",
  "2025/12/12",
  "Nicola Simionato",
  "Angela Canazza",
  "Stesura dell'introduzione"
)

#pagebreak()

#set text(size: 11pt, lang: "it")
#show figure.caption: set text(9pt)

//Indice capitoli
#outline(title: "Indice")
#set heading(numbering: "1.")
#pagebreak()

#outline(
  title: "Indice delle tabelle",
  target: figure.where(kind: table)
)

#pagebreak()

#set page(
  numbering: "1",
  header: [
    #set table(
      stroke: none,
    )
    #table(
      columns: 3,
      [Hepta Code],
      [#rect(
        width: 100%, 
        height: 1pt, 
        fill: white,
        stroke: none
      )],
      [Piano di Qualifica],
    )
    #line(length: 100%, stroke: black)
  ],
)
#counter(page).update(1)
= Introduzione
== Scopo del documento
Il presente documento, Piano di Qualifica, descrive in dettaglio le strategie di verifica e validazione adottate per garantire la qualità del prodotto finale e dei processi realizzativi.\
Il documento sarà soggetto ad aggiornamenti costanti per tutta la durata del progetto; questo permetterà di monitorare i risultati delle verifiche e di intervenire tempestivamente sulla risoluzione di eventuali anomalie o metriche non conformi.
== Scopo del capitolato
Il capitolato per il progetto CodeGuardian ha come oggetto lo sviluppo di una piattaforma web per il monitoraggio e l'analisi di repository GitHub. Il sistema dovrà permettere a diverse tipologie di utenti aziendali di accedere ai report di revisione delle proprie repository e progetti in relazione alla tipologia di utente che lo visualizza.\
Nello specifico, è richiesto l'utilizzo di LLM#super[G] (Large Language Models) per analizzare tre componenti fondamentali: la documentazione, il codice sorgente (tramite analisi statica e dinamica) e la conformità agli standard di sicurezza OWASP#super[G].
== Riferimenti
=== Riferimenti normativi
- #underline[#link("norme_di_progetto.pdf","Norme di progetto")]
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
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MPC06",
    "Planned Value",
    "≥0€",
    "≤BAC",
    "MPC07",
    "Earned Value",
    "≥0€",
    "≤EAC",
    "MPC08",
    "Actual Cost",
    "≥0€",
    "≤EAC",
    "MPC09",
    "Estimate at Completion",
    "≥BAC -5%",
    "≤BAC +5%",
    "MPC10",
    "Estimate to Complete",
    "≥0€",
    "≤EAC"
    
  ),
  caption: [Metriche processi di fornitura],
  kind: table
)
// qui andranno inserite le tabelle contenenti le metriche con i valori accettabili decisi, non avendoli ancora decisi, lascio vuoto
== Processi di supporto
=== Verifica e validazione
#figure(
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MPC11",
    "Code Coverage",
    "≥80%",
    "≥90%",
    "MPC12",
    "Test Success Rate",
    "100%",
    "100%",
    "MPC13",
    "Statement Coverage",
    "≥90%",
    "100%",
    "MPC14",
    "Branch Coverage",
    "≥70%",
    "≥80%"
  ),
  caption: [Metriche processi di verifica],
  kind: table
)

=== Documentazione
#figure(
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MPC15",
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
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
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
    "-10%≥BV≤10%",
    "0%",
    "MPC04",
    "Requirements Stability Index",
    "≥70%",
    "100%",
    "MPC05",
    "Cost Performance Index",
    "≥90%",
    "100%"
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
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
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
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MPD04", 
    "Tempo di caricamento",
    "≤10 secondi ",
    "≤5 secondi",
    "MPD05", 
    "Tempo medio di risposta (Sistema)",
    "≤15 secondi",
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
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MPD07", 
    "Complessità Ciclomatica",
    "≤5 ",
    "≤10",
    "MPD08", 
    "Parametri per metodo ",
    "≤6",
    "≤4",
    "MPD09", 
    "Linee di codice per metodo",
    "≤35",
    "≤20",
    "MPD10", 
    "Linee di codice per file",
    "≤120",
    "≤80",
    "MPD11", 
    "Densità dei commenti",
    "≤15%",
    "≤5%",
    "MPD12",
    "Coefficient of Coupling",
    "≤0.4",
    "≤0.2"
  ),
  caption: [Metriche di manutenibilità del prodotto],
  kind: table
)

== Usabilità
#figure(
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MPD13", 
    "Tempo di apprendimento",
    "≤10 minuti ",
    "≤5 minuti",
    "MPD14", 
    "Indice di Gulpease",
    "≥50",
    "≥80"
  ),
  caption: [Metriche usabilità del prodotto],
  kind: table
)

== Affidabilità
#figure(
  table(
    columns: (auto, 1.5fr, 1fr, 1fr),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MPD15", 
    "Error Rate",
    "30%",
    "15%"
  ),
  caption: [Metriche affidabilità del prodotto],
  kind: table
)

= Metodi di testing
Nel documento riguardante le #underline[#link("../documenti_esterni/norme_di_progetto.pdf","Norme di Progetto")], i test utilizzati per la verifica del codice saranno:

- *Test di Unità*: Viene verificato che le singole attività atomiche e indipendenti, che compongono il sistema, funzionino correttamente;

- *Test di Integrazione*: Viene verificato che le singole attività lavorino correttamente tra di loro al fine di svolgere un certo compito. Vengono effettuati dopo i test di unità;

- *Test di Sistema*: Viene verificato il funzionamento dell'intero sistema, il quale deve soddisfare tutti i requisiti indicati nell'analisi dei requisiti;

- *Test di Regressione*: a seguito di un test andato male e di una relativa correzione,ci si accerta che la correzione non causi errori nelle parti del sistema che dipendono da essa;

- *Test di Accettazione*: Validazione esterna con il committente rispetto al Capitolato.
== Test di Sistema
#table(
  columns: (2cm, auto, 3cm ,2cm),
  inset: 10pt,
  align: (center + horizon, center+ horizon, center + horizon, center + horizon),
  fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none }, 
  
  table.header([*Codice*], [*Descrizione*], [*Requisito di riferimento*], [*Stato del test*]),
  [*T-1-S*], [Verificare che l'Utente non autentificato possa accedere alla piattaforma], [R-1-F-O], [NI],
  [*T-2-S*], [Verificare che l'Utente abbia inserito il proprio username durante il processo di autenticazione], [R-2-F-O], [NI],
  [*T-3-S*], [Verificare che l'Utente abbia inserito la propria password durante il processo di autenticazione], [R-3-F-O], [NI],
  [*T-4-S*], [Verificare che l'Utente possa annullare la procedura  di accesso alla piattaforma], [R-4-F-O], [NI],
  [*T-5-S*], [Verificare che l'Utente visualizzi un messaggio di errore nel caso di inserimento di credenziali errate durante il processo di autenticazione], [R-5-F-O], [NI],
  [*T-6-S*], [Verificare che l'Utente possa sincronizzare il proprio account GitHub], [R-6-F-D], [NI],
  [*T-7-S*], [Verificare che l'Utente possa annullare l'autenticazione con il provider esterno GitHub], [R-7-F-D], [NI],
  [*T-8-S*], [Verificare che l'Utente, in caso abbia precedentemente sincronizzato il proprio account GitHub, possa annullare tale sincronizzazione], [R-8-F-D], [NI],
  [*T-9-S*], [Verificare che l'Utente visualizzi la propria area personale dopo essersi autentificato], [R-9-F-O], [NI],
  [*T-10-S*], [Verificare che l'Utente possa visualizzare il proprio username], [R-10-F-O], [NI],
  [*T-11-S*], [Verificare che l'Utente possa visualizzare la propria mail], [R-10-F-O], [NI],
  [*T-12-S*], [Verificare che l'Utente possa visualizzare il proprio ruolo], [R-12-F-O], [NI],
  [*T-13-S*], [Verificare che l'Utente possa eseguire il logout dalla piattaforma], [R-13-F-O], [NI],
  [*T-14-S*], [Verificare che l'Utente possa annullare la procedura  di logout dalla piattaforma], [R-14-F-O], [NI],
  [*T-15-S*], [Verificare che l'Utente visualizzi un messaggio di errore in caso si presenti un errore durante l'esecuzione di un'operazione], [R-15-F-D], [NI],
  [*T-16-S*], [Verificare che il Developer possa aggiungere un repository pubblico al sistema], [R-16-F-O], [NI],
  [*T-17-S*], [Verificare che il Developer possa aggiungere un repository privato al sistema], [R-17-F-D], [NI],
  [*T-18-S*], [Verificare che il Developer possa inserire il Personal Access Token collegato al suo account], [R-18-F-D], [NI],
  [*T-19-S*], [Verificare che il Developer visualizzi un messaggio di errore in caso di inserimento di Personal Access Token non valido], [R-19-F-D], [NI],
  [*T-20-S*], [Verificare che il Developer possa annullare la procedura di inserimento di un repository nel sistema], [R-20-F-O], [NI],
  [*T-21-S*], [Verificare che il Developer possa inserire l'URL del repository da inserire nel sistema], [R-21-F-O], [NI],
  [*T-22-S*], [Verificare che il Developer visualizzi un messaggio di errore in caso di inserimento di URL non valido], [R-22-F-O], [NI],
  [*T-23-S*], [Verificare che il Developer possa visualizzare la lista dei repository personali], [R-23-F-O], [NI],
  [*T-24-S*], [Verificare che il Developer possa selezionare una preferenza sulla tipologia di repository visualizzata], [R-24-F-O], [NI],
  [*T-25-S*], [Verificare che il Developer possa visualizzare il nome di una repository inserita], [R-25-F-O], [NI],
  [*T-26-S*], [Verificare che il Developer possa visualizzare il nome del progetto assocciato a una repository inserita], [R-26-F-D], [NI],
  [*T-27-S*], [Verificare che il Developer possa visualizzare il nome delle repository inserite], [R-27-F-O], [NI],
  [*T-28-S*], [Verificare che il Developer possa visualizzare la lista dei progetti ai quali contribuisce], [R-28-F-O], [NI],
  [*T-29-S*], [Verificare che il Developer possa visualizzare il nome di un progetto], [R-25-F-O], [NI],
  [*T-30-S*], [Verificare che il Developer possa visualizzare le statistiche dell'analisi sulla documentazione di un progetto], [R-30-F-O], [NI],
  [*T-31-S*], [Verificare che il Developer possa visualizzare le statistiche dell'analisi sui test di un progetto], [R-31-F-O], [NI],
  [*T-32-S*], [Verificare che il Developer possa visualizzare le statistiche dell'analisi OWASP di un progetto], [R-32-F-O], [NI],
  [*T-33-S*], [Verificare che il Developer possa visualizzare le statistiche dell'analisi sulla documentazione di un repository], [R-31-F-O], [NI],
  [*T-34-S*], [Verificare che il Developer possa visualizzare le statistiche dell'analisi sui test di un repository], [R-34-F-O], [NI],
  [*T-35-S*], [Verificare che il Developer possa visualizzare le statistiche dell'analisi OWASP di un repository], [R-35-F-O], [NI],
  [*T-36-S*], [Verificare che il Developer, dopo l'analisi sui test per un repository, visualizzi la lista dei file sui quali è stata proposta remedation], [R-36-F-O], [NI],
  [*T-37-S*], [Verificare che il Developer, dopo l'analisi OWASP per un repository, visualizzi la lista dei file sui quali è stata proposta remedation], [R-37-F-O], [NI],
  [*T-38-S*], [Verificare che il Developer, dopo l'analisi sulla documentazione per un repository, visualizzi la lista dei file sui quali è stata proposta remedation.], [R-38-F-O], [NI],
  [*T-39-S*], [Verificare che il Developer possa visualizzare il dettaglio del file sul quale è stato proposto un cambiamento], [R-39-F-O], [NI],
  [*T-40-S*], [Verificare che il Developer possa cambiare il path di destinazione del file sul quale è stata proposta una remedation], [R-40-F-D], [NI],
  [*T-41-S*], [Verificare che il Developer, nel contesto di una proposta di remedation, possa inserire il nuovo path di destinazione all'interno del sistema in caso sia stato cambiato], [R-41-F-D], [NI],
  [*T-42-S*], [Verificare che il Developer, nel contesto di una proposta di remedation, possa annullare il cambio di path di destinazione del file], [R-42-F-D], [NI],
  [*T-43-S*], [Verificare che il Developer, nel contesto di una proposta di remedation, visualizzi un messaggio di errore in caso di inserimento di un path non valido], [R-43-F-D], [NI],
  [*T-44-S*], [Verificare che il Developer possa accettare una proposta di remedation], [R-44-F-D], [NI],
  [*T-45-S*], [Verificare che il Developer riceva una notifica in seguito al successo dell'invio di una pull request sul repository GitHub], [R-45-F-D], [NI],
  [*T-46-S*], [Verificare che il Developer possa annullare l'accettazione di una proposta di redemation], [R-46-F-D], [NI],
  [*T-47-S*], [Verificare che il Developer visualizzi un messaggio di errore in caso di fallimento dell'accettazione della remedation], [R-47-F-D], [NI],
  [*T-48-S*], [Verificare che il Developer venga informato in caso la remedation proposta non possa più essere effettuata in quanto non più coerente con lo stato del sistema], [R-48-F-D], [NI],
  [*T-49-S*], [Verificare che il Developer possa eliminare un repository dal sistema], [R-49-F-O], [NI],
  [*T-50-S*], [Verificare che il Developer possa annullare l'operazione di eliminazione di un repository dal sistema], [R-50-F-O], [NI],
  [*T-51-S*], [Verificare che il Developer possa visualizzare la lista dei procedimenti in corso all'interno del sistema], [R-51-F-D], [NI],
  [*T-52-S*], [Verificare che il Developer possa visualizzare il nome del repository sul quale sta avvenendo il procedimento], [R-52-F-D], [NI],
  [*T-53-S*], [Verificare che il Developer possa visualizzare la data di di avvio di ogni elemento della lista delle remedation in corso], [R-53-F-D], [NI],
  [*T-54-S*], [Verificare che il Developer possa visualizzare il nome del branch aperto di ogni elemento della lista delle remedation in corso], [R-50-F-D], [NI],
  [*T-55-S*], [Verificare che il Developer possa interrompere una remedation una volta avviata], [R-55-F-D], [NI],
  [*T-56-S*], [Verificare che il Developer, in caso richieda l'interruzione di una remedetion in corso, visualizzi il messaggio di avvenuta interruzione ], [R-56-F-D], [NI],
  [*T-57-S*], [Verificare che il Developer possa annullare un'analisi in corso all'interno del sistema], [R-57-F-D], [NI],
  [*T-58-S*], [Verificare che il Developer, in seguito a una richiesta di annullamento dell'analisi in corso, visualizzi il messaggio di avvenuto annullamento dell'analisi ], [R-58-F-D], [NI],
  [*T-59-S*], [Verificare che il Developer visualizzi una lista contenente le ultime analisi portate a termine], [R-59-F-D], [NI],
  [*T-60-S*], [Verificare che il Developer possa visualizzare il nome del repository sul quale un'analisi è stata conclusa], [R-60-F-D], [NI],
  [*T-61-S*], [Verificare che il Developer possa visualizzare la data di completamento di un'analisi terminata], [R-61-F-D], [NI],
  [*T-62-S*], [Verificare che il Developer possa visualizzare la specifica di un'analisi che non sia l'ultima portata al termine all'interno di una repository], [R-62-F-D], [NI],
  [*T-63-S*], [Verificare che il Developer possa visualizzare il grafico dell'analisi sulla documentazione nel contesto della visualizzazione di un'analisi passata], [R-63-F-D], [NI],
  [*T-64-S*], [Verificare che il Developer possa visualizzare il grafico dell'analisi sui test nel contesto della visualizzazione di un'analisi passata], [R-64-F-D], [NI],
  [*T-65-S*], [Verificare che il Developer possa visualizzare il grafico dell'analisi OWASP nel contesto della visualizzazione di un'analisi passata], [R-65-F-D], [NI],
  [*T-66-S*], [Verificare che il Developer possa visualizzare le proposte di remedation elaborate in seguito all'analisi nel contesto della visualizzazione di un'analisi passata], [R-66-F-D], [NI],
  [*T-67-S*], [Verificare che il Developer possa visualizzare ogni proposta di remedation specifica inerente a un singolo file nel contesto della visualizzazione di un'analisi passata], [R-67-F-D], [NI],
  [*T-68-S*], [Verificare che il Developer possa consultare l'ultima analisi effettuata all'interno di una repository per l'area test], [R-68-F-O], [NI],
  [*T-69-S*], [Verificare che il Developer possa consultare l'ultima analisi effettuata all'interno di una repository], [R-69-F-O], [NI],
  [*T-70-S*], [Verificare che il Developer possa visualizzare la data di fine di un'analisi all'interno della lista delle analisi passate relative ad un repository], [R-70-F-D], [NI],
  [*T-71-S*], [Verificare che il Developer possa visualizzare lo stato di un'analisi all'interno della lista delle analisi passate relative a un repository], [R-71-F-D], [NI],
  [*T-72-S*], [Verificare che il Developer possa avviare un'analisi generale all'interno di un repository], [R-72-F-O], [NI],
  [*T-73-S*], [Verificare che il Developer possa avviare un'analisi sui test all'interno di un repository], [R-73-F-O], [NI],
  [*T-74-S*], [Verificare che il Developer possa avviare un'analisi sulla documentazione all'interno di un repository], [R-74-F-O], [NI],
  [*T-75-S*], [Verificare che il Developer possa avviare un'analisi OWASP all'interno di un repository], [R-75-F-O], [NI],
  [*T-76-S*], [Verificare che il Developer visualizzi un messaggio di errore all'avvio di un'analisi in caso di conflitto con un'altra analisi], [R-76-F-O], [NI],
  [*T-77-S*], [Verificare che il Developer possa annullare l'operazione di avvio di un'analisi], [R-77-F-O], [NI],
  

)

= Valutazione lavoro
In questa sezione sono riportate le misurazioni della qualità effettuate durante lo svolgimento delle attività dedicate al raggiungimento della Requirements and Technology Baseline. Inoltre, sono presenti i ragionamenti sulla differenza fra le tendenze attese e quelle effettivamente osservate. 
== MPC01 e MPC02 - Schedule Variance e Cost Variance
#figure(
  image("../../asset/MPC01MPC02.png", width: 90%),
  caption: [Grafico per periodo di Schedule Variance e Cost Variance]
)
Dal grafico si può capire che le ore effettive e le ore previste per di più corrispondono, quindi SV e CV hanno sempre un valore di 0, eccetto negli sprint 5, 6 e 8, in cui il team ha lavorato per meno ore rispetto a quelle programmate. Di conseguenza anche il costo effettivo è stato minore di quello predetto. Le ore di differenza verranno recuperate negli sprint successivi. 

// == MPC03 - Budget Variance     VEDERE SE INCLUDERE
/*#figure(
  image("../../asset/MPC03.png", width: 90%),
  caption: [Grafico per periodo di Budget Variance]
) */
// La Budget Variance ha un valore negativo in ogni sprint del RTB a causa dell'utilizzo dei ruoli più costosi durante questa fase, dovrebbe arrivare a 0 quando si inizieranno a utilizzare di più ruoli meno costosi.
// ATTENZIONE: se si decide di non mettere questi commenti nel documento, rimuovere "anche" nella descrizione del cpi
== MPC05 - CPI
#figure(
  image("../../asset/MPC05.png", width: 90%),
  caption: [Grafico per periodo di CPI]
)
Il CPI è costantemente minore di 1, il valore ottimale, anche questo è dovuto all'utilizzo dei ruoli più costosi durante la fase di RTB. Siccome dopo questa fase lavoreranno di più figure meno costose come programmatore e verificatore, il CPI dovrebbe arrivare a raggiungere il valore ottimale.\ Negli Sprint 5, 6 e 8 ha un leggero calo dovuta al fatto che l'Earned Value è risultato inferiore rispetto al Planned Value.

== MPC06 e MPC07 - Planned Value ed Earned Value
#figure(
  image("../../asset/MPC06MPC07.png", width: 90%),
  caption: [Grafico per periodo di Planned Value ed Earned Value]
)
Si osservi che il valore di EV è più o meno allineato a quello di PV: il lavoro svolto è abbastanza in linea con la pianificazione iniziale in quasi tutti gli sprint, eccetto per il quinto, il sesto e l'ottavo. Nello sprint 7 è stata incrementata la produttività in maniera da recuperare il debito accumulato. Nell'ottavo sprint il valore prodotto è nuovamente diminuito rispetto a quello pianificato a causa di rallentamenti dovuti alla sessione di esami universitari, ma prevediamo di recuperare le ore negli sprint successivi alla sessione.
== MPC08 e MPC09 - Actual Cost ed Estimate to Complete
#figure(
  image("../../asset/MPC08MPC09.png", width: 90%),
  caption: [Grafico per periodo di Actual Cost ed Estimate to Complete]
)
La spesa è cresciuta in maniera abbastanza lineare in questi sprint, iniziando a incrementare più velocemente a partire dallo sprint 7, rimanendo in linea con quanto programmato poiché le spese maggiori sono previste dallo sprint 7 al 13. L'andamento della linea dell'ETC indica budget sufficiente a concludere le attività prefissate senza sforare col budget, in quanto allo sprint 8 non è ancora stata usata più di metà di budget.

== MPC10 - Estimate at Completion
#figure(
  image("../../asset/MPC10.png", width: 90%),
  caption: [Grafico per periodo di Estimate at Completion]
)
L'attuale scostamento tra EAC e BAC rappresenta lo scenario in cui l'utilizzo dei ruoli rimanesse invariato. Tuttavia, poiché il CPI attuale è minore di 1 a causa dall'utilizzo frequente di figure costose nelle fasi iniziali, questa stima è da considerarsi sovrastimata rispetto alla realtà attesa.\
Con il passaggio alla fase successiva (Sprint 9-13), che prevede l'impiego di risorse con tariffe orarie inferiori, si prevede un miglioramento del CPI e quindi un diminuimento progressivo del valore dell'EAC. La curva dell'EAC dovrebbe quindi convergere verso il BAC entro la fine del progetto.
== MPC15 - Correttezza ortografica
#figure(
  image("../../asset/MPC15.png", width: 90%),
  caption: [Grafico per periodo della Correttezza ortografica]
)
Grazie all'implementazione di uno spellchecker prima della pianificazione degli sprint, il numero di errori ortografici all'interno dei documenti ufficiali è sempre stato 0.


= Iniziative di miglioramento
La tempestiva risoluzione delle problematiche è fondamentale per garantire la continuità del progetto e ottimizzarne sia l'efficienza che l'efficacia. In questa sezione vengono analizzate le criticità emerse durante lo sviluppo del progetto e descritte le relative contromisure adottate per garantire il rispetto degli standard qualitativi e delle tempistiche previste.

== Valutazione organizzativa
#figure(
  table(
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
    [Scarso coordiamento del team],
    [Sprint planning più dettagliati, con suddivisione dei compiti tramite issues assegnate dal responsabile di progetto],
    [Rallentamento dovuto ad altri impegni personali o universitari],
    [Utilizzo di tempo di slack negli sprint successivi per recuperare eventuali ritardi; \ ridistribuzione interna dei compiti in maniera tale da riuscire a rispettare le scadenze]

  ),
  caption: [Contromisure adottate al fine di migliorare il lavoro],
  kind: table
)


//attualmente non utilizzata, penso che lo faremo con il poc

 == Valutazione tecnologica
//  #figure(
//   table(
//     columns: (auto, auto, auto),
//     inset: 9pt,
//     align: horizon,
//     table.header(
//       [*Tecnologia*], [*Problema*], [*Conromisura*],
//       "Esepio: Typst",
//       "non lo sappiamo usare",
//       "guardato dei tutorial"
//     ),
//   ),
//   caption: [Contromisure adottate al fine di migliorare l'utilizzo delle tecnologie],
//   kind: table
// )
 == Considerazioni finali

//indicare nei paragrafi successivi tutti i test per ogni tipologia che verranno utilizzati nel progetto. nell'rtb si può decidere di trattaerne solo alcuni, ma lo si specifica prima delle tabelle

//si indicano ulteriori scelte di test prese dal gruppo (esempio: analisi statica tramite Walkthrough  o Inspection)

//infine negli ultimi due capitoli si parla dei risultati di valutazione e di prospettive di automiglioramento