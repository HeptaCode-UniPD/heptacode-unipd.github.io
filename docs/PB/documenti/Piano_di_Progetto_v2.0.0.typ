#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola
#import "../../templates/glossario_termini.typ": applica-glossario

#let storia_modifiche = (
  ("2.0.0", "2026/04/07", "Angela Favaro", "Laura Venturini", "Approvazione finale, rilascio ufficiale v2.0.0"),
  ("1.7.0", "2026/04/07", "Angela Favaro", "Laura Venturini", "Aggiunti resoconto PB e Consuntivo finale"),
  ("1.6.0", "2026/04/07", "Angela Favaro", "Laura Venturini", "Aggiunto trascorso Sprint 15"),
  ("1.5.0", "2026/03/24", "Angela Canazza", "Riccardo Baldin", "Trascorso Sprint 14"),
  ("1.4.0", "2026/03/17", "Laura Venturini", "Angela Canazza", "Trascorso Sprint 13"),
  ("1.3.0", "2026/03/12", "Laura Venturini", "Angela Favaro", "Aggiornamento a seguito di colloquio correttivo del paragrafo: Pianificazione RTB"),
  ("1.2.0", "2026/03/12", "Laura Venturini", "Angela Favaro", "Aggiornamento a seguito di colloquio correttivo del paragrafo: Pianificazione PB"),
  ("1.1.0", "2026/03/12", "Amerigo Vegliante", "Angela Favaro", "Trascorso Sprint 12"),
  ("1.0.0", "2026/03/05", "Amerigo Vegliante", "Angela Favaro", "Aggiunti preventivi per Sprint da 12 a 15"),
  ("0.20.0", "2026/03/03", "Amerigo Vegliante", "Angela Favaro", "Aggiunta del resoconto trascorso RTB"),
  ("0.19.0", "2026/03/02", "Angela Favaro", "Alberto Reginato", "Modifica del documento su organizzazione Sprint"),
  ("0.18.0", "2026/03/02", "Angela Favaro", "Alberto Reginato", "Aggiunto trascorso Sprint 11"),
  ("0.17.0", "2026/03/02", "Alberto Reginato", "Angela Favaro", "Aggiunto trascorso Sprint 10"),
  ("0.15.0", "2026/02/16", "Nicola Simionato", "Angela Favaro", "Aggiunto trascorso Sprint 8"),
  ("0.15.0", "2025/01/13",  "Riccardo Baldin",  "Amerigo Vegliante",  "Aggiunto trascorso sprint 7"),
  ("0.14.0", "2026/02/12", "Laura Venturini", "Angela Favaro", "Aggiornamento diagrammi GANTT"),
  ("0.13.0", "2026/02/10",  "Angela Favaro",  "Laura Venturini",  "Sistemazione rendicontazione ore effettive"),
  ("0.12.0", "2026/01/05",  "Angela Canazza",  "Laura Venturini",  "Aggiunto trascorso Sprint 6"),
  ("0.11.0", "2026/01/05",  "Amerigo Vegliante",  "Laura Venturini",  "Aggiunto trascorso Sprint 5"),
  ("0.11.0", "2025/12/29",  "Angela Favaro",  "Amerigo Vegliante",  "Aggiunto trascorso Sprint 4"),
  ("0.10.0", "2025/12/22",  "Angela Favaro",  "Amerigo Vegliante",  "Conclusione capitolo 'Analisi e gestione dei rischi'"),
  ("0.9.0", "2025/12/21",  "Alberto Reginato",  "Amerigo Vegliante",  "Aggiunto trascorso sprint 3"),
  ("0.8.0", "2025/12/16", "Laura Venturini", "Riccardo Baldin", "Aggiunto trascorso sprint 2"),
  ("0.7.0", "2025/12/16", "Nicola Simionato", "Amerigo Vegliante", "Aggiunto trascorso sprint 1"),
  ("0.6.1", "2025/12/15",  "Angela Favaro",  "Amerigo Vegliante",  "Uniformazione documento allo standard del gruppo"),
  ("0.6.0", "2025/12/14", "Laura Venturini", "Nicola Simionato", "Aggiunti capitoli 'Processi e metodologie', 'Risorse e strumenti' e 'Analisi e gestione dei rischi'"),
  ("0.5.0", "2025/12/14",  "Angela Favaro",  "Nicola Simionato",  "Aggiunta diagrammi PERT e correzione analisi Sprint"),
  ("0.4.0", "2025/12/08",  "Angela Favaro",  "Nicola Simionato",  "Calcolo dei costi"),
  ("0.3.0", "2025/12/03",  "Angela Favaro",  "Alberto Reginato",  "Suddivisione e stesura sprint per PB"),
  ("0.2.0", "2025/12/02",  "Angela Favaro",  "Alberto Reginato",  "Suddivisione e stesura sprint per RTB"),
  ("0.1.0", "2025/12/01",  "Angela Favaro",  "Alberto Reginato",  "Prima stesura di struttura generale")
)

#show: doc => template_documenti(
  titolo: "Piano di Progetto",
  descrizione: "Piano del progetto _Code Guardian_ del gruppo _Hepta Code_ con preventivo a finire e trascorso.",
  modifiche: storia_modifiche,
  lista_tabelle: true,
  lista_figure: true,
  doc
)

#show: applica-glossario

= Introduzione
Questo documento propone una linea guida da seguire durante tutto lo svolgimento del progetto. \
Il Piano di Progetto ha lo scopo di definire in modo chiaro, strutturato e verificabile come il progetto _Code Guardian_ dovrà essere realizzato.
Il documento verrà periodicamente versionato per aggiungere contenuti mancanti e/o per aggiornare contenuti obsoleti.
== Introduzione al progetto _Code Guardian_
Questa prima parte del documento non vuole essere una spiegazione esplicativa e dettagliata dello stesso; per quello si può consultare il documento di _Analisi dei requisiti_ presente nel #link("https://heptacode-unipd.github.io", "sito del team Hepta Code"). \ \
*Code Guardian* è pensato come strumento di supporto per i team di sviluppo, da utilizzare durante l’intero ciclo di vita dei progetti che l’utente realizzerà all’interno di un’organizzazione. \ Verranno utilizzati degli agenti che consentono l’analisi della documentazione e del codice del progetto che si trova in una repository Git Hub. Ogni agente avrà un diverso ruolo all’interno della piattaforma. \
Gli agenti fino ad ora pensati per _Code Guardian_ sono:
1. Agente per il controllo del codice.
2. Agente per il controllo della documentazione.
3. Agente per il controllo delle prime 10 linee guida OWASP.
\ Gli utenti / attori presi in esame per la creazione del progetto sono di tre tipi (lavoreranno insieme all’interno di uno stesso progetto):
- Business Owner;
- Project Manager;
- Sviluppatore.
Per ognuno dei tre verrà fornita un’interfaccia consona alle funzioni che più possono interessare loro riguardo lo stato di uno o più progetti di sviluppo. \
\ Grazie a meccanismi AI e LLM , in base al dominio dell’utente, verranno:
- visualizzati gli errori rilevati;
- forniti suggerimenti agli errori rilevati;
- forniti suggerimenti per il miglioramento del progetto;
- visualizzate e calcolate percentuali statistiche di interesse sul progetto.
\
Gli ambiti tecnici di progetto sono quindi
- implementazione e addestramento di agenti tramite utilizzo di _AI_ e _LLM_;
- implementazione di una web-app.

== Regole di aggiornamento del documento
Questo documento dovrà periodicamente (cioè alla fine di ogni periodo o Sprint) essere aggiornato dal Responsabile e validato dal Verificatore.  \
Ad ogni Sprint Retrospective:
+ Si aggiornerà il _Trascorso_ con:
  - un riassunto di ciò che è accaduto durante lo sprint, diviso per punti;
  - le problematiche incontrate;
  - le misure di mitigazione attuate;
  - gli eventuali aggiornamenti all’_Analisi dei rischi_;
  - i Diagrammi di GANTT utili alla comprensione immediata dell’avanzamento del progetto.
+ Si aggiorneranno i due sprint immediatamente successivi a quello concluso. \ In questo modo gli obiettivi nel breve termine saranno sempre aggiornati secondo le esigenze che richiede il progetto in quel momento. 
Verrà, all’occorrenza, aggiornata l’#link(<AdR>)[Analisi dei Rischi] con tutti i nuovi rischi futuri e/o presenti e le misure di mitigazione attuabili e/o da attuare.
#pagebreak()


= Processi e metodologie
== Modello di processo scelto
Abbiamo scelto di lavorare al progetto utilizzando l’approccio Agile basato sul framework Scrum. È stato scelto tale modello per le seguenti ragioni:
- Grazie a questo metodo si possono limitare gli sprechi di risorse: con la suddivisione di task molto granulari, l’introduzione di un errore è più facilmente individuabile e quindi è meno frequente che l’errore si propaghi in grosse parti del progetto.
- Lo stato del progetto, la suddivisione dei task da fare, le ore a disposizione e gli aspetti migliorabili sono chiari a tutti grazie alla Sprint Review, allo Sprint Retrospective e allo Sprint Planning.
- Grazie allo Sprint Retrospective si può migliorare l’efficacia del team durante lo svolgimento del progetto e capire in quali aspetti è lacunoso.
- Permette una gestione dei rischi più facile e il loro continuo monitoraggio, diminuendo la probabilità che si verifichino.
- Il rilascio incrementale permette all’azienda cliente di vedere come sta avanzando il progetto.
- Feedback più veloce: questo metodo impone un contatto più frequente con l’azienda proponente, permettendo di avere un riscontro sull'adeguatezza dei requisiti individuati e del codice per implementare tali requisiti, senza essere costretti a modificare tutto alla fine.
== Struttura del ciclo di vita
Dato che utilizziamo la metodologia Scrum, il ciclo di vita del progetto è suddiviso in brevi cicli autosufficienti chiamati Sprint. \ Abbiamo stabilito che la durata di uno Sprint potrà variare da una settimana al massimo di due settimane ciascuno. \ Per ogni Sprint, sono previsti:
- uno *Sprint Planning*, in cui si pianifica lo Sprint e si stabiliscono i suoi obiettivi;
- uno *Sprint Review*, in cui si esamina il lavoro completato dopo uno Sprint e si aggiorna il *Product Backlog*, che contiene tutte le task da completare per completare il progetto;
- uno *Sprint Retrospective*, in cui il team ragiona su ciò che può essere migliorato in confronto allo Sprint appena finito;
- un  aggiornamento asincrono via Telegram almeno ogni tre giorni al posto del Daily Scrum per monitorare l’avanzamento del lavoro.

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
Gli strumenti di sviluppo che abbiamo deciso di usare sono:
- *React* e *Typescript* per la parte Frontend;
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
- *Microsoft Teams* per le riunioni telematiche con l'azienda proponente.
#pagebreak()

