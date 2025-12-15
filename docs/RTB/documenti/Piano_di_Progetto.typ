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
  "0.6",
  "2025/12/14",
  "Laura Venturini",
  "Nicola Simionato",
  "Aggiunti capitoli ’Processi e metodologie’, ’Risorse e strumenti’ e ’Analisi e gestione dei rischi’",


  "0.5",
  "2025/12/14",
  "Angela Favaro",
  "Nicola Simionato",
  "Aggiunta diagrammi PERTT e correzione analisi Sprint",

  "0.4",
  "2025/12/08",
  "Angela Favaro",
  "Nicola Simionato",
  "Calcolo dei costi",

  "0.3",
  "2025/12/03",
  "Angela Favaro",
  "Alberto Reginato",
  "Suddivisione e stesura sprint per PB",

  "0.2",
  "2025/12/02",
  "Angela Favaro",
  "Alberto Reginato",
  "Suddivisione e stesura sprint per RTB",

  "0.1",
  "2025/12/01",
  "Angela Favaro",
  "Alberto Reginato",
  "Prima stesura di struttura generale",
)

#pagebreak()

#set text(size: 11pt, lang: "it")
#show figure.caption: set text(9pt)

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()
#outline(
  title: "Indice delle tabelle",
  target: figure.where(
    label: l => l.starts-with("tab:")
  )
)


#pagebreak()
#outline(
  title: "Indice delle figure",
  target: figure.where(label: l => l.starts-with("fig:") )
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
*Code Guardian* è pensato come strumento di supporto per i team di sviluppo, da utilizzare durante l’intero ciclo di vita dei progetti che l’utente realizzerà all’interno di un’organizzazione. \ Verranno utilizzati degli agenti che consentono l’analisi della documentazione e del codice del progetto che si trova in una repository _GitHub_. Ogni agente avrà un diverso ruolo all’interno della piattaforma. \ 
Gli agenti fino ad ora pensati per _Code Guardian_ sono:
1. Agente per il controllo del codice.
2. Agente per il controllo della documentazione.
3. Agente per il controllo delle prime 10 linee guida OWASP.
\ Gli utenti / attori presi in esame per la creazione del progetto sono di tre tipi (lavoreranno insieme all’interno di uno stesso progetto):
- Business Owner;
- Project Manager;
- Sviluppatore.
Per ognuno dei tre verrà fornita un’interfaccia consona alle funzioni che più possono interessare loro riguardo lo stato di uno o più progetti di sviluppo. \
\ Grazie a meccanismi _AI_ e _LLM_, in base al dominio dell’utente, verranno:
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
[_La Laura scriva cosa fa c’è nella sua parte_] \\
In questo documento è presente una suddivisione temporale in *_sprint_* del tempo a disposizione; 
ad ogni suddivisione viene esplicitato l’ammontare delle ore che ogni membro dovrà impiegare produttivamente in un determinato ruolo. \\
Sono definite in totale 5 *_milestones_*:
- _UCB (User Cases Baseline)_.
- _RTB (Requirements and Technology Baseline)_.
- _PAB (Progettazione & Analisi Baseline)_.
- _PB (Product Baseline)_.
ogni _milestone_ è accompagnata dal relativo diagramma di GNATT che ne definisce tempistiche, dipendenze e percorsi. \\
Ci riferiamo al sotto-paragrafo *_Preventivo a finire_* per l’organizzazione di tutte le azioni che il team attuerà durante il progetto. \
Verrà utilizzato come linea guida ad ogni sprint ed anche come riferimento per tutte le retrospettive e dovrà essere periodicamente aggiornato. \\
*_Retrospettive_*: verranno effettuate alla fine di ogni sprint. I risultati di ogni sprint potranno essere visualizzate nel sotto-paragrafo *_Trascorso_*. Nel trascorso sarà visualizzabile una fotografia attuale di ciò che realmente è accaduto durante ogni sprint. \ 
Ad ogni sprint analizzato nel trascorso verranno visualizzate inoltre:
- Aggiornamenti effettuati nell’Analisi dei Rischi. 
- Azioni mitigative attuate all’insorgere di un problema.
- _Diagrammi di PERTT_ con un consuntivo dei tempi previsti e tempi effettivi. 

