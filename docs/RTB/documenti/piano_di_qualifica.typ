#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart

#import "../../CC/glossario_termini.typ": applica-glossario

#show: applica-glossario


= Analisi dei Requisiti

Abbiamo riscontrato un problema con la Repository e le Github Action.
Anche la fase di Commit è stata lenta.


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
  "0.3",
  "2025/12/15",
  "Alberico Vegliante",
  "Angela Canazza",
  "Stesura iniziale del capitolo 6 - Iniziative di miglioramento",
  "0.2",
  "2025/12/14",
  "Angela Canazza",
  "Nicola Simionato",
  "Stesura iniziale di: qualità di processo, di prodotto e dei metodi di testing",
  "0.1",
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
// qui andranno inserite le tabelle contenenti le metriche con i valori accettabili decisi, non avendoli ancora decisi, lascio vuoto
== Processi di supporto
#figure(
  table(
    columns: (auto, auto, auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MCO", //Metrica Correttezza Ortografica
    "Correttezza Ortografica",
    "0",
    "0"
  ),
  caption: [Metriche processi di supporto],
  kind: table
)
== Processi organizzativi

= Qualità di prodotto
La qualità del prodotto software viene intesa, in conformità con la normativa ISO#super[G], come l'insieme delle caratteristiche che permettono al sistema di soddisfare le esigenze implicite ed esplicite degli stakeholder#super[G]. Poiché la valutazione della qualità dipende dalla prospettiva di osservazione, è necessario un confronto oggettivo tra i risultati ottenuti e gli obiettivi iniziali.

Affinché le conformità vengano soddisfatte, al progetto vengono integrati tre elementi:

- Definizione degli obiettivi specifici nel Piano di Qualifica.
- Verifica puntuale del soddisfacimento dei requisiti.
- Miglioramento continuo tramite l'Analisi dei rischi e l'ottimizzazione dei processi iterazione dopo iterazione. L'approccio operativo segue il principio del "fail fast"#super[G].
== Funzionalità
#figure(
  table(
    columns: (auto, auto, auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore preferibile*]
    ),
    
    "MROS", 
    "Requisiti obbligatori soddisfatti",
    "100%",
    "100%",
    "MROS", 
    "Requisiti desiderabili soddisfatti",
    "≥0%",
    "≥60%",
    "MROS", 
    "Requisiti opzionali soddisfatti ",
    "≥0%",
    "≥30%"
  ),
  caption: [Metriche funzionalità del prodotto],
  kind: table
)
//altre tabelle da fare sono
//usabilità
//manutenibilità
//affidabilità
//efficienza

= Metodi di testing
Nel documento riguardante le #underline[#link("../documenti_esterni/norme_di_progetto.pdf","Norme di Progetto")], i test utilizzati per la verifica del codice saranno:

- *Test di Unità*: Viene verificato che le singole attività atomiche e indipendenti, che compongono il sistema, funzionino correttamente;

- *Test di Integrazione*: Viene verificato che le singole attività lavorino correttamente tra di loro al fine di svolgere un certo compito. Vengono effettuati dopo i test di unità;

- *Test di Sistema*: Viene verificato il funzionamento dell'intero sistema, il quale deve soddisfare tutti i requisiti indicati nell'analisi dei requisiti;

- *Test di Regressione*: a seguito di un test andato male e di una relativa correzione,ci si accerta che la correzione non causi errori nelle parti del sistema che dipendono da essa;

- *Test di Accettazione*: Validazione esterna con il committente rispetto al Capitolato.

= Valutazione lavoro

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
    [Mancata coerenza grafica e stilistica nella documentazione],
    [Sviluppo di template standardizzati in Typst#super[G] per garantire uniformità visiva],
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