#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart

#v(1fr)
#align(center, [
  #image("../../asset/logo.svg")
  #set text(lang: "it")

  #v(1.5cm)

  #text(size: 25pt, weight: "bold")[Piano di Progetto]

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
  table.header([*Versione*], [*Data*], [*Autore*], [*Verificatore*], [*Descrizione*]),

  "0.1.6",
  "2026/01/05", 
  "Amerigo Vegliante", 
  "", 
  "Aggiunto trascorso Sprint 5.",

  "0.1.5",
  "2025/12/31", 
  "Nicola Simionato", 
  "", 
  "Aggiunto trascorso Sprint 1 (sezione 5.4.1).",

  "0.1.4",
  "2025/12/29", 
  "Angela Favaro", 
  "Amerigo Vegliante", 
  "Aggiunto trascorso Sprint 4",

  "0.1.3", 
  "2025/12/22", 
  "Angela Favaro", 
  "Amerigo Vegliante", 
  "Conclusione capitolo ‘Analisi e gestione dei rischi’",

  "0.1.2", 
  "2025/12/21", 
  "Alberto Reginato", 
  "Amerigo Vegliante", 
  "Aggiornamento sprint trascorso",

  "0.1.1", 
  "2025/12/17", 
  "Angela Favaro", 
  "Amerigo Vegliante", 
  "Uniformazione documento allo standard del gruppo",

  "0.1.0",
  "2025/12/14",
  "Laura Venturini",
  "Nicola Simionato",
  "Aggiunti capitoli ‘Processi e metodologie’, ‘Risorse e strumenti’ e ‘Analisi e gestione dei rischi’",

  "0.0.5", 
  "2025/12/14", 
  "Angela Favaro", 
  "Nicola Simionato", 
  "Aggiunta diagrammi PERT e correzione analisi Sprint",

  "0.0.4", 
  "2025/12/08", 
  "Angela Favaro", 
  "Nicola Simionato", 
  "Calcolo dei costi",

  "0.0.3", 
  "2025/12/03", 
  "Angela Favaro", 
  "Alberto Reginato", 
  "Suddivisione e stesura sprint per PB",

  "0.0.2", 
  "2025/12/02", 
  "Angela Favaro", 
  "Alberto Reginato", 
  "Suddivisione e stesura sprint per RTB",

  "0.0.1", 
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
  target: figure.where(kind: table),
)

#pagebreak()

Indice delle figure

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
        stroke: none,
      )],
      [Piano di Progetto v. 0.1.1],
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
*Code Guardian* è pensato come strumento di supporto per i team di sviluppo, da utilizzare durante l’intero ciclo di vita dei progetti che l’utente realizzerà all’interno di un’organizzazione. \ Verranno utilizzati degli $text("agenti")_G$ che consentono l’analisi della documentazione e del codice del progetto che si trova in una repository $text("Git Hub")_G$. Ogni agente avrà un diverso ruolo all’interno della piattaforma. \
Gli agenti fino ad ora pensati per _Code Guardian_ sono:
1. Agente per il controllo del codice.
2. Agente per il controllo della documentazione.
3. Agente per il controllo delle prime 10 linee guida $text("OWASP")_G$.
\ Gli utenti / $text("attori")_G$ presi in esame per la creazione del progetto sono di tre tipi (lavoreranno insieme all’interno di uno stesso progetto):
- $text("Business Owner")_G$;
- $text("Project Manager")_G$;
- $text("Sviluppatore")_G$
Per ognuno dei tre verrà fornita un’interfaccia consona alle funzioni che più possono interessare loro riguardo lo stato di uno o più progetti di sviluppo. \
\ Grazie a meccanismi $text("AI")_G$ e $text("LLM")_G$ , in base al dominio dell’utente, verranno:
- visualizzati gli errori rilevati;
- forniti suggerimenti agli errori rilevati;
- forniti suggerimenti per il miglioramento del progetto;
- visualizzati dati statistici di interesse sul progetto.
\
#underline[Gli ambiti tecnici di progetto sono quindi:]
- implementazione e addestramento di agenti tramite utilizzo di _AI_ e _LLM_;
- implementazione di una $text("web-app")_G$.

[Aggiunta dei linguaggi e tecnologie che andremo ad utilizzare]

== Ruoli interni al documento
Questo documento dovrà periodicamente essere aggiornato dal $text("Responsabile")_G$ e validato dal $text("Verificatore")_G$.  \
Ad ogni $text("Sprint Retrospective")_G$ si aggiornerà il _Trascorso_ con:
- un riassunto di ciò che è accaduto durante lo $text("sprint")_G$, diviso per punti;
- le problematiche incontrate;
- le misure di mitigazione attuate;
- gli eventuali aggiornamenti all’_Analisi dei rischi_;
- i $text("Diagrammi di GANTT")_G$ utili alla comprensione immediata dell’avanzamento del progetto.
Verrà conseguentemente aggiornata l’_Analisi dei Rischi_ con tutti i nuovi rischi futuri e/o presenti e le misure di mitigazione attuabili e/o da attuare.
#pagebreak()


= Processi e metodologie
== Modello di processo scelto
Abbiamo scelto di lavorare al progetto utilizzando l’approccio $text("Agile")_G$ basato sul framework $text("Scrum")_G$. È stato scelto tale modello per le seguenti ragioni:
- Grazie a questo metodo si possono limitare gli sprechi di risorse: con la suddivisione di task molto granulari, l’introduzione di un errore è più facilmente individuabile e quindi è meno frequente che l’errore si propaghi in grosse parti del progetto.
- Lo stato del progetto, la suddivisione dei task da fare, le ore a disposizione e gli aspetti migliorabili sono chiari a tutti grazie alla $text("Sprint Review")_G$, allo Sprint Retrospective e allo $text("Sprint Planning")_G$.
- Grazie allo Sprint Retrospective si può migliorare l’efficacia del team durante lo svolgimento del progetto e capire in quali aspetti è lacunoso.
- Permette una gestione dei rischi più facile e il loro continuo monitoraggio, diminuendo la probabilità che si verifichino.
- Il rilascio incrementale permette all’azienda cliente di vedere come sta avanzando il progetto.
- Feedback più veloce: questo metodo impone un contatto più frequente con l’azienda proponente, permettendo di avere un riscontro sull'adeguatezza dei requisiti individuati e del codice per implementare tali requisiti, senza essere costretti a modificare tutto alla fine.
== Struttura del ciclo di vita
Dato che utilizziamo la metodologia Scrum, il ciclo di vita del progetto è suddiviso in brevi cicli autosufficienti chiamati Sprint. \ Abbiamo stabilito che la durata di uno Sprint sarà di una settimana dal 24 novembre 2025 all’11 gennaio 2026 e poi dal 23 febbraio al 15 marzo 2026; sarà invece di due settimane durante il periodo di sessione d’esami che va dal 12 gennaio al 22 febbraio 2026. \ Per ogni Sprint, sono previsti:
- uno *Sprint Planning*, in cui si pianifica lo Sprint e si stabiliscono i suoi obiettivi, che vengono scritti nello *$text("Sprint Backlog")_G$*;
- uno *Sprint Review*, in cui si esamina il lavoro completato dopo uno Sprint e si raccoglie feedback e si aggiorna il *$text("Product Backlog")_G$*, che contiene tutte le task da completare per completare il progetto;
- uno *Sprint Retrospective*, in cui il team ragiona su ciò che può essere migliorato in confronto allo Sprint appena finito.
- un  aggiornamento asincrono via Telegram ogni tre giorni al posto del Daily Scrum per monitorare l’avanzamento del lavoro.