== Ruoli interni al documento
Questo documento dovrà periodicamente essere aggiornato dal _Responsabile di Progetto_ e validato dal _Verificatore_.  \
Ad ogni _Sprint Retrospective_ si aggiornerà il _Trascorso_ con:
- un riassunto di ciò che è accaduto durante lo sprint, diviso per punti; 
- le problematiche incontrate; 
- le misure di mitigazione attuate; 
- gli eventuali aggiornamenti all’_Analisi dei rischi_; 
- i diagrammi di PERTT utili alla comprensione immediata dell’avanzamento del progetto.
Verrà conseguentemente aggiornata l’_Analisi dei Rischi_ con tutti i nuovi rischi futuri e/o presenti e le misure di mitigazione attuabili e/o da attuare.
#pagebreak()


= Processi e metodologie
== Modello di processo scelto
Abbiamo scelto di lavorare al progetto utilizzando l’approccio *Agile* basato sul framework *Scrum*. È stato scelto tale modello per le seguenti ragioni:
- Grazie a questo metodo si possono limitare gli sprechi di risorse: con la suddivisione di task molto granulari, l’introduzione di un errore è più facilmente individuabile e quindi è meno frequente che l’errore si propaghi in grosse parti del progetto.
- Lo stato del progetto, la suddivisione delle task da fare, le ore a disposizione e gli aspetti migliorabili sono chiari a tutti grazie allo Sprint Review, allo Sprint Retrospective e allo Sprint Planning.
- Grazie allo Sprint Retrospective si può migliorare l’efficacia del team durante lo svolgimento del progetto e capire in quali aspetti è lacunoso.
- Permette una gestione dei rischi più facile e il loro continuo monitoraggio, diminuendo la probabilità che si verifichino. 
- Il rilascio incrementale permette all’azienda cliente di vedere come sta avanzando il progetto.
- Feedback più veloce: questo metodo impone un contatto più frequente con l’azienda proponente, permettendo di avere un riscontro sull'adeguatezza dei requisiti individuati e del codice per implementare tali requisiti, senza essere costretti a modificare tutto alla fine.
== Struttura del ciclo di vita
Dato che utilizziamo la metodologia Scrum, il ciclo di vita del progetto è suddiviso in brevi cicli autosufficienti chiamati Sprint. \ Abbiamo stabilito che la durata di uno Sprint sarà di una settimana dal 24 novembre 2025 all’11 gennaio 2026 e poi dal 23 febbraio al 15 marzo 2026; saranno invece di due settimane durante il periodo di sessione d’esami che va dal 12 gennaio al 22 febbraio 2026. Per ogni Sprint, sono previsti:
- uno *Sprint Planning*, in cui si pianifica lo Sprint e si stabiliscono i suoi obiettivi, che vengono scritti nello *Sprint Backlog*;
- uno *Sprint Review*, in cui si esamina il lavoro completato dopo uno Sprint e si raccoglie feedback e si aggiorna il *Product Backlog*, che contiene tutte le task da completare per completare il progetto; 
- uno *Sprint Retrospective*, in cui il team ragiona su ciò che può essere migliorato in confronto allo Sprint appena finito.
Non sono previsti Daily Scrum, in quanto riteniamo che sia sufficiente misurare il progresso dell’avanzamento durante lo Sprint Review. 
#pagebreak()

= Risorse e strumenti
Questa sezione si occupa di descrivere quali sono e come vengono gestiti gli strumenti e le risorse necessari per realizzare il progetto.
== Risorse umane
La gestione delle ore fra i membri del progetto è spiegata nella @Organizzazione (Organizzazione team).
== Risorse materiali
Ogni membro del team userà il proprio computer per lavorare al progetto. Inoltre, in caso di necessità, il team potrà usare i computer messi a disposizione dall’Università di Padova nelle aule informatiche. 
== Strumenti Software
Gli strumenti di sviluppo che abbiamo deciso di usare sono:
- *React* per la parte Frontend;
- *Node.js* per la parte Backend;
- *MongoDB* per il Database;
- *AWS* per l’architettura Cloud.
Per il controllo della versione usiamo *GitHub*.\
Per implementare la Continuous Integration e la Continuous Delivery usiamo *GitHub Actions*.\ \
Per la redazione dei documenti il linguaggio scelto è *Typst*.\ \
Gli strumenti per la comunicazione sono invece:
- *Discord* per le riunioni telematiche;
- *Telegram* per avere un canale di comunicazione asincrona fra i  membri del team;
- *Slack* e *Gmail* per comunicare con l’azienda proponente.
#pagebreak()

