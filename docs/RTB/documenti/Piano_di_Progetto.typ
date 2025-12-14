#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart

#v(1fr)
#align(center, [
  #image("../../asset/logo.svg")
  #set text(lang: "it")
  
  #v(1.5cm)
  
  #text(size: 37.5pt, weight: "bold")[Piano di Progetto]
  
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
  
  "0.1",
  "2025/12/01",
  "Angela Favaro",
  "Laura Venturini",
  "Prima stesura di struttura generale",

  "0.2",
  "2025/12/02",
  "Angela Favaro",
  "Laura Venturini",
  "Suddivisione e stesura sprint per RTB",

  "0.2",
  "2025/12/02",
  "Angela Favaro",
  "Laura Venturini",
  "Suddivisione e stesura sprint per PB",

  "0.3",
  "2025/12/08",
  "Angela Favaro",
  "Laura Venturini",
  "Calcolo dei costi",

  "0.3",
  "2025/12/08",
  "Angela Favaro",
  "Laura Venturini",
  "Aggiunta diagrammi PERTT",
)

#pagebreak()

#set text(size: 11pt, lang: "it")
#show figure.caption: set text(9pt)

#outline(title: "Indice")
#set heading(numbering: "1.")
#pagebreak()

#title("Indice delle tabelle")

#pagebreak()

