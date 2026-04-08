#let tabella-viola(..args) = {
  show table.cell.where(y: 0): set text(white, weight: "bold")
  table(
    fill: (col, row) => if row == 0 { rgb("#a36ee8") } else { none },
    ..args
  )
}

#let template_documenti(
  titolo: "",
  descrizione: "",
  modifiche: (),
  lista_tabelle: false,
  lista_figure: false,
  body
) = {
  set text(size: 11pt)
  set text(lang: "it")
  show table.cell: block.with(breakable: true)
  show link: set text(fill: color.linear-rgb(121, 1, 238))
  show link: underline
let versione = if modifiche != () {
    modifiche.at(0).at(0) } else {"1.0.0"}

  // FRONTESPIZIO
  v(1fr)
  align(center, [
    #image("../asset/logo.svg")
    #v(1.33cm)
    #text(size: 25pt, weight: "bold")[#titolo]
    #v(1.33cm)
    #block(inset: (left: 10%, right: 10%))[
      #text(12pt)[#eval(descrizione, mode: "markup")]
    ]
    #v(1.33cm)
    #text(size: 10pt, weight: "bold")[email: #link("mailto:heptacode7@gmail.com") ]
    
    #text(size: 10pt, weight: "bold")[documentazione: #link("https://heptacode-unipd.github.io/")[heptacode-unipd.github.io]]
  ])
  v(1fr)
  counter(page).update(0)
  pagebreak()

  // REGISTRO MODIFICHE
  if modifiche != () {
  heading(level: 1, numbering: none, outlined: false)[Registro delle modifiche]
  v(0.5cm)
  tabella-viola(
    columns: (auto, auto, auto, auto, 1fr),
    inset: 10pt,
    align: (center, center, center, center, left),
    table.header([*Versione*], [*Data*], [*Autore*], [*Verificatore*], [*Descrizione*]),
    ..modifiche.flatten()
  )
  pagebreak()
  }
  // INDICE DEI CONTENUTI E SE PRESENTI INDICE TABELLE E INDICE FIGURE
  outline(title: "Indice dei contenuti")
  
  if lista_tabelle {
    pagebreak()
    outline(title: "Indice delle tabelle", target: figure.where(kind: table))
  }
  
  if lista_figure {
    pagebreak()
    outline(title: "Indice delle figure", target: figure.where(kind: image))
  }

  pagebreak()

  // HEADER E FOOTER
  set page(numbering: "1",
    header: [
      #set table(stroke: none)
      #table(
        columns: (auto, 1fr, auto),
        [Hepta Code],
        [],
        [#titolo v#versione],
      )
      #v(-3pt)
      #line(length: 100%, stroke: 0.5pt)
    ],
    footer: context {
      let i = counter(page).at(here()).first()
      let n = counter(page).final().first()
      
      line(length: 100%, stroke: 0.5pt)
      set align(center)
      set text(size: 9pt)
      [Pagina #i di #n]
    }
  )
  counter(page).update(1)

  
  
  // --- Stili del Corpo ---
  set heading(numbering: "1.")
  
  body
}