= Organizzazione del team
#label("Organizzazione")
Ad ogni suddivisione di periodo (denominato _sprint_) i membri turneranno; in questo modo tutti avranno modo di assumere e sperimentare i panni dei ruoli previsti per lo sviluppo di un progetto. \ #underline[Le ore complessive calcolate a persona] sono *novantadue*. \ A queste va escluso il tempo di apprendimento personale; pertanto, sebbene vengano segnate poche ore di lavoro effettivo, tutto il team seguirà dei ritmi di intensità _alta_ (10 - 20 ore settimanali individuali). \ Sono calcolati anche alcuni sprint ad intensità inferiore a causa della sessione d’esami invernale che si svolgerà dal _19 Gennaio 2026_ al _21 Febbraio 2026_. \ \ Non tutti i membri svolgeranno esattamente le stesse ore per ciascun ruolo. Questo è naturale in quanto per ogni sprint verrà eseguito un carico ed un’intensità di lavoro differenti. Risulta difficile uniformare perfettamente la ripartizione delle ore. \ l’opzione ritenuta più consona è quella di avvicinare tutti i membri ad un’uniformità di ore per ruolo anche se non esattamente coincidenti. \ Le ore complessive vengono ripartite tra i membri del gruppo come segnalato in @tab:OreTotIndividuali.
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

  [_Angela Favaro_], [7], [10], [15], [16], [21], [23], [*92*],
  [_Angela Canazza_], [9], [6], [15], [15], [21,5], [25,5], [*92*],
  [_Riccardo Baldin_], [4], [8], [17], [15], [22], [26], [92],
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
]<fig:CalendarioProgetto>
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
Il preventivo rappresenta la pianificazione ideale dei tempi e dei ruoli all’interno del team. In questo sotto-paragrafo verranno esplicitati:
- Le attività che si dovranno svolgere ad ogni sprint.
- I ruoli che ogni membro dovrà rappresentare. \ 
Questo è utile soprattutto in fase di _Sprint Retrospective_ per comprendere se le tempistiche sono state rispettate o se, invece, c’è qualcosa che blocca il lavoro.
=== UCB - _User Cases Baseline_
#figure(
  caption: [Diagramma di PERT della mileston UCB],
)[
  #image("../../asset/PERT-UCB.png"),
]<PERT-UCB>
#underline[La data di inizio attività] per il conseguimento della prima milestone (_UCB_) è *24 Novembre 2025*. La suddetta data è stata scelta insieme all’azienda appaltante a seguito del nostro primo incontro in data _20 Novembre 2025_. \ #underline[La data ultima] per il conseguimento della milestone è prevista in data *28 Dicembre 2025*

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
    Inizio dell’attività di lavoro seguito del primo incontro con il committente.
    - Studio in preparazione dell’attività di Analisi dei Requisiti.
    - Primo approccio di gruppo all’analisi (tramite incontri interni organizzati come brainstorming).
    - Studio della documentazione adeguata al progetto.
    - Attività di analisi dei Casi d’Uso preliminare.
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

  [_Angela Favaro_], [], [], [1], [], [], [], [25€],
  [_Angela Canazza_], [], [], [1], [], [], [], [25€],
  [_Riccardo Baldin_], [], [], [1], [], [], [], [25€],
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
    - Studio individuale della sintassi e l’utilizzo dei Casi d’Uso.
    - Continuazione e intensificazione dell’attività di Analisi dei Requisiti in gruppo.
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


  [_Angela Favaro_], [], [], [2], [], [], [], [50€],
  [_Angela Canazza_], [], [], [2], [], [], [], [50€],
  [_Riccardo Baldin_], [], [], [2], [], [], [1], [65€],
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
   - Attività di formazione su Backend da parte dell’azienda committente.
   - Continuazione da parte del team completo dell’Analisi dei Requisiti (con presenza anche di Responsabile ed Amministratore).
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

  [_Angela Favaro_], [], [], [4], [], [], [], [100€],
  [_Angela Canazza_], [], [], [4], [], [], [], [100€],
  [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
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
    - Attività di formazione su Frontend, AWS ed introduzione alla parte AI da parte dell’azienda committente.
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

  [_Angela Favaro_], [3], [], [], [], [], [], [90€],
  [_Angela Canazza_], [], [], [4], [], [], [1,5], [122,5€],
  [_Riccardo Baldin_], [], [], [6], [], [], [], [150€],
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
    - Continuazione dell’attività di Analisi dei Requisiti.
    - Continuazione stesura dei documenti.
    _Milestone "UCB":_ 
    Aver completato i Casi d’Uso. 
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

  [_Angela Favaro_], [], [], [4], [], [], [], [100€],
  [_Angela Canazza_], [], [], [4], [], [], [], [100€],
  [_Riccardo Baldin_], [], [4], [], [], [], [], [80€],
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
    - Inizio dell’attività di Progettazione.
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

  [_Angela Favaro_], [], [4], [], [1], [], [], [105€],
  [_Angela Canazza_], [3], [], [], [1], [], [], [115€],
  [_Riccardo Baldin_], [], [], [4], [1], [], [], [125€],
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

  [_Angela Favaro_], [], [], [4], [2], [], [], [150€],
  [_Angela Canazza_], [], [6], [], [], [], [], [120€],
  [_Riccardo Baldin_], [4], [], [], [], [], [], [120€],
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

  [_Angela Favaro_], [], [], [], [5], [], [3], [170€],
  [_Angela Canazza_], [], [], [], [6], [2], [], [180€],
  [_Riccardo Baldin_], [], [], [], [6], [2], [], [180€],
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
    - Continuazione dell’attività di Progettazione.
    - Ultime fasi di attività di Analisi dei Requisiti.
    Inoltre, in ordine cronologico:
    1. Modifiche o migliorie della documentazione prodotta per la milestone RTB a seguito dei suggerimenti proposti dopo la prima milestone.
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

  [_Angela Favaro_], [], [], [], [8], [], [], [200€],
  [_Angela Canazza_], [], [], [], [8], [], [], [200€],
  [_Riccardo Baldin_], [], [], [], [8], [], [], [200€],
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

  [_Angela Favaro_], [], [], [], [], [11], [5], [240€],
  [_Angela Canazza_], [], [], [], [], [], [10], [150€],
  [_Riccardo Baldin_], [], [], [], [], [9], [5], [210€],
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

  [_Angela Favaro_], [4], [], [], [], [], [], [120€],
  [_Angela Canazza_], [], [], [], [], [], [14], [210€],
  [_Riccardo Baldin_], [], [4], [], [], [], [], [80€],
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

  [_Angela Favaro_], [], [6], [], [], [], [5], [195€],
  [_Angela Canazza_], [], [], [], [], [19.5], [], [292,5€],
  [_Riccardo Baldin_], [], [], [], [], [], [15], [225€],
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

  [_Angela Favaro_], [], [], [], [], [10], [10], [300€],
  [_Angela Canazza_], [6], [], [], [], [], [], [180€],
  [_Riccardo Baldin_], [], [], [], [], [11], [5], [240€],
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

=== Sprint 2
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

=== Sprint 3
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

=== Sprint 4
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

=== Sprint 5
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

=== Sprint 6
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

=== Sprint 7
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

=== Sprint 8
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

=== Sprint 9
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

=== Sprint 10
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

=== Sprint 11
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

=== Sprint 12
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

=== Sprint 13
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
#pagebreak()
= Analisi e gestione dei rischi
Successivamente verranno illustrati:
- i rischi rilevati per il progetto;
- come pensiamo di prevenire tali rischi;
- come pensiamo di gestirli in caso si avverino.
== Identificazione dei rischi 
*Rischi legati ai requisiti*: \
- Comprensione errata dei requisiti;
- Assenza di priorità dei requisiti.

*Rischi tecnici*: \
- Strumenti e tecnologie sconosciute;
- Problemi di integrazione fra componenti;
- Qualità insufficiente del codice;
- Codice poco comprensibile;
- Test insufficienti;
- Gestione inadeguata della sicurezza.

*Rischi organizzativi*:\
- Mancato rispetto delle tempistiche;
- Rallentamento dovuto ad altri impegni personali o universitari;
- Distribuzione dei compiti non equilibrata;
- Scarso coordinamento del team;
- Mancanza di monitoraggio dello stato di avanzamento;
- Documentazione non aggiornata;
- Opinioni divergenti su decisioni da prendere.


== Analisi dei rischi
Ogni rischio ha una determinata probabilità di avverarsi, che può essere bassa, media o alta e un livello di impatto che ha sul progetto, che corrisponde alla gravità del rischio e può essere anch'esso basso, medio o alto. Inoltre, abbiamo elaborato un piano di mitigazione e un piano di contingenza per ogni rischio individuato.
=== Rischi legati ai requisiti

#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },  
  align: (left, center),
table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Comprensione errata dei requisiti* ]],
  [ *Descrizione*  ],
   align(left)[ Il team potrebbe non comprendere in pieno o addirittura individuare in maniera errata i requisiti richiesti dall’azienda con il rischio di avere poi discrepanze fra quello che il cliente aveva richiesto e ciò che è stato effettivamente sviluppato.],
  [ *Probabilità*  ],
  [ Bassa  ],
