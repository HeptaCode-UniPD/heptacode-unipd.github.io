#let template(
  doc,
  dataPB: "0000-00-00",
  ordine_del_giornoPB: "!!!! INSERIRE ORDINE DEL GIORNO !!!!",
  on-linePB: true,
  new-luogoPB: "la _Quiet Room_ del complesso Paolotti",
  ora_inizioPB: "00:00",
  ora_finePB: "00:00",
  ruoli-presenzaPB: (),
  testoPB: "",
  lista_decisioniPB: (("",""))
) = {

  v(1fr)
  align(center,image("../asset/logo.svg"))
  set text(lang: "it")
  v(1.5cm)

  align(center,text(size: 25pt, weight: "bold")[Verbale Interno #dataPB])

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
        [Verbale Interno #dataPB],
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

    [La riunione si è tenuta in modalità telematica tramite la piattaforma Discord dalle *#ora_inizioPB* alle *#ora_finePB*.]

  } else {

    [La riunione si è tenuta in presenza presso ]
    if new-luogoPB != "la _Quiet Room_ del complesso Paolotti" { [#new-luogoPB ] } else { [la _Quiet Room_ del complesso Paolotti ] }
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
    "Angela Favaro",    ruoli-presenzaPB.at(0),  ruoli-presenzaPB.at(1),
    "Angela Canazza",   ruoli-presenzaPB.at(2),  ruoli-presenzaPB.at(3),
    "Riccardo Baldin",  ruoli-presenzaPB.at(4),  ruoli-presenzaPB.at(5),
    "Alberto Reginato", ruoli-presenzaPB.at(6),  ruoli-presenzaPB.at(7),
    "Amerigo Vegliante",ruoli-presenzaPB.at(8),  ruoli-presenzaPB.at(9),
    "Nicola Simionato", ruoli-presenzaPB.at(10), ruoli-presenzaPB.at(11),
    "Laura Venturini",  ruoli-presenzaPB.at(12), ruoli-presenzaPB.at(13),
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
}