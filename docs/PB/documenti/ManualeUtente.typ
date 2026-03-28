#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola
#import "../../templates/glossario_termini.typ": applica-glossario
#let storia_modifiche = (
  ("0.1.0", "2026/03/24",  "Laura Venturini",  "Amerigo Vegliante",  "Prima stesura di struttura generale")
)

#show: doc => template_documenti(
  titolo: "Manuale Utente",
  descrizione: "Manuale d'uso del software _Code Guardian_ del gruppo _Hepta Code_",
  modifiche: storia_modifiche,
  lista_tabelle: true,
  lista_figure: true,
  doc
)

#show: applica-glossario

= Introduzione
== _Code Guardian_
== Scopo del documento
== Riferimenti
== Glossario

= Requisiti di sistema

= Istruzioni all'uso
== Panoramica del sito
== Interfaccia utente