= Organizzazione del team
#label("Organizzazione")
Ad ogni suddivisione di periodo (_Sprint_) i membri turneranno; in questo modo tutti avranno modo di assumere e sperimentare i panni dei ruoli previsti per lo sviluppo di un progetto. \ #underline[Le ore complessive calcolate a persona] sono *novantadue*. \ A queste va escluso il tempo di apprendimento personale; pertanto, sebbene vengano segnate poche ore di lavoro effettivo, tutto il team seguirà dei ritmi di intensità _alta_ (10 - 20 ore settimanali individuali). \ Sono calcolati anche alcuni sprint ad intensità inferiore a causa della sessione d’esami invernale che si svolgerà dal _19 gennaio 2026_ al _21 febbraio 2026_. 
#pagebreak()
== Stima a priori del monte ore totale per ruolo 
Non tutti i membri svolgeranno esattamente le stesse ore per ciascun ruolo. Questo è naturale in quanto per ogni sprint verrà eseguito un carico ed un’intensità di lavoro differenti. Risulta difficile uniformare perfettamente la ripartizione delle ore. \ L’opzione ritenuta più consona è quella di avvicinare tutti i membri ad un’uniformità di ore per ruolo anche se non esattamente coincidenti. \ Le ore complessive, calcolate a priori rispetto allo svolgimento del progetto, vengono ripartite tra i membri del gruppo come segnalato in @tab:OreTotIndividuali. \ \

#figure(
  caption: [Stima delle ore individuali per ruolo in totale.],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,
      
      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Totale*]]],

      [_Angela Favaro_], [7], [10], [15], [16], [21], [23], [*92*],
      [_Angela Canazza_], [9], [6], [15], [15], [21,5], [25,5], [*92*],
      [_Riccardo Baldin_], [4], [8], [17], [15], [22], [26], [*92*],
      [_Alberto Reginato_], [7], [8], [16], [17], [17,5], [26,5], [*92*],
      [_Nicola Simionato_], [7], [8], [15,5], [12], [22], [27,5], [*92*],
      [_Amerigo Vegliante_], [8], [8], [17], [16], [21], [22], [*92*],
      [_Laura Venturini_], [7], [8], [16,5], [14], [23], [23,5], [*92*],
      [*Ore totali*], [*49*], [*56*], [*112*], [*105*], [*148*], [*174*],
    ) ]] <tab:OreTotIndividuali>

Nel grafico in figura @fig:torta vengono analizzate le percentuali della ripartizione generale dei ruoli.

#figure(
  caption: [Stima percentuale della ripartizione dei ruoli.],
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
\
Durante lo svolgimento del progetto verranno segnalate le ore effettive svolte da ogni singolo componente per ogni singolo ruolo. \ Alla conclusione delle milestone RTB e PB verranno segnalate le ore totali effettivamente svolte.

#pagebreak()
== Stima a seguito della milestone RTB del monte ore totale per ruolo
A seguito del conseguimento della milestone RTB (descritta nella @milestone) e tenuto conto delle ore effettivamente svolte durante il periodo di RTB, verrà proposta una seconda stima (presente in @tab:OreTotIndividuali2) delle ore di lavoro di ogni membro per ruolo. Questa stima viene comparata con la stima in @tab:OreTotIndividuali, che era stata effettuata all'inizio della milestone RTB. 

#figure(
  caption: [Seconda stima delle ore individuali per ruolo in totale rispetto alla @tab:OreTotIndividuali.],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,
      
      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Totale*]]],

      [_Angela Favaro_], [7 → 10], [10 → 3], [15 → 19], [16 → 16], [21 → 19], [23 → 27], [*94 / 92*],
      [_Angela Canazza_], [9 → 3], [6 → 2], [15 → 23], [15 → 15], [21,5 → 22], [25,5 → 25], [*90 / 92*],
      [_Riccardo Baldin_], [4 → 2], [8 → 7], [17 → 23], [15 → 15], [22 → 22], [26 → 26], [*95 / 92*],
      [_Alberto Reginato_], [7 → 7], [8 → 8], [16 → 18], [17 → 27], [17,5 → 16], [26,5 → 18,5], [*94,5 / 92*],
      [_Nicola Simionato_], [7 → 5], [8 → 8], [15,5 → 14], [12 → 14], [22 → 15], [27,5 → 34,5], [*90,5 / 92*],
      [_Amerigo Vegliante_], [8 → 3], [8 → 8], [17 → 14], [16 → 15], [21 → 29], [22 → 19], [*88 / 92*],
      [_Laura Venturini_], [7 → 6], [8 → 6], [16,5 → 17], [14 → 15], [23 → 20], [23,5 → 29], [*93 /92*],
      [*Ore totali*], [*36 / 49*], [*42 / 56*], [*128 / 112*], [*117 / 105*], [*143 / 148*], [*179 / 174*],
    ) ]] <tab:OreTotIndividuali2>
In @fig:torta2 è possibile visionare la percentuale di ore dedicate a ciascun ruolo secondo la nuova stima.
#figure(
  caption: [Stima post RTB percentuale ripartizione dei ruoli.],
)[
  #let data = (
    ([*Resp.*], 36),
    ([*Amm.*], 42),
    ([*Analista*], 128),
    ([*Progett.*], 117),
    ([*Programm.*], 143),
    ([*Verif.*], 179),
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
  })]] <fig:torta2>

#pagebreak()

= Pianificazione e resoconto temporale
Verrà qui riportata la pianificazione ritenuta più consona per il gruppo, a priori e nel corso del tempo.\ 
== Milestone programmate
<milestone>
Di seguito elencate le milestone con i punti da considerare per poterle ritenere concluse.
1. _UCB (Use Case Baseline)_:
  - Conclusione della prima stesura degli Use Case.
2. _RTB (Requirements & Technology Baseline)_:
  - Conclusione del documento _Analisi dei Requisiti_ (tecnologie, i framework, le librerie adottate, e ne dimostra adeguatezza e interoperabilità).
  - _Proof of Concept_, demo eseguibile.
3. _PAB (Progettazione & Analisi Baseline)_:
  - Conclusione attività di progettazione e analisi.
4. _PB (Product Baseline)_:
  - Consegna del progetto.
== Suddivisione e organizzazione del paragrafo
Sono stati calcolati un totale di _*tredici*_ sprint. \ La pianificazione degli sprint viene divisa tra le *_due_* milestone obbligatorie del progetto: RTB e PB. 
- Per ogni milestone è prevista un organizzazione del lavoro _a priori_, chiamata *"Pianificazione"* [@PianificazioneRTB e @PianificazionePB], che riporta il piano delle attività di progetto nel lungo termine (fino alla produzione den Minimum Viable Product). 
- A seguito della pianificazione è presente il *"Trascorso"* [@TrascorsoRTB e @TrascorsoPB]; qui verranno rendicontate le ore previste per ogni sprint, nel breve periodo, e quelle effettivamente svolte a seguito dello sprint. Il paragrafo viene di fatto diviso in due sotto-paragrafi riporta:
  + *Preventivo a finire:* \
    rappresenta la pianificazione ideale dei tempi e dei ruoli all’interno del team (nel breve periodo). Il preventivo verrà aggiornato ad ogni sprint per i due sprint successivi. \ Verranno esplicitati:
    - Le attività che si dovranno svolgere ad ogni sprint.
    - I ruoli che ogni membro dovrà rappresentare.
    - Il costo pianificato per lo sprint.
  + *Trascorso dello sprint:* \ rappresenta ciò che realmente è accaduto durante gli sprint.
    Per ogni percorso verrà effettuato:
    - Analisi dei rischi incontrati e delle attività svolte.
    - Come e se è stata effettuata mitigazione dei rischi riscontrati.
    - Ore effettivamente svolte, rispetto a quelle previste.
    - Diagramma di GANTT per mostrare l'avanzamento del progetto.
    - Il costo effettivamente sostenuto dal team rispetto a quello pianificato.

#pagebreak()
== Sprint RTB
Gli sprint della _Requirements and Technology Baseline_ sono preventivati in numero di dieci. \ Sono previsti della durata di :
- sette giorni dal 24 novembre 2025 all’11 gennaio 2026;
- quattordici giorni dal 12 gennaio al 22 febbraio 2026.