#pagebreak()

= Risorse e strumenti
Questa sezione si occupa di descrivere quali sono e come vengono gestiti gli strumenti e le risorse necessari per realizzare il progetto.
== Risorse umane
La gestione delle ore fra i membri del progetto è spiegata nella @Organizzazione (Organizzazione team).
== Risorse materiali
Ogni membro del team userà il proprio computer per lavorare al progetto. Inoltre, in caso di necessità, il team potrà usare i computer messi a disposizione dall’Università di Padova nelle aule informatiche:
- _LabP036_ e _LabP140_ presso il _Complesso Paolotti_.
- _LabTA_ presso _Torre Archimede_.
== Strumenti Software
[Da aggiornare con Glossario quando saranno definire]
Gli strumenti di sviluppo che abbiamo deciso di usare sono:
- *React* e *Typescript* per la parte Frontend;
- *Node.js* per la parte Backend;
- *$text("MongoDB")_G$* per il Database;
- *$text("AWS")_G$* per l’architettura Cloud.
Per il controllo della versione usiamo *GitHub*.\
Per implementare la Continuous Integration e la Continuous Delivery usiamo *GitHub Actions*.\ \
Per la redazione dei documenti il linguaggio scelto è *Typst*.\ \
Gli strumenti per la comunicazione sono invece:
- *$text("Discord")_G$* per le riunioni telematiche;
- *$text("Telegram")_G$* per avere un canale di comunicazione asincrona fra i  membri del team;
- *$text("Slack")_G$* e *$text("Gmail")_G$* per comunicare con l’azienda proponente.
#pagebreak()

= Organizzazione del team
#label("Organizzazione")
Ad ogni suddivisione di periodo (_sprint_) i membri turneranno; in questo modo tutti avranno modo di assumere e sperimentare i panni dei ruoli previsti per lo sviluppo di un progetto. \ #underline[Le ore complessive calcolate a persona] sono *novantadue*. \ A queste va escluso il tempo di apprendimento personale; pertanto, sebbene vengano segnate poche ore di lavoro effettivo, tutto il team seguirà dei ritmi di intensità _alta_ (10 - 20 ore settimanali individuali). \ Sono calcolati anche alcuni sprint ad intensità inferiore a causa della sessione d’esami invernale che si svolgerà dal _19 Gennaio 2026_ al _21 Febbraio 2026_. \ Non tutti i membri svolgeranno esattamente le stesse ore per ciascun ruolo. Questo è naturale in quanto per ogni sprint verrà eseguito un carico ed un’intensità di lavoro differenti. Risulta difficile uniformare perfettamente la ripartizione delle ore. \ l’opzione ritenuta più consona è quella di avvicinare tutti i membri ad un’uniformità di ore per ruolo anche se non esattamente coincidenti. \ Le ore complessive vengono ripartite tra i membri del gruppo come segnalato in @tab:OreTotIndividuali.
#figure(
  caption: [Stima delle ore individuali per ruolo in totale.],
  kind: table,
)[
  #table(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #table(
      columns: 8,
      fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
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
      [*Ore totali*], [*49*], [*56*], [*112*], [*105*], [*148*], [*174*],
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
      outer-label: (content: "%", radius: 120%),
    )
  })]] <fig:torta>


#pagebreak()

= Pianificazione temporale
Verrà qui riportata la pianificazione ritenuta più consona per il gruppo nel corso del tempo.\ Sono stati calcolati un totale di _*tredici*_ sprint. \ La divisione del paragrafo in due sotto-paragrafi riporta:
1. *Preventivo a finire:* pianificazione del lavoro ideale, secondo tempistiche ritenute ottimali.
2. *Trascorso:* ciò che realmente è accaduto durante gli sprint.

== Calendario di massima
#figure(
  caption: [Tappe principali del calendario di progetto],
)[
  #image("../../asset/timeline_generale.png"),
]<fig:CalendarioProgetto>
== $text("Milestones")_G$ programmate
Di seguito elencate le milestone con i punti da considerare per poterle ritenere concluse.
1. _$text("UCB (Use Case Baseline)")_G$_:
  - Conclusione stesura degli Use Case.
2. _$text("RTB (Requirements & Technology Baseline)")_G$_:
  - Documento _Analisi dei Requisiti_ (tecnologie, i framework, le librerie adottate, e ne dimostra adeguatezza e interoperabilità).
  - _$text("Proof of Concept")_G$_, demo eseguibile.
3. _$text("PAB (Progettazione & Analisi Baseline)")_G$_:
  - Conclusione attività di progettazione.
  - Conclusione stesura definitiva _Analisi dei requisiti_.
4. _$text("PB (Product Baseline)")_G$_:
  - Consegna del progetto validato.
== Preventivo a finire
Il preventivo rappresenta la pianificazione ideale dei tempi e dei ruoli all’interno del team. In questo sotto-paragrafo verranno esplicitati:
- Le attività che si dovranno svolgere ad ogni sprint.
- I ruoli che ogni membro dovrà rappresentare. \
Questo è utile soprattutto in fase di _Sprint Retrospective_ per comprendere se le tempistiche sono state rispettate o se, invece, c’è qualcosa che blocca il lavoro.
=== UCB - _Use Case Baseline_
#figure(
  caption: [$text("Diagramma di PERT")_G$ della milestone UCB],
)[
  #image("../../asset/PERT-UCB.png"),
]<PERT-UCB>
#underline[La data di inizio attività] per il conseguimento della prima milestone (_UCB_) è *24 Novembre 2025*. La suddetta data è stata scelta insieme all’azienda appaltante a seguito del nostro primo incontro in data _20 Novembre 2025_. \ #underline[La data ultima] per il conseguimento della milestone è prevista in data *28 Dicembre 2025*

