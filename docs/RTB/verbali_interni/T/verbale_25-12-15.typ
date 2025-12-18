// giorno in formato AAAA-MM-GG
#let giorno = "2025-12-15"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2025-12-22"

// ordine del giorno 
#let odg = "Allineamento stesura documentazione e chiarimenti sui dubbi dei membri"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2025-12-15", "Angela Favaro", "Angela Canazza", "Creazione e stesura documento",
   "0.1.1", "2025-12-18", "Angela Favaro", "Angela Canazza", "Correzioni errori sintattici e grammaticali")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = false


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Responsabile",   "Presente", //Angela Favaro
    "Verificatore",   "Presente", //Angela Canazza
    "Analista",   "Assente", //Riccardo Baldin
    "Analista",   "Presente", //Alberto Reginato
    "Amministratore",   "Presente", //Amerigo Vegliante
    "Analista",   "Presente", //Nicola Simionato
    "Analista",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "15:00"

// ora di fine dell'incontro
#let fine = "18:00"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Chiarimento sui ruoli all'interno del gruppo.
- Allineamento sulla stesura della documentazione.
- Chiarimenti insorti dai membri durante lo scorso sprint.
- Decisioni sulla struttura della documentazione.

= Svolgimento
== Ruoli all'interno del gruppo
A seguito delle prime settimane di sprint abbiamo chiarito la definizione dei ruoli. \
Ancora non erano seguiti correttamente dai membri e quindi, da questo sprint, inizieremo ad adottare più rigidamente i ruoli assegnati per ogni periodo (consultabili al _Piano di Periodo_). \ 
Ad ogni ruolo è stata assegnata una specifica documentazione di cui occuparsi:
#table(
columns: (auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Ruolo*], [*Documento*]
  ),
  
    "Responsabile","Piano di Progetto",
    "Responsabile", "Verbali Interni ed Esterni",
    "Amministratore", "Norme di Progetto",
    "Verificatore", "Piano di Qualifica",
    "Analista", "Analisi dei Requisiti",
)
Il gruppo ha deciso di accorpare il documento _Way of Working_ nel documento _Norme di Progetto_ la cui redazione è assegnata all'amministratore.
== Allineamento documentazione e dubbi
Come specificato nel #link("https://heptacode-unipd.github.io/docs/RTB/verbali_interni/verbale_25-11-21.pdf")[_Verbale interno del 21 Novembre 2025_] i documenti erano stati assegnati su base personale e non di ruolo. \ 
Dopo la riunione di oggi i documenti sono assegnati in base al ruolo (consultare la sotto-sezione precedente).  \
Ogni assegnatario ha condiviso con il gruppo il punto a cui era arrivato fino ad ora per la documentazione. \
Sono stati anche esposti i dubbi di ognuno e nella tabella sottostante verranno elencati assieme alle relative soluzioni trovate.
#table(
columns: (auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Dubbio*], [*Soluzione*]
  ),
  
    "Utilizzo di Git Hub per il PoC","Apriamo una repository su cui lavoreremo al PoC.",
    "Branch nella repository aperti e non utilizzati", "Coloro che hanno aperto branch che non servono più devono sempre chiuderli.",
    "Utilizzo di un dizionario personalizzato per automation sul controllo ortografico.", "Nel documento ‘custom.txt’ (presente nella repository al path: .github/workflows/custom.txt) si aggiungeranno eventuali parole non presenti nella libreria usata per il controllo ortografico. Si lavora nel proprio branch e poi le modifiche al custom.txt verranno sistemate in fase di merge nel branch ‘main’.",
    "Come importare nel PdP i diagrammi di GANTT.", "Il responsabile deve cercare una piattaforma in grado di creare ed esportare i diagrammi da utilizzare per ogni sprint.",
    "Dubbi da chiedere al committente riguardo: trattamento di repository private all'interno del nostro progetto e come gestiamo le viste in base all'attore che utilizza il programma.", "All'incontro del 16 Dicembre li esporremo al referente di VarGroup o li contatteremo tramite piattaforma Slack.",
)
== Struttura documentazione
Ci siamo accorti che non era stata definita una chiara struttura per i Documenti che non fossero i verbali. Di fatto ogni documento presentato in riunione aveva alcune significative differenze. \
Sono state prese delle decisioni per uniformare la struttura della documentazione per tutto il gruppo. Le decisioni prese in seguito verranno scritte nella tabella sottostante.
#table(
columns: (auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Sezione*], [*Standard adottato*]
  ),
  
    "Versionamento.", "Sistema x.y.z. La y cambia solo a seguito dell'approvazione del verificatore; altrimenti si cambia la z. La x serve solo a documentare le versioni ufficiali.",
    "Header delle pagine.", "Saranno scritti: NomeGruppo, NomeDocumento, Versione.",
    "Standard per il numero di pagina.", "Sarà scritto nella forma ‘x di x’ (si inizia a contare le pagine dopo gli indici).",
    "Nome dei 3 indici.", "‘Indice dei contenuti’, ‘Indice delle tabelle’, ‘Indice delle immagini’, senza parole in grassetto al loro interno.",
    "Dimensione del font.", "Si mantengono le dimensioni che sono utilizzate nei Verbali.",
    "Tabelle dei documenti (non verbali).", "A colori alternati: bianco-viola(#A36EE8); non si utilizza la griglia.",
    "Informazioni prima pagina del documento.", "La prima pagina conterrà: email e link al sito del gruppo, oltre alle informazioni relative a: Redattori, Verificatori e Versione.",
    "Ulteriori dubbi che potrebbero insorgere.", "Si esporranno sempre al gruppo prima di applicarle in autonomia."
)
= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- Continuato l'attività di Analisi e di documentazione (tutti).
- Aperto une repository _Git Hub_ per l'attività di Programmazione del Proof of Concept (Amministratore).
- Cercato una modalità adatta di redazione dei diagrammi GANTT (Responsabile).

Il prossimo incontro è fissato per il giorno #next-meeting
]

#let decisione-azione = ((
  "Inserire la giustificazione delle tecnologie che verranno utilizzate.","Scrivere al prof. Vardanega per il chiarimento riguardo a dove riportarlo.",
  "Redazione delle Norme di Progetto.", "Accorpamento del Way of Working all'interno delle Norme di Progetto.",
  "Documentare il lavoro in atto e utilizzare una lista di To-Do.", "Utilizzo di issue e sub-issue sfruttando la Project Board nella repository.",
  "Uniformare la documentazione", "Consultare le linee guida esposte in questo verbale e nelle Norme di Progetto."
)
)