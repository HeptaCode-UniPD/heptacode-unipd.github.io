#show link: it => text(fill: rgb("#6a00f4"), it)
#set par(justify: true)
#align(center + horizon, [#image("../../assets/logo.svg")])

#v(1.5cm)

#align(center + horizon, text(size: 25pt)[Lettera di Presentazione])

#counter(page).update(0)

#pagebreak()
#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(61%) Lettera di Presentazione]
    #v(2pt)
    #line(length: 100%, stroke: black)
  ],
)
#counter(page).update(1)

#text(size: 17pt)[= Introduzione]

Gentile professor Vardanega,

Con la presente il gruppo 7, *Hepta Code*, invia formalmente la propria candidatura per l’assegnazione del capitolato *C2* proposto da *Var Group S.p.A*. dal titolo *Code Guardian: Piattaforma ad agenti per l’audit e la remediation dei repository software*.

#v(1cm)

#text(size: 17pt)[= Membri del gruppo]
Il gruppo *Hepta Code* è composto dai 7 seguenti membri:

#v(1cm)

#align(center)[

  #table(
    columns: (auto, auto),
    inset: 9pt,
    stroke: none,
    align: horizon,

    fill: (col, row) => {
      if row == 0 {
        rgb("#6a00f4")
      } else if calc.odd(row) {
        rgb("#2d00f730")
      } else {
        rgb("#f2008910")
      }
    },

    table.header(
      text(fill: white)[*Nome e Cognome*],
      text(fill: white)[*Matricola*]
    ),

  "Riccardo Baldin",
  "2075548",

  "Angela Canazza",
  "2111030",

  "Angela Favaro",
  "2111015",

  "Alberto Reginato",
  "2110450",

  "Nicola Simionato",
  "2113190",

  "Amerigo Vegliante",
  "2111004",

  "Laura Venturini",
  "2101061",
)
]


#pagebreak()

#text(size: 17pt)[= Motivazioni]

La scelta di questo progetto è stata in primo luogo dettata dall’interesse suscitato dai temi trattati e dalle tecnologie coinvolte, in maniera condivisa tra tutti i membri del gruppo. In secondo luogo ha inciso in maniera significativa anche la disponibilità dimostrata dal referente aziendale nel chiarire i nostri dubbi e, di conseguenza, da quanto riteniamo che la comunicazione tra le due parti possa avvenire agevolmente ed in maniera chiara. È possibile consultare una valutazione più approfondita riguardante ciascun capitolato nel documento: #link("analisi_capitolati.pdf")[Analisi capitolati].

All’interno della repository sono presenti anche i verbali redatti a seguito delle riunioni private tra i membri del gruppo e degli incontri con i referenti delle aziende *Ergon* e *Var Group S.p.A.* 

Verbali *interni*:

- Primo incontro interno: #link("../verbali_interni/Verbale_25-10-16.pdf")[Verbale 25/10/16]
- Secondo incontro interno: #link("../verbali_interni/Verbale_25-10-23.pdf")[Verbale 25/10/23]
- Terzo incontro interno: #link("../verbali_interni/Verbale_25-10-27.pdf")[Verbale 25/10/27]

Verbali *esterni*:

- Incontro con Ergon: #link("../verbali_esterni/Verbale_Esterno_25-10-20.pdf")[Verbale Esterno 25/10/20]
- Incontro con Var Group S.p.A. : #link("../verbali_esterni/Verbale_Esterno_25-10-21.pdf")[Verbale Esterno 25/10/21]

#v(1cm)

#text(size: 17pt)[= Analisi Preliminare e Dichiarazione d'impegno]
Il gruppo ha condotto, al fine di una pianificazione quanto più accurata possibile del progetto, un’analisi dei potenziali rischi che potrebbero insorgere ed uno studio preliminare della struttura che il progetto potrebbe assumere. 
Nel seguente documento viene stilata una lista esaustiva e, per ciascuno di essi, vengono indicate le possibili strategie attuabili per mitigarli: #link("dichiarazione_impegni.pdf")[Dichiarazione d'impegni].

#v(1cm)

#text(size: 17pt)[= Rendicontazione ore e costi]
Lo studio preliminare condotto ha portato a pianificare l’impegno di ciascun membro del gruppo  a 92 ore produttive, ruotando in maniera equa ed omogenea l’assunzione di tutti i ruoli coinvolti. Ogni componente di Hepta Code si impegna a ricoprire un unico ruolo per volta, al fine di sperimentare il nostro Way of Working da tutte le diverse prospettive.

Il costo stimato del progetto è di *12845€* e la data di consegna è stata pianificata il *16 Marzo 2026*. Una dissertazione più approfondita di queste stime è consultabile all’interno del seguente documento: #link("dichiarazione_impegni.pdf")[Dichiarazione d'impegni].