#title("Indice delle figure")

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
      [Piano di Progetto],
    )
    #line(length: 100%, stroke: black)
  ],
)
#counter(page).update(1)
= Introduzione
Questo è un documento utile per avere una linea guida da seguire durante tutto lo svolgimento del progetto. \
Il Piano di Progetto ha lo scopo di definire in modo chiaro, strutturato e verificabile come il progetto _Code Guardian_ dovrà essere realizzato. 
Il documento verrà periodicamente versionato per aggiungere contenuti mancanti e per aggiornare contenuti errati o imprecisi.
== Ambito del progetto
In questa prima parte del documento è presente una breve introduzione al progetto di cui si farà riferimento in ogni paragrafo. Non vuole essere una spiegazione esplicativa e dettagliata dello stesso; per quello si può consultare il documento di _Analisi dei requisiti_ presente nel #link("https://heptacode-unipd.github.io", "sito del team Hepta Code"). \
*Code Guardian* è pensato come strumento di supporto per i team di sviluppo, da utilizzare durante l'intero ciclo di vita dei progetti che l'utente realizzerà all'interno di un'organizzazione. \ Verranno utilizzati degli agenti che consentono l'analisi della documentazione e del codice del progetto che si trova in una repository _GitHub_. Ogni agente avrà un diverso ruolo all'interno della piattaforma. \ 
Gli agenti fino ad ora pensati per _Code Guardian_ sono:
1. Agente per il controllo del codice.
2. Agente per il controllo della documentazione.
3. Agente per il controllo delle prime 10 linee guida OWASP.
\ Gli utenti / attori presi in esame per la creazione del progetto sono di tre tipi (lavoreranno insieme all'interno di uno stesso progetto):
- Business Owner;
- Project Manager;
- Sviluppatore.
Per ognuno dei tre verrà fornita un'interfaccia consona alle funzioni che più possono interessare loro riguardo lo stato di uno o più progetti di sviluppo. \
\ Grazie a meccanismi _AI_ e _LLM_, in base al dominio dell'utente, verranno:
- visualizzati gli errori rilevati; 
- forniti suggerimenti agli errori rilevati;
- forniti suggerimenti per il miglioramento del progetto;
- visualizzati dati statistici di interesse sul progetto.
\ 
#underline[Gli ambiti tecnici di progetto sono quindi:]
- implementazione e addestramento di agenti tramite utilizzo di _AI_ e _LLM_;
- implementazione di una web-app.

[Aggiunta dei linguaggi e tecnologie che andremo ad utilizzare]
== Organizzazione del documento
[_La Laura scriva cosa fa c'è nella sua parte_] \\
In questo documento è presente una suddivisione temporale in *_sprint_* del tempo a disposizione; 
ad ogni suddivisione viene esplicitato l'ammontare delle ore che ogni membro dovrà impiegare produttivamente in un determinato ruolo. \\
Sono definite in totale 5 *_milestones_*:
- _UCB (User Cases Baseline)_.
- _RTB (Requirements and Technology Baseline)_.
- _PAB (Progettazione & Analisi Baseline)_.
- _PB (Product Baseline)_.
ogni _milestone_ è accompagnata dal relativo diagramma di GNATT che ne definisce tempistiche, dipendenze e percorsi. \\
Ci riferiamo al sotto-paragrafo *_Preventivo a finire_* per l'organizzazione di tutte le azioni che il team attuerà durante il progetto. \
Verrà utilizzato come linea guida ad ogni sprint ed anche come riferimento per tutte le retrospettive e dovrà essere periodicamente aggiornato. \\
*_Retrospettive_*: verranno effettuate alla fine di ogni sprint. I risultati di ogni sprint potranno essere visualizzate nel sotto-paragrafo *_Trascorso_*. Nel trascorso sarà visualizzabile una fotografia attuale di ciò che realmente è accaduto durante ogni sprint. \ 
Ad ogni sprint analizzato nel trascorso verranno visualizzate inoltre:
- Aggiornamenti effettuati nell'analisi dei rischi. 
- Azioni mitigative attuate all'insorgere di un problema.
- _Diagrammi di PERTT_ con un consuntivo dei tempi previsti e tempi effettivi. 

== Ruoli interni al documento
Questo documento dovrà periodicamente essere aggiornato dal _Responsabile di Progetto_ e validato dal _Verificatore_.  \
Ad ogni _Sprint Retrospective_ si aggiornerà il _Trascorso_ con:
- un riassunto di ciò che è accaduto durante lo sprint, diviso per punti; 
- le problematiche incontrate; 
- le misure di mitigazione attuate; 
- gli eventuali aggiornamenti all'_Analisi dei rischi_; 
- i diagrammi di PERTT utili alla comprensione immediata dell'avanzamento del progetto.
Verrà conseguentemente aggiornata l'_Analisi dei Rischi_ con tutti i nuovi rischi futuri e/o presenti e le misure di mitigazione attuabili e/o da attuare.
#pagebreak()

= Organizzazione del team
Ad ogni suddivisione di periodo (denominato _sprint_) i membri turneranno; in questo modo tutti avranno modo di assumere e sperimentare i panni dei ruoli previsti per lo sviluppo di un progetto. \ #underline[Le ore complessive calcolate a persona] sono *novantadue*. \ A queste va escluso il tempo di apprendimento personale; pertanto, sebbene vengano segnate poche ore di lavoro effettivo, tutto il team seguirà dei ritmi di intensità _alta_ (10 - 20 ore settimanali individuali). \ Sono calcolati anche alcuni sprint ad intensità inferiore a causa della sessione invernale d'esami che si svolgerà dal _19 Gennaio 2026_ al _21 Febbraio 2026_. \ \ Non tutti i membri svolgeranno esattamente le stesse ore per ciascun ruolo. Questo è naturale in quanto per ogni sprint verrà eseguito un carico ed un'intensità di lavoro differenti. Risulta difficile uniformare perfettamente la ripartizione delle ore. \ L'opzione ritenuta più consona è quella di avvicinare tutti i membri ad un'uniformità di ore per ruolo anche se non esattamente coincidenti. \ Le ore complessive vengono ripartite tra i membri del gruppo come segnalato in @tab:OreTotIndividuali.
#figure(
  caption: [Stima delle ore individuali per ruolo in totale.],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Totale*]]],

  [_Riccardo Baldin_], [7], [10], [15], [16], [21], [23], [*92*],
  [_Angela Canazza_], [9], [6], [15], [15], [21,5], [25,5], [*92*],
  [_Angela Favaro_], [4], [8], [17], [15], [22], [26], [92],
  [_Alberto Reginato_], [7], [8], [16], [17], [17,5], [26,5], [*92*],
  [_Nicola Simionato_], [7], [8], [15,5], [12], [22], [27,5], [*92*],
  [_Amerigo Vegliante_], [8], [8], [17], [16], [21], [22], [*92*],
  [_Laura Venturini_], [7], [8], [16,5], [14], [23], [23,5], [*92*],
  [*Ore totali*], [*49*], [*56*], [*112*], [*105*],[*148*], [*174*],
) ]] <tab:OreTotIndividuali>

