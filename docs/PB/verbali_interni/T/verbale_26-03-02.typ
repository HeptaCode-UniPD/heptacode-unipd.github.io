// giorno in formato AAAA-MM-GG
#let giorno = "2026-03-02"

// data del prossimo incontro nello stesso formato
#let next-meeting = "4 marzo 2026"

// ordine del giorno ?
#let odg = "Organizzazione Presentazione Milestone RTB"

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
    "Verificatore",   "Presente", //Riccardo Baldin
    "Verificatore",   "Presente", //Alberto Reginato
    "Responsabile", "Presente", //Amerigo Vegliante
    "Verificatore",   "Presente", //Nicola Simionato
    "Verificatore",   "Presente"  //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "17:00"

// ora di fine dell'incontro
#let fine = "17:45"

#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Divisione ruoli per la presentazione RTB
- Decisione su quando presentare candidatura per la seconda parte RTB

= Svolgimento

== Divisione ruoli per la presentazione RTB
Il gruppo ha discusso le modalità di esposizione per la milestone Requirements and Technology Baseline (RTB). Per garantire un coinvolgimento attivo di tutti i componenti e dimostrare una conoscenza trasversale del progetto, è stata concordata una suddivisione equa delle parti.

Ogni membro si occuperà di esporre un’area specifica (gestionale, tecnica o analitica), mantenendo però una visione d'insieme. Per facilitare il coordinamento e assicurarsi che ogni membro sia allineato sulle scelte progettuali degli altri, è stata approvata la creazione di un foglio condiviso. In questo documento, ogni componente redigerà una sintesi della propria sezione, permettendo agli altri di acquisire familiarità con i contenuti dell'intero gruppo.
#table(
  columns: (auto, auto), 
  inset: 10pt,               
  align: horizon,            
  
  [*Membro del gruppo*], [*Ruolo nella presentazione*], 
  [Nicola Simionato, Alberto Reginato],[Aggiornamento comprensione obbiettivi del capitolato rispetto alla candidatura],
  [Angela Canazza, Laura Venturini],[Modifiche apportate ai prodotti "in progress"],
  [Amerigo Vegliante, Riccardo Baldin],[Autovalutazione dell'andamento generale del lavoro di progetto.],
  [Angela Favaro],[Consuntivo di periodo allo stato attuale e preventivo a finire]
)


== Decisione su quando presentare candidatura RTB
È stato scelto di presentare la candidatura per la milestone RTB per il 6 marzo 2026. La scelta è motivata dalla necessità di validare formalmente l'analisi e le scelte tecnologiche effettuate (PoC) prima di procedere con lo sviluppo del MVP.

== Revisione documenti per presentazione RTB
In vista dell'incontro con il proponente e il professore, il gruppo ha stabilito la necessità di una revisione accurata di tutto il materiale documentale prodotto. L'obiettivo è garantire la massima coerenza tra quanto descritto nell'Analisi dei Requisiti, i criteri di verifica esposti nel Piano di Qualifica e quanto verrà mostrato durante la presentazione della milestone.

= Conclusione
L'incontro si è concluso con la definizione della strategia comunicativa per la presentazione e la pianificazione delle ultime revisioni documentali necessarie per la candidatura.

]

#let decisione-azione = (
  ("Presentazione candidatura RTB", "Invio del modulo di candidatura e notifica ai proponenti.", "",
  "Suddivisione parti presentazione", "Creazione di un documento condiviso per la stesura dei contenuti specifici.", "",
  "Revisione documenti pre-presentazione", "Controllo incrociato tra PdP e PdQ per garantire coerenza terminologica e metrica.", "")
)