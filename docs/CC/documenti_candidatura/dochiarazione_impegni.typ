#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart


#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Valutazione Capitolati]

  #v(2.0cm)
  #align(center, text(size: 15pt, weight: "bold")[Contenuto del documento])

  #align(center,
  [#text(12pt)[ Valutazione e analisi di ogni capitolato proposto con decisione finale
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
  "1.0",
  "2025/10/27",
  "Laura Venturini",
  "Riccardo Baldin",
  "Aggiunte e modifica della conclusione",
  "0.1",
  "2025/10/24",
  "Angela Favaro",
  "Laura Venturini",
  "Scelta capitolato d'appalto"
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