==== Sprint 1
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    Inizio dell’attività di lavoro seguito del primo incontro con il committente.
    - Studio in preparazione dell’attività di Analisi dei Requisiti.
    - Primo approccio di gruppo all’analisi (tramite incontri interni organizzati come brainstorming).
    - Studio della documentazione adeguata al progetto.
    - Attività di analisi dei $text("Casi d'uso")_G$ preliminare.
  ],
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
        } else if (row == 7 and col == 0) {
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
  [_Intervallo temporale_], [1 Dicembre 2025 - 7 Dicembre 2025],

  [_Giorni di sprint_], [7],

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
  ],
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [1], [], [2], [], [], [], [80€],
    ) ]] <tab:PrevisioneSprint2>

#underline[Spese della settimana]: 435€ \ #underline[Spesa totale]: *687,5€*

==== Sprint 3
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [8 Dicembre 2025 - 14 Dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    - Attività di formazione su $text("Backend")_G$ da parte dell’azienda committente.
    - Continuazione da parte del team completo dell’Analisi dei Requisiti (con presenza anche di Responsabile ed Amministratore).
    - Avanzamento stesura dei documenti per milestone RTB.
    - Studio individuale sulle tecnologie discusse dal team.
  ],
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
        } else if (row == 7 and col == 0) {
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
      [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
      [_Alberto Reginato_], [3], [], [], [], [], [1,5], [112,5€],
      [_Nicola Simionato_], [], [3], [], [], [], [], [60€],
      [_Amerigo Vegliante_], [], [], [4], [], [], [], [100€],
      [_Laura Venturini_], [], [], [4], [], [], [], [100€],
    ) ]] <tab:PrevisioneSprint3>

#underline[Spese della settimana]: 672,5€ \ #underline[Spesa totale]: *1.360€*

==== Sprint 4
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [15 Dicembre 2025 - 21 Dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    - Attività di formazione su Frontend, AWS ed introduzione alla parte AI da parte dell’azienda committente.
    - Continuazione di:
      - Analisi dei Requisiti.
      - Stesura della documentazione.
    - Revisione sulle decisioni prese riguardo alle tecnologie adatte al progetto.
    - Continuazione stesura di Use Case.
    - Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
  ],
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [4], [], [], [], [100€],
    ) ]] <tab:PrevisioneSprint4>

#underline[Spese della settimana]: 740€ \ #underline[Spesa totale]: *2100€*

==== Sprint 5
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [22 Dicembre 2025 - 28 Dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    - Scelta definitiva delle tecnologie da utilizzare per il progetto.
    - Inizio studio delle tecnologie scelte.
    - Continuazione dell’attività di Analisi dei Requisiti.
    - Continuazione stesura dei documenti.
    _Milestone "UCB":_
    Aver completato i Casi d’Uso.
  ],
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [2], [], [], [2], [80€],
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
  [_Intervallo temporale_], [29 Dicembre 2025 - 4 Gennaio 2026],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    - Inizio attività di produzione del _$text("Proof of Concept (PoC)")_G$_.
    - Continuazione stesura della documentazione.
    - Continuazione attività di Analisi dei Requisiti.
    - Inizio dell’attività di Progettazione.
    - Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
  ],
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [], [4], [], [], [100€],
    ) ]] <tab:PrevisioneSprint6>

#underline[Spese della settimana]: 905€ \ #underline[Spesa totale]: *3.685€*

==== Sprint 7
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [5 Gennaio 2026 - 11 Gennaio 2026],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    In questo sprint tutti i ruoli devono essere operativi e il team deve dimostrare la capacità di generare valore per lo sviluppo del progetto.
    - Continuazione di sviluppo e verifica del PoC.
    - Continuazione e conclusione stesura della documentazione.
    - Continuazione attività di Analisi e Progettazione.
  ],
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [], [5], [], [2.5], [162,5€],
    ) ]] <tab:PrevisioneSprint7>

#underline[Spese della settimana]: 1.050€ \ #underline[Spesa totale]: *4.735€*

==== Sprint 8
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [12 Gennaio 2026 - 25 Gennaio 2026],

  [_Giorni di sprint_], [14],

  [_Attività previste_],
  [
    Ultimo sprint previsto prima della consegna del _PoC_.
    - Conclusione dello sviluppo e della verifica del PoC.
    - Continuazione attività di Progettazione.
    - Revisione e validazione dei documenti prodotti per la milestone RTB.
    - Colloquio conclusivo per la revisione del progetto con i professori.
    - Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
  ],
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [6], [], [], [], [], [120€],
    ) ]] <tab:PrevisioneSprint8>

#underline[Spese della settimana]: 1.200€ \ #underline[Spesa totale]: *5.935*
=== PAB - _Progettazione & Analisi Baseline_
#underline[La data di inizio attività] per il conseguimento della terza milestone (_PAB_) è *26 Gennaio 2026*, a seguito dei colloqui con i professori per la conferma del superamento dei requisiti della milestone RTB. \ #underline[La data ultima prevista] per gli sprint del PAB è *22 Febbraio 2026*.

==== Sprint 9
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [26 Gennaio 2026 - 8 Febbraio 2026],

  [_Giorni di sprint_], [14],

  [_Attività previste_],
  [
    - Continuazione dell’attività di Progettazione.
    - Ultime fasi di attività di Analisi dei Requisiti.
    Inoltre, in ordine cronologico:
    1. Modifiche o migliorie della documentazione prodotta per la milestone RTB a seguito dei suggerimenti proposti dopo la prima milestone.
    2. Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [6], [], [3,5], [], [], [], [267,5€],
    ) ]] <tab:PrevisioneSprint9>

#underline[Spese della settimana]: 1.332,5€ \ #underline[Spesa totale]: *7.267,5€*

==== Sprint 10
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [9 Febbraio 2026 - 22 Febbraio 2026],

  [_Giorni di sprint_], [14],

  [_Attività previste_],
  [
    - Conclusione attività di Analisi e Progettazione.
    - Studio della documentazione necessaria per la prossima milestone _PB_.
    - Sviluppo Backend e verifica del codice prodotto.
    - Sviluppo Frontend e verifica del codice prodotto.
    - $text("Training degli agenti")_G$.
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [], [5], [8], [], [245€],
    ) ]] <tab:PrevisioneSprint10>

#underline[Spese della settimana]: 1.545€ \ #underline[Spesa totale]: *8.812,5€*

