// giorno in formato AAAA-MM-GG
#let giorno = ""

// data del prossimo incontro nello stesso formato
#let next-meeting = ""

// ordine del giorno 
#let odg = ""

// switchare in 'false' SE E SOLO SE l'incontro NON si è tenuto online
#let distanza = true

// modificare SE E SOLO SE non si è fatto nella sede di VarGroup (es è in presenza)
//NB: se non è nella loro sede scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD"

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

// partecipanti esterni: lista di coppie (Nome, Ruolo)
// esempio: ("Mario Rossi", "Referente VarGroup", "Giulia Verdi", "CTO")
#let partecipanti_esterni = (
  "", "",
  "","",
)

// ora di inizio dell'incontro
#let inizio = ""

// ora di fine dell'incontro
#let fine = ""

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:

= Svolgimento

= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
Il prossimo incontro è fissato per il giorno #next-meeting

]

#let decisione-azione = ((
  // mettere un riferimento concreto (issue) nella casella azione
  "","",
  "",""
))