Nel grafico in figura @fig:torta vengono analizzate le percentuali della ripartizione generale dei ruoli.

#figure(
  caption: [Percentuale ripartizione dei ruoli in totale],
)[
#let data = (
  ([*Resp.*], 49),
  ([*Amm.*], 56),
  ([*Analista*], 112),
  ([*Progett.*], 105),
  ([*Programm.*], 148),
  ([*Verif.*], 174),
)

#align(left)[#cetz.canvas({
  let darkness = rgb("#9b66ff")
  let dark = rgb("#a814e1")
  let medium = rgb("#f365b0")
  let light = rgb("#fba8b7")
  let colortext = rgb("#1e0046")
  let colors = gradient.linear(darkness, dark, medium, light)
  chart.piechart(
    data,
    value-key: 1,
    label-key: 0,
    radius: 3,
    stroke: black,
    slice-style: colors,
    inner-radius: 1,
    inner-label: (content: (value, label) => [#text(colortext, label)], radius: 100%),
    outer-label: (content: "%", radius: 120%)
  )
})]] <fig:torta>


#pagebreak()

= Pianificazione temporale
Verrà qui riportata la pianificazione ritenuta più consona per il gruppo nel corso del tempo.\ I periodi di lavoro vengono denominati _sprint_ e ne sono stati calcolati in totale _*tredici*_. \ La divisione del paragrafo in due sotto-paragrafi riporta:
1. *Preventivo a finire:* pianificazione del lavoro ideale, secondo tempistiche ritenute ottimali.
2. *trascorso:* ciò che realmente è accaduto durante gli sprint.

== Calendario di massima
#figure(
  caption: [Tappe principali del calendario di progetto],
)[
  #image("../../asset/timeline_generale.png"),
]
== Milestones programmate
1. _UCB (User Cases Baseline)_:
    - Conclusione stesura degli User Case.
2. _RTB (Requirements and Technology Baseline)_:
   - [guardo che cacchio dobbiamo fare precisamente]
3. _PAB (Progettazione & Analisi Baseline)_:
   - Conclusione attività di progettazione.
   - Conclusione stesura definitiva _Analisi dei requisiti_.
4. _PB (Product Baseline)_:
   - Consegna del progetto validato.
== Preventivo a finire
Il preventivo rappresenta la pianificazione ideale dei tempi e dei ruoli all'interno del team. In questo sotto-paragrafo verranno esplicitati:
- Le attività che si dovranno svolgere ad ogni sprint.
- I ruoli che ogni membro dovrà rappresentare. \ 
Questo è utile soprattutto in fase di _Sprint Retrospective_ per comprendere se le tempistiche sono state rispettate o se, invece, c'è qualcosa che blocca il lavoro.
=== UCB - _User Cases Baseline_
#underline[La data di inizio attività] per il conseguimento della prima milestone (_UCB_) è *24 Novembre 2025*. La suddetta data è stata scelta insieme all'azienda appaltante a seguito del nostro primo incontro in data _20 Novembre 2025_. \ #underline[La data ultima] per il conseguimento della milestone è prevista in data *28 Dicembre 2025*

==== Sprint 1
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [24 Novembre 2025 – 30 Novembre 2025],
  
  [_Giorni di sprint_], 
  [7],
  
  [_Attività previste_], 
  [
    Inizio dell'attività di lavoro seguito del primo incontro con il committente.
    - Studio in preparazione dell'attività di Analisi dei Requisiti.
    - Primo approccio di gruppo all'analisi (tramite incontri interni organizzati come brainstorming).
    - Studio della documentazione adeguata al progetto.
    - Attività di analisi dei Casi d'Uso preliminare.
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 1],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
  if col == 0 and row <= 6 {
    rgb("#BB85E1")
  } else if (row == 7 and col == 0){
    rgb("#9856D8")
  }
},  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [1], [], [], [], [25€],
  [_Angela Canazza_], [], [], [1], [], [], [], [25€],
  [_Angela Favaro_], [], [], [1], [], [], [], [25€],
  [_Alberto Reginato_], [], [], [1], [], [], [], [25€],
  [_Nicola Simionato_], [1], [], [1], [], [], [], [55€],
  [_Amerigo Vegliante_], [], [], [1], [], [], [0,5], [32,5€],
  [_Laura Venturini_], [], [2], [1], [], [], [], [65€],
) ]] <tab:PrevisioneSprint1>