=== PB - _Product Baseline_
#underline[La data di inizio attività] per il conseguimento dell ultima milestone (_PAB_) è *23 Febbraio 2026*. \ #underline[La data ultima prevista] per il conseguimento della milestone PB e, di conseguenza, per la consegna del progetto è il *15 Marzo 2026*.
==== Sprint 11
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [23 Febbraio 2026 - 1 Marzo 2026],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    - Sviluppo della documentazione per la milestone _PB_.
    - Sviluppo Backend e verifica del codice prodotto.
    - Sviluppo Frontend e verifica del codice prodotto.
    - Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [], [], [], [11], [165€],
    ) ]] <tab:PrevisioneSprint11>

#underline[Spese della settimana]: 1.092,5€ \ #underline[Spesa totale]: *9.905€*

==== Sprint 12
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [2 Marzo 2026 - 8 Marzo 2026],

  [_Giorni di sprint_], [7],

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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [], [], [15], [], [225€],
    ) ]] <tab:PrevisioneSprint12>

#underline[Spese della settimana]: 1.545€ \ #underline[Spesa totale]: *11.450€*

==== Sprint 13
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [9 Marzo 2026 - 15 Marzo 2026],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    Ultimo sprint previsto.
    - Conclusione attività di sviluppo e validazione Frontend e Backend.
    - Conclusione stesura documentazione adeguata alla consegna del progetto.
    - Validazione dei risultati prodotti durante gli Sprint.
    - Revisione finale del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
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
        } else if (row == 7 and col == 0) {
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
      [_Laura Venturini_], [], [], [], [], [], [8], [120€],
    ) ]] <tab:PrevisioneSprint13>

#underline[Spese della settimana]: 1.410€ \ #underline[Spesa totale]: *12.845€*

== Trascorso
=== Sprint 1
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],
  [_Responsabile_], [Nicola Simionato],
  [_Giorni di sprint_], [7],

  [_Attività Svolte_],
  [
    1. Individuazione e studio documenti necessari per la RTB.
    2. Studio individuale dei Casi d'Uso, tramite appunti e risorse online.
    3. Riunione interna per fare brainstorming in seguito all'incontro con la proponente.
    4. Discussione sulle possibile tecnologie da usare.

  ],

  [_Rischi incontrati_],
  [
    1. Dubbi riguardo sintassi e granularità dei Casi d'Uso.
  ],

  [_Mitigazione_],
  [
    1. Richiesta di colloquio con il Professore Cardin.
  ],
)

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 2],
  )[
  #image("../../asset/GANTT/sprint1-gantt.png")
  ]<GANTT-Sprint1>


=== Sprint 2
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [1 Dicembre 2025 – 7 Dicembre 2025],
  [_Responsabile_], [Laura Venturini],
  [_Giorni di sprint_], [7],

  [_Attività Svolte_],
  [
  1. Studio individuale della sintassi e l’utilizzo dei Casi d’Uso.
  2. Inizio stesura del Piano di Progetto.
  3. Inizio stesura del Piano di Qualifica.
  4. Inizio stesura delle Norme di Progetto.
  ],

  [_Rischi incontrati_],
  [
    1. Mancanza di monitoraggio dello stato di avanzamento.
    2. Difficoltà nella comprensione della sintassi degli Use Case.
  ],

  [_Mitigazione_],
  [
    1. Comunicazione tra i membri del team per via telematica per cercare di monitorare lo stato di avanzamento. 
  ]
)

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 2],
  )[
  #image("../../asset/GANTT/sprint2-gantt.png")
  ]<GANTT-Sprint2>

=== Sprint 3
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [8 Dicembre 2025 - 14 Dicembre 2025],
  [_Responsabile_], [Alberto Reginato],
  [_Giorni di sprint_], [7],

  [_Attività Svolte_],
  [
    1. Formazione con l'azienda proponente su backend;
    2. Proseguimento stesura del PdP, AdR, PdQ e NdP;
    3. Aggiornamento WoW, Glossario e sito;
    4. Organizzazione milestones e Project Board.

  ],

  [_Rischi incontrati_],
  [
    1. Modellazione errata degli Use Case;
    2. Mancanza di monitoraggio dello stato di avanzamento.
    3. Strutturare in modo scorretto la documentazione. 
  ],

  [_Mitigazione_],
  [
    1. Consultazione con il professore per chiarire i dubbi riguardanti la documentazione;
    2. Creazione Project Board ed issues per monitorare lo stato di avanzamento dei membri del team.
  ]
)

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 3],
  )[
  #image("../../asset/GANTT/sprint3-gantt.jpg")
  ]<GANTT-Sprint3>

=== Sprint 4
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [15 Dicembre 2025 – 21 Dicembre 2025],
  [_Responsabile_], [Angela Favaro],
  [_Giorni di sprint_], [7],

  [_Attività Svolte_],
  [
    1. Formazione con l'azienda proponente su Frontend, AWS ed AI;
    2. Continuazione stesura documentazione PdP, AdR e NdP;
    3. Continuazione stesura Use Case;
    4. Accorpamento documenti WoW e NdP 
    5. Aggiornamento Glossario.
  ],
  [_Rischi incontrati_],
  [
    1. RO1 - Mancato rispetto delle tempistiche (@tab:RO1);
    2. RO4 - Scarso coordinamento del team (@tab:RO4);
    3. RO5 - Mancanza di monitoraggio dello stato di avanzamento (@tab:RO5).
  ],
  [_Mitigazione_],
  [
    1. Implementato un utilizzo più efficiente della dashboard di progetto.
    2. Issue assegnate all'inizio di ogni sprint da parte del responsabile di sprint.
    3. Le Issue assegnate si riferiscono al periodo di sprint e devono essere completate entro la fine dello sprint.
  ]
)

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 4],
  )[
  #image("../../asset/GANTT/sprint4-gantt.png")
  ]<GANTT-Sprint4>

=== Sprint 5
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [22 Dicembre 2025 – 28 Dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività Svolte_],
  [
    1. Continuazione stesura documentazione: PdP, AdR e NdP;
    2. Continuazione stesura Use Case e finitura della sezione Developer;
    3. Inizio stesure Use Case per sezioni opzionali (Business Owner, Project Manager);
    4. Aggiornamento Glossario.
  ],

  [_Rischi incontrati_],
  [
    1. Mancato rispetto delle tempistiche (@tab:RO1);
    2. RO2 Rallentamento dovuto ad altri impegni personali o universitari (@tab:RO2);
  ],

  [_Mitigazione_],
  [
    1. Utilizzo di tempo di slack nello sprint successivo per poter finire, anche se in ritardo rispetto le tempistiche previste, la milestone UCB.
  ]
)

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 4],
  )[
  #image("../../asset/GANTT/sprint5-gantt.png")
  ]<GANTT-Sprint5>

