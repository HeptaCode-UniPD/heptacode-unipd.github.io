// giorno in formato AAAA-MM-GG
#let giorno = "2026-02-15"

// data del prossimo incontro nello stesso formato
#let next-meeting = "22 febbraio 2026"

// ordine del giorno ?
#let odg = "Organizzazione Presentazione Milestone RTB"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2026-02-15", "Amerigo Vegliante", "", "Stesura relazione dell'incontro")
)

// switchare in 'true' SSE l'incontro non si è tenuto su Discord
#let distanza = true


// modificare SSE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo

#let luogo = "Server Discord di Gruppo"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Verificatore",   "Presente", //Angela Favaro
    "Verificatore",   "Presente", //Angela Canazza
    "Verificatore",   "Assente", //Riccardo Baldin
    "Responsabile",   "Presente", //Alberto Reginato
    "Amministratore", "Presente", //Amerigo Vegliante
    "Progettista",   "Presente", //Nicola Simionato
    "Progettista",   "Presente"  //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "10:00"

// ora di fine dell'incontro
#let fine = "11:00"

#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Divisione ruoli per la presentazione RTB
- Decisione su quando presentare candidatura RTB

= Svolgimento

== Divisione ruoli per la presentazione RTB
Il gruppo ha discusso le modalità di esposizione per la milestone Requirements and Technology Baseline (RTB). Per garantire un coinvolgimento attivo di tutti i componenti e dimostrare una conoscenza trasversale del progetto, è stata concordata una suddivisione equa delle parti.

Ogni membro si occuperà di esporre un’area specifica (gestionale, tecnica o analitica), mantenendo però una visione d'insieme. Per facilitare il coordinamento e assicurarsi che ogni membro sia allineato sulle scelte progettuali degli altri, è stata approvata la creazione di un foglio condiviso. In questo documento, ogni componente redigerà una sintesi della propria sezione, permettendo agli altri di acquisire familiarità con i contenuti dell'intero gruppo.

== Decisione su quando presentare candidatura RTB
A seguito di un'analisi dello stato di avanzamento dei documenti e dei materiali tecnici, il gruppo ha valutato la prontezza del materiale prodotto finora. È emersa la volontà collettiva di procedere con la candidatura ufficiale in tempi brevi per ottimizzare i tempi della revisione.

Il gruppo ha deliberato all'unanimità di presentare la candidatura per la presentazione RTB entro la scadenza del 16-02-2026. Questo margine permetterà di rifinire gli ultimi dettagli della presentazione e del materiale di supporto nelle ore immediatamente successive all'incontro odierno.

= Conclusione
L'incontro si conclude alle ore 11:00. Il gruppo si dichiara soddisfatto della pianificazione stabilita e si impegna a completare le descrizioni sul foglio condiviso entro la fine della giornata, così da procedere alla formalizzazione della candidatura come previsto.

]


// decisione azione
#let decisione-azione = ((
  "Vogliamo candidarci per la presentazione RTB","Abbiamo deciso di presentare la candidatura entro il 16-02-2026",
  "Vogliamo presentare in modo distribuito equamente le parti relative alla presentazione RTB","Abbiamo definito una divisione equa delle parti per tutti i membri del gruppo.",
  "Vogliamo assicurarci che tutti i membri del gruppo siano in pari sui tutti contenuti e le scelte fatte relative alla milestone RTB del progetto.","Creiamo un foglio condiviso dove tutti i membri del gruppo scrivono una descrizione della propria parte."
)
)