=== Pianificazione dall’RTB <PianificazioneRTB>
Attività pianificate per gli sprint della milestone _Requirements and Technology Baseline_: \ 

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 1* #block(inset: (left: 0.5cm))[ 
  _Dal 24 novembre al 30 novembre 2025_
  Inizio dell’attività di lavoro seguito del primo incontro con il committente.
    - Studio in preparazione dell’attività di Analisi dei Requisiti.
    - Primo approccio di gruppo all’analisi (tramite incontri interni organizzati come brainstorming).
    - Studio della documentazione adeguata al progetto.
    - Attività di studio dei Casi d'uso.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 2* #block(inset: (left: 0.5cm))[ 
  _Dall’ 1 dicembre al 7 dicembre 2025_
  - Studio individuale della sintassi e l’utilizzo dei Casi d’Uso.
    - Inizio stesura dei primi Casi d'Uso.
    - Divisione dei compiti per una prima stesura dei documenti tra:
      - Piano di Progetto (PdP).
      - Piano di Qualifica (PdQ).
      - Norme di Progetto.
      - Analisi dei Requisiti (AR).
    - Decisioni provvisorie sulle tecnologie utilizzabili per il progetto.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 3:* #block(inset: (left: 0.5cm))[ 
  _Dall’8 dicembre al 14 dicembre 2025_
  - Attività di formazione su Backend da parte dell’azienda committente.
    - Continuazione da parte del team dell’Analisi dei Requisiti.
    - Avanzamento stesura dei documenti per milestone RTB.
    - Studio individuale sulle tecnologie discusse dal team.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 4:* #block(inset: (left: 0.5cm))[
  _Dal 15 dicembre al 21 dicembre 2025_
  - Attività di formazione su Frontend, AWS ed introduzione alla parte AI da parte dell’azienda committente.
    - Continuazione di:
      - Analisi dei Requisiti.
      - Stesura della documentazione.
    - Revisione sulle decisioni prese riguardo alle tecnologie adatte al progetto.
    - Continuazione stesura di Use Case.
    - Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 5:* #block(inset: (left: 0.5cm))[
  _Dal 22 dicembre al 28 dicembre 2025_
  - Scelta definitiva delle tecnologie da utilizzare per il progetto.
    - Inizio studio delle tecnologie scelte.
    - Continuazione dell’attività di Analisi dei Requisiti.
    - Continuazione stesura dei documenti.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 6:* #block(inset: (left: 0.5cm))[
  _Dal 29 dicembre 2025 al 4 gennaio 2026_
  - Inizio attività di produzione del _Proof of Concept (PoC)_.
    - Continuazione stesura della documentazione.
    - Continuazione attività di Analisi dei Requisiti.
    - Revisione del _Glossario_ ed eventuale aggiornamento.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 7:* #block(inset: (left: 0.5cm))[
  _Dal 5 gennaio all’11 gennaio 2026_ \
  In questo sprint tutti i ruoli devono essere operativi e il team deve dimostrare la capacità di generare valore per lo sviluppo del progetto.
    - Continuazione di sviluppo e verifica del PoC.
    - Continuazione stesura della documentazione (interna ed esterna).
    - Continuazione attività di Analisi e rilevazione Casi d'Uso.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 8:* #block(inset: (left: 0.5cm))[
  _Dal 12 gennaio al 25 gennaio 2026_
  - Conclusione dello sviluppo e della verifica del PoC.
    - Revisione dei documenti prodotti per la milestone RTB.
    - Continuazione attività di Analisi e stesura Casi d'Uso.
    - Revisione del _Glossario_ ed eventuale aggiornamento.
  - *Conclusione milestone UCB*.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 9:* #block(inset: (left: 0.5cm))[
  _Dal 26 gennaio all’8 febbraio 2026_
    - Continuazione stesura della documentazione prodotta per la milestone RTB.
    - Revisione del _Glossario_ ed eventuale aggiornamento.
    - Allineamento di tutti i componenti del gruppo sulle attività che sono state svolte e che verranno svolte; chi ha maggiore esperienza chiarirà i dubbi a chi ne ha avuta meno nei diversi ambiti (Analisi, Sviluppo e Verifica).
    - Inizio studio per attività di progettazione
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 10:* #block(inset: (left: 0.5cm))[
  _Dal 9 febbraio al 22 febbraio 2026_
  - Conclusione attività di Analisi e stesura della stessa.
  - Studio della documentazione necessaria per la prossima milestone _PB_.
  - Inizio studio per la Progettazione
  - Verifica di tutti i documenti prodotti dal gruppo.
  - *Conclusione milestone RTB*
]

#line(length: 100%, stroke: 0.5pt + gray)

Successivamente sono previsti altri *tre sprint*, a cadenza settimanale, per poter completare la milestone PB e consegnare il progetto entro il 15 marzo 2026.

#line(length: 100%, stroke: 0.5pt + gray)

Successivamente a questo paragrafo di pianificazione saranno presenti, per ognuno degli sprint RTB, il _Preventivo a finire_ ed il _Trascorso_ che riporteranno rispettivamente:
- Pianificazione nel breve termine degli sprint a finire.
- Retrospettiva rispetto alla pianificazione nel breve e lungo termine con conseguenti misure correttive attuate per la gestione dei rischi e delle problematiche incontrate.

Per la milestone _PB_ sono poi previsti altri tre sprint che verranno programmati a seguito del conseguimento della milestone RTB.

Il giorno di consegna del progetto, al 24 novembre 2025, è previsto per il 15 marzo 2026.

=== Trascorso RTB <TrascorsoRTB>
==== Sprint 1
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [24 novembre 2025 – 30 novembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    Inizio dell’attività di lavoro seguito del primo incontro con il committente.
    - Studio in preparazione dell’attività di Analisi dei Requisiti.
    - Primo approccio di gruppo all’analisi (tramite incontri interni organizzati come brainstorming).
    - Studio della documentazione adeguata al progetto.
    - Attività di studio dei Casi d'uso.
  ],
  [_Milestone attive_], [RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 1],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,
      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [1], [], [], [], [25€],
      [_Angela Canazza_], [], [], [1], [], [], [], [25€],
      [_Riccardo Baldin_], [], [], [1], [], [], [], [25€],
      [_Alberto Reginato_], [], [], [1], [], [], [], [25€],
      [_Nicola Simionato_], [1], [], [1], [], [], [], [55€],
      [_Amerigo Vegliante_], [], [], [1], [], [], [0,5], [32,5€],
      [_Laura Venturini_], [], [2], [1], [], [], [], [65€],
    ) ]] <tab:PrevisioneSprint1>


#underline[Spese della settimana]: 252,5€ \ #underline[Spesa totale]: *252,5€*
===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
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

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 1],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [1], [], [], [], [25€],
      [_Angela Canazza_], [], [], [1], [], [], [], [25€],
      [_Riccardo Baldin_], [], [], [1], [], [], [], [25€],
      [_Alberto Reginato_], [], [], [1], [], [], [], [25€],
      [_Nicola Simionato_], [1], [], [1], [], [], [], [55€],
      [_Amerigo Vegliante_], [], [], [1], [], [], [0,5], [32,5€],
      [_Laura Venturini_], [], [2], [1], [], [], [], [65€],
    ) ]] <tab:RetrospettivaSprint1>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 1],
  )[
  #image("../../asset/GANTT/sprint1-gantt.png")
  ]<GANTT-Sprint1>

#underline[Spese della settimana]: 252,5€ / 252,5€ \ #underline[Spesa totale]: *252,5€ / 252,5€*
#pagebreak()

==== Sprint 2
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [1 dicembre 2025 - 7 dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    - Studio individuale della sintassi e l’utilizzo dei Casi d’Uso.
    - Inizio stesura dei primi Casi d'Uso.
    - Divisione dei compiti per una prima stesura dei documenti tra:
      - Piano di Progetto (PdP).
      - Piano di Qualifica (PdQ).
      - Norme di Progetto.
      - Analisi dei Requisiti (AR).
    - Decisioni provvisorie sulle tecnologie utilizzabili per il progetto.
  ],
  [_Milestone attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 2],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [2], [], [], [], [50€],
      [_Angela Canazza_], [], [], [2], [], [], [], [50€],
      [_Riccardo Baldin_], [], [], [2], [], [], [1], [65€],
      [_Alberto Reginato_], [], [2], [2], [], [], [], [90€],
      [_Nicola Simionato_], [], [], [2], [], [], [], [50€],
      [_Amerigo Vegliante_], [], [], [2], [], [], [], [50€],
      [_Laura Venturini_], [1], [], [2], [], [], [], [80€],
    ) ]] <tab:PrevisioneSprint2>

#underline[Spese della settimana]: 435€ \ #underline[Spesa totale]: *687,5€*

===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
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

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 2],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [2], [], [], [], [50€],
      [_Angela Canazza_], [], [], [2], [], [], [], [50€],
      [_Riccardo Baldin_], [], [], [2], [], [], [1], [65€],
      [_Alberto Reginato_], [], [2], [2], [], [], [], [90€],
      [_Nicola Simionato_], [], [], [2], [], [], [], [50€],
      [_Amerigo Vegliante_], [], [], [2], [], [], [], [50€],
      [_Laura Venturini_], [1], [], [2], [], [], [], [80€],
    ) ]] <tab:RetrospettivaSprint2>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 2],
  )[
  #image("../../asset/GANTT/sprint2-gantt.png")
  ]<GANTT-Sprint2>

#underline[Spese della settimana]: 435€ / 435€ \ #underline[Spesa totale]: *687,5€ / 687,5€*
#pagebreak()

==== Sprint 3
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [8 dicembre 2025 - 14 dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    - Attività di formazione su Backend da parte dell’azienda committente.
    - Continuazione da parte del team dell’Analisi dei Requisiti.
    - Avanzamento stesura dei documenti per milestone RTB.
    - Studio individuale sulle tecnologie discusse dal team.
  ],
  [_Milestone attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 3],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [4], [], [], [], [100€],
      [_Angela Canazza_], [], [], [4], [], [], [], [100€],
      [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
      [_Alberto Reginato_], [3], [], [], [], [], [1,5], [112,5€],
      [_Nicola Simionato_], [], [3], [], [], [], [], [60€],
      [_Amerigo Vegliante_], [], [], [4], [], [], [], [100€],
      [_Laura Venturini_], [], [], [4], [], [], [], [100€],
    ) ]] <tab:PrevisioneSprint3>

#underline[Spese della settimana]: 672,5€ \ #underline[Spesa totale]: *1.360€*

===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
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

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 3],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [4], [], [], [], [100€],
      [_Angela Canazza_], [], [], [4], [], [], [], [100€],
      [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
      [_Alberto Reginato_], [3], [], [], [], [], [1,5], [112,5€],
      [_Nicola Simionato_], [], [3], [], [], [], [], [60€],
      [_Amerigo Vegliante_], [], [], [4], [], [], [], [100€],
      [_Laura Venturini_], [], [], [4], [], [], [], [100€],
    ) ]] <tab:RetrospettivaSprint3>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 3],
  )[
  #image("../../asset/GANTT/sprint3-gantt.png")
  ]<GANTT-Sprint3>

#underline[Spese della settimana]: 672,5€ / 672,5€ \ #underline[Spesa totale]: *1.360€ / 1.360€*
#pagebreak()

==== Sprint 4
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [15 dicembre 2025 - 21 dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    - Attività di formazione su Frontend, AWS ed introduzione alla parte AI da parte dell’azienda committente.
    - Continuazione di:
      - Analisi dei Requisiti.
      - Stesura della documentazione.
    - Revisione sulle decisioni prese riguardo alle tecnologie adatte al progetto.
    - Continuazione stesura di Use Case.
    - Revisione del _Glossario_ e del documento _Way of Working_ ed eventuale aggiornamento.
  ],
  [_Milestone attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 4],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [3], [], [], [], [], [], [90€],
      [_Angela Canazza_], [], [], [4], [], [], [1,5], [122,5€],
      [_Riccardo Baldin_], [], [], [6], [], [], [], [150€],
      [_Alberto Reginato_], [], [], [5], [], [], [], [125€],
      [_Nicola Simionato_], [], [], [2], [], [], [], [50€],
      [_Amerigo Vegliante_], [], [4], [], [], [], [1,5], [102,5€],
      [_Laura Venturini_], [], [], [4], [], [], [], [100€],
    ) ]] <tab:PrevisioneSprint4>