=== Sprint 6
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)

=== Sprint 7
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)

=== Sprint 8
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)

=== Sprint 9
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)

=== Sprint 10
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)

=== Sprint 11
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)

=== Sprint 12
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)

=== Sprint 13
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 Novembre 2025 – 30 Novembre 2025],

  [_Giorni di sprint_], [7],

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

  [_GANTT Diagram_],
  [
    [_Inserire immagine_]
  ],
)
#pagebreak()
= Analisi e gestione dei $text("rischi")_G$
Successivamente verranno illustrati:
- i rischi rilevati per il progetto;
- come pensiamo di prevenire tali rischi;
- come pensiamo di gestirli in caso si avverino.

== Identificazione dei rischi
*Rischi legati ai requisiti*: \
- RR1 - Comprensione errata dei requisiti (@tab:RR1).
- RR2 - Assenza di priorità dei requisiti (@tab:RR2).

*Rischi tecnici*: \
- RT1 - Strumenti e tecnologie sconosciute (@tab:RT1).
- RT2 - Problemi di integrazione fra componenti (@tab:RT2).
- RT3 - Qualità insufficiente del codice (@tab:RT3).
- RT4 - Codice poco comprensibile (@tab:RT4).
- RT5 - Test insufficienti (@tab:RT5).
- RT6 - Gestione inadeguata della sicurezza (@tab:RT6).

*Rischi organizzativi*:\
- RO1 - Mancato rispetto delle tempistiche (@tab:RO1).
- RO2 - Rallentamento dovuto ad altri impegni personali o universitari (@tab:RO2).
- RO3 - Distribuzione dei compiti non equilibrata (@tab:RO3).
- RO4 - Scarso coordinamento del team (@tab:RO4).
- RO5 - Mancanza di monitoraggio dello stato di avanzamento (@tab:RO5).
- RO6 - Documentazione non aggiornata (@tab:RO6).
- RO7 - Opinioni divergenti su decisioni da prendere (@tab:RO7).
- RO8 - Mancanza di confronto con l'azienda (@tab:RO8).


== Analisi dei rischi
Ogni rischio ha:
- una determinata probabilità di avverarsi, che può essere bassa, media o alta;
- un livello di impatto che ha sul progetto, che corrisponde alla gravità del rischio e può essere anch'esso basso, medio o alto.
Abbiamo inoltre elaborato un _piano di $text("mitigazione")_G$_ e un _piano di $text("contingenza")_G$_ per ogni rischio individuato.
=== Rischi legati ai requisiti
#figure(
  caption: [Rischio Comprensione errata dei requisiti],
  kind: table,
)[
  #table(
    columns: 2,
    fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RR1: Comprensione errata dei requisiti* ]],
    [ *Descrizione*  ],
    align(
      left,
    )[ Il team potrebbe non comprendere in pieno o addirittura individuare in maniera errata i requisiti richiesti dall’azienda con il rischio di avere poi discrepanze fra quello che il cliente aveva richiesto e ciò che è stato effettivamente sviluppato.],
    [ *Probabilità*  ],
    [ Bassa  ],
    [ *Impatto*],
    [Alto],
    [ *Piano di mitigazione*],
    align(
      left,
    )[Il team ha avuto un meeting iniziale con l’azienda proponente in cui sono stati individuati alcuni requisiti. Inoltre, si impegna a usare gli Use Cases per evitare linguaggio ambiguo e a mantenere il contatto con l’azienda per confronti riguardanti i requisiti.],
    [*Rilevamento*],
    [ ],
    [ *Piano di contingenza*],
    align(
      left,
    )[Convocare una riunione immediata per identificare i requisiti sbagliati, capire fino a che punto sono errati e se si può mantenere parte del codice sviluppato, calcolare le ore necessarie per sistemarli e l’eventuale impatto sul budget. ],
  )] <tab:RR1>
\
#figure(
  caption: [Rischio Assenza di priorità dei requisiti],
  kind: table,
)[
  #table(
    columns: 2,
    fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[* RR2: Assenza di priorità dei requisiti* ]],
    [ *Descrizione*  ],
    align(
      left,
    )[ Ai requisiti potrebbe non essere assegnato, o essere assegnato erroneamente, un livello di priorità basato sulla loro importanza e la loro urgenza. Questo può portare a dare la precedenza a requisiti non fondamentali e di conseguenza essere causa di ritardi e sforamenti di budget. ],
    [ *Probabilità*  ],
    [Bassa  ],
    [ *Impatto*],
    [Medio],
    [ *Piano di mitigazione*],
    align(
      left,
    )[I membri del team discuteranno assieme in maniera approfondita il livello di priorità dei requisiti, per decidere a quali dare la precedenza],
    [*Rilevamento*],
    align(left)[Il rischio viene individuato durante le riunioni di avanzamento e le revisioni dei requisiti, quando emergono ritardi, 
      conflitti tra attività o frequenti cambi di focus nello sviluppo. 
      Ulteriori segnali sono l’assenza di una chiara classificazione delle priorità nella documentazione dei requisiti o _difficoltà del team nel decidere quali requisiti implementare per primi_.],
    [ *Piano di contingenza*],
    align(
      left,
    )[Bloccare immediatamente lo sviluppo dei requisiti se si rivelano non di secondaria importanza per dedicarsi a quelli di massima priorità. Convocare una riunione per discutere nuovamente e rivalutare i livelli di priorità assegnati ai requisiti, ],
  )]<tab:RR2>
\
=== Rischi tecnici
#figure(
  caption: [Rischio Strumenti e tecnologie sconosciute],
  kind: table,
)[
  #table(
    columns: 2,
    fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RT1: Strumenti e tecnologie sconosciute*]],
    [ *Descrizione*  ],
    align(
      left,
    )[ La maggior parte delle tecnologie necessarie per realizzare il progetto non sono mai state utilizzate dai membri del team e ciò comporta un importante rallentamento dovuto al tempo necessario per imparare a maneggiare i nuovi strumenti e a stime non totalmente accurate delle ore necessarie. ],
    [ *Probabilità*  ],
    [  Alta ],
    [ *Impatto*],
    [Medio],
    [ *Piano di mitigazione*],
    align(
      left,
    )[Durante la pianificazione degli sprint, verranno tenuti in considerazione i tempi necessari per imparare a utilizzare i nuovi strumenti e i rallentamenti che possono comportare. \ Inoltre, ogni membro dovrà imparare da autodidatta come si usano e le best practices delle tecnologie utilizzate *prima* di iniziare ad utilizzarle per il codice.   ],
    [*Rilevamento*],
    align(left)[Il rischio è individuabile durante le review degli sprint e le riunioni di avanzamento, osservando ritardi, errori frequenti o difficoltà operative legate all’uso delle nuove tecnologie.],
    [ *Piano di contingenza*],
    align(
      left,
    )[In caso il problema si verifichi nelle fasi iniziali dell’utilizzo del nuovo strumento, si può chiamare un meeting e valutare un eventuale cambio di tecnologia. Se avviene nelle fasi successive, interrompere lo sviluppo del progetto per approfondire il funzionamento delle nuove tecnologie. ],
  )]<tab:RT1>

