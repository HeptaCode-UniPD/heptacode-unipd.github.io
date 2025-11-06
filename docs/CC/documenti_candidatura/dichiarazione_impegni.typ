#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart


#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Dichiarazione degli impegni]

  #v(2.0cm)
  #align(center, text(size: 15pt, weight: "bold")[Contenuto del documento])

  #align(center,
  [#text(12pt)[ Stima dei costi, analisi dei ruoli, pianificazione scadenze e analisi dei rischi
  ]])
])
#v(1fr)

#counter(page).update(1)

#pagebreak()
#text(size: 17pt, weight: "bold")[Registro delle modifiche:]
#set text(size: 11pt, lang: "it")
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
  ),
  "3.0",
  "2025/11/06",
  "Alberto Reginato",
  "-",
  "Integrazione tabella ripartizione ore/persona",
  "2.0",
  "2025/10/28",
  "Nicola Simionato",
  "Laura Venturini",
  "Aggiunta analisi dei rischi",
  "1.0",
  "2025/10/27",
  "Angela Canazza",
  "Laura Venturini",
  "Dichiarazione degli impegni"
)
#counter(page).update(0)

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
      [Dichiarazione degli impegni],
    )
    #line(length: 100%, stroke: black)
  ],
)

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()

= Stima dei costi
== Tabella dei costi
Il gruppo ha tenuto una riunione per concordare la suddivisione delle ore da dedicare al progetto.
L’azienda presso cui ci si sta candidando propone il progetto “Code Guardian”, un sistema che analizza il codice presente nelle repository e ne fornisce una valutazione o una versione migliorata a seconda del risultato.
Per questo motivo è stato dato particolare rilievo al ruolo del verificatore.

