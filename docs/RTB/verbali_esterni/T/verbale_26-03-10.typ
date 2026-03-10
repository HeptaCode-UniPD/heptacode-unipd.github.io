// giorno in formato AAAA-MM-GG
#let giorno = "2026-03-10"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-03-11"

// ordine del giorno 
#let odg = "Delucidazione sulla progettazione e aggiornamento sui progressi"

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto online
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è nella loro sede capolinea tram scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la sede di VarGroup in Via Salboro, 22B, 35124 Padova PD"


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
#let inizio = "14:30"

// ora di fine dell'incontro
#let fine = "15:00"


#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Aggiornamento sui progressi del progetto
- Esposizione delle idee del team riguardo la progettazione
- Risposta alle domande dell'azienda
= Svolgimento
== Aggiornamento sui progressi del progetto
Il team ha aggiornato l'azienda _VarGroup_ riguardo i progressi fatti fino a questo momento, in particolare ha mostrato il mockup realizzato, il quale è stato ritenuto soddisfacente dall'azienda. L'azienda ha suggerito un piccolo miglioramento: unire la pagina di visualizzazione del team a quella di gestione del team, che nel mockup erano separate. Il gruppo ha accolto il suggerimento e ha deciso di implementare questa modifica.  

== Esposizione delle idee del team riguardo la progettazione
Il team ha presentato le proprie idee riguardo la struttura architetturale per il progetto, proponendo una struttura monolitica modulare; l'azienda ha dichiarato di essere aperta a qualsiasi scelta architetturale proposta del team, precisando però che, a differenza di quanto detto dal team durante la motivazione della scelta, il monolite modulare non rende scalabile il progetto.

== Risposta alle domande dell'azienda
L'azienda ha posto alcune domande al team. In particolare è stato chiesto:
- Se il team avesse già pensato all'infrastruttura da utilizzare su AWS e in locale
- Se per gli agenti si pensasse ancora di usare LangChain come framework o se si fosse pensato a qualche alternativa
- Che file venissero passati a Bedrock per fare il report della documentazione nel PoC

= Conclusione
Il gruppo ha aggiornato l'azienda proponente sui progressi e ha ottenuto consigli validi per il proseguimento e il via libera per la progettazione.

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Accogliere il suggerimento dell'azienda sul mockup","Rendere la pagina di gestione del team e la pagina di visualizzazione del team un'unica pagina"
  "Valutazioni generali dell'azienda sulle tecnologie usate","Valutare Amazon Simple Storage Service (S3) per l'archiviazione Cloud"
)
)