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
#set text(size: 11pt, lang: "it")
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
  ),
  "1.1",
  "2025/10/28",
  "Nicola Simionato",
  "Laura Venturini",
  "Aggiunta analisi dei rischi",
  "0.1",
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
    #align(left)[HeptaCode #h(57%) Valutazione Capitolati 25-10-24]
    #v(2pt)
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
- *Analista*: per l'analisi iniziale prevediamo di svolgere quasi il 15% del tempo totale, dunque #underline[91 ore totali] (13 a testa). Queste ore sono tutte concentrate nelle prime 7 settimane.
- *Progettista*: tenendo conto che l'azienda si è messa a disposizione per fare assieme delle sessioni di design thinking, assegniamo a questo ruolo circa il 20% delle ore a disposizione, che corrisponde a #underline[126 ore] (18 a testa).
- *Programmatore*: pensiamo che un quarto del lavoro totale consista nell'effettivo sviluppo del codice, quindi prevediamo #underline[161 ore] dedicate in totale a questo ruolo, cioè 23 a testa. 
- *Verificatore*: consapevoli dell'importanza del ruolo abbiamo assegnato un quarto delle ore totali alle attività di controllo del codice e della documentazione relativa. Questo significa che per #underline[161 ore] lavoreremo come verificatori, svolgendo 23 ore a testa. 

- *Responsabile*: la funzione principale è rappresentare il team e comunicare con l'azienda, quindi crediamo non necessiti di più di #underline[49 ore totali], quindi 7 a testa.



== Rotazione dei ruoli.
La rotazione dei ruoli verrà eseguita #underline[una volta a settimana per le prime 7 settimane], nella fase di Requirements and Technology Baseline, dopodiché avverrà #underline[una volta ogni due settimane]. In questo modo, ogni membro del gruppo avrà l'occasione di testare il ruolo di analista nelle prime settimane. 

= Pianificazione scadenze
HeptaCode si impegna a consegnare il progetto entro il 16/03/2026.\
\
Le 19 settimane previste sono divise in:
- *Proof of Concept* (7 settimane)
- *Minimum Viable Product* (12 settimane)

