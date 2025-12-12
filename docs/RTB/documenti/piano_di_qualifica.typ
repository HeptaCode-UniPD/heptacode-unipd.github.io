#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart

#v(1fr)
#align(center, [
  #image("../../asset/logo.svg")
  #set text(lang: "it")
  
  #v(1.5cm)
  
  #text(size: 37.5pt, weight: "bold")[Piano di Qualifica]
  
  #v(2.0cm)
])
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
  
  "0.1",
  "2025/12/12",
  "Nicola Simonato",
  "Angela Canazza",
  "Stesura dell'introduzione"
)

#pagebreak()

#set text(size: 11pt, lang: "it")
#show figure.caption: set text(9pt)

#outline(title: "Indice")
#set heading(numbering: "1.")
#pagebreak()

#set page(
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
      [Piano di Qualifica],
    )
    #line(length: 100%, stroke: black)
  ],
)
#counter(page).update(1)
= Introduzione
== Scopo del documento
Il presente documento, Piano di Qualifica, descrive in dettaglio le strategie di verifica e validazione adottate per garantire la qualità del prodotto finale e dei processi realizzativi.\
Il documento sarà soggetto ad aggiornamenti costanti per tutta la durata del progetto; questo permetterà di monitorare i risultati delle verifiche e di intervenire tempestivamente sulla risoluzione di eventuali anomalie o metriche non conformi.
== Scopo del capitolato
Il capitolato per il progetto CodeGuardian ha come oggetto lo sviluppo di una piattaforma web per il monitoraggio e l'analisi di repository GitHub. Il sistema dovrà permettere a diverse tipologie di utenti aziendali di accedere ai report di revisione delle proprie repository e progetti in relazione alla tipologia di utente che lo visualizza.\
Nello specifico, è richiesto l'utilizzo di LLM (Large Language Models) per analizzare tre componenti fondamentali: la documentazione, il codice sorgente (tramite analisi statica e dinamica) e la conformità agli standard di sicurezza OWASP.
== Riferimenti
=== Riferimenti normativi
- #underline[#link("norme_di_progetto.pdf","Norme di progetto")]
- Capitolato d'appalto: #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf","CodeGuardian")] 
=== Riferimenti informativi
- #underline[#link("https://cdn.standards.iteh.ai/samples/35867/36860aa4caba4c84b26051db576456d3/ISO-IEC-90003-2004.pdf","Standard ISO/IEC 90003:2004")]
- Materiale didattico del corso:
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T0.pdf","Qualità di Prodotto")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T08.pdf","Qualità di Processo")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T09.pdf","Verifica e Validazione: introduzione")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T10.pdf","Verifica e Validazione: analisi statica")] 
  - #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T11.pdf","Verifica e Validazione: analisi dinamica aka testing")] 

