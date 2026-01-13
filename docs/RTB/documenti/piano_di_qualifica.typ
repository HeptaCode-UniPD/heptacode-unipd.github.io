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
  "Completemanto dei capitolo 3 e 4 con l'inserimento delle metriche",
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
    
    "MPC05",
    "Planned Value",
    "≥0€",
    "≤BAC",
    "MPC06",
    "Earned Value",
    "≥0€",
    "≤EAC",
    "MPC07",
    "Actual Cost",
    "≥0€",
    "≤EAC",
    "MPC08",
    "Estimate at Completion",
    "≥BAC -5%",
    "≤BAC +5%",
    "MPC09",
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
    
    "MPC10",
    "Code Coverage",
    "≥80%",
    "≥90%",
    "MPC11",
    "Test Success Rate",
    "100%",
    "100%",
    "MPC12",
    "Statement Coverage",
    "≥90%",
    "100%",
    "MPC13",
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
    
    "MPC14",
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

= Valutazione lavoro
In questa sezione sono riportate le misurazioni della qualità effettuate durante lo svolgimento delle attività dedicate al raggiungimento della Requirements and Technology Baseline. Inoltre, sono presenti i ragionamenti sulla differenza fra le tendenze attese e quelle effettivamente osservate. 
== MPC05 e MPC06 - Planned Value ed Earned Value
//Grafico 1 
Si osservi che il valore di EV è sempre uguale a quello di PV, indicando che il lavoro svolto è in linea con la pianificazione iniziale. Questo suggerisce una corretta gestione del progetto.
== MPC07 e MPC08 - Actual Cost ed Estimate at Completion
//Grafico 2

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