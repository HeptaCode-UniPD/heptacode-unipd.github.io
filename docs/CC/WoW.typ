#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart
#show link:it =>text(fill:rgb("#6a00f4"),it)


#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Way of Working]

  #v(1.0cm)
  #align(center, text(size: 15pt)[Ingegneria del Software A.A. 2025/2026])

])
#v(1fr)

#counter(page).update(1)

#pagebreak()
#text(size: 17pt, weight: "bold")[Registro delle modifiche:]
#set text(size: 11pt, lang: "it")
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Redattore*], [*Verificatore*],[*Descrizione*]
  ),
  "1.0",
  "2025/10/30",
  "Angela Favaro",
  "Riccardo Baldin",
  "Correzioni prima versione documento",
  "0.3",
  "2025/10/29",
  "Laura Venturini",
  "Riccardo Baldin",
  "Stesura del Way of Working: TIpologia di lavoro",
  "0.2",
  "2025/10/29",
  "Angela Favaro",
  "Riccardo Baldin",
  "Stesura del Way of Working: Strumenti di lavoro",
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
= Documentazione
Ad ogni riunione viene stilato un verbale da un membro del gruppo che svolge il ruolo di _redattore_, mentre un secondo componente ne fa la revisione, quest'ultimo prende il nome di _verificatore_. I verbali possono essere di due tipologie: interni ed esterni.

_È possibile visionare tale documentazione nel sito ufficiale del team *#link("https://heptacode-unipd.github.io","HeptaCode")*._
=== Verbali interni
Nei verbali interni vengono riportati gli argomenti affrontati, i dubbi emersi, le decisioni prese, le conclusioni raggiunte e la pianificazione di azioni e riunioni future discusse dal solo team durante il meeting interno.
=== Verbali esterni
Nei verbali esterni si tiene traccia di quanto discusso tra il gruppo e l’ente esterno dell’azienda di riferimento, includendo dubbi, le relative risposte,  aggiornamenti e progressi apportati dal gruppo al progetto. 

= Strumenti di lavoro
Questa sezione si occupa delle piattaforme e degli strumenti che verranno utilizzati dal gruppo per lo svolgimento di tutte le operazioni. 
== Discord
È il canale di comunicazione utilizzato per tutte le riunioni ufficiali del gruppo in via telematica. Viene utilizzato unicamente per le chiamate e non avviene scambio di documenti o messaggi (che sono riservati ad altri strumenti).
== GitHub
Strumento utilizzato da tutto il gruppo per l'archiviazione di qualsiasi tipo di documento ufficiale. Tutti i componenti del gruppo sono in grado di utilizzare GitHub, è quindi stata la scelta più naturale per l'archivio. La repository presenta la seguente organizzazione:
- Branch _main_: unico branch permanente, sempre aggiornato con le ultime versioni dei documenti.
- Branch _docs_: branch che viene aperto dal redattore di un documento. È un branch che verrà chiuso solo una volta che il verificatore ne avrà verificato la conformità.  
== Telegram
Canale di messaggistica utilizzato da noi componenti del gruppo. Questo canale viene utilizzato per lo scambio di messaggi quotidiani su eventuali dubbi o questioni aperte. \ Il gruppo Telegram è suddiviso in tre sottocanali:
- _Organizzazione_: utile per organizzare i meeting ed eventuali incontri tra i componenti.
- _Documenti_: per dubbi e organizzazione sulla stesura della documentazione.
- _Generali_: per dubbi su questioni generali all'interno del gruppo.
== Typst
Linguaggio scelto per la redazione di ogni documento aggiunto nella repository GitHub ed in generale per ogni documento interno al gruppo.
= Tipologia di lavoro
== Brainstorming

Il gruppo ha deciso di adottare la tecnica del brainstorming: 
1. si raccolgono le idee di ogni membro
2. le si confrontano fra loro 
3. si decide assieme quali decisioni compiere. 
Essendosi rivelata una strategia produttiva, HeptaCode si impegna a mantenerla per tutta la durata del progetto nei meeting in cui ci sono argomenti da discutere.
== Meeting Routine
Nella fase embrionale della strutturazione del gruppo non sono stati stabiliti data e orari fissi per le riunioni, sono solo state organizzate con qualche giorno di anticipo. Crediamo che ciò non sia sostenibile a lungo termine e quindi abbiamo deciso di fissare l'incontro settimanale di lunedì alle 15:00, in casi eccezionali può essere rimandato alle 14:00 di mercoledì. Questo orario può essere usato anche per un eventuale secondo incontro, in caso di necessità. \ I meeting avranno una durata indicativa di un'ora e mezza e si terranno tramite la piattaforma Discord o di persona nelle aule universitarie.