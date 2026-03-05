// giorno in formato AAAA-MM-GG
#let giorno = "2026-03-04"

// data del prossimo incontro nello stesso formato
#let next-meeting = "a seguito della risposta del prof. Vardanega alla mail"

// ordine del giorno 
#let odg = "Progettazione e colloquio con il prof. Vardanega"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("1.0.0", "2026-03-05", "Angela Favaro", "Alberto Reginato", "Stesura verbale")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Amministratore",   "Presente", //Angela Favaro
    "Verificatore",   "Presente", //Angela Canazza
    "Verificatore",   "Presente", //Riccardo Baldin
    "Verificatore",   "Presente", //Alberto Reginato
    "Responsabile",   "Assente", //Amerigo Vegliante
    "Verificatore",   "Presente", //Nicola Simionato
    "Verificatore",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "18:20"

// ora di fine dell'incontro
#let fine = "19:20"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Suddivisione ruoli per la presentazione al prof. Vardanega.
- Studio per attività di progettazione.
- Comunicazioni con l'azienda proponente.
- Revisione degli sprint (preventivo a finire).

= Svolgimento
=== Suddivisione ruoli per presentazione RTB (prof. Vardanega)
Abbiamo confermato quasi tutti i ruoli scelti (consultabili nel precedente verbale). Abbiamo cambiato un ruolo:
- Laura Venturini farà la parte di Preventivo a finire e Consuntivo di periodo insieme ad Angela Favaro.
Abbiamo revisionato le slide fino ad ora fatte apportando alcune modifiche a quelle ritenute lacunose o inadatte alla presentazione.
Ci siamo accordati nel riunirci il giorno prima del colloquio con il professore per provare assieme la presentazione. Nel mentre ogni membro preparerà autonomamente la propria parte caricando le proprie slide nella presentazione condivisa sul Telegram.
La mail per la richiesta di colloquio è stata mandata in data odierna (05 marzo 2026), rimaniamo in attesa della risposta.
=== Studio per attività di progettazione
Il team, di unanime accordo, ha stabilito che questo sprint proseguirà l'attività (*di tutti i membri del team*) di studio di progettazione, così da essere produttivi già nei prossimi giorni e cominciare a lavorare attivamente alla progettazione del prodotto.
=== Comunicazioni con l'azienda _Var Group_
Per facilitare la comprensione della progettazione e per dare un feedback su quanto prodotto fino ad ora abbiamo deciso di contattare l'azienda proponente tramite piattaforma Slack. Il messaggio è stato inviato in data 05 marzo 2026 i contenuti del messaggio sono i seguenti:
- Comunicazione di completamento dell'attività di Analisi dei Requisiti.
- Richiesta di informazioni e consigli riguardo l'attività di progettazione.
- Richiesta di un eventuale colloquio per discutere i punti 1. e 2.

=== Revisione degli sprint (preventivo a finire)
A seguito del Diario di Bordo svolto in data 04 Marzo 2026, abbiamo scelto di cambiare gli ultimi sprint preventivati per il progetto.
*Da due diverranno quattro*, a cadenza settimanale (e non più bisettimanale), così da poter avere un controllo più efficacie sullo stato di avanzamento del progetto e sulla rendicontazione delle ore effettivamente svolte dal gruppo.
Il Piano di Progetto verrà aggiornato di conseguenza entro il 05 marzo 2026.
= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- Studiato la progettazione, così da cominciare la produzione in un tempo ragionevole.
- Preparato la presentazione per il colloqui con il prof. Vardanega.
- Aggiornato il Piano di Progetto con i nuovi sprint.

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Inizio attività di progettazione","Studio individuale e ricerca di contatto con l'azienda proponente",
  "Colloqui per conclusione RTB", "Invio mail di richiesta colloqui al prof. Vardanega",
  "Maggiore controllo sullo stato di avanzamento del progetto", "Aumento degli sprint previsti all'interno del Piano di progetto"
)
)