#set table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 5,
  fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },  
  stroke: 0.5pt + gray,
  align: center,
  
  [#text(fill: rgb("#f5f5f7"))[#strong[Ruolo]]],
  [#text(fill: rgb("#f5f5f7"))[#strong[Ore Individuali]]], 
  [#text(fill: rgb("#f5f5f7"))[#strong[Ore Totali]]], 
  [#text(fill: rgb("#f5f5f7"))[#strong[Costo (€/ore)]]], 
  [#text(fill: rgb("#f5f5f7"))[#strong[Costo Totale (€)]]],
  [Responsabile],[7],[49],[30],[210],
  [Amministratore],[8],[56],[20],[160],
  [Analista],[13],[91],[25],[325],
  [Progettista],[18],[126],[25],[450],
  [Programmatore],[23],[161],[15],[345],
  [Verificatore],[23],[161],[15],[345],
  [#strong[Totale]],[92],[644],[],[12845],
)
]

Il costo finale è stato calcolato sulla base dello stipendio orario previsto per ciascun ruolo.
Il totale ammonta a 12.845 €, corrispondenti a 92 ore di lavoro per ciascun membro del gruppo.

== Percentuale di lavoro per ruolo



#let data = (
  ([Analista], 91),
  ([Progettista], 126),
  ([Verificatore], 161),
  ([Programmatore], 161),
  ([Responsabile], 49),
  ([Amministratore], 56),
)


#align(center)[#cetz.canvas({
  let darkness = rgb("#3d01f6")
  let dark = rgb("#a814e1")
  let medium = rgb("#f365b0")
  let light = rgb("#fba8b7")
  let colortext = rgb("#1e0046")
  let colors = gradient.linear(darkness, dark, medium, light)
  chart.piechart(
    data,
    value-key: 1,
    label-key: none,
    radius: 4,
    stroke: black,
    slice-style: colors,
    inner-radius:1,
    outset: -1,
    inner-label: (content: (value, label) => [#text(colortext, str(value))], radius: 105%),
    outer-label: (content: "%", radius: 120%)
  )
})]

== Analisi dei ruoli
- *Amministratore*: deve selezionare e controllare le risorse informatiche a supporto del way of working. Pensiamo sia adeguato assegnargli un #underline[totale di 56 ore], cioè 8 ore a testa.
- *Analista*: per l'analisi iniziale prevediamo di svolgere quasi il 15% del tempo totale, dunque #underline[91 ore totali] (13 a testa). Queste ore sono concentrate nelle prime 7 settimane.
- *Progettista*: tenendo conto che l'azienda si è messa a disposizione per fare assieme delle sessioni di design thinking, assegniamo a questo ruolo circa il 20% delle ore a disposizione, che corrisponde a #underline[126 ore] (18 a testa).
- *Programmatore*: pensiamo che un quarto del lavoro totale consista nell'effettivo sviluppo del codice, quindi prevediamo #underline[161 ore] dedicate in totale a questo ruolo, cioè 23 a testa. 
- *Verificatore*: consapevoli dell'importanza del ruolo abbiamo assegnato un quarto delle ore totali alle attività di controllo del codice e della documentazione relativa. Questo significa che per #underline[161 ore] lavoreremo come verificatori, svolgendo 23 ore a testa. 

- *Responsabile*: la funzione principale è rappresentare il team e comunicare con l'azienda, quindi crediamo non necessiti di più di #underline[49 ore totali], quindi 7 a testa.



== Rotazione dei ruoli.
La rotazione dei ruoli verrà eseguita #underline[una volta a settimana per le prime 7 settimane], nella fase di Requirements and Technology Baseline, dopodiché avverrà #underline[una volta ogni due settimane]. In questo modo, ogni membro del gruppo avrà l'occasione di testare il ruolo di analista nelle prime settimane. 

Riassumendo, ciascun membro del gruppo svolgerà per ogni ruolo le seguenti ore:

#set table(stroke: 1pt + rgb("#1e90ff"), align: center)
#align(center)[
  #table(
  columns: 7,
  fill: (row, col) => if col == 0 { rgb("#9856D8")} else { none },  
  stroke: 0.5pt + gray,
  align: center,
    [#text(fill: rgb("#f5f5f7"))[#strong[*Nome, Cognome*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Resp.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Ammin.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Analista*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Progett.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Programm.*]]],
    [#text(fill: rgb("#f5f5f7"))[#strong[*Verif.*]]],

  [Riccardo Baldin], [7], [8], [13], [18], [23], [23],
  [Angela Canazza], [7], [8], [13], [18], [23], [23],
  [Angela Favaro], [7], [8], [13], [18], [23], [23],
  [Alberto Reginato], [7], [8], [13], [18], [23], [23],
  [Nicola Simionato], [7], [8], [13], [18], [23], [23],
  [Amerigo Vegliante], [7], [8], [13], [18], [23], [23],
  [Laura Venturini], [7], [8], [13], [18], [23], [23],
)
]

= Analisi dei Rischi

== Nuove Tecnologie

Dal capitolato sono emerse diverse tecnologie, linguaggi di programmazione e database, consigliati dall'azienda proponente, con cui dovremmo obbligatoriamente interfacciarci. Le competenze dei membri del gruppo riguardo tali strumenti è in gran parte ignota se non assente, date anche le diverse esperienze passate dei componenti del team.

Questo problema potrebbe portare ad un iniziale rallentamento, dovendo prendere la mano con i diversi software e al contempo continuare l'avanzamento del progetto.

La contromisura che è stata decisa, coerente anche con le dichiarazioni delle aziende, prevede nelle prime attività del gruppo un allineamento degli strumenti che dovremo usare, con anche la possibilità di essere affiancati dalla proponente in una serie di incontri verticalizzanti sulle tecnologie da apprendere.

== Rispetto delle Tempistiche

Essendo il nostro primo grande progetto basato su una richiesta di un'azienda potrebbe essere molto facile imporre vincoli temporali e milestone non ponderate oppure sovrastimate. Questo potrebbe portare a un problema di rispetto delle tempistiche indicate negli obiettivi, a cui conseguirebbe il rischio di trovarci con parecchio lavoro arretrato.

Oltre a poter chiedere aiuto alla azienda che ci affiancherà, una soluzione possibile è quella di stabilire una suddivisione efficace degli obiettivi in base alla mole di lavoro potenzialmente richiesta e all'importanza per il prodotto finale. Di conseguenza è sensato eseguire spesso delle valutazioni sull'operato giornaliero e settimanale per confrontarlo con le scadenze fissateci, in modo da capire se le nostre previsioni possono essere reali oppure troppo ottimistiche.

Nel caso la situazione attuale sia diversa dalla stima delle scadenze, con controlli periodici e frequenti è possibile nella maggior parte dei casi ridistribuire la mole di lavoro, sempre in comunicazione con la proponente, oppure cambiare le tempistiche in modo da poter consegnare il prodotto atteso entro la scadenza.

== Soddisfacimento Aspettative Proponente

Le richieste della proponente sono vaghe se ci si ferma solo alla presentazione dell'appalto. Basandosi esclusivamente su tale documento si potrebbe rischiare di non capire appieno le caratteristiche che il prodotto finale dovrebbe rispettare.

L'unica soluzione plausibile per questo problema è quello di una sostanziosa comunicazione con l'appaltatrice in modo da definire dettagliatamente gli obiettivi da raggiungere, potendoli definire anche in modo granulare. Logicamente ha senso spendere una grande quantità di energie sotto questo aspetto nelle prime settimane di lavoro, per un'analisi dei requisiti scrupolosa, così da poter procedere successivamente alla parte di progettazione senza dover tornare a modificare le richieste.

Inoltre questo punto è complementare al precedente in quanto solo grazie a una buona visione della quantità di feature e del lavoro che si deve fare è possibile una stima delle tempistica adeguata.


= Pianificazione scadenze
HeptaCode si impegna a consegnare il progetto entro il 16/03/2026.

Le 19 settimane previste saranno divise in:
- *Proof of Concept* (7 settimane)
- *Minimum Viable Product* (12 settimane)
