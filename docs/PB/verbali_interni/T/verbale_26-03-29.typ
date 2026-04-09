// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-29"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-04-01"

// ordine del giorno 
#let odg = "Test di integrazione e documentazione finale"

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "Responsabile", "Presente", // Angela Favaro
    "Programmatore", "Presente", // Angela Canazza
    "Programmatore", "Presente", // Riccardo Baldin
    "Amministratore", "Presente", // Alberto Reginato
    "Programmatore", "Presente", // Amerigo Vegliante
    "Verificatore", "Assente", // Nicola Simionato
    "Verificatore", "Presente"  // Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "10:00"
#let fine = "11:00"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Problematiche su test di integrazione
- Redazione documentazione finale
- Contatto con azienda
- Programmazione data di consegna

= Svolgimento
== Problematiche su test di integrazione
Il gruppo ha dichiarta conclusa l'integrazione tra il frontend ed il MS3. \ Il prossimo passo saranno le integrazioni tra il frontend ed il microservizio di "Analysis Management", è stata calcolata una giornata di lavoro (quest'oggi) per completare questa fase. \ Successivamente si passerà all'integrazione tra MS2 ed MS1, che è stato anch'esso stimato in una giornata lavorativa. 
== Redazione documentazione finale
Il gruppo sta continuando con la redazione della documentazione ufficiale; il PdP è quasi ultimato mancano solo le ultime rifiniture (nonchè la conclusione dell'attuale sprint); NdP si trova anche in fase conclusiva. \ L'AdR è quasi terminata va solo effettuato il rilascio. Infine per la Specifica Tecnica si attende la fase di completamento delle integrazioni per poterla rilasciare. \ Il PdQ deve attendere la fine della fase di sviluppo per essere completato, quindi viene messo in pausa.
== Contatto con azienda
Il gruppo ha contattato l'azienda per comunicare lo stato di avanzamento del progetto ed ha richiesto un incontro per il giorno 1 aprile 2026.
== Programmazione data di consegna
Il gruppo ritiene di poter consegnare il progetto (e quindi inviare la mail al prof. Cardin in data 1 aprile 2026).

= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
- Proseguito con i test e lo sviluppo finale.
- Concluso la redazione della documentazione ufficiale.
- Contattato l'azienda.

Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione, Id)
#let decisione-azione = (
  ("Mostrare all'azienda il prodotto", "Azienda contattata tramite slack", "No ID",
  "Concludere le fasi di integrazione", "I programmatori di occuperanno delle integrazione tra i microservizi", "No ID",
  "Concludere la redazione della documentazione ufficiale", "Responsabile, Amministratore e Verificatori si occupernno della documentazione", "No ID")
)