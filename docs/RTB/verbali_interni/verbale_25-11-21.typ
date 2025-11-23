#import "../../templates/template-interno.typ": template

// giorno in formato AAAA-MM-GG
#let giorno = "2025-11-21"

// data del prossimo incontro nello stesso formato
#let next-meeting = "24 Novembre 2025"

// ordine del giorno 
#let odg = "Prima programmazione lavoro per milestone RTB"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2025-11-21", "Angela Favaro", "Laura Venturini", "Stesura e relazione del verbale")
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = false


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Redattore",   "Presente", //Angela Favaro
    "Amministratore",   "Presente", //Angela Canazza
    "Amministratore",   "Presente", //Riccardo Baldin
    "Responsabile",   "", //Alberto Reginato
    "Amministratore",   "Presente", //Amerigo Vegliante
    "Amministratore",   "Presente", //Nicola Simionato
    "Verificatore",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "16:00"

// ora di fine dell'incontro
#let fine = "18:10"








#show: doc => template(doc,
    data: giorno,
    ordine_del_giorno: odg,
    lista_versioni: modifiche,
    on-line: distanza,
    new-luogo: luogo, 
    ora_inizio: inizio,
    ora_fine: fine,
    ruoli-presenza: lista-ruoli
)




= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Resoconto riunione del 20 Novembre con Var Group
- Discussione sulle possibili tecnologie da utilizzare per il progetto
- Divisione compiti per stesura documenti RTB
= Svolgimento
== Resoconto riunione del 20 Novembre con Var Group
Analizzando le bozze prodotte ieri grazie al Design Thinking fatto insieme al referente di var Group abbiamo accordato di prendere il modello in @fig:struttura come riferimento embrionale del progetto. 
#figure(
  image("../../asset/struttura_progetto_vargroup.png", height: 70%),
  caption: "Struttura del progetto creata con Var Group.",
) <fig:struttura>
== Discussione sulle possibili tecnologie da utilizzare per il progetto
In seguito abbiamo scelto di cominciare a comprendere quali tecnologie sono più consone alla realizzazione del progetto. \
Abbiamo suddiviso le tecnologie da discutere tra:
- Backend: Node.js, Python
- Frontend: React.js, Svelte, Angular
- Database: MongoDB, PostgreSQL
- Cloud: AWS 
- Implementazione agenti: Amazon Bedrock, Google ADK
Riteniamo consono studiare singolarmente le tecnologie e confrontarci nelle prossime riunioni per le scelte definitive. \ 
*Scelte discusse in riunione e confermate sono*:
- #underline[AWS per il cloud]. \ Questa è stata una scelta discussa con l’azienda, è il loro sistema di gestione del cloud e ci hanno richiesto di utilizzarla.
- #underline[Amazon Bedrock per l’implementazione degli agenti]. \ Pensiamo che si integri meglio con il sistema di gestione del cloud che abbiamo in utilizzo (AWS).
== Divisione compiti per stesura documenti RTB
Come ultimo punto della riunione ci siamo soffermati sulle scadenze di calendario. \
Abbiamo iniziato a ragionare sui documenti da redarre entro la prima milestone (RTB). Abbiamo individuato 4 documenti:
1. Piano di Qualifica
2. Piano di Progetto
3. Norme di Progetto
4. Analisi dei Requisiti
Quindi la scelta più naturale ci è sembrata una suddivisione dei compiti per comprendere e redarre al meglio i diversi documenti. \
Divisione:
#table(
columns: (auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Documento*], [*Assegnazione*], [*Modalità di redazione*]
  ),
  
    "PIANO DI QUALIFICA", "Angela Canazza e Nicola Simionato", "Verrà discussa ad ogni riunione lo stato di avanzamento del documento ed eventuali problematiche.",
    "PIANO DI PROGETTO", "Angela Favaro e Laura Venturini", "Verrà discussa ad ogni riunione lo stato di avanzamento del documento ed eventuali problematiche.",
    "NORME DI PROGETTO", "Amerigo Vegliante e Riccardo Baldin", "Verrà discussa ad ogni riunione lo stato di avanzamento del documento ed eventuali problematiche.",
    "ANALISI DEI REQUISITI", "Alberto Reginato e il team al completo", "Ogni riunione si concentrerà nel comprendere e produrre contenuti per l’Analisi dei Requisiti da parte di tutto il team. \ 
    Alberto si occuperà di redarre il documento sulla base di quanto pattuito agli incontri."
)

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- iniziato a studiare la documentazione che è stata singolarmente assegnata;
- cominciato ad approcciare l’Analisi dei Requisiti al prossimo incontro che si svolgerà. 

Il prossimo incontro è fissato per il giorno #next-meeting