#underline[Spese della settimana]: 740€ \ #underline[Spesa totale]: *2100€*
===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
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

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 4],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [3], [], [], [], [], [], [90€],
      [_Angela Canazza_], [], [], [4], [], [], [1,5], [122,5€],
      [_Riccardo Baldin_], [], [], [6], [], [], [], [150€],
      [_Alberto Reginato_], [], [], [5], [], [], [], [125€],
      [_Nicola Simionato_], [], [], [2], [], [], [], [50€],
      [_Amerigo Vegliante_], [], [4], [], [], [], [1,5], [102,5€],
      [_Laura Venturini_], [], [], [4], [], [], [], [100€],
    ) ]] <tab:RetrospettivaSprint4>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 4],
  )[
  #image("../../asset/GANTT/sprint4-gantt.png")
  ]<GANTT-Sprint4>

#underline[Spese della settimana]: 740€ / 740€ \ #underline[Spesa totale]: *2100€ / 2100€*
#pagebreak()

==== Sprint 5
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [22 dicembre 2025 - 28 dicembre 2025],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    - Scelta definitiva delle tecnologie da utilizzare per il progetto.
    - Inizio studio delle tecnologie scelte.
    - Continuazione dell’attività di Analisi dei Requisiti.
    - Continuazione stesura dei documenti.
    
  ],
  [_Milestone attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 5],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [4], [], [], [], [100€],
      [_Angela Canazza_], [], [], [4], [], [], [], [100€],
      [_Riccardo Baldin_], [], [4], [], [], [], [], [80€],
      [_Alberto Reginato_], [], [], [4], [], [], [], [100€],
      [_Nicola Simionato_], [], [], [4], [], [], [], [100€],
      [_Amerigo Vegliante_], [3], [], [], [], [], [2], [120€],
      [_Laura Venturini_], [], [], [2], [], [], [2], [80€],
    ) ]] <tab:PrevisioneSprint5>

#underline[Spese della settimana]: 680€ \ #underline[Spesa totale]: *2.780€*
===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    1. Continuazione stesura documentazione: PdP, AdR e NdP;
    2. Continuazione stesura Use Case e finitura della sezione Developer;
    3. Inizio stesure Use Case per sezioni opzionali (Business Owner, Project Manager);
    4. Scelta stack tecnologico.
  ],

  [_Rischi incontrati_],
  [
    1. RO1 - Mancato rispetto delle tempistiche (@tab:RO1);
    2. RO2 - Rallentamento dovuto ad altri impegni personali o universitari (@tab:RO2);
    3. Non è stato possibile concludere secondo i tempi previsti la milestone interna UCB a seguito dei rallentamenti incontrati.  
  ],

  [_Mitigazione_],
  [
    1. Utilizzo di tempo di slack nello sprint successivo per poter finire, anche se in ritardo rispetto le tempistiche previste, la milestone UCB.
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 5],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [4 → 2], [], [], [], [50€],
      [_Angela Canazza_], [], [], [4 → 3], [], [], [], [75€],
      [_Riccardo Baldin_], [], [4 → 3], [], [], [], [], [60€],
      [_Alberto Reginato_], [], [], [4 → 3], [], [], [], [75€],
      [_Nicola Simionato_], [], [], [4 → 3], [], [], [], [75€],
      [_Amerigo Vegliante_], [3 → 1], [], [], [], [], [2], [60€],
      [_Laura Venturini_], [], [], [2], [], [], [2 → 1], [65€],
    ) ]] <tab:RetrospettivaSprint5>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 5],
  )[
  #image("../../asset/GANTT/sprint5-gantt.png")
  ]<GANTT-Sprint5>

#underline[Spese della settimana]: 460€ / 680€ \ #underline[Spesa totale]: *2.560€ / 2.780€*
#pagebreak()

==== Sprint 6
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [29 dicembre 2025 - 4 gennaio 2026],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    - Inizio attività di produzione del _Proof of Concept (PoC)_.
    - Continuazione stesura della documentazione.
    - Continuazione attività di Analisi dei Requisiti.
    - Revisione del _Glossario_ ed eventuale aggiornamento.
  ],
  [_Milestone attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 6],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [2], [1], [], [], [], [65€],
      [_Angela Canazza_], [2], [], [1], [], [], [], [85€],
      [_Riccardo Baldin_], [], [], [3], [], [], [], [75€],
      [_Alberto Reginato_], [], [], [3], [], [], [], [75€],
      [_Nicola Simionato_], [], [], [1], [], [], [2], [55€],
      [_Amerigo Vegliante_], [], [], [3], [], [], [2], [105€],
      [_Laura Venturini_], [], [], [1], [], [], [], [25€],
    ) ]] <tab:PrevisioneSprint6>

#underline[Spese della settimana]: 485€ \ #underline[Spesa totale]: *3.045€*

===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [1. Continuazione stesura documentazione PdP, AdR e NdP;
  1. Conclusione scrittura Use Case per Developer, Business Owner e Project Manager
  2. Aggiornamento Glossario
  ],

  [_Rischi incontrati_],
  [
    1. RO1 - Mancato rispetto delle tempistiche (@tab:RO1)
    2. RO2 - Rallentamento dovuto ad altri impegni personali o universitari (@tab:RO2);
    3. Mancato aggiornamento del documento PdQ
  ],

  [_Mitigazione_],
  [
    1. Utilizzo di giorni aggiuntivi per la verifica e correzione degli Use Case, al fine di garantire la consegna del documento AdR per la milestone RTB.
    2. Ridistribuzione interna del carico di lavoro e sessioni di lavoro asincrono per recuperare il ritardo accumulato.
    3. I verificatori si impegnano a produrre una versione finale non ufficiale del Piano di Qualifica entro il prossimo sprint.
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 6],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [2 → 1], [1], [], [], [], [45€],
      [_Angela Canazza_], [2 → 1], [], [1], [], [], [], [55€],
      [_Riccardo Baldin_], [], [], [3 → 2], [], [], [], [50€],
      [_Alberto Reginato_], [], [], [3 → 2], [], [], [], [50€],
      [_Nicola Simionato_], [], [], [1], [], [], [2 → 1,5], [47,5€],
      [_Amerigo Vegliante_], [], [], [3 → 2], [], [], [2 → 1,5], [72,5€],
      [_Laura Venturini_], [], [], [1], [], [], [], [25€],
    ) ]] <tab:RetrospettivaSprint6>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 6],
  )[
  #image("../../asset/GANTT/sprint6-gantt.png")
  ]<GANTT-Sprint6>

#underline[Spese della settimana]: 345€ / 485€ \ #underline[Spesa totale]: *2.905€ / 3.045€*
#pagebreak()

==== Sprint 7
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [5 gennaio 2026 - 11 gennaio 2026],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    In questo sprint tutti i ruoli devono essere operativi e il team deve dimostrare la capacità di generare valore per lo sviluppo del progetto.
    - Continuazione di sviluppo e verifica del PoC.
    - Continuazione stesura della documentazione (interna ed esterna).
    - Continuazione attività di Analisi e rilevazione Casi d'Uso.
  ],
  [_Milestone attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 7],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [3], [], [], [], [75€],
      [_Angela Canazza_], [], [3], [], [], [], [1,5], [82,5€],
      [_Riccardo Baldin_], [4], [], [], [], [], [], [120€],
      [_Alberto Reginato_], [], [], [1], [], [2], [], [55€],
      [_Nicola Simionato_], [], [], [2], [], [], [1], [65€],
      [_Amerigo Vegliante_], [], [], [], [], [2], [], [30€],
      [_Laura Venturini_], [], [], [], [], [], [2.5], [37,5€],
    ) ]] <tab:PrevisioneSprint7>

#underline[Spese della settimana]: 465€ \ #underline[Spesa totale]: *3.370€*
===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    1. Progettazione e Programmazione del PoC
    2. Avanzamento nella stesura dei documenti e revisione degli stessi
    3. Revisione sistematica dei Casi d'Uso
    4. Correzione dei Casi d'Uso
  ],

  [_Rischi incontrati_],
  [
    1. RR1 - Comprensione errata dei requisiti (@tab:RR1);
    2. RO8 - Mancanza di confronto con l'azienda (@tab:RO8);
  ],

  [_Mitigazione_],
  [
    1. Disposizione di giorni aggiuntivi per scrivere tutti gli UC granulari controllando minuziosamente ogni aspetto del Progetto.
    2. Concentrarsi sul lavoro riguardante i Diagrammi di Attività nel documento AdR
    3. Scrivere il PdQ una volta ultimata l'analisi dei requisiti
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 7],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [3 → 2], [], [], [], [50€],
      [_Angela Canazza_], [], [3 → 2], [], [], [], [1,5], [62,5€],
      [_Riccardo Baldin_], [4 → 2], [], [], [], [], [], [60€],
      [_Alberto Reginato_], [], [], [1], [], [2], [], [55€],
      [_Nicola Simionato_], [], [], [2], [], [], [1], [65€],
      [_Amerigo Vegliante_], [], [], [], [], [2], [], [30€],
      [_Laura Venturini_], [], [], [], [], [], [2.5], [37,5€],
    ) ]] <tab:RetrospettivaSprint7>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 7],
  )[
  #image("../../asset/GANTT/sprint7-gantt.png")
  ]<GANTT-Sprint7>


#underline[Spese della settimana]: 360€ / 465€ \ #underline[Spesa totale]: *3.265€ / 3.370€*
#pagebreak()

==== Sprint 8
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [12 gennaio 2026 - 25 gennaio 2026],

  [_Giorni di sprint_], [14],

  [_Attività pianificate_],
  [
    - Conclusione dello sviluppo e della verifica del PoC.
    - Revisione dei documenti prodotti per la milestone RTB.
    - Continuazione attività di Analisi e stesura Casi d'Uso.
    - Revisione del _Glossario_ ed eventuale aggiornamento.
    - Previsto colloquio di aggiornamento con Var Group; preparazione al colloquio per esprimere eventuali dubbi.
  ],
  [_Milestone attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 8],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [1], [], [], [3], [70€],
      [_Angela Canazza_], [], [], [1], [], [2], [], [55€],
      [_Riccardo Baldin_], [], [], [1], [], [2], [], [55€],
      [_Alberto Reginato_], [], [], [3], [], [], [2], [105€],
      [_Nicola Simionato_], [4], [], [], [], [], [], [120€],
      [_Amerigo Vegliante_], [], [], [4], [], [], [], [100€],
      [_Laura Venturini_], [], [4], [], [], [], [], [80€],
    ) ]] <tab:PrevisioneSprint8>

#underline[Spese della settimana]: 585€ \ #underline[Spesa totale]: *3.850€*

