// giorno in formato AAAA-MM-GG
#let giorno = "2026-07-03"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-08-03"

// ordine del giorno
#let odg = "cico cicococococ"

// switchare in 'false' SE E SOLO SE l'incontro NON si è tenuto su Discord
#let distanza = true

// modificare SE E SOLO SE non si è fatto in modalità telematica
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza
#let lista-ruoli = (
    "analista",   "presente", //Angela Favaro
    "analista",   "presente", //Angela Canazza
    "analista",   "presente", //Riccardo Baldin
    "analista",   "presente", //Alberto Reginato
    "analista",   "presente", //Amerigo Vegliante
    "analista",   "presente", //Nicola Simionato
    "analista",   "presente" //Laura Venturini
)

// ora di inizio dell'incontro
#let inizio = "20:00"

// ora di fine dell'incontro
#let fine = "21:00"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:

= Svolgimento

= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe:
Il prossimo incontro è fissato per il giorno #next-meeting

]

#let decisione-azione = ((
  "Ciao","benone",
  "come stai","noh"
))