[ *Impatto*],
[Alto],
[ *Piano di mitigazione*],
align(left)[Il team ha avuto un meeting iniziale con l’azienda proponente in cui sono stati individuati alcuni requisiti. Inoltre, si impegna a usare gli user cases per evitare linguaggio ambiguo e a mantenere il contatto con l’azienda per confronti riguardanti i requisiti.],
[ *Piano di contingenza*],
align(left)[Convocare una riunione immediata per identificare i requisiti sbagliati, capire fino a che punto sono errati e se si può mantenere parte del codice sviluppato, calcolare le ore necessarie per sistemarli e l’eventuale impatto sul budget. ]
)
\
#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[* Assenza di priorità dei requisiti* ]],
  [ *Descrizione*  ],
  align(left)[  
 Ai requisiti potrebbe non essere assegnato, o essere assegnato erroneamente, un livello di priorità basato sulla loro importanza e la loro urgenza. Questo può portare a dare la precedenza a requisiti non fondamentali e di conseguenza essere causa di ritardi e sforamenti di budget. ],
  [ *Probabilità*  ],
  [Bassa  ],
[ *Impatto*],
[Medio],
[ *Piano di mitigazione*],
 align(left)[I membri del team discuteranno assieme in maniera approfondita il livello di priorità dei requisiti, per decidere a quali dare la precedenza],