===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,

  [_Attività Svolte_],
  [
    1. Revisione Casi d'Uso con azienda
    2. Inizio riscrittura PoC secondo nuove indicazioni
    3. Continuazione stesura documentazione: AdR e NdP.
    4. Continuazione stesura Casi d'Uso.
  ],

  [_Rischi incontrati_],
  [
    1. RO1 - Mancato rispetto delle tempistiche (@tab:RO1) 
    2. RO2 - Rallentamento dovuto ad altri impegni personali o universitari (@tab:RO2)
  ],

  [_Mitigazione_],
  [
    1. Ridistribuzione delle ore negli sprint successivi.
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 8],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [1], [], [], [3], [70€],
      [_Angela Canazza_], [], [], [1], [], [2], [], [55€],
      [_Riccardo Baldin_], [], [], [1], [], [2], [], [55€],
      [_Alberto Reginato_], [], [], [3], [], [], [2], [105€],
      [_Nicola Simionato_], [4], [], [], [], [], [], [120€],
      [_Amerigo Vegliante_], [], [], [4], [], [], [], [100€],
      [_Laura Venturini_], [], [4], [], [], [], [], [80€],
    ) ]] <tab:RetrospettivaSprint8>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 8],
  )[
    #image("../../asset/GANTT/sprint8-gantt.png")
  ]<GANTT-Sprint8>

#underline[Spese della settimana]: 585€ / 585€ \ #underline[Spesa totale]: * 3.850€ / 3.850€*
#pagebreak()

==== Sprint 9
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [26 gennaio 2026 - 8 febbraio 2026],

  [_Giorni di sprint_], [14],

  [_Attività pianificate_],
  [
    - Finire la stesura del documento di Analisi dei Requisiti quindi *conclusione milestone UCB*.
    - Ultimare il PoC secondo le nuove indicazione ricevute dall'azienda proponente.
    Inoltre, in ordine cronologico:
    1. Continuazione stesura della documentazione prodotta per la milestone RTB.
    2. Revisione del _Glossario_ ed eventuale aggiornamento.
    3. Allineamento di tutti i componenti del gruppo sulle attività che sono state svolte e che verranno svolte; chi ha maggiore esperienza chiarirà i dubbi a chi ne ha avuta meno nei diversi ambiti (Analisi, Progettazione, Sviluppo e Verifica).
  ],
  [_Milestones attive_], [UCB, RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 9],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [4], [], [], [], [100€],
      [_Angela Canazza_], [], [], [4], [], [], [], [100€],
      [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
      [_Alberto Reginato_], [], [], [1], [], [], [2], [55€],
      [_Nicola Simionato_], [], [5], [], [], [], [], [100€],
      [_Amerigo Vegliante_], [], [], [1], [], [], [2], [55€],
      [_Laura Venturini_], [6], [], [], [], [], [], [180€],
    ) ]] <tab:PrevisioneSprint9>

#underline[Spese della settimana]: 690€ \ #underline[Spesa totale]: *4.540€*

===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,

  [_Attività Svolte_],
  [
  1. Conclusione prima stesura di tutti i casi d'uso secondo i requisiti individuati. 
  2. Riformulazione dei Casi d'Uso con aumento della granularità
  3. Stesura del capitolo 5 del Piano di Qualifica
  4. Ultimazione del PoC

  *Conclusa milestone UCB*.

  ],

  [_Rischi incontrati_],
  [
    1. RO1 - Mancato rispetto delle tempistiche (@tab:RO1) 
    2. RO2 - Rallentamento dovuto ad altri impegni personali o universitari (@tab:RO2)
  ],

  [_Mitigazione_],
  [
    1. È stato previsto il recupero delle ore pianificate ma non effettivamente svolte in questo sprint negli sprint successivi
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 9],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [4], [], [], [], [100€],
      [_Angela Canazza_], [], [], [4], [], [], [], [100€],
      [_Riccardo Baldin_], [], [], [4], [], [], [], [100€],
      [_Alberto Reginato_], [], [], [1], [], [], [2], [55€],
      [_Nicola Simionato_], [], [5 → 3], [], [], [], [], [60€],
      [_Amerigo Vegliante_], [], [], [1], [], [], [2], [55€],
      [_Laura Venturini_], [6 → 3], [], [], [], [], [], [90€],
    ) ]] <tab:RetrospettivaSprint9>

*GANTT Diagram*
    #figure(
  caption: [Diagramma di GANTT dello Sprint 9],
  )[
    #image("../../asset/GANTT/sprint9-gantt.png")
  ]<GANTT-Sprint8>

#underline[Spese della settimana]: 560€ / 690€ \ #underline[Spesa totale]: * 4.410€ / 4.540€*
#pagebreak()

==== Sprint 10
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [9 febbraio 2026 - 22 febbraio 2026],

  [_Giorni di sprint_], [14],

  [_Attività pianificate_],
  [
    - Conclusione attività di Analisi e stesura della stessa.
    - Studio della documentazione necessaria per la prossima milestone _PB_.
    - Inizio studio per la Progettazione
    - Verifica di tutti i documenti prodotti dal gruppo.
    - Preparazione del colloquio con il prof. Cardin.
    - Colloquio con il prof. Cardin.
  ],
  [_Milestones attive_], [RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 10],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [2], [], [], [10], [200€],
      [_Angela Canazza_], [], [], [3], [], [], [5], [150€],
      [_Riccardo Baldin_], [], [], [3], [], [], [5], [150€],
      [_Alberto Reginato_], [4], [], [], [], [], [], [120€],
      [_Nicola Simionato_], [], [], [3], [], [], [5], [150€],
      [_Amerigo Vegliante_], [], [4], [], [], [], [], [80€],
      [_Laura Venturini_], [], [], [3], [], [], [5], [150€],
    ) ]] <tab:PrevisioneSprint10>

#underline[Spese della settimana]: 1.000€ \ #underline[Spesa totale]: *5.410€*

===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    1. Conclusione della stesura del documento di Analisi dei Requisiti.
    2. Verifica dei documenti prodotti per prepararsi alla consegna.
    3. Preparazione e svolgimento del colloquio con il prof. Cardin.
    4. *Esito colloquio:* Il gruppo ha ricevuto _semaforo rosso_ a causa di lacune rilevate all'interno del documento di Analisi dei Requisiti.
  ],

  [_Rischi incontrati_],
  [
    1. RR1 - Comprensione errata dei requisiti (@tab:RR1). L'esito del colloquio ha fatto emergere errori di granularità e una modellazione errata di alcuni Casi d'Uso.
    2. RO1 - Mancato rispetto delle tempistiche (@tab:RO1) 
    3. RO2 - Rallentamento dovuto ad altri impegni personali o universitari (@tab:RO2)
  ],

  [_Mitigazione_],
  [
    1. Sono stati raccolti i feedback del professore durante la riunione.
    2. Pianificazione di una revisione delle lacune emerse nell'AdR nello sprint successivo (Sprint 11).
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 10],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [2], [], [], [10 → 9], [185€],
      [_Angela Canazza_], [], [], [3], [], [], [5 → 4], [135€],
      [_Riccardo Baldin_], [], [], [3], [], [], [5], [150€],
      [_Alberto Reginato_], [4], [], [], [], [], [], [120€],
      [_Nicola Simionato_], [], [], [3], [], [], [5], [150€],
      [_Amerigo Vegliante_], [], [4], [], [], [], [], [80€],
      [_Laura Venturini_], [], [], [3], [], [], [5], [150€],
    ) ]] <tab:RetrospettivaSprint10>

*GANTT Diagram*
#figure(
  caption: [Diagramma di GANTT dello Sprint 10],
)[
  #image("../../asset/GANTT/sprint10-gantt.png")
]<GANTT-Sprint10>

#underline[Spese della settimana]: 970€ / 1.000€ \ #underline[Spesa totale]: *5.380€ / 5.410€*

#pagebreak()
==== Sprint 11
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [23 febbraio 2026 - 1 marzo 2026],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    - Inizio sviluppo della documentazione per la milestone _PB_.
    - Revisione del _Glossario_ ed eventuale aggiornamento.
    - Stesura delle slide per la presentazione RTB.
    - Previsto colloquio con prof. Vardanega per la conclusione RTB.
  ],
  [_Milestones attive_], [RTB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 11],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [4], [], [], [], [], [], [120€],
      [_Angela Canazza_], [], [], [], [2], [], [1], [65€],
      [_Riccardo Baldin_], [], [4], [], [], [], [], [80€],
      [_Alberto Reginato_], [], [], [], [2], [], [1], [65€],
      [_Nicola Simionato_], [], [], [], [2], [], [1], [65€],
      [_Amerigo Vegliante_], [], [], [], [], [], [5], [75€],
      [_Laura Venturini_], [], [], [], [], [], [5], [75€],
    ) ]] <tab:PrevisioneSprint11>

#underline[Spese della settimana]: 545€ \ #underline[Spesa totale]: *5.925€*

===== Trascorso
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    - Attività di correzione a seguito del semaforo rosso del prof. Cardin (date da lacune di AdR).
    - Stesura slide per presentazione RTB.
    - Revisione del glossario.
    - Script che automatizza la struttura dei documenti del gruppo.
    - Riunione per decidere eventuali argomenti da portare al prof. Vardanega per il colloqui con lo stesso.
  ],

  [_Rischi incontrati_],
  [
    1. RT1: Strumenti e tecnologie sconosciute (@tab:RT1)
    2. RO1: Mancato rispetto delle tempistiche (@tab:RO1)
    3. RO4: Scarso coordinamento del team (@tab:RO4)
    4. RO8: Mancanza di confronto con l'azienda (@tab:RO8)
  ],
  [_Mitigazione_],
  [
    1. Vengono approfonditi gli studi specialmente per quanto riguarda le tecnologie Frontend (come detto durante il colloquio con il prof. Cardin).
    2. In riunione ne abbiamo discusso e stiamo valutando un eventuale ridimensionamento dei requisiti obbligatori per riuscire a stare all'interno dei termini previsti.
    3. Il team spesso, a causa di impegni personali o di studio, non riesce a coordinarsi per rispettare le tempistiche previste, allungando così i tempi. Per questi ultimi sprint il team si impegna a lavorare unicamente al progetto così da minimizzare le problematiche di tempistiche fino ad ora riscontrate.
    4. Il team in riunione ha deciso che è necessario confrontarsi con il professore riguardo il fatto che l'azienda è assente. 
    5. Il team ha deciso di contattare l'azienda personalmente, mandando una copia dell'analisi dei requisiti effettuata ed approvata dal prof. Cardin.
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 11],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [4 → 3], [], [], [], [], [0 → 3], [135€],
      [_Angela Canazza_], [], [], [], [2 → 0], [], [1 → 4], [60€],
      [_Riccardo Baldin_], [], [4], [], [], [], [], [80€],
      [_Alberto Reginato_], [], [], [], [2 → 0], [], [1 → 4], [60€],
      [_Nicola Simionato_], [], [], [], [2 → 0], [], [3 → 4], [60€],
      [_Amerigo Vegliante_], [], [], [], [], [], [5], [75€],
      [_Laura Venturini_], [], [], [], [], [], [5], [75€],
    ) ]] <tab:PrevisioneSprint11>

