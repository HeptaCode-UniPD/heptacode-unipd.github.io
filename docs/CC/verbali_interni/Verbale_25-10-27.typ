#v(1fr)
#align(center, [
  #image("../../asset/logo.svg")
  #set text(lang: "it")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Verbale Interno 2025-10-27]
  
  #v(2.0cm)
  
  #align(center, text(size: 15pt, weight: "bold")[Ordine del Giorno])
  
  #align(center,
  [#text(12pt)[ Incontro per la redazione dei documenti di candidatura del capitolato d'appalto scelto.
  ]])
])
#v(1fr)
#counter(page).update(0)

#pagebreak()

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
  ),
  
  "1.0",
  "2025/10/27",
  "Angela Favaro",
  "Alberto Reginato",
  "Preparazione documentazione candidatura"
)

#pagebreak()
#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(61%) Verbale Interno 2025-10-27]
    #v(2pt)
    #line(length: 100%, stroke: black)
  ],
)
#set text(size: 11pt, lang: "it")
#show figure.caption: set text(9pt)
#counter(page).update(1)

#text(size: 17pt, weight: "bold")[Luogo e Orario:]

La riunione si è tenuta in presenza presso la _Quiet Room_ del complesso Paolotti dalle *14:30* alle *18:00*.

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
  "Amministratore",
  "Presente",

  "Riccardo Baldin",
  "Amministratore",
  "Presente",

  "Alberto Reginato",
  "Verificatore",
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
La riunione è stata strutturata su tre punti:
- Gestione repository GitHub.
- Preparazione documenti per la candidatura.
- Comprensione e primi passi verso la costituzione del _Way of Working_.
= Svolgimento
== Gestione repository GitHub 
Inizialmente la riunione ha trattato il tema della gestione della repository. Abbiamo discusso sulle tipologie di repository più consone al lavoro attuale e anche a quello futuro. 
Abbiamo optato per un sistema di branching come illustrato in @branches che è il più conosciuto da tutti noi membri ed anche l'unico che è stato usato da ognuno di noi almeno una volta.
#figure(
  image("../../asset/gitBranching.png", width: 11cm),
  caption: [struttura dei branch all'interno della repository]
)<branches>
\
Oltre a questi branch abbiamo deciso di aprirne altri utili a:
- gestione della documentazione (branch _docs_)
- gestione delle GitHub Actions (branch _actions_)
- gestione e sviluppo del sito web (branch _pages_)
== Preparazione documenti per la candidatura
Siamo poi passati all'argomento che ha impiegato più tempo: la domanda di candidatura del capitolato d'appalto scelto (C2 - Code Guardian). \
Qui abbiamo svolto assieme le previsioni sul monte ore totale per lo svolgimento del progetto e abbiamo scelto come ruotare i ruoli durante l'attività. Come ultimo abbiamo fatto la stima di fine progetto.\ Il tutto è riassunto nel documento '_Dichiarazione_di_impegno_' all'interno della repository. 
== Comprensione e primi passi verso la costituzione del _Way of Working_
Dopo aver svolto questi due punti abbiamo discusso sulle decisioni appena prese; che di fatto vanno a costituire un primo abbozzo di way of working (cioè: turni, ruoli e metodo di versionamento che ci daremo durante il progetto).\ Questa discussione finale ha dato a tutti i membri una visione più ampia di come il gruppo andrà a strutturarsi ed ha ufficializzato le prime regole fisse interne (sopra elencate).  
= Conclusione
La riunione si è conclusa suddividendoci i compiti da svolgere nella redazione dei diversi documenti.