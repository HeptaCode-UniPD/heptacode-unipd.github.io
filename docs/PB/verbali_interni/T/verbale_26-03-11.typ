// giorno in formato AAAA-MM-GG
#let giorno = "2026-03-11"

// data del prossimo incontro nello stesso formato
#let next-meeting = "2026-03-12"

// ordine del giorno 
#let odg = "Discussione sulla progettazione e sul colloquio con il professore Vardanega"


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
    "Verificatore",   "Presente", //Amerigo Vegliante
    "Amministratore",   "Presente", //Nicola Simionato
    "Responsabile",   "Presente" //Laura Venturini
)

// ora di inzio dell'incontro
#let inizio = "15:00"

// ora di fine dell'incontro
#let fine = "16:00"



#let corpo = [= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Discussione sulle modifiche da apportare alla struttura architetturale del progetto
- Preparazione delle domande per il colloquio con il professore Vardanega
= Svolgimento
== Discussione sulle modifiche da apportare alla struttura architetturale del progetto
È stata proposta una modifica alla macro-struttura del progetto, che è stata accettata unanimamente da tutto il gruppo. La struttura in questione è la seguente:
#align(center,image("../../../asset/macrostruttura.jpg"))
- È stato scelto di aggiungere una parte dedicata ad AWS Lambda, che gestisce lo scaling automatico all'architettura 
- È stato deciso di dare ad ogni modulo interno una struttura interna di tipo layered.
- È stato discusso se mantenere l'orchestratore centrale e c'è stato un dibattito riguardo alla sua utilità, ma alla fine si è deciso di mantenerlo, in quanto utile in caso di conflitti tra agenti.
- È stato deciso di utilizzare Strands Agents per la gestione degli agenti al posto di LangChain, in quanto più adatto alle nostre tempistiche e più semplice da apprendere.
- Infine, è stato deciso di confrontarsi con l'azienda e con il professor Cardin riguardo la nuova struttura architetturale.
== Preparazione delle domande per il colloquio con il professore Vardanega
Il gruppo ha discusso assieme quali domande fosse opportuno porre al professore Vardanega durante il prossimo colloquio, al fine di ottenere chiarimenti riguardo la valutazione del RTB. Inoltre, si è discusso quali metriche fossero da adottare "per cogliere
tempestivamente opportunità o necessità di miglioramento", come indicato dal professore Vardanega. Si è deciso di attendere il colloquio con il professore Vardanega per vedere se il professore avesse delle metriche da suggerire. 

= Conclusione
Il gruppo ha stabilito che nel corso delle settimana avrebbe: 
- Iniziato la progettazione dei singoli moduli, seguendo la struttura layered decisa durante l'incontro
- Effettuato i cambiamenti necessari all'Analisi dei Requisiti per adattarla alla nuova macro-struttura del progetto
- Confrontato la nuova macro-struttura con l'azienda e con il professor Cardin
- Aggiornato il PdQ con le nuove metriche da adottare, una volta discusse con il professore Vardanega

Il prossimo incontro è fissato per il giorno #next-meeting
]


#let decisione-azione = ((
  "Cambiare la macro-struttura del progetto, includendo AWS Lambda","Effettuare i conseguenti cambiamenti nell'Analisi dei Requisiti (timer di 15 minuti con Lambda, nell'AdR il timer è di 60 minuti)","#143",
  "La architettura interna dei moduli sarà di tipo layered","Proseguire con la progettazione dei moduli","#135, #136, #137, #138, #139, #140, #141, #142",
  "Decidere quali metriche in più adottare nel PdQ una volta discusse con il professore Vardanega", "Inserire le nuove metriche nel PdQ dopo il colloquio con il professore Vardanega","#144"
)
)