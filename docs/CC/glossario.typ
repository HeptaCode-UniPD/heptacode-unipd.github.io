#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../asset/logo.svg")
  
  #v(1.5cm)
  
  #text(size: 25pt, weight: "bold")[Glossario]

  #v(2.0cm)
  #align(center, text(size: 15pt, weight: "bold")[Contenuto del documento])

  #align(center,
  [#text(12pt)[ Termini ambigui e le loro definizioni
  ]])
])
#v(1fr)

#counter(page).update(1)

#pagebreak()
#set text(size: 11pt, lang: "it")
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*],[*Descrizione*]
  ),
  "0.1",
  "2025/10/27",
  "Nicola Simionato",
  "Nome Cognome",
  "Creazione documento e primi termini"
)
#counter(page).update(0)

#pagebreak()
#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(78%) Glossario]
    #v(2pt)
    #line(length: 100%, stroke: black)
  ],
  
)

#outline(title: "Indice")
#set heading(level: 1, numbering: none)

#pagebreak()

= Scopo del Documento
Il fine di questo documento è tenere traccia di tutti i termini, ambigui o meno, che possono apparire all'interno della documentazione o anche durante i meeting e darne una definizione quanto più precisa in modo che le risorse e i discorsi fatti possano essere compresi facilmente.

#pagebreak()

= B


#heading(level: 2, outlined: false)[Branch]
Si tratta di ambienti di sviluppo diversi gli uni dagli altri, tra i quali si può lavorare in modo parallelo e separando logicamente il lavoro.

#pagebreak()

= C

#heading(level: 2, outlined: false)[Commit]
All'interno del VCS si tratta della registrazione di una modifica e quindi un versionamento di gruppi di file, di solito accompagnati da una breve descrizione. Quindi è possibile tornare a una versione o meglio commit precedente.

#pagebreak()

= D

#heading(level: 2, outlined: false)[Discord]
Applicazione di messagistica istantanea, VoIP e di distribuzione digitale. Gli utenti possono interagire privatamente o in comunità che possono contenere canali sia testuali che vocali.

#heading(level: 2, outlined: false)[Docs]
Con questo termine ci si riferisce in generale alla documentazione del progetto, che viene gestita e salvata per l'appunto in una cartella denominata "docs".

#pagebreak()

= G

#heading(level: 2, outlined: false)[Git]
Software di versionamento distribuito dei file di una cartella, utilizzabile da linea di comando.

#heading(level: 2, outlined: false)[GitHub]
Servizio web basato su git. Permette il versionamento dei file di un progetto online, aprendo quindi la collaborazione di più persone sui file. Offre inoltre diversi altri servizi come l'Issue Tracking System, la possibilità di gestire organizzazioni oppure hostare siti web.

#heading(level: 2, outlined: false)[GitHub Action (GHA)]
Sistema di automazione offerto da GitHub e personalizzabile. Permette, al trigger di determinati eventi, di eseguire script ad esempio per la compilazione di file sorgenti oppure testare il software.

#pagebreak()

= P

#heading(level: 2, outlined: false)[Pull]
Comando usato per scaricare la versione più recente di un .ile o di un progetto dall'ambiente condiviso con il resto dei collaboratori.

#heading(level: 2, outlined: false)[Push]
Comando per caricare in un ambiente online, e condiviso dagli sviluppatori, ciò che è stato versionato fino a quel momento. Offero ciò di cui è stato effetuato il commit.

#pagebreak()

= V

#heading(level: 2, outlined: false)[Version Control System (VCS)]
Un sistema di controllo di versione permette di tenere traccia di tutte le modifiche sui file, compresa creazione ed eliminazione, nel tempo. Consentendo inoltre di poter tornare a versioni precedenti e permettendo la collaborazione di più persone nello stesso momento.

#heading(level: 2, outlined: false)[Visual Studio Code (vscode)]
Editor di testo e in particolare di codice sorgente. Offre una gamma di strumenti per facilitare lo sviluppo del codice, come quello di debugging o l'integrazione con Git, anche tramite estensioni.

#pagebreak()

= R

#heading(level: 2, outlined: false)[Repository (repo)]
Ambiente digitale dove vengono salvati tutti i file riguardanti i progetti. Possono esisterne più di una in base alla suddivisione degli argomenti per cui vengono create.

#pagebreak()

= T

#heading(level: 2, outlined: false)[Telegram]
Applicazione di messaggistica istantanea tra utenti e o gruppi. Permette in particolar modo di creare più chat all'interno di un gruppo per dividerne gli argomenti in modo netto. Consente infine l'invio di file di tipo testuale, visivo e audio.

#pagebreak()

= W

#heading(level: 2, outlined: false)[Way of Working (WOW)]
Insieme di regole, metodologie, strumentazione e processi atti ad un avanzamento del progetto secondo modi concordati e accettati dai membri del gruppo.

#pagebreak()

= Z

#heading(level: 2, outlined: false)[Zoom]
Applicazione software, per computer e cellulari, che permette la creazione e gestione di conferenze online, condivisibili anche tramite calendario tramite pianificazione.