*GANTT Diagram*
#figure(
  caption: [Diagramma di GANTT dello Sprint 11],
)[
  #image("../../asset/GANTT/sprint11-gantt.png")
]<GANTT-Sprint11>

#underline[Spese della settimana]: 545€ / 545€ \ #underline[Spesa totale]: *5.925€ / 5.925€*

#pagebreak()

=== Resoconto RTB
Rispetto a quanto originariamente pianificato, la conclusione della milestone RTB (e anche della milestone interna UCB) *ha subito un ritardo di circa 3 sprint* (corrispondenti ad un periodo di giorni ventuno); di conseguenza la data di consegna del progetto è stata spostata dal *16 marzo 2026* al *30 marzo 2026*. \ \
Il ritardo è stato accumulato durante la sessione d’esami invernale. Le cause principali sono:
- Carico di lavoro elevato durante la sessione d’esami.
- Mancanza di comunicazione all'interno del gruppo.
- Mancanza di una chiara e dettagliata organizzazione del lavoro, sia individuale che di gruppo, con conseguente difficoltà nel coordinamento.

_Il gruppo, di unanime accordo, si impegna a dedicarsi totalmente al lavoro di progetto fino alla fine dello stesso; così da poter recuperare il ritardo accumulato e concludere la milestone PB secondo le tempistiche calcolate._ \ \
In @tab:OreTotIndividualiRTB vengono riportate le ore effettivamente svolte per ogni ruolo durante il periodo trascorso. Ed in @fig:tortaRTB è possibile visionare la percentuale di ore dedicate a ciascun ruolo durante la milestone RTB.

#figure(
  caption: [Ore individuali effettive per ruolo durante la milestone RTB.],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,
      
      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Totale*]]],

      [_Angela Favaro_], [6], [1], [19], [], [], [15], [*41 /92*],
      [_Angela Canazza_], [1], [2], [23], [], [2], [11], [*39 /92*],
      [_Riccardo Baldin_], [2], [7], [23], [], [2], [6], [*40 /92*],
      [_Alberto Reginato_], [7], [2], [18], [], [2], [11,5], [*40,5 /92*],
      [_Nicola Simionato_], [5], [6], [14], [], [], [11,5], [*36,5 /92*],
      [_Amerigo Vegliante_], [1], [8], [14], [], [2], [12], [*37 /92*],
      [_Laura Venturini_], [4], [6], [17], [], [], [14], [*41 /92*],
      [*Ore totali*], [*26 /49*], [*32 /56*], [*128 /112*], [*0 /105*], [*8 /148*], [*81 /174*],
    ) ]] <tab:OreTotIndividualiRTB>

#figure(
  caption: [Percentuale ripartizione dei ruoli durante la milestone RTB.],
)[
  #let data = (
    ([*Resp.*], 26),
    ([*Amm.*], 32),
    ([*Analista*], 128),
    ([*Progett.*], 0),
    ([*Programm.*], 8),
    ([*Verif.*], 81),
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
  })]] <fig:tortaRTB>

\ \ 
Il costo totale fino ad ora sostenuto è di *5.925€* su un tetto massimo di *12.845€*.

A seguito dei risultati ottenuti durante la milestone RTB sono state ricalcolate le ore necessarie per ruolo per concludere la milestone PB ragionevolmente.

#figure(
  caption: [Preventivo a finire delle ore individuali per ruolo durante la milestone PB.],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,
      
      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Totale*]]],

      [_Angela Favaro_], [4], [2], [], [16], [19], [12], [*53*],
      [_Angela Canazza_], [2], [], [], [15], [20], [14], [*51*],
      [_Riccardo Baldin_], [], [], [], [15], [20], [20], [*55*],
      [_Alberto Reginato_], [], [6], [], [27], [14], [7], [*54*],
      [_Nicola Simionato_], [], [2], [], [14], [15], [23], [*54*],
      [_Amerigo Vegliante_], [2], [], [], [15], [27], [7], [*51*],
      [_Laura Venturini_], [2], [], [], [15], [20], [15], [*52*],
      [*Ore totali*], [*10*], [*10*], [], [*117*], [*135*], [*98*],
    ) ]] <tab:OreTotIndividualiPB>

#pagebreak()
== Sprint PB
Gli sprint della _Product Baseline_ sono preventivati in numero di quattro. Tutti della durata di sette giorni.

Il giorno di consegna del progetto, al 2 marzo 2026, è previsto per il 30 marzo 2026.

=== Pianificazione dal PB <PianificazionePB>
Attività pianificate per gli sprint della milestone _Product Baseline_: \ 

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 12* #block(inset: (left: 0.5cm))[ 
  _Dal 2 marzo all’8 marzo 2026_

  In questo periodo sarà concentrata l'attività di studio e approfondimento delle tecnologie adottate dal gruppo. \ Inoltre verrà approfondito lo studio in vista della progettazione. \ Per punti, le attività previste per lo sprint sono:
  - Aggiornamento della documentazione prodotta.
  - Inizio stesura del documento di _Specifica Tecnica_
  - Studio individuale sulla progettazione e sviluppo del prodotto finale.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 13* #block(inset: (left: 0.5cm))[ 
  _Dal 9 marzo al 15 marzo 2026_
  
  Qui comincerà l'attività di progettazione effettiva; per il quale ogni membro lavorerà nel produrre valore utile al prodotto finale. \ Prevista la continuazione dell'attività di studio individuale. \ Per punti, le attività previste per lo sprint sono:
  - Aggiornamento della documentazione prodotta.
  - Continuazione attività di studio individuale per progettazione e sviluppo.
  - Produzione di valore concreto dall'attività di progettazione.
  - Progettazione dei test.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 14:* #block(inset: (left: 0.5cm))[ 
  _Dal 16 marzo al 22 marzo 2026_

  In questo sprint è prevista la fine dell'attività di progettazione (*ultimo sprint previsto della milestone _PAB_*) e l'inizio dell'attività concreta di sviluppo del prodotto finale. \ Inoltre è verosimile che anche durante questo periodo sia presente attività di studio individuale, soprattutto relativo alla parte di sviluppo del prodotto. \ Per punti, le attività previste per lo sprint sono:
  - Inizio attività di stesura _Manuale utente_.
  - Fine attività di progettazione, di conseguenza della milestone interna _PAB_.
  - Attività di aggiornamento documentazione prodotta.
  - Inizio attività di sviluppo del prodotto.
  - Inizio attività di test sul prodotto.
]

#line(length: 100%, stroke: 0.5pt + gray)

*Sprint 15:* #block(inset: (left: 0.5cm))[
  _Dal 23 marzo al 30 marzo 2026_
  
  Ultimo sprint previsto per la produzione del _Minimum Viable Product (MVP)_. \ Prevista la continuazione delle attività dello sprint precedente e conclusione della fase di test del prodotto. \  Per punti, le attività previste per lo sprint sono:
  - Conclusione e revisione documentazione prodotta dal gruppo fino a quel momento; individuabile nei documenti esterni di:
    - _Analisi dei requisiti_;
    - _Piano di Progetto_ (con aggiornamento dell'ultimo sprint trascorso);
    - _Piano di Qualifica_;
    - _Specifica Tecnica_;
    - _Manuale Utente_;
    e i documenti interni:
    - _Norme di progetto_;
    - _Glossario_;
  - Conclusione dell'attività di sviluppo e testing del _Minimum Viable Product (MVP)_
  - Colloqui con:
    - i referenti aziendali di _Var Group_ di allineamento sul prodotto finale del gruppo;
    -  i professori Cardin e Vardanega per la consegna del progetto.
]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

Successivamente a questo paragrafo di pianificazione saranno presenti, per ognuno degli sprint PB, il _Preventivo a finire_ ed il _Trascorso_ che riporteranno rispettivamente:
- Pianificazione nel breve termine degli sprint a finire.
- Retrospettiva rispetto alla pianificazione nel breve e lungo termine con conseguenti misure correttive attuate per la gestione dei rischi e delle problematiche incontrate.

#pagebreak()
=== Trascorso PB <TrascorsoPB>
==== Sprint 12
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [2 marzo 2026 - 8 marzo 2026],

  [_Giorni di sprint_], [7],

  [_Attività pianificate_],
  [
    - Previsto colloquio con il prof. Vardanega.
    - Attività di studio progettazione.
    - Stesura v3.0.0 del documento AdR (con correzioni del prof. Cardin).
    - Attività di studio delle tecnologie necessarie allo sviluppo.
    - Revisione PdQ, NdP, Glossario e PdP.
  ],
  [_Milestones attive_], [PB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 12],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [2], [], [1], [], [2], [95€],
      [_Angela Canazza_], [], [], [], [], [], [2], [30€],
      [_Riccardo Baldin_], [], [], [], [1], [], [], [25€],
      [_Alberto Reginato_], [], [], [], [1], [], [], [25€],
      [_Nicola Simionato_], [], [], [], [], [], [2], [30€],
      [_Amerigo Vegliante_], [2], [], [], [1], [], [], [85€],
      [_Laura Venturini_], [], [], [], [], [], [2], [30€],
    ) ]] <tab:PrevisioneSprint12>

#underline[Spese della settimana]: 320€ \ #underline[Spesa totale]: *6.245€*

