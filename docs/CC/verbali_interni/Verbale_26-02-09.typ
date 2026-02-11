#v(1fr)
#align(center, image("../../asset/logo.svg"))
#set text(lang: "it")
#v(1.5cm)

#align(center, text(size: 25pt, weight: "bold")[Verbale Interno 2026-02-09])

#v(2.0cm)

#align(center, text(size: 15pt, weight: "bold")[Ordine del Giorno])

#align(center, [#text(12pt)[
  Revisione compiti per il completamento della documentazione \
  Dimostrazione tecnica del Proof of Concept (POC) e revisione slide \
  Organizzazione scadenze e invio comunicazioni ai docenti
]])

#v(1fr)
#counter(page).update(0)

#pagebreak()
#text(size: 17pt, weight: "bold")[Registro delle modifiche:]
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
  ),
  "0.1", "2026/02/09", "Alberto Reginato", "", "Stesura verbale"
)

#pagebreak()
#set page(
  numbering: "1",
  header: [
    #set table(stroke: none)
    #table(
      columns: 3,
      [Hepta Code],
      [#rect(width: 100%, height: 1pt, fill: white, stroke: none)],
      [Verbale Interno 2026-02-09],
    )
    #line(length: 100%, stroke: black)
  ],
)

#set text(size: 11pt, lang: "it")
#show figure.caption: set text(9pt)
#counter(page).update(1)

#text(size: 17pt, weight: "bold")[Luogo e Orario:]

#v(0.2cm)

La riunione si è tenuta in modalità telematica tramite la piattaforma Discord dalle *10:00* alle *11:00*.

#v(0.2cm)

#text(size: 17pt, weight: "bold")[Partecipanti interni al Team:]

#table(
  columns: (auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Nome*], [*Ruolo*], [*Presenza*]
  ),
  "Angela Favaro", "Analista", "Presente",
  "Angela Canazza", "Analista", "Presente",
  "Riccardo Baldin", "Analista", "Assente",
  "Alberto Reginato", "Responsabile", "Presente",
  "Amerigo Vegliante", "Amministratore", "Assente",
  "Nicola Simionato", "Analista", "Presente",
  "Laura Venturini", "Analista", "Presente",
)

#pagebreak()

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()

= Argomenti trattati
Il gruppo ha definito la ripartizione delle attività in vista della milestone RTB, assegnando i task residui necessari al completamento della documentazione. Sono stati inoltre presentati il Proof of Concept (PoC) e le relative slide per la presentazione.

== Documentazione
Il team ha verificato lo stato di avanzamento della stesura dei casi d'uso (UC) all'interno dell'Analisi dei Requisiti, definendo la ripartizione delle sezioni mancanti. Analogamente, sono stati assegnati i compiti relativi all'aggiornamento e al completamento del Piano di Progetto (PdP) e del Piano di Qualifica (PdQ).

== Proof of Concept (POC)
È stata illustrata una demo del PoC focalizzata sull'analisi della documentazione di repository. La discussione ha approfondito la logica di funzionamento del backend, supportata da una dimostrazione pratica. Successivamente, è stata analizzata la bozza delle slide per la presentazione del PoC al fine di concordarne i contenuti definitivi. 

== Organizzazione Scadenze
Il gruppo ha fissato al 12 febbraio il termine ultimo per l'invio della comunicazione e della presentazione del PoC al docente.

#v(0.5cm)

#text(size: 17pt, weight: "bold")[Decisioni e Azioni:]

#table(
  columns: (auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Decisione*], [*Azione*]
  ),
  "Valutazione aggiunta feature al PoC", "Invio email di chiarimento al docente",
  "Definizione data invio materiale a Cardin", "Invio comunicazione entro il 12/02",
  "Pianificazione completamento documentazione", "Completamento dei task assegnati entro il 12/02",
)