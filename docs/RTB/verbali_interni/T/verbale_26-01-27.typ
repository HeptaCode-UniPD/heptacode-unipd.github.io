// giorno in formato AAAA-MM-GG
#let giorno = "2026-01-27"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-01-30"

// ordine del giorno
#let odg = "Sprint Retrospective, organizzazione in vista della consegna del RTB"


// versione , giorno, autore, verificatore, descrizione
// ("     " , "    ", "    ", "          ", "          ")
// esempio
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("1.0.0", "2026-01-27", "Laura Venturini", "Angela Favaro", "Stesura del verbale")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Analista",   "Presente", //Angela Favaro
    "Analista",   "Presente", //Angela Canazza
    "Analista",   "Presente", //Riccardo Baldin
    "Programmatore",   "Presente", //Alberto Reginato
    "Verificatore",   "Presente", //Amerigo Vegliante
    "Amministratore",   "Presente", //Nicola Simionato
    "Responsabile",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "11:45"

// ora di fine dell'incontro
#let fine = "12:45"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell’incontro sono stati:
- Gestione del ritardo causato dagli esami.
- Data di candidatura all’RTB.
- Pianificazione attività per la settimana corrente.

= Svolgimento
== Gestione del ritardo causato dagli esami
Sono stati discussi i ritardi accumulati a causa degli impegni universitari e la loro gravità; sono stati ritenuti recuperabili entro la prima metà di febbraio. Alcune attività assegnate per lo sprint scorso, ma non ancora completate, sono state rimandate a dopo la conclusione dell’AdR. Queste attività sono:
- la revisione del documento NdP;
- la stesura dell'ultimo capitolo programmato del PdQ.

== Data di candidatura per l’RTB.
La candidatura per l’RTB è stata posticipata rispetto a quella precedentemente prevista a causa del periodo di sessione universitaria, tuttavia si pensa sia fattibile consegnare entro la prima metà di febbraio, idealmente entro il 10. Per conseguire questo scopo è stato deciso di dare priorità alla riformulazione degli Use Case, la stesura dei requisiti nell’AdR e la conclusione del PoC. 

== Pianificazione attività per la settimana corrente
Gli analisti si dedicheranno con urgenza al completamento dell’AdR, per il quale si deve:
- riformulare parte degli UC;
- aggiungere ulteriori UC;
- scrivere i requisiti;
- completare i diagrammi di attività.
Il programmatore deve concludere lo sviluppo del PoC.

= Conclusione
Il gruppo ha stabilito che, per potersi candidare all’RTB entro metà febbraio, si dedicherà esclusivamente all’AdR e PoC, tenendo in considerazione che gli altri documenti sono quasi ultimati.

Il prossimo incontro è fissato per il giorno #next-meeting
]

#let decisione-azione = ((
  "Candidarsi al RTB entro metà febbraio", "Dedicarsi completamente ad AdR e PoC",
  "Focalizzarsi su AdR", "Impiegati più analisti per questo sprint",
  "Rimediare ai ritardi", "Recuperare il tempo dedicato agli esami invece che al progetto durante il mese di febbraio"
)
)