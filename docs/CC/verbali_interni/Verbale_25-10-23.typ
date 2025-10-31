#v(1fr)
#align(center, [
  #image("../../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Verbale Interno 2025-10-23]
  
  #v(2.0cm)
  
  #align(center, text(size: 15pt, weight: "bold")[Ordine del Giorno])
  
  #align(center,
  [#text(12pt)[ Incontro per la decisione definitiva sull’azienda a cui proporci e pianificazione dei prossimi eventi
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
  "2025/10/23",
  "Angela Canazza",
  "Angela Favaro",
  "Conclusione sulla scelta dell’azienda"
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
      [Verbale Interno 2025-10-23],
    )
    #line(length: 100%, stroke: black)
  ],
)
#set text(size: 11pt)
#counter(page).update(1)

#text(size: 17pt, weight: "bold")[Luogo e Orario:]

La riunione si è tenuta per via telematica tramite la piattaforma Discord dalle *19:00* alle *20:05*.

#text(size: 17pt, weight: "bold")[Partecipanti interni al Team:]

#table(
  columns: (auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Nome*], [*Ruolo*], [*Presenza*]
  ),
  
  "Angela Favaro",
  "Verificatore",
  "Presente",

  "Angela Canazza",
  "Redattore",
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


= Conclusioni sulla scelta dell'Azienda
Dopo una serie di riunioni telematiche e scambi di email con le aziende di maggiore interesse, 
abbiamo discusso e rivalutato le opzioni sotto nuovi punti di vista e chiarimenti.
Sebbene inizialmente la nostra preferenza fosse rivolta a Vimar con il progetto _View4Life_, 
a seguito di ulteriori considerazioni il gruppo ha deciso di orientarsi verso VarGroup con il progetto 
_Code Guardian_.

Le motivazioni principali della scelta riguardano la disponibilità dimostrata dal team di 
VarGroup nel rispondere esaustivamente alle domande durante l’incontro e l'interesse che il progetto ha suscitato
nel gruppo.

= Problematiche Riscontrate
Nel corso delle prime fasi del progetto abbiamo riscontrato alcune difficoltà e incertezze, in particolare:

- Dubbi sulla gestione dei ruoli all’interno del gruppo, in particolare sul livello di flessibilità di ciascun ruolo (ad esempio: se un membro non è programmatore per una settimana, può comunque contribuire al codice?).

- Difficoltà nella redazione dei documenti ufficiali, in quanto non disponiamo di esempi formali di verbale.

- Dubbi su come stimare correttamente le ore di lavoro e le date di consegna, dovendo considerare anche il tempo necessario per studiare le nuove tecnologie proposte dal progetto.

- Incertezze sulla stesura della lettera di candidatura al capitolato d'appalto.

= Conclusioni e Obiettivi per il futuro
Entro la prossima riunione, fissata per lunedì 27 ottobre 2025, il team ha pianificato di concludere le seguenti attività:

- inizializzare la repository su GitHub; 

- creare il sito di _HeptaCode_; 

- preparare il PowerPoint per la presentazione, da tenere in data 27 ottobre 2025.

- preparare la candidatura al capitolato d'appalto; 

Al fine di soddisfare tali attività, è previsto un incontro di gruppo in presenza per venerdì 24 ottobre 2025 alle ore 10:00.