===== Trascorso dello sprint
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    - Attività di studio progettazione.
    - Stesura v3.0.0 del documento AdR (con correzioni del prof. Cardin).
    - Attività di studio delle tecnologie necessarie allo sviluppo.
    - Revisione PdQ, NdP, Glossario e PdP. 
    - Comunicazione con azienda per richiesta consigli su progettazione.
    - Richiesta di colloqui all'azienda.
  ],

  [_Rischi incontrati_],
  [
    1. Rallentamenti a causa di impegni personali (non abbiamo svolto il colloquio con il professore a causa di un impegno lavorativo di un membro del gruppo). RO2 - @tab:RO2.
  ],

  [_Mitigazione_],
  [
    Non è stato possibile attuare misure di mitigazione in quanto gli impegni personali non è stato possibile posticiparli. \ 
    Abbiamo impiegato il tempo a disposizione studiando in modo più approfondito la progettazione.
  ],
  [_Cambiamenti da attuare nel breve termine_],
  [
    Posticipato colloquio con prof. Vardanega a lunedì 9 marzo. 
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 12],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [2], [], [1], [], [2], [95€],
      [_Angela Canazza_], [], [], [], [], [], [2], [30€],
      [_Riccardo Baldin_], [], [], [], [1], [], [], [25€],
      [_Alberto Reginato_], [], [], [], [1], [], [], [25€],
      [_Nicola Simionato_], [], [], [], [], [], [2], [30€],
      [_Amerigo Vegliante_], [2], [], [], [1], [], [], [85€],
      [_Laura Venturini_], [], [], [], [], [], [2], [30€],
    ) ]] <tab:TrascorsoSprint12>

*GANTT Diagram*
#figure(
  caption: [Diagramma di GANTT dello Sprint 12],
)[
  #image("../../asset/GANTT/sprint12-gantt.png")
]<GANTT-Sprint12>

#underline[Spese della settimana]: 320€ / 320€ \ #underline[Spesa totale]: *6.245€ / 6.245€*
#pagebreak()

==== Sprint 13
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [9 marzo 2026 - 15 marzo 2026],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    - Attività di sviluppo e validazione Frontend e Backend.
    - Attività di progettazione.
    - Revisione del _Glossario_ ed eventuale aggiornamento.
    - Inizio sviluppo documentazione per milestone PB:
      - Specifica Tecnica.
    - Riunione con prof. Vardanega.
  ],
  [_Milestones attive_], [PAB, PB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 13],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [], [15], [], [], [375€],
      [_Angela Canazza_], [], [], [], [], [5], [6], [165€],
      [_Riccardo Baldin_], [], [], [], [14], [], [10], [500€],
      [_Alberto Reginato_], [], [], [], [16], [], [7], [505€],
      [_Nicola Simionato_], [], [2], [], [], [5], [8], [235€],
      [_Amerigo Vegliante_], [], [], [], [14], [], [], [350€],
      [_Laura Venturini_], [2], [], [], [8], [5], [], [335€],
    ) ]] <tab:PrevisioneSprint13>

#underline[Spese della settimana]: 2.465€ \ #underline[Spesa totale]: *8.710€*

===== Trascorso dello sprint
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    - Riunione con prof. Vardanega per colloquio RTB e per chiarimenti a seguito del colloquio.
    - Riunione con azienda proponente.
    - Inizio attività progettazione di architettura monolitica modulare, nello specifico, progettazione per moduli. 
    - Revisione del _Glossario_ ed eventuale aggiornamento.
    - Inizio sviluppo documentazione per milestone PB:
      - Specifica Tecnica.
    - Cambiamento documentazione di verbali, PdQ, NdP e PdP a seguito del colloquio con il prof. Vardanega.
    - Cambiamento AdR secondo quanto specificato dal prof. Cardin a seguito dell’RTB.
  ],
  [_Rischi incontrati_],
  [
    - RT1 - (@tab:RT1). A causa della poca conoscenza con le tecnologie in uso, la progettazione ha richiesto più tempo del previsto e l'attività di sviluppo non è iniziata.
    - Sistemazione dei documenti PdP, PdQ e NdP a seguito del colloquio con il prof. Vardanega, ha portato ad un leggero rallentamento dell'attività di progettazione. 
  ],
  [_Mitigazione_],
  [
    - Scelta di aumentare il numero di meeting del gruppo a cadenza giornaliera.
    - Suddivisione aree di studio per poi discuterne assieme durante le riunioni.
  ],
  [_Cambiamenti da attuare nel breve termine_],
  [
    - Spostamento attività di programmazione backend, perché la progettazione richiede un tempo maggiore di quanto preventivato.
    - Aggiornamento del PdQ (nuove metriche).
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 13],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [2], [12], [], [], [350€],
      [_Angela Canazza_], [], [], [2], [], [], [10], [200€],
      [_Riccardo Baldin_], [], [], [], [12], [], [7], [405€],
      [_Alberto Reginato_], [], [], [], [12], [], [7], [405€],
      [_Nicola Simionato_], [], [2], [], [], [], [8], [160€],
      [_Amerigo Vegliante_], [], [], [], [12], [], [3], [345€],
      [_Laura Venturini_], [2], [], [], [8], [], [3], [305€],
    ) ]] <tab:TrascorsoSprint13>

*GANTT Diagram*
#figure(
  caption: [Diagramma di GANTT dello Sprint 13],
)[
  #image("../../asset/GANTT/sprint13-gantt.png")
]<GANTT-Sprint13>

#underline[Spese della settimana]: 2.170€ / 2.465€ \ #underline[Spesa totale]: *8.415 / 8.710€*
#pagebreak()

==== Sprint 14
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [16 marzo 2026 - 22 marzo 2026],

  [_Giorni di sprint_], [7],

  [_Attività previste_],
  [
    - Sviluppo e verifica codice Frontend.
    - Attività di progettazione .
    - Revisione del _Glossario_ ed eventuale aggiornamento.
    - Sviluppo documentazione per milestone PB:
      - Specifica Tecnica (rilascio v1)
      - Manuale utente
    - Aggiornamento PdQ con nuove metriche.
    - Conclusione milestone PAB.
  ],
  [_Milestones attive_], [PB, PAB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 14],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [], [], [10], [5], [225€],
      [_Angela Canazza_], [2], [], [], [10], [], [3], [355€],
      [_Riccardo Baldin_], [], [], [], [], [10], [5], [225€],
      [_Alberto Reginato_], [], [2], [], [10], [], [], [290€],
      [_Nicola Simionato_], [], [], [], [4], [], [13], [295€],
      [_Amerigo Vegliante_], [], [], [], [4], [10], [], [250€],
      [_Laura Venturini_], [], [], [], [7], [], [4], [235€],
    ) ]] <tab:PrevisioneSprint14>

#underline[Spese della settimana]: 1.875€ \ #underline[Spesa totale]: *10.290€*

===== Trascorso dello sprint
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    - Sviluppo e verifica codice Frontend.
    - Attività di progettazione dei moduli.
    - Aggiornamento PdQ con nuove metriche.
    - Riunione con prof. Cardin su adeguatezza della progettazione.
    - Attività di studio su architetture di deploy.
    - Riformulazione architettura di deploy.
  ],

  [_Rischi incontrati_],
  [
    - A seguito del colloquio con il prof. Cardin abbiamo compreso di non aver concepito l'architettura di deploy in modo corretto. In particolare con l'integrazione di AWS Lambda. RT1 - (@tab:RT1).
    - L'attività di studio personale ha prodotto dei risultati architetturali diversi tra i diversi componenti del gruppo. RO7 - (@tab:RO7).
    - La riformulazione architetturale ha portato ad un rallentamento sull'inizio dell'attività di sviluppo backend. RO1 - (@tab:RO1).
  ],
  [_Mitigazione_],
  [
    - Effettuare uno studio più approfondito sulle tecnologie AWS e i pattern architetturali connessi. 
    - Concentrare l'intero gruppo su attività di progettazione.
    - Comunicazione quotidiana interna al gruppo per mitigare eventuali incomprensioni.
  ],
  [_Cambiamenti da attuare nel breve termine_],
  [
    - Spostamento conclusione attività di progettazione
    - Inizio di redazione dei documenti mancanti (Specifica Tecnica e Manuale Utente).
    - Richiesta colloquio con il prof. Cardin.
    - Allungamento dell'ultimo sprint (di qualche giorno) per poter consegnare nel breve termine.
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 14],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [], [], [], [4], [], [5], [175€],
      [_Angela Canazza_], [2], [], [], [10], [2], [], [340€],
      [_Riccardo Baldin_], [], [], [], [4], [], [5], [175€],
      [_Alberto Reginato_], [], [2], [], [10], [], [], [290€],
      [_Nicola Simionato_], [], [], [], [4], [2], [5], [205€],
      [_Amerigo Vegliante_], [], [], [], [4], [7], [], [205€],
      [_Laura Venturini_], [], [], [], [7], [], [3], [250€],
    ) ]] <tab:TrascorsoSprint14>

*GANTT Diagram*
#figure(
  caption: [Diagramma di GANTT dello Sprint 14],
)[
  #image("../../asset/GANTT/sprint14-gantt.png")
]<GANTT-Sprint14>

#underline[Spese della settimana]: 1.610€ / 1.875€ \ #underline[Spesa totale]: *10.025€ / 10.290€*

#pagebreak()

==== Sprint 15
===== Preventivo a finire
#tabella-viola(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Intervallo temporale_], [23 marzo 2026 - 7 marzo 2026],

  [_Giorni di sprint_], [14],

  [_Attività previste_],
  [
    Ultimo sprint previsto.
    - Decisione definitiva su architettura di deploy.
    - Conclusione attività di progettazione.
    - Conclusione attività di sviluppo e validazione frontend e backend.
    - Conclusione di tutta la documentazione adeguata alla consegna del progetto.
    - Validazione con l'azienda dei risultati prodotti durante gli Sprint.
    - Revisione finale del _Glossario_  ed eventuale aggiornamento.
    - Rilascio del prodotto e relativa documentazione
    - *Consegna del progetto previsto in data 1 aprile 2026*.
  ],
  [_Milestones attive_], [PB, PAB]
)
#figure(
  caption: [Stima delle ore individuali per ruolo allo Sprint 15],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [2], [], [], [], [10], [12], [390€],
      [_Angela Canazza_], [], [], [], [4], [14], [7], [415€],
      [_Riccardo Baldin_], [], [], [], [2], [14], [9], [395€],
      [_Alberto Reginato_], [], [3], [], [], [10], [6], [300€],
      [_Nicola Simionato_], [], [], [], [4], [15], [8], [445€],
      [_Amerigo Vegliante_], [], [], [1], [2], [18], [11], [510€],
      [_Laura Venturini_], [], [], [], [2], [10], [11], [365€],
    ) ]] <tab:PrevisioneSprint15>

#underline[Spese della settimana]: 2.820€ \ #underline[Spesa totale]: *12.845€*