[ *Piano di contingenza*],
 align(left)[Bloccare immediatamente lo sviluppo dei requisiti se si rivelano non di secondaria importanza per dedicarsi a quelli di massima priorità. Convocare una riunione per discutere nuovamente e rivalutare i livelli di priorità assegnati ai requisiti, ]

)
\
=== Rischi tecnici
#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Strumenti e tecnologie sconosciute*]],
  [ *Descrizione*  ],
    align(left)[ La maggior parte delle tecnologie necessarie per realizzare il progetto non sono mai state utilizzate dai membri del team e ciò comporta un importante rallentamento dovuto al tempo necessario per imparare a maneggiare i nuovi strumenti e a stime non totalmente accurate delle ore necessarie. ],
  [ *Probabilità*  ],
  [  Alta ],
[ *Impatto*],
[Medio],
[ *Piano di mitigazione*],
align(left)[Durante la pianificazione degli sprint, verranno tenuti in considerazione i tempi necessari per imparare a utilizzare i nuovi strumenti e i rallentamenti che possono comportare. \ Inoltre, ogni membro dovrà imparare da autodidatta come si usano e le best practices delle tecnologie utilizzate *prima* di iniziare ad utilizzarle per il codice.   ],
[ *Piano di contingenza*],
align(left)[In caso il problema si verifichi nelle fasi iniziali dell’utilizzo del nuovo strumento, si può chiamare un meeting e valutare un eventuale cambio di tecnologia. Se avviene nelle fasi successive, interrompere lo sviluppo del progetto per approfondire il funzionamento delle nuove tecnologie. ]
)
\ #table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[ *Problemi di integrazione fra componenti * ]],
  [ *Descrizione*  ],
    align(left)[ Le componenti sviluppate utilizzando tecnologie diverse potrebbero avere problemi di comunicazione causati da versioni diverse di librerie, mancanza di interfacce chiare o di consistenza di dati e altre discrepanze. Ciò potrebbe portare a malfunzionamenti o instabilità del sistema. ],
  [ *Probabilità*  ],
  [Media ],