#underline[Spese della settimana]: 252,5€ \ #underline[Spesa totale]: *252,5€*

==== Sprint 2
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [1 Dicembre 2025 - 7 Dicembre 2025],
  
  [_Giorni di sprint_], 
  [7],
  
  [_Attività previste_], 
  [
    - Studio individuale della sintassi e l'utilizzo dei Casi d'Uso.
    - Continuazione e intensificazione dell'attività di Analisi dei Requisiti in gruppo.
    - Divisione dei compiti per una prima stesura dei documenti tra:
      - Piano di Progetto (PdP).
      - Piano di Qualifica (PdQ).
      - Norme di Progetto.
      - Analisi dei Requisiti (AR).
    - Decisioni provvisorie sulle tecnologie utilizzabili per il progetto.
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 2],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],


  [_Riccardo Baldin_], [], [], [2], [], [], [], [50€],
  [_Angela Canazza_], [], [], [2], [], [], [], [50€],
  [_Angela Favaro_], [], [], [2], [], [], [1], [65€],
  [_Alberto Reginato_], [], [2], [2], [], [], [], [90€],
  [_Nicola Simionato_], [], [], [2], [], [], [], [50€],
  [_Amerigo Vegliante_], [], [], [2], [], [], [], [50€],
  [_Laura Venturini_], [1], [], [2], [], [], [], [80€]
) ]] <tab:PrevisioneSprint2>

#underline[Spese della settimana]: 435€ \ #underline[Spesa totale]: *687,5€*

==== Sprint 3
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [8 Dicembre 2025 - 14 Dicembre 2025],
  
  [_Giorni di sprint_], 
  [7],
  
  [_Attività previste_], 
  [
   - Attività di formazione su Backend da parte dell'azienda committente.
   - Continuazione da parte del team completo sull'Analisi dei Requisiti (con presenza anche di Responsabile ed Amministratore).
   - Avanzamento stesura dei documenti per milestone RTB.
   - Studio individuale sulle tecnologie discusse dal team.
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 3],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
  [_Angela Canazza_], [], [], [4], [], [], [], [100€],
  [_Angela Favaro_], [], [], [4], [], [], [], [100€],
  [_Alberto Reginato_], [3], [], [], [], [], [1,5], [112,5€],
  [_Nicola Simionato_], [], [3], [], [], [], [], [60€],
  [_Amerigo Vegliante_], [], [], [4], [], [], [], [100€],
  [_Laura Venturini_], [], [], [4], [], [], [], [100€]
) ]] <tab:PrevisioneSprint3>

#underline[Spese della settimana]: 672,5€ \ #underline[Spesa totale]: *1.360€*

==== Sprint 4
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [15 Dicembre 2025 - 21 Dicembre 2025],
  
  [_Giorni di sprint_], 
  [7],

  [_Attività previste_], 
  [
    - Attività di formazione su Frontend, AWS ed introduzione alla parte AI da parte dell'azienda committente.
    - Continuazione di:
      - Analisi dei Requisiti.
      - Stesura della documentazione.
    - Revisione sulle decisioni prese riguardo alle tecnologie adatte al progetto.
    - Continuazione stesura di User Case.
    - #underline("Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.") 
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 4],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [3], [], [], [], [], [], [90€],
  [_Angela Canazza_], [], [], [4], [], [], [1,5], [122,5€],
  [_Angela Favaro_], [], [], [6], [], [], [], [150€],
  [_Alberto Reginato_], [], [], [5], [], [], [], [125€],
  [_Nicola Simionato_], [], [], [2], [], [], [], [50€],
  [_Amerigo Vegliante_], [], [4], [], [], [], [1,5], [102,5€],
  [_Laura Venturini_], [], [], [4], [], [], [], [100€]
) ]] <tab:PrevisioneSprint4>

#underline[Spese della settimana]: 740€ \ #underline[Spesa totale]: *2100€*