#figure(
  caption: [Rischio Problemi di integrazione fra componenti],
  kind: table,
)[
  \ #table(
    columns: 2,
    fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text(
      fill: rgb("#f5f5f7"),
    )[ *RT2: Problemi di integrazione fra componenti * ]],
    [ *Descrizione*  ],
    align(
      left,
    )[ Le componenti sviluppate utilizzando tecnologie diverse potrebbero avere problemi di comunicazione causati da versioni diverse di librerie, mancanza di interfacce chiare o di consistenza di dati e altre discrepanze. Ciò potrebbe portare a malfunzionamenti o instabilità del sistema. ],
    [ *Probabilità*  ],
    [Media ],
    [ *Impatto*],
    [Alto],
    [ *Piano di mitigazione*],
    align(
      left,
    )[Documentare le API e i formati dei dati fra tutti i componenti. \ Implementare il processo di Integrazione Continua.],
    [*Rilevamento*],
    align(left)[Il rischio viene rilevato durante le fasi di integrazione e di test, in particolare tramite l’esecuzione di test di integrazione automatizzati e manuali, l’analisi dei log di errore e il fallimento delle pipeline di Integrazione Continua.],
    [*Piano di contingenza*],
    align(left)[In caso di problemi di integrazione, sospendere temporaneamente l’implementazione di nuove funzionalità e dedicare il team 
      di sviluppo alla risoluzione delle incompatibilità. Effettuare un allineamento delle versioni delle librerie, correggere o ridefinire le interfacce tra i componenti.],
  )]<tab:RT2>

#figure(
  caption: [Rischio Qualit' insufficiente del codice],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[* RT3: Qualità insufficiente del codice*] ],
  [ *Descrizione*  ],
  align(left)[ Il codice prodotto non rispetta gli standard concordati dal team, è inefficiente o inaffidabile ],
  [ *Probabilità*  ],
  [ Media  ],
  [ *Impatto*],
  [Alto],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Il codice prodotto da un membro del team deve essere revisionato da almeno un altro membro del team e devono essere integrati strumenti per l’analisi statica del codice. La maggior parte del codice deve essere coperto da test. Inoltre, prima di usare nuovi linguaggi di programmazione, i membri dovranno studiare le loro best practices. ],
  [*Rilevamento*],
  align(left)[Il rischio viene rilevato attraverso il monitoraggio dei KPI e dei parametri di soglia definiti nel Piano di Qualifica. Nello specifico, si monitorano i report dei tool di analisi statica, l'esito delle procedure di code review e le metriche di copertura dei test (code coverage). Il superamento delle soglie di guardia identificate nel Piano di Qualifica attiva immediatamente lo stato di allerta.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Interrompere lo sviluppo dell’area del progetto coinvolta finché non si è identificato il problema e portato a un livello sufficiente la qualità del codice.],
)]<tab:RT3>
\
#figure(
  caption: [Rischio Codice poco comprensibile],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RT4: Codice poco comprensibile* ]],
  [ *Descrizione*  ],
  align(
    left,
  )[ La maniera in cui è scritto il codice ne rende difficile la sua lettura, la sua modifica e ne influenza negativamente la manutenibilità. Ciò può essere causato da assenza di documentazione, nomenclatura incoerente o insensata o da eccessiva complessità ],
  [ *Probabilità*  ],
  [  Media ],
  [ *Impatto*],
  [Alto],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Concordare prima di iniziare a stendere codice quali sono le regole riguardanti lo stile, la nomenclatura e la documentazione riguardante il codice. Far sì che il codice scritto da un membro venga revisionato da almeno un altro membro.],
  [*Rilevamento*],
  align(left)[Il rischio viene rilevato tramite l'esito negativo delle revisioni del codice effettuate tra i membri del team. Parallelamente, vengono monitorati i tool di analisi statica per verificare che gli indici di complessità e leggibilità rientrino nelle soglie stabilite nel Piano di Qualifica.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Bloccare lo sviluppo di codice relativo alla parte illeggibile per dedicarsi alla riscrittura di tale codice seguendo le regole di stile e nomenclatura stabilite in precedenza. Se le regole sono state seguite ma il codice è lo stesso poco comprensibile, chiamare un meeting per rivalutare le regole scelte.],
)]<tab:RT4>
\
#figure(
  caption: [Rischio Test insufficienti],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RT5: Test insufficienti* ]],
  [ *Descrizione*  ],
  align(
    left,
  )[ Il testing è inadeguato o incompleto, di conseguenza c’è il rischio di rilasciare codice difettoso e un sistema instabile. ],
  [ *Probabilità*  ],
  [  Media ],
  [ *Impatto*],
  [Alto],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Stabilire a priori e monitorare in fase si sviluppo le metriche di copertura e qualità del codice.],
  [*Rilevamento*],
  align(left)[Utilizzo di strumenti di code coverage per monitorare la percentuale di codice coperto da test. Il rischio è rilevato quando i report automatici mostrano valori inferiori ai parametri di qualità minimi indicati nel Piano di Qualifica.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Bloccare lo sviluppo del codice per cui non sono stati creati i test per dedicarsi alla loro implementazione.],
)]<tab:RT5>
\
#figure(
  caption: [Rischio Gestione inadeguata della sicurezza],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RT6: Gestione inadeguata della sicurezza *]],
  [ *Descrizione*  ],
  align(
    left,
  )[  Il codice prodotto presenta vulnerabilità della sicurezza, che possono essere sfruttate da utenti malevoli. ],
  [ *Probabilità*  ],
  [  Media ],
  [ *Impatto*],
  [Alto],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Verificare che le librerie utilizzate non contengano vulnerabilità. \ Far sì che la maggior parte del codice sia coperto da test di sicurezza. Assicurarsi che il codice prodotto rispetti almeno la top 10 delle norme OWASP. Aggiungere criteri di revisione del codice relativi alla verifica della presenza di potenziali vulnerabilità. ],
  [*Rilevamento*],
  align(left)[Scansione automatica delle dipendenze per individuare vulnerabilità note nelle librerie. Il rilevamento avviene anche tramite l'esito di test di sicurezza specifici e la verifica manuale della conformità alle norme OWASP citate nel Piano di Qualifica.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Identificare la parte di codice che presenta la vulnerabilità e interromperne lo sviluppo finché non è sistemata.],
)]<tab:RT6>
\
=== Rischi organizzativi