[ *Impatto*],
[Alto],
[ *Piano di mitigazione*],
align(left)[Documentare le API e i formati dei dati fra tutti i componenti. \ Implementare il processo di Integrazione Continua.],
[ *Piano di contingenza*],
align(left)[]
)
\
#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[* Qualità insufficiente del codice*] ],
  [ *Descrizione*  ],
  align(left)[ Il codice prodotto non rispetta gli standard concordati dal team, è inefficiente o inaffidabile ],
  [ *Probabilità*  ],
  [ Media  ],
[ *Impatto*],
[Alto],
[ *Piano di mitigazione*],
align(left)[Il codice prodotto da un membro del team deve essere revisionato da almeno un altro membro del team e devono essere integrati strumenti per l’analisi statica del codice. La maggior parte del codice deve essere coperto da test. Inoltre, prima di usare nuovi linguaggi di programmazione, i membri dovranno studiare le loro best practices. ],
[ *Piano di contingenza*],
align(left)[Interrompere lo sviluppo dell’area del progetto coinvolta finché non si è identificato il problema e portato a un livello sufficiente la qualità del codice.]

)
\
#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Codice poco comprensibile* ]],
  [ *Descrizione*  ],
  align(left)[ La maniera in cui è scritto il codice ne rende difficile la sua lettura, la sua modifica e ne influenza negativamente la manutenibilità. Ciò può essere causato da assenza di documentazione, nomenclatura incoerente o insensata o da eccessiva complessità ],
  [ *Probabilità*  ],
  [  Media ],
[ *Impatto*],
[Alto],
[ *Piano di \mitigazione*],
align(left)[Concordare prima di iniziare a stendere codice quali sono le regole riguardanti lo stile, la nomenclatura e la documentazione riguardante il codice. Far sì che il codice scritto da un membro venga revisionato da almeno un altro membro.],
[ *Piano di contingenza*],
align(left)[Bloccare lo sviluppo di codice relativo alla parte illeggibile per dedicarsi alla riscrittura di tale codice seguendo le regole di stile e nomenclatura stabilite in precedenza. Se le regole sono state seguite ma il codice è lo stesso poco comprensibile, chiamare un meeting per rivalutare le regole scelte.]
)
\
#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
 table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Test insufficienti* ]],
  [ *Descrizione*  ],
  align(left)[ Il testing è inadeguato o incompleto, di conseguenza c’è il rischio di rilasciare codice difettoso e un sistema instabile. ],
  [ *Probabilità*  ],
  [  Media ],
[ *Impatto*],
[Alto],
[ *Piano di mitigazione*],
align(left)[Stabilire a priori e monitorare in fase si sviluppo le metriche di copertura e qualità del codice. \ Adottare il Test-Driven Development, scrivendo i test *prima* del codice da testare],
[ *Piano di contingenza*],
align(left)[Bloccare lo sviluppo del codice per cui non sono stati creati i test per dedicarsi alla loro implementazione.]
)
\

#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Gestione inadeguata della sicurezza *]],
  [ *Descrizione*  ],
  align(left)[  Il codice prodotto presenta vulnerabilità della sicurezza, che possono essere sfruttate da utenti malevoli. ],
  [ *Probabilità*  ],
  [  Media ],
[ *Impatto*],
[Alto],
[ *Piano di mitigazione*],
align(left)[Verificare che le librerie utilizzate non contengano vulnerabilità. \ Far sì che la maggior parte del codice sia coperto da test di sicurezza. Assicurarsi che il codice prodotto rispetti almeno la top 10 delle norme OWASP. Aggiungere criteri di revisione del codice relativi alla verifica della presenza di potenziali vulnerabilità. ],
[ *Piano di contingenza*],
align(left)[Identificare la parte di codice che presenta la vulnerabilità e interromperne lo sviluppo finché non è sistemata.]
)
\
=== Rischi organizzativi