==== Sprint 5
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [22 Dicembre 2025 - 28 Dicembre 2025],
  
  [_Giorni di sprint_], 
  [7],
  
  [_Attività previste_], 
  [
    - Scelta definitiva delle tecnologie da utilizzare per il progetto.
    - Inizio studio delle tecnologie scelte.
    - Continuazione dell'attività di Analisi dei Requisiti.
    - Continuazione stesura dei documenti.
    _Milestone "UCB":_ 
    Aver completato i Casi d'Uso. 
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 5],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
  [_Angela Canazza_], [], [], [4], [], [], [], [100€],
  [_Angela Favaro_], [], [4], [], [], [], [], [80€],
  [_Alberto Reginato_], [], [], [4], [], [], [], [100€],
  [_Nicola Simionato_], [], [], [4], [], [], [], [100€],
  [_Amerigo Vegliante_], [3], [], [], [], [], [2], [120€],
  [_Laura Venturini_], [], [], [2], [], [], [2], [80€]
) ]] <tab:PrevisioneSprint5>

#underline[Spese della settimana]: 680€ \ #underline[Spesa totale]: *2.780€*

=== RTB - _Requirements and Technology Baseline_
#underline[La data di inizio attività] per il conseguimento della prima milestone (_UCB_) è *29 Dicembre 2025*. 
\ #underline[La data ultima] per il conseguimento della milestone; quindi per la presentazione di ciò che è stato prodotto ai professori Cardin e Vardanega è prevista in data *25 Gennaio 2026*.
==== Sprint 6
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [29 Dicembre 2025 - 4 Gennaio 2026],
  
  [_Giorni di sprint_], 
  [7],

  [_Attività previste_], 
  [
    - Inizio attività di produzione del _Proof of Concept (PoC)_.
    - Continuazione stesura della documentazione.
    - Continuazione attività di Analisi dei Requisiti.
    - Inizio dell'attività di Progettazione.
    - #underline("Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.") 
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 6],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [4], [], [1], [], [], [105€],
  [_Angela Canazza_], [3], [], [], [1], [], [], [115€],
  [_Angela Favaro_], [], [], [4], [1], [], [], [125€],
  [_Alberto Reginato_], [], [], [4], [1], [], [], [125€],
  [_Nicola Simionato_], [], [], [], [4], [], [2], [130€],
  [_Amerigo Vegliante_], [], [], [6], [1], [], [2], [205€],
  [_Laura Venturini_], [], [], [], [4], [], [], [100€]
) ]] <tab:PrevisioneSprint6>

#underline[Spese della settimana]: 905€ \ #underline[Spesa totale]: *3.685€*

==== Sprint 7
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [5 Gennaio 2026 - 11 Gennaio 2026],
  
  [_Giorni di sprint_], 
  [7],

  [_Attività previste_], 
  [
    In questo sprint tutti i ruoli devono essere operativi e il team deve dimostrare la capacità di generare valore per lo sviluppo del progetto.
    - Continuazione di sviluppo e verifica del PoC.
    - Continuazione e conclusione stesura della documentazione.
    - Continuazione attività di Analisi e Progettazione.
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 7],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },    
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [4], [2], [], [], [150€],
  [_Angela Canazza_], [], [6], [], [], [], [], [120€],
  [_Angela Favaro_], [4], [], [], [], [], [], [120€],
  [_Alberto Reginato_], [], [], [], [6], [2], [], [180€],
  [_Nicola Simionato_], [], [], [3], [], [], [2.5], [112,5€],
  [_Amerigo Vegliante_], [], [], [], [7], [2], [], [205€],
  [_Laura Venturini_], [], [], [], [5], [], [2.5], [162,5€]
) ]] <tab:PrevisioneSprint7>

#underline[Spese della settimana]: 1.050€ \ #underline[Spesa totale]: *4.735€*

