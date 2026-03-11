#let template(
  doc,
  dataPB: "0000-00-00",
  ordine_del_giornoPB: "!!!! INSERIRE ORDINE DEL GIORNO !!!!",
  on-linePB: false,
  new-luogoPB: "la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD",
  ora_inizioPB: "00:00",
  ora_finePB: "00:00",
  ruoli-presenzaPB: (),
  partecipanti-esterniPB: (("Stefano Dindo", "Rappresentante VarGroup")),
  testoPB: "",
  lista_decisioniPB: (("",""))

) = {

  v(1fr)
  align(center,image("../asset/logo.svg"))
  set text(lang: "it")
  v(1.5cm)

  align(center,text(size: 25pt, weight: "bold")[Verbale Esterno #dataPB])
  v(2.0cm)

  align(center, text(size: 15pt, weight: "bold")[Ordine del Giorno])
  align(center, [#text(12pt)[#ordine_del_giornoPB]])
  v(1fr)
  counter(page).update(0)
  pagebreak()

  set page(
    numbering: "1",
    header: [
      #set table(stroke: none)
      #table(
        columns: 3,
        [Hepta Code],
        [#rect(width: 100%, height: 1pt, fill: white, stroke: none)],
        [Verbale Esterno #dataPB],
      )
      #line(length: 100%, stroke: black)
    ],
  )

  set text(size: 11pt, lang: "it")
  show figure.caption: set text(9pt)
  counter(page).update(1)
  text(size: 17pt, weight: "bold")[Luogo e Orario:]
  v(0.2cm)

  if on-linePB {
    [La riunione si è tenuta in modalità telematica tramite la piattaforma *#new-luogoPB* dalle *#ora_inizioPB* alle *#ora_finePB*.]
  } else {
    [La riunione si è tenuta in presenza presso ]
    if new-luogoPB != "la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD" { [#new-luogoPB ] } else { [la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD ] }
    [dalle *#ora_inizioPB* alle *#ora_finePB*.]
  }
  v(0.2cm)

  text(size: 17pt, weight: "bold")[Partecipanti interni al Team:]
  table(
    columns: (auto, auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Nome*], [*Ruolo*], [*Presenza*]
    ),
    "Angela Favaro",     ruoli-presenzaPB.at(0),  ruoli-presenzaPB.at(1),
    "Angela Canazza",    ruoli-presenzaPB.at(2),  ruoli-presenzaPB.at(3),
    "Riccardo Baldin",   ruoli-presenzaPB.at(4),  ruoli-presenzaPB.at(5),
    "Alberto Reginato",  ruoli-presenzaPB.at(6),  ruoli-presenzaPB.at(7),
    "Amerigo Vegliante", ruoli-presenzaPB.at(8),  ruoli-presenzaPB.at(9),
    "Nicola Simionato",  ruoli-presenzaPB.at(10), ruoli-presenzaPB.at(11),
    "Laura Venturini",   ruoli-presenzaPB.at(12), ruoli-presenzaPB.at(13),
  )
  v(0.5cm)

  text(size: 17pt, weight: "bold")[Partecipanti esterni al Team:]
  table(
    columns: (auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Nome*], [*Ruolo*]
    ),
    ..partecipanti-esterniPB,
  )
  pagebreak()

  outline(title: "Indice")
  set heading(numbering: "1.")
  pagebreak()
  [#testoPB]
  table(
    columns: (auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Decisione*], [*Azione*]
    ),
    ..lista_decisioniPB,
  )

  pagebreak()
  
  v(0.1fr)
  align(center)[
    Data:
    #align(right)[ #line(start: (0%,-1.5%), length: 7cm, stroke: .4pt) ]
    #v(.3cm)
    Firma:
    #align(right)[ #line(start: (0%,-1.5%), length: 7cm, stroke: .4pt) ]
  ]
}