#figure(
  caption: [Rischio Mancato rispetto delle tempistiche],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RO1: Mancato rispetto delle tempistiche *]],
  [ *Descrizione*  ],
  align(
    left,
  )[Uno o più membri non riescono a finire i compiti a loro assegnati nei tempi prestabiliti, causando ritardi nello sviluppo del codice e nel raggiungimento delle milestones.  ],
  [ *Probabilità*  ],
  [Alta],
  [ *Impatto*],
  [Medio],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Aggiungere dei "periodi cuscinetto" nella pianificazione temporale degli sprint. Avvertire gli altri membri del gruppo in caso di rallentamenti e confrontarsi se si presentano difficoltà. ],
  [*Rilevamento*],
  align(left)[Monitoraggio costante dello stato di avanzamento dei task tramite GitHub Dashboard. Il rischio viene rilevato quando il tempo residuo stimato per un task supera la data di scadenza prevista nella pianificazione degli sprint.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Chiamare una riunione per valutare le cause del ritardo, se i compiti assegnati sono realistici e, in caso di troppi ritardi accumulati, per capire se ci sono dei requisiti non obbligatori a cui si può rinunciare .],
)]<tab:RO1>
\
#figure(
  caption: [Rischio Rallentamento dovuto ad altri impegni personali o universitari],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(
    fill: rgb("#f5f5f7"),
  )[*RO2: Rallentamento dovuto ad altri impegni personali o universitari*] ],
  [ *Descrizione*  ],
  align(
    left,
  )[ Uno o più membri potrebbero non riuscire a rispettare le tempistiche prestabilite a causa di impegni di natura personale o universitaria, portando a ritardi nello sviluppo del codice e nel raggiungimento delle milestones.  ],
  [ *Probabilità*  ],
  [  Alta ],
  [ *Impatto*],
  [Medio],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Avvertire gli altri membri se si è a conoscenza di periodi futuri in cui si è poco disponibili. \ Tenere conto dei periodi in cui la produttività rischia di essere bassa a causa degli esami universitari e pianificare attività meno intensa nei loro sprint. \ Aggiungere dei "periodi cuscinetto" nella pianificazione temporale. ],
  [*Rilevamento*],
  align(left)[Comunicazione tempestiva da parte dei membri del team tramite comunicazione asincrona riguardo a imprevisti personali. Il rischio viene rilevato anche osservando un calo nella velocità del team o il mancato completamento dei task assegnati nel singolo sprint nonostante la pianificazione iniziale.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Riassegnare le attività critiche e/o urgenti dei membri non disponibili a membri con più disponibilità temporale, mettendo in pausa lo sviluppo di codice meno importante.\ In caso di troppi ritardi accumulati, convocare un meeting per capire se ci sono dei requisiti non obbligatori a cui si può rinunciare.\ Aumentare la frequenza delle riunioni per rilevare subito eventuali ulteriori problemi. ],
)]<tab:RO2>
\
#figure(
  caption: [Rischio Distribuzione dei compiti non equilibrata],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RO3: Distribuzione dei compiti non equilibrata*]],
  [ *Descrizione*  ],
  align(
    left,
  )[ Vengono commessi errori di distribuzione dei compiti a causa dell’inesperienza nel valutare le tempistiche relative alle tasks dei membri del team e della sottovalutazione o sopravvalutazione del tempo necessario per finire alcuni compiti. Questo può portare i membri con un carico maggiore a non riuscire a rispettare le tempistiche o a presentare codice di qualità inferiore. ],
  [ *Probabilità*  ],
  [ Bassa  ],
  [ *Impatto*],
  [Basso],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Fare le stime del tempo necessario insieme e non assegnare questo compito a un’unica persona. \ Imporre un limite al numero di attività che una persona può svolgere nello stesso sprint. \ Confrontarsi nelle riunioni settimanali riguardo la mole di lavoro portata a termine e il tempo impiegato per farlo.],
  [*Rilevamento*],
  align(left)[Analisi del carico di lavoro durante le riunioni di coordinamento. Il rischio è rilevato se si nota un accumulo di task in stato "in progress" o "in review" assegnati alla stessa persona all'interno della _Project Board_, o se emergono colli di bottiglia che bloccano l'avanzamento degli altri membri.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Controllare la qualità del codice prodotto da membri sovraccaricati. \ Convocare una riunione per cambiare la distribuzione dei compiti dello sprint attuale ed eventualmente quelli successivi in modo da renderla più equa, assegnando meno compiti a chi ha già quelli che impiegano più tempo. ],
)]<tab:RO3>
\
#figure(
  caption: [Rischio Scarso coordinamento del team],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RO4: Scarso coordinamento del team*]],
  [ *Descrizione*  ],
  align(
    left,
  )[ Il team non è organizzato adeguatamente, non c’è una assegnazione chiara dei compiti o delle date da rispettare per le scadenze. Ci sono comunicazione e coordinazione non sufficienti. ],
  [ *Probabilità*  ],
  [ Bassa ],
  [ *Impatto*],
  [Alto],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Pianificare fin da subito gli incontri settimanali (in giorni e  orari prestabiliti) e stabilire le piattaforme di comunicazione dove tenersi aggiornati sui progressi, i dubbi e gli argomenti da discutere relativi al progetto.   ],
  [*Rilevamento*],
  align(left)[Monitoraggio della partecipazione e dell'efficacia degli incontri settimanali. Il rischio viene rilevato quando emergono dubbi frequenti su responsabilità già assegnate, quando i canali di comunicazione ufficiali rimangono inattivi o quando si verificano sovrapposizioni di lavoro (due persone che lavorano sulla stessa cosa senza saperlo).],
  [ *Piano di contingenza*],
  align(
    left,
  )[Aumentare la frequenza delle riunioni per aumentare il controllo e il coordinamento dei membri del team. \ Stabilire scadenze precise per i vari compiti.],
)]<tab:RO4>
\
#figure(
  caption: [Rischio Mancanza di monitoraggio dello stato di avanzamento],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(
    fill: rgb("#f5f5f7"),
  )[*RO5: Mancanza di monitoraggio dello stato di avanzamento*]],
  [ *Descrizione*  ],
  align(
    left,
  )[  I membri non vengono chiamati a rendere conto del loro progresso e del loro rendimento. Questo porta all’individuazione tardiva di problemi ed errori e può portare i membri a progredire più lentamente e ai ritardi individuali di accumularsi. ],
  [ *Probabilità*  ],
  [Media],
  [ *Impatto*],
  [Alto],
  [ *Piano di mitigazione*],
  align(
    left,
  )[ Pianificare minimo una riunione a settimana in cui i membri aggiornano gli altri sul proprio stato di avanzamento. ],
  [*Rilevamento*],
  align(left)[Il rischio viene rilevato durante i meeting periodici qualora emergano discrepanze significative tra quanto dichiarato dai membri e lo stato reale dei task sugli strumenti di tracciamento (Project Board). Altri segnali sono l'assenza di aggiornamenti costanti sulla piattaforma di comunicazione asincrona o il superamento delle date di scadenza intermedie senza preavviso.],
  [ *Piano di contingenza*],
  align(left)[Inasprire le modalità di controllo aumentando la frequenza dei momenti di confronto. Imporre l'obbligo aggiornamento immediato del tool di gestione task ad ogni avanzamento significativo.  \ 
  Se il problema persiste, assegnare a un membro specifico il ruolo di supervisore per monitorare attivamente i progressi dei singoli.],
)]<tab:RO5>