#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Mancato rispetto delle tempistiche *]],
  [ *Descrizione*  ],
  align(left)[Uno o più membri non riescono a finire i compiti a loro assegnati nei tempi prestabiliti, causando ritardi nello sviluppo del codice e nel raggiungimento delle milestones.  ],
  [ *Probabilità*  ],
  [Alta],
[ *Impatto*],
[Medio],
[ *Piano di mitigazione*],
align(left)[Aggiungere dei "periodi cuscinetto" nella pianificazione temporale degli sprint. Avvertire gli altri membri del gruppo in caso di rallentamenti e confrontarsi se si presentano difficoltà. ],
[ *Piano di contingenza*],
align(left)[Chiamare una riunione per valutare le cause del ritardo, se i compiti assegnati sono realistici e, in caso di troppi ritardi accumulati, per capire se ci sono dei requisiti non obbligatori a cui si può rinunciare .]

)
\

#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Rallentamento dovuto ad altri impegni personali o universitari*] ],
  [ *Descrizione*  ],
  align(left)[ Uno o più membri potrebbero non riuscire a rispettare le tempistiche prestabilite a causa di impegni di natura personale o universitaria, portando a ritardi nello sviluppo del codice e nel raggiungimento delle milestones.  ],
  [ *Probabilità*  ],
  [  Alta ],
[ *Impatto*],
[Medio],
[ *Piano di mitigazione*],
align(left)[Avvertire gli altri membri se si è a conoscenza di periodi futuri in cui si è poco disponibili. \ Tenere conto dei periodi in cui la produttività rischia di essere bassa a causa degli esami universitari e pianificare attività meno intensa nei loro sprint. \ Aggiungere dei "periodi cuscinetto" nella pianificazione temporale. ],
[ *Piano di contingenza*],
align(left)[Riassegnare le attività critiche e/o urgenti dei membri non disponibili a membri con più disponibilità temporale, mettendo in pausa lo sviluppo di codice meno importante.\ In caso di troppi ritardi accumulati, convocare un meeting per capire se ci sono dei requisiti non obbligatori a cui si può rinunciare.\ Aumentare la frequenza delle riunioni per rilevare subito eventuali ulteriori problemi. ]

)
\

#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Distribuzione dei compiti non equilibrata*]],
  [ *Descrizione*  ],
  align(left)[ Vengono commessi errori di distribuzione dei compiti a causa dell’inesperienza nel valutare le tempistiche relative alle tasks dei membri del team e della sottovalutazione o sopravvalutazione del tempo necessario per finire alcuni compiti. Questo può portare i membri con un carico maggiore a non riuscire a rispettare le tempistiche o a presentare codice di qualità inferiore. ],
  [ *Probabilità*  ],
  [ Bassa  ],
[ *Impatto*],
[Basso],
[ *Piano di mitigazione*],
align(left)[Fare le stime del tempo necessario insieme e non assegnare questo compito a un’unica persona. \ Imporre un limite al numero di attività che una persona può svolgere nello stesso sprint. \ Confrontarsi nelle riunioni settimanali riguardo la mole di lavoro portata a termine e il tempo impiegato per farlo.],
[ *Piano di contingenza*],
align(left)[Controllare la qualità del codice prodotto da membri sovraccaricati. \ Convocare una riunione per cambiare la distribuzione dei compiti dello sprint attuale ed eventualmente quelli successivi in modo da renderla più equa, assegnando meno compiti a chi ha già quelli che impiegano più tempo. ]
)
\

#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Scarso coordinamento del team*]],
  [ *Descrizione*  ],
  align(left)[ Il team non è organizzato adeguatamente, non c’è una assegnazione chiara dei compiti o delle date da rispettare per le scadenze. Ci sono comunicazione e coordinazione non sufficienti. ],
  [ *Probabilità*  ],
  [ Bassa ],
