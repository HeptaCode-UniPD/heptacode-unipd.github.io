// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = ""

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = ""

// ordine del giorno 
#let odg = ""

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = false

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "", "", // Angela Favaro
    "", "", // Angela Canazza
    "", "", // Riccardo Baldin
    "", "", // Alberto Reginato
    "", "", // Amerigo Vegliante
    "", "", // Nicola Simionato
    "", ""  // Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = ""
#let fine = ""

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- 

= Svolgimento


= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
- 

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("", "", "",)
)