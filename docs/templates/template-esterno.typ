#let template(doc,
  data: "0000-00-00",
  ordine_del_giorno: "!!!! INSERIRE ORDINE DEL GIORNO !!!!",
  lista_versioni: (("0.0","0000/00/00","Mario","Luigi","Combattimento con Bowser")),
  on-line: false,
  new-luogo: "la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD",
  ora_inizio: "00:00",
  ora_fine: "00:00",
  ruoli-presenza: (),
  presenza: ()
) = {
  v(1fr)
  align(center,image("../asset/logo.svg"))
  set text(lang: "it")
  v(1.5cm)

  align(center,text(size: 25pt, weight: "bold")[Verbale Interno #data])

  v(2.0cm)

  align(center, text(size: 15pt, weight: "bold")[Ordine del Giorno])

  
  align(center, [#text(12pt)[#ordine_del_giorno]])
  
  v(1fr)
  counter(page).update(0)

  pagebreak()
  text(size: 17pt, weight: "bold")[Registro delle modifiche:]
  table(
    columns: (auto,auto,auto,auto,auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
    ),
    ..lista_versioni,
  )

  pagebreak()
  set page(
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
        [Verbale Interno #data],
      )
      #line(length: 100%, stroke: black)
    ],
  )

  set text(size: 11pt, lang: "it")
  show figure.caption: set text(9pt)
  counter(page).update(1)

  text(size: 17pt, weight: "bold")[Luogo e Orario:]

  v(0.2cm)

  if on-line{
    [La riunione si è tenuta in modalità telematica tramite la piattaforma Google Meet dalle *#ora_inizio* alle *#ora_fine*]
  }else{
    [La riunione si è tenuta in presenza presso ] 
    if new-luogo != "la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD "{ [#new-luogo ] } else { [la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD ] } 
    [dalle *#ora_inizio* alle *#ora_fine*]
  }

  text()[.]

  v(0.2cm)

  text(size: 17pt, weight: "bold")[Partecipanti interni al Team:]

  table(
    columns: (auto, auto, auto),
    inset: 9pt,
    align: horizon,
    table.header(
      [*Nome*], [*Ruolo*], [*Presenza*]
    ),
    
    "Angela Favaro",
    ruoli-presenza.at(0),
    ruoli-presenza.at(1),

    "Angela Canazza",
    ruoli-presenza.at(2),
    ruoli-presenza.at(3),

    "Riccardo Baldin",
    ruoli-presenza.at(4),
    ruoli-presenza.at(5),

    "Alberto Reginato",
    ruoli-presenza.at(6),
    ruoli-presenza.at(7),

    "Amerigo Vegliante",
    ruoli-presenza.at(8),
    ruoli-presenza.at(9),

    "Nicola Simionato",
    ruoli-presenza.at(10),
    ruoli-presenza.at(11),

    "Laura Venturini",
    ruoli-presenza.at(12),
    ruoli-presenza.at(13),
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
    
    "Stefano Dindo",
    "Rappresentante VarGroup"
  )
 
  pagebreak()

  outline(title: "Indice")
  set heading(numbering: "1.")

  pagebreak()

  [#doc]
}