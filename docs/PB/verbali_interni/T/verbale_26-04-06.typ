// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-04-06"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "non ci saranno, auspicabilmente, più incontri ufficiali"

// ordine del giorno 
#let odg = "Conclusione attività di progetto, resoconto finale"

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "Presente", "Responsabile", // Angela Favaro
    "Presente", "Verificatore", // Angela Canazza
    "Presente", "Verificatore", // Riccardo Baldin
    "Presente", "Amministratore", // Alberto Reginato
    "Presente", "Verificatore", // Amerigo Vegliante
    "Presente", "Verificatore", // Nicola Simionato
    "Presente", "Verificatore"  // Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "14:00"
#let fine = "15:00"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Conclusioni finali attività progettuale
- Problematiche stesura verbali
- Scelta data di consegna

= Svolgimento
== Conclusioni finali attività progettuale
Il gruppo ha concluso l'attività di verifica e di programmazione del prodotto. \ 
Mancano da redarre le conclusioni della documentazione strettamente dipendenti da queste attività (ST, PdP, PdQ).
== Problematiche stesura verbali
A seguito dei rallentamenti dovuti alle problematiche di integrazione ed alla pausa pasquale; il gruppo si è accorto di non aver proceduto in modo regolare nella stesura degli ultimi verbali interni. \ Il rilascio degli stessi avverrà nei giorni successivi. 
== Scelta data di consegna
A seguito della conclusione di quasi tutte le attività utili alla conclusione del progetto il gruppo ritiene che la data conclusiva del progetto sarà il *7 aprile 2026*. \ Di conseguenza la mail al professore verrà consegnata il 7 o 8 aprile.

= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
- Concluso e pubblicato la documentazione ufficiale.
- Rilasciato gli ultimi verbali interni.
- Mandato la mail di candidatura al prof. Cardin.

Il prossimo incontro è fissato per il giorno: #next-meeting
]

// Inserire le coppie (Decisione, Azione)
#let decisione-azione = (
  ("Concludere documentazione", "I vari membri si impegnano nella conclusione della documentazione alla consegna.", "No ID",
  "Rilascio verbali interni", "Il gruppo rilascerà i verbali delle ultime 3 riunione alla consegna.", "No ID",
  "Consegna progetto", "Contattare il prof. Cardin", "No ID")
)