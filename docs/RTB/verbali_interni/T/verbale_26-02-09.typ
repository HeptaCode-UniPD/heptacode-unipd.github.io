// giorno in formato AAAA-MM-GG
#let giorno = "2026-02-09"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-02-17"

// ordine del giorno 
#let odg = "
  Revisione compiti per il completamento della documentazione, 
  Dimostrazione tecnica del Proof of Concept (POC) e revisione slide,
  Organizzazione scadenze e invio comunicazioni ai docenti.
"

// VERSIONE CORRETTA: Nessuna doppia parentesi! Lista piatta.
#let modifiche = (
  "1.0.0", "2026-02-09", "Alberto Reginato", "Angela Favaro", "Stesura verbale"
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE E SOLO SE non si è fatto in modalità telematica
#let luogo = "Server Discord di Gruppo"

// ruolo e presenza 
#let lista-ruoli = (
    "Analista",   "Presente", //Angela Favaro
    "Analista",   "Presente", //Angela Canazza
    "Analista",   "Assente", //Riccardo Baldin
    "Responsabile",   "Presente", //Alberto Reginato
    "Amministratore",   "Assente", //Amerigo Vegliante
    "Analista",   "Presente", //Nicola Simionato
    "Analista",   "Presente" //Laura Venturini
)

// ora di inzio e fine
#let inizio = "10:00"
#let fine = "11:00"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Documentazione: ripartizione delle sezioni mancanti e assegnazione task.
- Proof of Concept (PoC): dimostrazione tecnica e analisi delle slide di presentazione.
- Organizzazione scadenze per la milestone RTB.

= Svolgimento
== Documentazione
Il team ha verificato lo stato di avanzamento della stesura dei casi d'uso (UC).all'interno dell'Analisi dei Requisiti, definendo la ripartizione delle sezioni mancanti. Analogamente, sono stati assegnati i compiti relativi all'aggiornamento e al completamento del Piano di Progetto (PdP) e del Piano di Qualifica (PdQ).

== Proof of Concept (POC)
È stata illustrata una demo del PoC focalizzata sull'analisi della documentazione di repository. La discussione ha approfondito la logica di funzionamento del backend, supportata da una dimostrazione pratica. Successivamente, è stata analizzata la bozza delle slide per la presentazione del PoC al fine di concordarne i contenuti definitivi. 

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
completato tutti i task assegnati e inviato al docente le comunicazioni e le slide di presentazione del PoC entro la scadenza limite del 12 febbraio.

Il prossimo incontro è fissato per il giorno #next-meeting
]

// VERSIONE CORRETTA: Nessuna parentesi tonda per ogni riga, tutto su un'unica lista piatta!
#let decisione-azione = (
  "Fine stesura AdR", "Angela F. e Angela C si occuperanno della parte dei requisiti, Amerigo V. si occuperà dei diagrammi di attività, Nicola S. si occuperà della stesura dei grafici UML.",
  "Stesura finale Piano di Qualifica","Se ne occuperà Laura V.",
  "Stesura finale Norme di Progetto","Se ne occuperò Riccardo B.",
  "Valutazione aggiunta feature al PoC", "Invio email di chiarimento al docente",
  "Definizione data invio materiale a Cardin", "Invio comunicazione entro il 16/02",
  "Pianificazione completamento documentazione", "Completamento dei task assegnati entro il 16/02"
)
