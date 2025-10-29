#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart
#show link:it =>text(fill:rgb("#6a00f4"),it)


#v(1fr)
#align(center, [
  #set text(lang: "it")
  //#image("../../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Way of Working]

  #v(1.0cm)
  #align(center, text(size: 15pt)[Ingegneria del Software A.A. 2025/2026])

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
    [*Versione*], [*Data*], [*Redattore*], [*Verificatore*],[*Descrizione*]
  ),
  "0.1",
  "2025/10/29",
  "Angela Canazza",
  "Riccardo Baldin",
  "Stesura del Way of Working: Introduzione",
)
#counter(page).update(0)

#pagebreak()
#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(57%) Way of Working]
    #v(2pt)
    #line(length: 100%, stroke: black)
  ],
  
)

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()

= Introduzione
== Informativa del documento
Il documento si impegna a descrivere la strumentazione e le metodologie di lavoro che vengono attuate nel progetto da parte di ogni membro del gruppo.
== Glossario
I termini tecnici utilizzati nella documentazione del progetto sono riportati nel *_#link("glossario.pdf","Glossario")_*, dove ne viene spiegato il significato per evitare ambiguità.
== Documentazione
Ad ogni riunione viene stilato un verbale da un membro del gruppo che svolge il ruolo di _redattore_, mentre un secondo componente ne fa la revisione, quest'ultimo prende il nome di _verificatore_. I verbali possono essere di due tipologie: interni ed esterni.

_È possibile visionare tale documentazione nel sito ufficiale del team *#link("https://heptacode-unipd.github.io","HeptaCode")*._
=== Verbali interni
Nei verbali interni vengono riportati gli argomenti affrontati, i dubbi emersi, le decisioni prese, le conclusioni raggiunte e la pianificazione di azioni e riunioni future discusse dal solo team durante il meeting interno.
=== Verbali esterni
Nei verbali esterni si tiene traccia di quanto discusso tra il gruppo e l’ente esterno dell’azienda di riferimento, includendo dubbi, le relative risposte,  aggiornamenti e progressi apportati dal gruppo al progetto. 