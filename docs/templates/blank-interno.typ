// giorno in formato AAAA-MM-GG
#let giorno = ""

// data del prossimo incontro nello stesso formato
#let next-meeting = ""

// ordine del giorno 
#let odg = ""


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "", "", "", "")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = false


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "",   "", //Angela Favaro
    "",   "", //Angela Canazza
    "",   "", //Riccardo Baldin
    "",   "", //Alberto Reginato
    "",   "", //Amerigo Vegliante
    "",   "", //Nicola Simionato
    "",   "" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = ""

// ora di fine dell'incontro
#let fine = ""



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:

= Svolgimento

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "",""
)
)