==== Sprint 8
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [12 Gennaio 2026 - 25 Gennaio 2026],
  
  [_Giorni di sprint_], 
  [14],

  [_Attività previste_], 
  [
    Ultimo sprint previsto prima della consegna del _PoC_. 
    - #underline("Conclusione dello sviluppo e della verifica del PoC.")
    - Continuazione attività di Progettazione.
    - Revisione e validazione dei documenti prodotti per la milestone RTB.
    - Colloquio conclusivo per la revisione del progetto con i professori. 
    - #underline("Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.")  
  ]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 8],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },   
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [], [5], [], [3], [170€],
  [_Angela Canazza_], [], [], [], [6], [2], [], [180€],
  [_Angela Favaro_], [], [], [], [6], [2], [], [180€],
  [_Alberto Reginato_], [], [], [], [6], [], [3], [195€],
  [_Nicola Simionato_], [6], [], [], [], [], [], [180€],
  [_Amerigo Vegliante_], [], [], [4], [3], [], [], [175€],
  [_Laura Venturini_], [], [6], [], [], [], [], [120€]
) ]] <tab:PrevisioneSprint8>

#underline[Spese della settimana]: 1.200€ \ #underline[Spesa totale]: *5.935*
=== PAB - _Progettazione & Analisi Baseline_
#underline[La data di inizio attività] per il conseguimento della terza milestone (_PAB_) è *26 Gennaio 2026*, a seguito dei colloqui con i professori per la conferma del superamento dei requisiti della milestone RTB. \ #underline[La data ultima prevista] per gli sprint del PAB è *22 Febbraio 2026*.

==== Sprint 9
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [26 Gennaio 2026 - 8 Febbraio 2026],
  
  [_Giorni di sprint_], 
  [14],

  [_Attività previste_], 
  [
    - Continuazione dell'attività di Progettazione.
    - Ultime fasi di attività di Analisi dei Requisiti.
    Inoltre, in ordine cronologico:
    1. Modifiche o migliorie della documentazione prodotta per l'RTB a seguito dei suggerimenti proposti dopo la prima milestone.
    2. #underline("Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.") 
    3. Allineamento di tutti i componenti del gruppo sulle attività che sono state svolte e che verranno svolte; chi ha avuto maggiore esperienza chiarirà i dubbi a chi ne ha avuta meno nei diversi ambiti (Analisi, Progettazione, Sviluppo e Verifica).
  ],
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 9],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [], [8], [], [], [200€],
  [_Angela Canazza_], [], [], [], [8], [], [], [200€],
  [_Angela Favaro_], [], [], [], [8], [], [], [200€],
  [_Alberto Reginato_], [], [], [], [4], [], [1,5], [122,5€],
  [_Nicola Simionato_], [], [5], [3,5], [], [], [], [187,5€],
  [_Amerigo Vegliante_], [], [], [], [5], [], [2], [155€],
  [_Laura Venturini_], [6], [], [3,5], [], [], [], [267,5€]
) ]] <tab:PrevisioneSprint9>

#underline[Spese della settimana]: 1.332,5€ \ #underline[Spesa totale]: *7.267,5€*

==== Sprint 10
#table(
  columns: (auto, auto), 
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [9 Febbraio 2026 - 22 - 2026],
  
  [_Giorni di sprint_], 
  [14],

  [_Attività previste_], 
  [
    - *Conclusione attività di Analisi e Progettazione.*
    - Studio della documentazione necessaria per la prossima milestone _PB_.
    - Sviluppo Backend e verifica del codice prodotto.
    - Sviluppo Frontend e verifica del codice prodotto.
    - Training degli agenti.
    _Milestone "(PAB)"_:
    Conclusione attività di Progettazione ed Analisi.
  ],
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 10],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [], [], [11], [5], [240€],
  [_Angela Canazza_], [], [], [], [], [], [10], [150€],
  [_Angela Favaro_], [], [], [], [], [9], [5], [210€],
  [_Alberto Reginato_], [4], [], [], [], [], [5], [195€],
  [_Nicola Simionato_], [], [], [], [8], [8], [], [320€],
  [_Amerigo Vegliante_], [], [4], [], [], [], [7], [185€],
  [_Laura Venturini_], [], [], [], [5], [8], [], [245€]
) ]] <tab:PrevisioneSprint10>

#underline[Spese della settimana]: 1.545€ \ #underline[Spesa totale]: *8.812,5€*