===== Trascorso dello sprint
#table(
  columns: (auto, auto),
  align: horizon,
  stroke: 0.7pt,
  [_Attività Svolte_],
  [
    - Colloquio con il prof. Cardin.
    - Decisione definitiva su architettura di deploy.
    - Conclusione attività di progettazione.
    - Conclusione attività di sviluppo e validazione frontend e backend.
    - Conclusione di tutta la documentazione adeguata alla consegna del progetto.
    - Validazione con l'azienda dei risultati prodotti durante gli Sprint.
    - Revisione finale del _Glossario_  ed eventuale aggiornamento.
    - *Consegna del progetto in data 7 aprile 2026*.
  ],

  [_Rischi incontrati_],
  [
    - Sono stati riscontrati iniziali problemi nell'integrazione tra i microservizi, in particolare nell'utilizzo di chiamate API-REST. RT2 - (@tab:RT2).
    - La documentazione è da aggiornare, è stata trascurata a seguito dei rallentamenti dovuti a problemi architetturali. RO6 - (@tab:RO6).
    - Ci sono stati iniziali rallentamenti nell'utilizzo degli strumenti di monitoraggio dei test (SonarQube). RT1 - (@tab:RT1).
  ],

  [_Mitigazione_],
  [
    - Lavoro in gruppo per l'integrazione dei vari componenti del progetto. 
    - Implementazione di strumenti alternativi a SonarQube per la configurazione degli strumenti di monitoraggio dei test. 
  ]
)

#figure(
  caption: [Ore individuali effettive per ruolo allo Sprint 15],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,

      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Costo*]]],

      [_Angela Favaro_], [3], [], [], [], [10], [12], [420€],
      [_Angela Canazza_], [], [], [], [2], [16], [7], [395€],
      [_Riccardo Baldin_], [], [], [2], [], [14], [9], [395€],
      [_Alberto Reginato_], [], [3], [], [], [10], [6], [300€],
      [_Nicola Simionato_], [], [], [], [8], [14], [8], [545€],
      [_Amerigo Vegliante_], [], [], [1], [], [14], [9], [385€],
      [_Laura Venturini_], [], [], [], [2], [10], [12], [380€],
    ) ]] <tab:TrascorsoSprint15>

*GANTT Diagram*

#figure(
  caption: [Diagramma di GANTT dello Sprint 15],
)[
  #image("../../asset/GANTT/sprint15-gantt.png")
]<GANTT-Sprint15>

#underline[Spese della settimana]: 2.820€ / 2.820€ \ #underline[Spesa totale]: *12.845 / 12.845*
#pagebreak()

=== Resoconto PB
Rispetto a quanto originariamente pianificato, la conclusione della milestone PB *ha subito un ritardo di circa due giorni*; di conseguenza la data di consegna del progetto è stata spostata dal *30 marzo 2026* al *7 aprile 2026*. \ 
Anche rispetto alla milestone interna si sono verificati ritardi corrispondenti ad uno sprint. Questo a causa della scarsa comprensione dell'architettura di deploy da adottare. \ \
Il ritardo è stato accumulato durante la fase di progettazione. Le cause principali sono:
- Scarsa comprensione di tecnologie serverless (AWS).
- Scarsa comprensione delle architetture di deploy adottabili alle nostre tecnologie serverless (Lambda Function).
- Sottovalutato il tempo da dedicare allo studio.
Il gruppo ha scelto di svolgere ricevimenti con i prof. Cardin e Vardanega per avere pareri riguardo al lavoro in fase di svolgimento. Che sono serviti ad aggiustare errori ed incomprensioni su documentazione e teoria progettuale / architetturale.

Inizialmente sono state sopravvalutate le ore utili alla programmazione e questo ha portato ad un calcolo preventivo erroneo del budget di progetto.

In @tab:OreTotIndividualiPBResoconto vengono riportate le ore effettivamente svolte per ogni ruolo durante il periodo di PB. Ed in @fig:tortaPB è possibile visionare la percentuale di ore dedicate a ciascun ruolo durante la milestone RTB.

#figure(
  caption: [Ore individuali effettive per ruolo durante la milestone PB.],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,
      
      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Totale*]]],

      [_Angela Favaro_], [3], [2], [2], [17], [10], [19], [*53 /53*],
      [_Angela Canazza_], [2], [], [2], [12], [18], [19], [*53 /51*],
      [_Riccardo Baldin_], [], [], [2], [17], [14], [21], [*54 /55*],
      [_Alberto Reginato_], [], [5], [], [23], [10], [13], [*51 /54*],
      [_Nicola Simionato_], [], [2], [], [12], [16], [23], [*53 /54*],
      [_Amerigo Vegliante_], [2], [], [1], [17], [21], [14], [*55 /51*],
      [_Laura Venturini_], [2], [], [], [17], [10], [25], [*54 /52*],
      [*Ore totali*], [*9 /10*], [*9 /10*], [*7 /0*], [*115 /117*], [*99 /135*], [*134 /98*],
    ) ]] <tab:OreTotIndividualiPBResoconto>

#figure(
  caption: [Percentuale ripartizione dei ruoli durante la milestone PB.],
)[
  #let data = (
    ([*Resp.*], 9),
    ([*Amm.*], 9),
    ([*Analista*], 7),
    ([*Progett.*], 115),
    ([*Programm.*], 99),
    ([*Verif.*], 134),
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
  })]] <fig:tortaPB>

\ \ 
Il costo totale sostenuto durante la milestone PB è di *6.920€*.

#pagebreak()
== Consuntivo finale di progetto

Il costo finale sostenuto è di *12.845€* su un tetto massimo preventivato di *12.845€*.

A seguito si riportano le ore totale svolte da ogni componente del gruppo nei diversi ruoli (@tab:OreTotIndividualiFinali).

#figure(
  caption: [Ore individuali svolte per ruolo.],
  kind: table,
)[
  #tabella-viola(stroke: 1pt + rgb("#1e90ff"), align: center)
  #align(center)[
    #tabella-viola(
      columns: 8,
      
      stroke: 0.5pt,
      align: center,
      [#text[#strong[*Nome, Cognome*]]],
      [#text[#strong[*Resp.*]]],
      [#text[#strong[*Ammin.*]]],
      [#text[#strong[*Analista*]]],
      [#text[#strong[*Progett.*]]],
      [#text[#strong[*Programm.*]]],
      [#text[#strong[*Verif.*]]],
      [#text[#strong[*Totale*]]],

      [_Angela Favaro_], [9], [3], [21], [17], [10], [34], [*94*],
      [_Angela Canazza_], [3], [2], [25], [12], [20], [30], [*92*],
      [_Riccardo Baldin_], [2], [7], [25], [17], [16], [27], [*90*],
      [_Alberto Reginato_], [7], [7], [18], [23], [12], [24,5], [*91,5*],
      [_Nicola Simionato_], [5], [8], [14], [12], [16], [34,5], [*89,5*],
      [_Amerigo Vegliante_], [3], [8], [15], [17], [23], [26], [*92*],
      [_Laura Venturini_], [6], [6], [17], [17], [10], [39], [*95*],
      [*Ore totali*], [*35*], [*41*], [*135*], [*115*], [*107*], [*215*],
    ) ]] <tab:OreTotIndividualiFinali>

Sebbene le ore personali differiscano tra i componenti nel conteggio finale, ogni membro del gruppo ha svolto un lavoro equamente distribuito. \ La differenza si può individuare nella diversa quantità di studio effettuato dai diversi componenti (più o meno competenti inizialmente in determinati ambiti); inoltre tutti i componenti si sono impegnati a spiegare agli altri le proprie conoscenze, così da ottimizzare le tempistiche di studio individuale. \
Il gruppo ha sempre lavorato in modo collaborativo, con confronto continuo su ogni aspetto del progetto.


La ripartizione dei ruoli finale è sotto rappresentata in @fig:tortaFinale.
#figure(
  caption: [Percentuale ripartizione dei ruoli.],
)[
  #let data = (
    ([*Resp.*], 35),
    ([*Amm.*], 41),
    ([*Analista*], 135),
    ([*Progett.*], 115),
    ([*Programm.*], 107),
    ([*Verif.*], 215),
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
  })]] <fig:tortaFinale>

#pagebreak()

= Analisi e gestione dei rischi
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
<AdR>
Ogni rischio ha:
- una determinata probabilità di avverarsi, che può essere bassa, media o alta;
- un livello di impatto che ha sul progetto, che corrisponde alla gravità del rischio e può essere anch'esso basso, medio o alto.
Abbiamo inoltre elaborato un _piano di mitigazione_ e un _piano di contingenza_ per ogni rischio individuato.
=== Rischi legati ai requisiti
#figure(
  caption: [Rischio Comprensione errata dei requisiti],
  kind: table,
)[
  #tabella-viola(
    columns: 2,
    
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text[*RR1: Comprensione errata dei requisiti* ]],
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
    )[Il team ha avuto un meeting iniziale con l’azienda proponente in cui sono stati individuati alcuni requisiti. Inoltre, si impegna a usare gli Use Case per evitare linguaggio ambiguo e a mantenere il contatto con l’azienda per confronti riguardanti i requisiti.],
    [*Rilevamento*],
    [Il rischio viene individuato in fase di revisione del documento di Analisi dei Requisiti. Inoltre durante i colloqui con l'azienda proponente verranno discussi eventuali dubbi riguardo  i requisiti stilati. Un ulteriore segnale è la difficoltà del team nello stilare i requisiti in maniera chiara e dettagliata. ],
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
  #tabella-viola(
    columns: 2,
    
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text[* RR2: Assenza di priorità dei requisiti* ]],
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
  #tabella-viola(
    columns: 2,
    
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text[*RT1: Strumenti e tecnologie sconosciute*]],
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
  \ #tabella-viola(
    columns: 2,
    
    align: (left, center),
    table.cell(colspan: 2, align: center)[#text[ *RT2: Problemi di integrazione fra componenti * ]],
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
  caption: [Rischio Qualità insufficiente del codice],
  kind: table,
)[
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[* RT3: Qualità insufficiente del codice*] ],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RT4: Codice poco comprensibile* ]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RT5: Test insufficienti* ]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RT6: Gestione inadeguata della sicurezza *]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO1: Mancato rispetto delle tempistiche *]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO2: Rallentamento dovuto ad altri impegni personali o universitari*] ],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO3: Distribuzione dei compiti non equilibrata*]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO4: Scarso coordinamento del team*]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO5: Mancanza di monitoraggio dello stato di avanzamento*]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO6: Documentazione non aggiornata*]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO7: Opinioni divergenti su decisioni da prendere* ]],
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
#tabella-viola(
  columns: 2,
  
  align: (left, center),
  table.cell(colspan: 2, align: center)[#text[*RO8: Mancanza di confronto con l'azienda* ]],
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
