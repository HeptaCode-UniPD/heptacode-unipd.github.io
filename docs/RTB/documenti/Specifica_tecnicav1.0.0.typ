#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola
#import "../../templates/glossario_termini.typ": applica-glossario

#let storia_modifiche = (
  ("0.1.0", "2026/03/07", "Angela Favaro", "",  "Creazione documento, impostazione macroaree")
)

#show: doc => template_documenti(
  titolo: "Specifica Tecnica",
  descrizione: "Il presente documento contiene la specifica tecnica del gruppo _Hepta Code_ relativo al capitolato _Code Guardian_ proposto dall'azienda _Var Group_.",
  modifiche: storia_modifiche,
  lista_tabelle: true,
  lista_figure: true,
  doc
)

#show: applica-glossario

= Introduzione
== Scopo del documento
== Glossario
== Riferimenti
=== Riferimenti normativi
=== Riferimenti informativi

= Tecnologie 
== Linguaggi di programmazione
== Framework per la codifica
== Librerie
== Tecnologie per ..

= Architettura
== Architettura logica
== Architettura di deployment
== Design pattern
== Progettazione

= Stato dei requisiti funzionali
== Stato per requisito
== Grafici di stato dei requisiti