[ *Impatto*],
[Alto],
[ *Piano di mitigazione*],
align(left)[Pianificare fin da subito gli incontri settimanali (in giorni e  orari prestabiliti) e stabilire le piattaforme di comunicazione dove tenersi aggiornati sui progressi, i dubbi e gli argomenti da discutere relativi al progetto.   ],
[ *Piano di contingenza*],
align(left)[Aumentare la frequenza delle riunioni per aumentare il controllo e il coordinamento dei membri del team. \ Stabilire scadenze precise per i vari compiti.]

)
\

#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Mancanza di monitoraggio dello stato di avanzamento*]],
  [ *Descrizione*  ],
  align(left)[  I membri non vengono chiamati a rendere conto del loro progresso e del loro rendimento. Questo porta all’individuazione tardiva di problemi ed errori e può portare i membri a progredire più lentamente e ai ritardi individuali di accumularsi. ],
  [ *Probabilità*  ],
  [Media],
[ *Impatto*],
[Alto],
[ *Piano di mitigazione*],
align(left)[ Pianificare minimo una riunione a settimana in cui i membri aggiornano gli altri sul proprio stato di avanzamento. ],
[ *Piano di contingenza*],
align(left)[]

)

\
#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Documentazione non aggiornata*]],
  [ *Descrizione*  ],
  align(left)[ La documentazione viene trascurata. non viene aggiornata con le decisioni prese dal team e di conseguenza non rappresenta lo stato attuale del progetto. In questa maniera, il team potrebbe perdere tempo a discutere nuovamente aspetti già decisi in precedenza che dovrebbero essere stati scritti nella documentazione o utilizzare strumenti, nomenclatura, metodi di revisione, ecc. diversi da quelli concordati.  ],
  [ *Probabilità*  ],
  [ Bassa  ],
[ *Impatto*],
[Medio],
[ *Piano di mitigazione*],
align(left)[Il responsabile ha il compito di tenere aggiornata la documentazione e di scriverci ogni decisione presa dal team. \ Un compito non viene considerato completato finché la documentazione non è stata aggiornata adeguatamente.],
[ *Piano di contingenza*],
align(left)[Individuare tutta la documentazione obsoleta e bloccare lo svolgimento dei compiti non urgenti per dedicarsi al suo aggiornamento. ]

)
\
#table(
  columns: 2,
   fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*Opinioni divergenti su decisioni da prendere* ]],
  [ *Descrizione*  ],
  align(left)[ I membri del team non concordano su determinate decisioni da prendere, come gli strumenti da utilizzare, le regole e best practices da seguire, il modo in cui implementare alcune funzioni. Questo può portare a un impiego eccessivo di risorse per la discussione su che decisioni prendere e causare ritardi.],
  [ *Probabilità*  ],
  [  Media ],
[ *Impatto*],
[Basso],
[ *Piano di mitigazione*],
align(left)[Stabilire un tempo massimo per le discussioni relative a decisioni complicate da prendere. Se non si riesce a giungere a una decisione unanime nel tempo prestabilito, la scelta viene presa con una votazione o dal membro più esperto.],
[ *Piano di contingenza*],
align(left)[Per le decisioni non compiute entro il tempo massimo, viene indetta una votazione: la scelta votata dalla maggioranza andrà presa. Se un membro è più esperto nel campo di cui si sta discutendo, il resto del gruppo può decidere di far valere di più il suo voto o di lasciar prendere direttamente a questa persona la decisione.]
)

== Monitoraggio dei rischi
Il *responsabile* monitora lo stato di tutti i rischi; i *programmatori* e i *revisori* hanno parziale responsabilità nell’individuazione di rischi tecnici. \
Per assicurarsi di individuare l’avveramento di un rischio il prima possibile si eseguiranno le seguenti attività:
- *Riunioni periodiche* bimensili in cui si verifica lo stato dei rischi individuati, si discute se i piani di mitigazione e di contingenza sono efficaci ed eventualmente si individuano nuovi rischi, dopo delle quali si aggiorna l’analisi dei rischi del Piano di Progetto. In sostanza, si fa una rivalutazione periodica dei rischi.
- Un continuo *aggiornamento del registro dei rischi*, dove vengono documentati tutti i rischi che si concretizzano durante lo svolgimento del progetto.
- Il *Test Driven Development* permette una più rapida individuazione dell’avveramento dei rischi tecnici, il che causa danni molto più contenuti rispetto a un’individuazione tardiva.
