#v(1fr)
#align(center, [
  #image("../../asset/logo.svg")
  #set text(lang: "it")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Verbale Interno 2025-10-29]
  
  #v(2.0cm)
  
  #align(center, text(size: 15pt, weight: "bold")[Ordine del Giorno])
  
  #align(center,
  [#text(12pt)[ Revisione finale per la candidatura al progetto
  ]])
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
  
  "1.0",
  "2025/10/30",
  "Laura Venturini",
  "Riccardo Baldin",
  "Accettazione verbale proposto",
  "0.1",
  "2025/10/29",
  "Angela Favaro",
  "Angela Canazza",
  "Revisione domanda candidatura"
)

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
      [Verbale Interno 2025-10-29],
    )
    #line(length: 100%, stroke: black)
  ],
)
#set text(size: 11pt, lang: "it")
#show figure.caption: set text(9pt)
#counter(page).update(1)

#text(size: 17pt, weight: "bold")[Luogo e Orario:]

La riunione si è tenuta in presenza presso l'aula _P2A_ del complesso Paolotti dalle *14:00* alle *16:00*.

#text(size: 17pt, weight: "bold")[Partecipanti interni al Team:]

#table(
  columns: (auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Nome*], [*Ruolo*], [*Presenza*]
  ),
  
  "Angela Favaro",
  "Redattore",
  "Presente",

  "Angela Canazza",
  "Verificatore",
  "Presente",

  "Riccardo Baldin",
  "Amministratore",
  "Presente",

  "Alberto Reginato",
  "Amministratore",
  "Presente",

  "Amerigo Vegliante",
  "Responsabile",
  "Presente",

  "Nicola Simionato",
  "Amministratore",
  "Presente",

  "Laura Venturini",
  "Amministratore",
  "Presente",
)

#v(1cm)


#text(size: 17pt, weight: "bold")[Partecipanti esterni al Team:]

Nessuno

#pagebreak()

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()
= Argomenti trattati
L'argomento principale dell'incontro è stata la revisione della documentazione per la sottomissione della candidatura.\ 
In un secondo momento abbiamo ridiscusso alcuni punti della _Way of Working_ apportando dei cambiamenti.
= Svolgimento
== Revisione ultima documentazione prodotta
Abbiamo revisionato assieme le parti di documentazione prodotte; ciò ha aperto una discussione sulle carenze che i documenti finora redatti potessero avere. \ A seguito del confronto, ogni componente che aveva prodotto materiale da cambiare ha modificato le parti interessate.

== Redazione _Glossario_ e _Way of Working_
É stata riconosciuta una scarsa attenzione verso due punti fondamentali della documentazione:
- Way of Working.
- Glossario.
Come contromisura alla carenza rilevata abbiamo deciso di stilare i due documenti. In primo luogo, abbiamo discusso assieme i contenuti; mentre, in un secondo momento, abbiamo diviso tra i membri il lavoro di stesura.
== Ricomposizione repository GitHub
Come ultima attività, abbiamo riscontrato che la struttura iniziale della repository non era sufficientemente efficiente per supportare il lavoro di versionamento. In una fase iniziale, infatti, era stata adottata una configurazione “standard” di tipo scolastico, senza adattarla alle effettive esigenze del progetto.
Per questo motivo, l’organizzazione della repository è stata rivista: sono stati chiusi tutti i branch aperti (ad eccezione del _main_) e successivamente si è proceduto alla definizione di una nuova struttura.

*Nuovo assetto repository GitHub:*
- La repository ora in funzione deve gestire al meglio la documentazione; pertanto non è sensato aprire branch di sviluppo di alcun tipo. Rimane l'idea comune di utilizzare in futuro un sistema di branch di tipo Gitflow.
- Il main rimane il branch che ospita tutte le versioni ufficiali dei documenti e che, in futuro, conterrà le versioni ufficiali del codice inerente al progetto.
- Nel momento in cui un nuovo documento è in fase di redazione:
  1. Si apre un branch (es. branch _Verbale_) dove si lavora al doumento.
  2. Se il verificatore ritiene il documento conforme fa il merge con il branch main chiudendo il branch aperto in precedenza. 
  3. Nel caso in cui il verificatore ritenga il documento non conforme, rigetta il merge con il main e comunica le modifiche da fare al redattore.
= Conclusione
Abbiamo concluso la riunione suddividendoci le ultime cose da fare prima di sottoscrivere ufficialmente la richiesta di candidatura, tali attività sono:
- Concludere la stesura del _Glossario_.
- Concludere la stesura della _Way of Working_.
Una volta eseguiti questi due passaggi il gruppo ritiene di poter presentare la candidatura al progetto _C2 - Code Guardian_. Pone Venerdì 31 Ottobre come termine ultimo di completamento di questi documenti finali.