=== PB - _Product Baseline_
#underline[La data di inizio attività] per il conseguimento dell ultima milestone (_PAB_) è *23 Febbraio 2026*. \ #underline[La data ultima prevista] per il conseguimento della milestone PB e, di conseguenza, per la consegna del progetto è il *15 Marzo 2026*.
==== Sprint 11
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [23 Febbraio 2026 - 1 Marzo 2026],
  
  [_Giorni di sprint_], 
  [7],

  [_Attività previste_], 
  [
    - Sviluppo della documentazione per la milestone _PB_.
    - Sviluppo Backend e verifica del codice prodotto.
    - Sviluppo Frontend e verifica del codice prodotto.  
    - #underline("Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.") 
  ],
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 11],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [4], [], [], [], [], [], [120€],
  [_Angela Canazza_], [], [], [], [], [], [14], [210€],
  [_Angela Favaro_], [], [4], [], [], [], [], [80€],
  [_Alberto Reginato_], [], [], [], [], [15,5], [], [232,5€],
  [_Nicola Simionato_], [], [], [], [], [9], [], [135€],
  [_Amerigo Vegliante_], [], [], [], [], [10], [], [150€],
  [_Laura Venturini_], [], [], [], [], [], [11], [165€]
) ]] <tab:PrevisioneSprint11>

#underline[Spese della settimana]: 1.092,5€ \ #underline[Spesa totale]: *9.905€*

==== Sprint 12
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [2 Marzo 2026 - 8 Marzo 2026],
  
  [_Giorni di sprint_], 
  [7],

  [_Attività previste_], 
  [
    - Valutazione di aggiunta requisiti opzionali valutati in sede di analisi. 
    - Sviluppo Backend e verifica del codice.
    - Sviluppo Frontend e verifica del codice.
    - Continuazione sviluppo documentazione. 
  ],
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 12],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  },  
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [6], [], [], [], [5], [195€],
  [_Angela Canazza_], [], [], [], [], [19.5], [], [292,5€],
  [_Angela Favaro_], [], [], [], [], [], [15], [225€],
  [_Alberto Reginato_], [], [], [], [], [], [15.5], [232,5€],
  [_Nicola Simionato_], [], [], [], [], [5], [10], [225€],
  [_Amerigo Vegliante_], [5], [], [], [], [], [], [150€],
  [_Laura Venturini_], [], [], [], [], [15], [], [225€]
) ]] <tab:PrevisioneSprint12>

#underline[Spese della settimana]: 1.545€ \ #underline[Spesa totale]: *11.450€*

==== Sprint 13
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [9 Marzo 2026 - 15 Marzo 2026],
  
  [_Giorni di sprint_], 
  [7],

  [_Attività previste_], 
  [
    Ultimo sprint previsto.
    - Conclusione attività di sviluppo e validazione Frontend e Backend.
    - Conclusione stesura documentazione adeguata alla consegna del progetto.
    - Validazione dei risultati prodotti durante gli Sprint. 
    - #underline("Revisione finale del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.") 
    - *Consegna del progetto previsto in data 15 Marzo 2026*.
  ],
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 13],
  kind: table,
)[
#table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 8,
  fill: (row, col) => {
    if col == 0 and row <= 6 {
      rgb("#BB85E1")
    } else if (row == 7 and col == 0){
      rgb("#9856D8")
    }
  }, 
  stroke: 0.5pt,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Costo*]]],

  [_Riccardo Baldin_], [], [], [], [], [10], [10], [300€],
  [_Angela Canazza_], [6], [], [], [], [], [], [180€],
  [_Angela Favaro_], [], [], [], [], [11], [5], [240€],
  [_Alberto Reginato_], [], [6], [], [], [], [], [120€],
  [_Nicola Simionato_], [], [], [], [], [], [13], [195€],
  [_Amerigo Vegliante_], [], [], [], [], [9], [7], [240€],
  [_Laura Venturini_], [], [], [], [], [], [8], [120€]
) ]] <tab:PrevisioneSprint13>

#underline[Spese della settimana]: 1.410€ \ #underline[Spesa totale]: *12.845€*

== Trascorso
=== Sprint 1
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], 
  [24 Novembre 2025 – 30 Novembre 2025],
  
  [_Giorni di sprint_], 
  [7],
  
  [_Attività Svolte_], 
  [
    
  ],
  [_Rischi incontrati_],
  [
    1.
  ],
  [_Mitigazione_],
  [
    1.
  ],
  [_PERTT Diagram_],
  [
    [_Inserire immagine_]
  ]
)