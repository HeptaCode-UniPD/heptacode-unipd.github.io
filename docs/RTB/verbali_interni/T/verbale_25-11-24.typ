// giorno in formato AAAA-MM-GG
#let giorno = "2025-11-24"

// data del prossimo incontro nello stesso formato
#let next-meeting = "1 Dicembre 2025"

// ordine del giorno 
#let odg = "Identificazione e diagramma dei casi d'uso"


// versione , giorno, autore, verificatore, descrizione 
// ("     " , "    ", "    ", "          ", "          ")
// esempio 
  //   ("1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento",
  //    "1.0", "2025-11-15", "Mario Rossi", "Giulia Verdi", "Creazione iniziale del documento" )
#let modifiche = (
  ("0.1.0", "2025-11-25", "Nicola Simionato", "Amerigo Vegliante", "Stesura e relazione del verbale",
   "1.0.0", "2025-11-26", "Nicola Simionato", "Amerigo Vegliante", "Versione del verbale approvata",)
)

// switchare in 'true' SE E SOLO SE l'incontro si è tenuto su Discord
#let distanza = false


// modificare SE E SOLO SE non si è fatto in modalità telematica
//NB: se non è in Quiet Room scrivere il nuovo luogo comprendendo l'articolo
#let luogo = "la _Quiet Room_ del complesso Paolotti"


// ruolo e presenza abbastanza intuitivo
//esempio: "Amministratore", "Presente"
#let lista-ruoli = (
    "Amministratore",   "Presente", //Angela Favaro
    "Amministratore",   "Presente", //Angela Canazza
    "Amministratore",   "Presente", //Riccardo Baldin
    "Amministratore",   "Presente", //Alberto Reginato
    "Amministratore",   "Presente", //Amerigo Vegliante
    "Responsabile",   "Presente", //Nicola Simionato
    "Amministratore",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "14:30"

// ora di fine dell'incontro
#let fine = "18:30"


#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Scelta delle tecnologie
- Prototipi dei casi d'uso
= Svolgimento
== Esposizione e scelta delle tecnologie
Sono state esposte le diverse tecnologie emerse nella scorsa riunione e si sono scelte, per quelle in dubbio:
- Backend: Node.js
- Frontend: Svelte
- Database: MongoDB
*Scelte delle tecnologie:*
- #underline[MongoDB]. \ Dovrebbe poter fornire scalabilità per l'implementazione di nuovi agenti.
- #underline[Svelte con Typescript e Tailwind]. \ Svelte ha performance migliori e assieme a Typescript semplifica la scrittura del codice. Tailwind va a sostituire il css per semplificare lo strato di presentazione.
Ultimo motivo è anche quello di scoprire nuove tecnologie non ancora sperimentate dal team.
== Casi d'uso
Discussione del comportamento dei vari utenti, identificati nella riunione con la proponente.
Sono stati stesi dei casi d'uso ipotetici in gruppo discutendone la correttezza.
Ci si è accorti di aver confuso i casi d'uso assieme ai diagrammi di sequenza e allora sono stati riscritti cercando di seguire degli esempi lasciati dal professore.
Una discussione ha portato a definire il comportamento dell'AI nei confronti di GitHub. In particolare se un push è stato fatto dall'AI allora l'orchestratore non si deve attivare.
= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- richiesto un colloquio col Professor Cardin per chiarimenti riguardo i casi d'uso.
- cercare di riscrivere i diagrammi d'uso usciti per proporli al colloquio.

Il prossimo incontro è fissato per il giorno #next-meeting
]



// decisione azione
#let decisione-azione = ((
  "Chiarimenti casi d'uso","Richiesta colloquio con Professor Cardin",
)
)