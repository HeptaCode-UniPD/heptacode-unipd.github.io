// giorno in formato AAAA-MM-GG
#let giorno = "2026-03-10"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-03-11"

// ordine del giorno 
#let odg = "Discussione sulla progettazione e preparazione all'incontro con l'azienda proponente"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("1.0.0", "2026-03-10", "Laura Venturini", "Alberto Reginato", "Stesura verbale")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Progettista",   "Presente", //Angela Favaro
    "Verificatore",   "Presente", //Angela Canazza
    "Progettista",   "Presente", //Riccardo Baldin
    "Progettista",   "Presente", //Alberto Reginato
    "Progettista",   "Assente", //Amerigo Vegliante
    "Amministratore",   "Presente", //Nicola Simionato
    "Responsabile",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "11:00"

// ora di fine dell'incontro
#let fine = "11:40"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Modelli da usare nella progettazione.
- Preparazione delle domande per l'azienda.
- Discussione su una suddivisione più dettagliata dei compiti

= Svolgimento
==  Modelli da usare nella progettazione
Dopo una breve discussione riguardante quale struttura architetturale adottare per il progetto, il gruppo ha ipotizzato che una struttura monolitica modulare potesse essere adatta alle esigenze del progetto e alle tempistiche a disposizione. È stato deciso di chiedere un parere all'azienda proponente riguardo questa scelta.
== Preparazione delle domande per l'azienda.
Il gruppo ha discusso assieme i quesiti da porre all'azienda. Le domande preparete e gli argomenti di cui discutere sono stati segnati nella chat di gruppo su Telegram e riguardano soprattutto la progettazione.
== Discussione su una suddivisione più dettagliata dei compiti
Sono state decise le priorità dei moduli da sviluppare della struttura monolitica:
- Per prima cosa si devono sviluppare Agent Module e User Module
- In contemporanea allo sviluppo di Agent Module e User Module, si deve iniziare ad allenare l'agente
- Remedation Module e Analysis Module verranno sviluppati in un secondo momento

= Conclusione
Il gruppo ha deciso di utilizzare la struttura monolitica modulare per il progetto e si è preparato per il colloquio con l'azienda, previsto per le 14:30 dello stesso giorno.

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Utilizzo di una struttura monolitica modulare", "individuazione dei moduli da sviluppare e della loro priorità",
  "Colloquio con l'azienda", "Preparazione scaletta domande da porre"
)
)