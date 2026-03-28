#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart
#import "../../templates/template-documenti.typ": template_documenti, tabella-viola

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
_Code Guardian_ è una piattaforma web che permette di richiedere a degli agenti di analizzare repository GitHub e ottenere report automatici su documentazione, test e sicurezza. \ I developer possono 
//....
== Scopo del documento
Lo scopo del documento Manuale Utente è introdurre gli utenti a _Code Guardian_ e assisterli nel suo utilizzo. Questo documento funge quindi da guida al funzionamento del software e permette agli utenti di sfruttare al massimo le sue funzionalità. \
Questo manuale indica al developer i requisiti di sistema per poi spiegargli come interfacciarsi con l'applicativo web. //...

== Riferimenti
//....
== Glossario
- GitHub
- Repository
- OWASP
- Agente
- Report automatico


= Requisiti di sistema
La funzionalità corretta dell'applicativo web è garantita nei sistemi desktop equipaggiati con sistemi operativi che supportono i seguenti browser:
- Google Chrome (v. 120 o superiore)
- Mozilla Firefox (v. 121 o superiore)
- Microsoft Edge (v. 120 o superiore)
- Apple Safari (v. 17 o superiore)
Il corretto funzionamento è assicurato sui browser menzionati sopra.

= Istruzioni all'uso
== Panoramica del sito
== Interfaccia utente
