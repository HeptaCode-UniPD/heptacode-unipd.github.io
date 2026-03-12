// giorno in formato AAAA-MM-GG
#let giorno = ""

// data del prossimo incontro nello stesso formato
#let next-meeting = ""

// ordine del giorno
#let odg = ""

// switchare in 'false' SE E SOLO SE l'incontro NON si è tenuto su Discord
#let distanza = true

// modificare SE E SOLO SE non si è fatto in modalità telematica
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza
#let lista-ruoli = (
    "",   "", //Angela Favaro
    "",   "", //Angela Canazza
    "",   "", //Riccardo Baldin
    "",   "", //Alberto Reginato
    "",   "", //Amerigo Vegliante
    "",   "", //Nicola Simionato
    "",   "" //Laura Venturini
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