#figure(
  caption: [Rischio Documentazione non aggiornata],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RO6: Documentazione non aggiornata*]],
  [ *Descrizione*  ],
  align(
    left,
  )[ La documentazione viene trascurata. non viene aggiornata con le decisioni prese dal team e di conseguenza non rappresenta lo stato attuale del progetto. In questa maniera, il team potrebbe perdere tempo a discutere nuovamente aspetti già decisi in precedenza che dovrebbero essere stati scritti nella documentazione o utilizzare strumenti, nomenclatura, metodi di revisione, ecc. diversi da quelli concordati.  ],
  [ *Probabilità*  ],
  [ Bassa  ],
  [ *Impatto*],
  [Medio],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Il responsabile ha il compito di tenere aggiornata la documentazione e di scriverci ogni decisione presa dal team. \ Un compito non viene considerato completato finché la documentazione non è stata aggiornata adeguatamente.],
  [*Rilevamento*],
  align(left)[Viene rilevato durante le fasi di coordinamento quando i membri riscontrano informazioni ufficiali che non corrispondono alle ultime decisioni collettive, o quando si nota che qualcuno sta utilizzando metodi diversi da quelli concordati perché non documentati correttamente.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Individuare tutta la documentazione obsoleta e bloccare lo svolgimento dei compiti non urgenti per dedicarsi al suo aggiornamento. ],
)]<tab:RO6>
\
#figure(
  caption: [Rischio Opinioni divergenti su decisioni da prendere],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(
    fill: rgb("#f5f5f7"),
  )[*RO7: Opinioni divergenti su decisioni da prendere* ]],
  [ *Descrizione*  ],
  align(
    left,
  )[ I membri del team non concordano su determinate decisioni da prendere, come gli strumenti da utilizzare, le regole e best practices da seguire, il modo in cui implementare alcune funzioni. Questo può portare a un impiego eccessivo di risorse per la discussione su che decisioni prendere e causare ritardi.],
  [ *Probabilità*  ],
  [  Media ],
  [ *Impatto*],
  [Basso],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Stabilire un tempo massimo per le discussioni relative a decisioni complicate da prendere. Se non si riesce a giungere a una decisione unanime nel tempo prestabilito, la scelta viene presa con una votazione o dal membro più esperto.],
  [*Rilevamento*],
  align(left)[Il rischio si manifesta chiaramente quando una discussione supera il tempo massimo prestabilito o quando il team si trova in una fase di stallo senza riuscire a raggiungere un'unanimità o un compromesso operativo.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Per le decisioni non compiute entro il tempo massimo, viene indetta una votazione: la scelta votata dalla maggioranza andrà presa. Se un membro è più esperto nel campo di cui si sta discutendo, il resto del gruppo può decidere di far valere di più il suo voto o di lasciar prendere direttamente a questa persona la decisione.],
)]<tab:RO7>

#figure(
  caption: [Rischio Mancanza di confronto con l'azienda],
  kind: table,
)[
#table(
  columns: 2,
  fill: (row, col) => if col == 0 { rgb("#9856D8") } else { none },
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text(fill: rgb("#f5f5f7"))[*RO8: Mancanza di confronto con l'azienda* ]],
  [ *Descrizione*  ],
  align(
    left,
  )[ Non c'è un confronto regolare con l’azienda proponente per discutere i progressi del progetto, chiarire dubbi sui requisiti e ricevere feedback. Questo può portare a incomprensioni, sviluppo di funzionalità non richieste o mancato soddisfacimento delle aspettative dell’azienda. ],
  [ *Probabilità*  ],
  [  Bassa ],
  [ *Impatto*],
  [Alto],
  [ *Piano di mitigazione*],
  align(
    left,
  )[Stabilire un incontro periodico con l'azienda. \ Contattare l'azienda in caso sorgano dubbi si requisiti o si incontrino problemi di un certo spessore. ],
  [*Rilevamento*],
  align(left)[Il rischio viene rilevato dall'assenza di feedback regolari o quando sorgono dubbi sui requisiti che non trovano risposta nell'arco tempistico settimanale a causa della mancanza di incontri programmati.],
  [ *Piano di contingenza*],
  align(
    left,
  )[Contattare l'azienda il prima possibile per chiarire i dubbi e riallinearsi sulle aspettative. \ Valutare l'impatto sul progetto e pianificare le modifiche necessarie per soddisfare le richieste dell'azienda. ],
)]<tab:RO8>
== Monitoraggio dei rischi
Il *responsabile* monitora lo stato di tutti i rischi; i *programmatori* e i *revisori* hanno parziale responsabilità nell’individuazione di rischi tecnici. \
Per assicurarsi di individuare l’avveramento di un rischio il prima possibile si eseguiranno le seguenti attività:
- *Riunioni periodiche* bimensili in cui si verifica lo stato dei rischi individuati, si discute se i piani di mitigazione e di contingenza sono efficaci ed eventualmente si individuano nuovi rischi, dopo delle quali si aggiorna l’analisi dei rischi del Piano di Progetto. In sostanza, si fa una rivalutazione periodica dei rischi.

- Nel *Piano di Qualifica* verranno documentati  tutti i rischi che si concretizzano durante lo svolgimento del progetto.
