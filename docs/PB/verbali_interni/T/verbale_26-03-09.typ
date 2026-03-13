// giorno in formato AAAA-MM-GG
#let giorno = "2026-03-09"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-03-10"

// ordine del giorno 
#let odg = "Suddivisione compiti per lo sviluppo di backend e frontend e discussione su come procedere"


// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


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
#let inizio = "10:00"

// ora di fine dell'incontro
#let fine = "10:45"



#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Sprint retrospective e sprint planning
- Suddivisione in due team per lo sviluppo di backend e frontend.
- Suddivisione dei ruoli per lo sviluppo di backend
- Comunicazioni con l'azienda proponente.


= Svolgimento
== Sprint retrospective e Sprint planning
Abbiamo discusso delle attività svolte durante lo sprint appena concluso e di quelle pianificate per lo sprint successivo. 
Gli obiettivi previsti per lo sprint appena concluso sono stati rispettati.
== Suddivisione in due team per lo sviluppo di backend e frontend
Abbiamo deciso quali membri si occuperanno dello sviluppo del backend e quali allo sviluppo del frontend. Questa decisione è stata presa in base alle preferenze espresse dai membri del team. La suddivisione è la seguente:
- Team di sviluppo del frontend: Laura Venturini, Angela Canazza e Amerigo Vegliante
- Team di sviluppo del backend: Nicola Simionato, Angela Favaro, Alberto Reginato e Riccardo Baldin
== Suddivisione dei ruoli per lo sviluppo di backend
Il team si sviluppo del backend si è suddiviso ii compiti come segue:
- Parte relativa al database e alla gestione dei dati.
- Parte relativa agli agenti.
- Parte relativa all'architettura logica.
== Comunicazioni con l'azienda proponente
Abbiamo ritenuto che una comunicazione più diretta con l'azienda proponente fosse più adeguata per gli argomenti su cui dobbiamo confrontarci, che sono:
- progettazione
- approvazione del mockup
- approvazione dell’AdR
- domande riguardanti lo sviluppo del progetto
Di conseguenza, abbiamo deciso di richiedere un colloquio online con l'azienda tramite un messaggio su Slack, in modo da poter discutere direttamente con loro.

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- Continuato con le attività di progettazione
- Richiesto un colloquio con l'azienda proponente
- Continuato a stendere la documentazione necessaria per il PB.
- Iniziato lo sviluppo della parte di frontend

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Necessità di confronto con l'azienda proponente","Invio messaggio di richiesta di colloquio online all'azienda", "",
  "Suddivisione dei compiti", "Fare riferimento alla Project Board di gruppo su GitHub", "",
  "Suddivisione dei compiti per lo sviluppo del backend", "Fare riferimento alla Project Board di gruppo su GitHUb", ""
)
)