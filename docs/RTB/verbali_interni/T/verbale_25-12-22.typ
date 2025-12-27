// giorno in formato AAAA-MM-GG
#let giorno = "2025-12-22"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2025-12-29"

// ordine del giorno 
#let odg = "Allineamento stesura documentazione e chiarimenti sui dubbi dei membri"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2025-12-27", "Amerigo Vegliante","","Stesura iniziale del verbale.")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = false


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "La _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Responsabile",   "Presente", //Amerigo Vegliante
    "Analista",   "Presente", //Angela Canazza
    "Analista",   "Presente", //Angela Favaro
    "Analista",   "Presente", //Alberto Reginato
    "Amministratore",   "Presente", //Riccardo Baldin
    "Analista",   "Presente", //Nicola Simionato
    "Verificatore",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "15:00"

// ora di fine dell'incontro
#let fine = "17.15"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Sprint Retrospective dello Sprint 4.
- Sprint Planning dello Sprint 5.

= Svolgimento
== Sprint Retrospective
- Analisi dei Requisiti: Sono stati individuati e parzialmente completati gli Use Case dal UC1 al UC7.
- Norme di Progetto: Le informazioni presenti riguardo al Way of Working sono state unite alle Norme di Progetto. 
- Piano di Progetto: Primi diagrammi PERT provvisori, indice tabelle, capitoli Processi e Metodologie, Risorse e Strumenti e Analisi e Gestione dei Rischi.
- Piano di Qualifica: Correzioni minori.
== Sprint Planning
- Analisi dei Requisiti: Revisione delle UC fatte fino ad ora, inizio lista degli UC riguardo la parte di Project Manager e Business Owner, stilare UC mancanti, aggiunta diagrammi.
- Norme di Progetto: Completare Processi Primari e Processi di Supporto.
- Piano di Progetto: Completamento trascorsi sprint 1,2,3 e 4, aggiunta diagrammi PERT.
- Piano di Qualifica: Revisione generale.

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe continuato le attività secondo quanto stabilito nella fase di Sprint Planning.

Il prossimo incontro è fissato per il giorno #next-meeting
]

#let decisione-azione = ((
  "Lavoriamo al PoC e poi al prodotto finale in una singola repository o le dividiamo in Backend e Frontend?","Singola repository sia per Backend e Frontend ma divise internamente in due subdirectory ognuna con un proprio Dockerfile apposito.","Come organizziamo i Documenti specifici delle Milestones RTB e PB?", "Li dividiamo in Documenti Interni (Norme di Progetto) e Documenti Esterni (Piano di Progetto, Piano di Qualifica, Analisi dei Requisiti).",
)
)