// giorno in formato AAAA-MM-GG (es. "2026-03-12")
#let giorno = "2026-03-23"

// data del prossimo incontro (es. "19 marzo 2026")
#let next-meeting = "2026-03-25"

// ordine del giorno 
#let odg = "Cambio architettura in microservizi e Sprint Retrospective"

// switchare in 'true' SE l'incontro si è tenuto su Discord
#let distanza = true

// modificare SE non si è fatto in Quiet Room (scrivere il luogo con l'articolo)
#let luogo = "la _Quiet Room_ del complesso Paolotti"

// ruolo e presenza (es: "Responsabile", "Presente")
#let lista-ruoli = (
    "Responsabile",   "Presente", //Angela Favaro
    "Programmatore",   "Presente", //Angela Canazza
    "Programmatore",   "Presente", //Riccardo Baldin
    "Amministratore",   "Presente", //Alberto Reginato
    "Programmatore",   "Presente", //Amerigo Vegliante
    "Programmatore",   "Presente", //Nicola Simionato
    "Verificatore",   "Presente" //Laura Venturini
)

// IGNORARE QUESTA VARIABILE
#let partecipanti-esterni = ()

// ora di inizio e fine (es. "14:30")
#let inizio = "14:30"
#let fine = "15:40"

#let corpo = [
= Argomenti trattati
Gli argomenti discussi nell'incontro sono stati:
- Sprint Retrospective
- Cambiamenti da effettuare all'architettura in seguito al colloquio con il Professor Cardin
- Sprint Planning

= Svolgimento
== Sprint Retrospective
Il team ha brevemente parlato dei task e delle difficoltà incontrate durante lo sprint appena concluso, con particolare riferimento al colloquio con il professor Cardin e alle soluzioni architetturali trovate dai membri del gruppi a seguito di tale colloquio. \ Tutti i task previsti per lo scorso sprint sono stati completati.
== Cambiamenti da effettuare all'architettura in seguito al colloquio con il Professor Cardin
Il team ha discusso su quale delle opzioni architetturali avrebbe dovuto scegliere a seguito della risposta mail del professor Cardin. È stato deciso di optare per un'architettura a microservizi, in quanto il gruppo ritiene che sia la più adatta. Si ritiene che la progettazione attuale sia facilmente adattabile a questa nuova architettura. 

== Sprint Planning
Il team ha pianificato e assegnato i task da svolgere durante lo sprint, concentrandosi principalmente sull'adattamento della progettazione della nuova architettura a microservizi. Inoltre, è stato deciso di creare un repository GitHub dedicato per ogni microservizio e dei canali Discord appositi per facilitare il lavoro di gruppo fra i membri del team.
= Conclusione
Il gruppo ha stabilito che nel corso della settimana avrebbe: 
- adattato la progettazione per renderla adatta ai microservizi
- iniziato a implementare i microservizi
Il prossimo incontro è fissato per il giorno #next-meeting
]

// Inserire le coppie (Decisione, Azione, Issue)
#let decisione-azione = (
  (" Adattare la progettazione nella maniera che si ritiene più corretta", "Modificare la progettazione per renderla adatta ai microservizi", "#157, #158, #159",
  "Il tipo di analisi da svolgere è deciso dall'orchestratore", "Nel frontend ci deve essere un unico pulsante per l'avvio dell'analisi", "No id")
)
