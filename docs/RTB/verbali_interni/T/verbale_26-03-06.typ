// giorno in formato AAAA-MM-GG
#let giorno = "2026-03-06"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-03-09"

// ordine del giorno 
#let odg = "Preparazione in vista della Presentazione RTB e suddivisione ruoli lavori MVP"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "Discord"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Amministratore",   "Presente", //Angela Favaro
    "Verificatore",   "Presente", //Angela Canazza
    "Verificatore",   "Presente", //Riccardo Baldin
    "Verificatore",   "Presente", //Alberto Reginato
    "Responsabile",   "Presente", //Amerigo Vegliante
    "Verificatore",   "Presente", //Nicola Simionato
    "Verificatore",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "18:00"

// ora di fine dell'incontro
#let fine = "18:45"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Prova in vista della presentazione RTB in data 2026-03-09.
- Suddivisione lavori in Backend e Frontend.

= Svolgimento
== Prova in vista della presentazione RTB in data 2026-03-09
La prova effettuata è durata circa 17:30 minuti, quindi 2:30 minuti in più rispetto al tempo a nostra disposizione ma contiamo su una rapidità di esposizione più organizzata in data d'esame e della flessibilità del professore. 
== Suddivisione lavori in Backend e Frontend
Il team ha deciso di dividersi in due sottogruppi che si occupino rispettivamente del lato Frontend e Backend del prodotto MVP, i due sottogruppi sono i seguenti:
- *Frontend*:
  - Amerigo Vegliante
  - Angela Canazza
  - Laura Venturini
- *Backend*:
  - Nicola Simionato
  - Alberto Reginato
  - Riccardo Baldin
  - Angela Favaro

Inoltre, proprio per questa suddivisione, sono stati creati due ulteriori sottocanali ad hoc nel canale Telegram di gruppo per favorire una comunicazione rapida e in tema con lo stato dei lavori nei vari ambiti del nostro applicativo. 

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- Studiato la presentazione con l'obbiettivo di avere una esposizione chiara, completa e rapida per stare nei tempi prestabiliti.
- Modificato alcune slide di presentazione, nello specifico quelle riguardo la valutazione dei lavori fino alla milestone RTB.

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Esposizione della presentazione completa e nei tempi.","Studio individuale delle rispettive parti e ultimazione slide di presentazione.",
  "Divisione dei lavori sul MVP in sottogruppi Frontend e Backend.", "Assegnazione compiti in sottogruppi e creazione canali di comunicazione se"
)
)