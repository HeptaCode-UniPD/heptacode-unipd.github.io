Project Manager
- In generale si fa un abuso di extends
- da rivedere lo scenario principale dello UC 9

Business Owner
- In generale si fa un abuso di extends
- lo uc 10.1 forse non ha senso
- uc 11 e 11.1 sono praticamente la stessa cosa e se collegati praticamente descrivono il flusso, non un uc
- uc 11.2.1 e simili non credo abbiano senso, perché non descrivono un'interazione e lo scopo dell'utente (in questo caso pm), ma semplicemente un ragionamento (ripensandoci forse vanno bene, tipo visualizza titolo del brano nell'appello visto durante la simulazione esame)
- per la issue 11.3.1 se si vuole si possono suddividere ulteriormente nelle tre diversi tipi di issue

pagebreak()

- UC 8 da capire cos'è (forse la home), probabilmente anche lo uc8.2 va come estensione e non nei scenari alternativi
- UC 8.1 sembra corretto, ma cambierei da extend UC9 a include UC9

== Specifica dei casi d'uso - Project Manager

=== UCPM1: Accesso alla Dashboard Generale <UCPM1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla propria dashboard principale.

- *Precondizioni:* L'utente si è autenticato e assume il ruolo di Project Manager.

- *Trigger:* L'Utente seleziona il ruolo Project Manager o clicca sulla voce "Dashboard" nel menu di navigazione.

- *Scenario principale:*
  + Il sistema carica i dati generali relativi ai progetti collegati all'account.
  + Il Project Manager visualizza di default la *Lista Progetti* (*<\<include>>* #link(<UCPM1.1>)[[UCPM1.1]]).

- *Scenari alternativi:* 
  + Il Project Manager decider di creare un nuovo Progetto (*<\<extend>>* #link(<UC7>)[[UC7]]).

- *Postcondizioni:* Il Project Manager visualizza la lista Progetti.

- *Inclusioni:* #link(<UCPM1.1>)[[UCPM1.1]].
- *Estensioni:* #link(<UC7>)[[UC7]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.1: Visualizzazione Lista Progetti <UCPM1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco dei Progetti attivi e i relativi indicatori di sintesi.

- *Precondizioni:* Il selettore di vista in #link(<UCPM1>)[[UCPM1]] è impostato su "Progetti".

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UCPM1>)[[UCPM1]].

- *Scenario principale:*
  + Il Project Manager visualizza la lista delle card di Progetto, contenenti:
    - Nome del Progetto.
    - Numero di repository associate.
    - Indicatori sintetici di salute (es. media qualità).
  + Il Project Manager può selezionare una card specifica per accedere al dettaglio del Progetto (*<\<include>>* #link(<UCPM1.1.1>)[[UCPM1.1.1]]).

- *Scenari alternativi:* Il sistema non rileva progetti: mostra uno stato vuoto e invita a creare il primo progetto tramite il pulsante "Nuovo Progetto" (*<\<extend>>* #link(<UC7>)[[UC7]]).

- *Postcondizioni:* Il Project Manager naviga verso il dettaglio di un progetto o ne crea uno nuovo.

- *Inclusioni:* #link(<UCPM1.1.1>)[[UCPM1.1.1]].
- *Estensioni:* #link(<UC7>)[[UC7]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM1.1.1: Accesso alla Dashboard di Dettaglio Progetto <UCPM1.1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla vista aggregata di uno specifico progetto per analizzarne i KPI complessivi.

- *Precondizioni:* Esiste almeno un progetto creato.

- *Trigger:* Il Project Manager clicca su una card di Progetto in #link(<UCPM1.1>)[[UCPM1.1]].

- *Scenario principale:*
  + Il Project Manager visualizza l'intestazione del progetto.
  + Il Project Manager visualizza i widget aggregati (Sicurezza, copertura Test, adeguatezza Documentazione, Avanzamento ecc...).
  + Il Project Manager visualizza il pulsante "Team & Competenze", su cui può premere per approfondire le competenze del team (*<\<extend>>* #link(<UCPM3>)[[UCPM3]]).
  + Il Project Manager visualizza il pulsante "Stack Tecnologico", su cui può premere per analizzare le tecnologie utilizzate nel progetto e ricevere suggerimenti (*<\<extend>>* #link(<UCPM4>)[[UCPM4]]).
  + Il Project Manager visualizza l'elenco dei Repository che compongono il progetto con i relativi indicatori di stato. (*<\<extend>>* #link(<UCPM2>)[[UCPM2]])
 + Il Project Manager clicca "Indietro" per tornare alla lista progetti.

- *Postcondizioni:* Il Project Manager visualizza i dati aggregati del progetto.

- *Estensioni:* #link(<UCPM2>)[[UCPM2]],#link(<UCPM3>)[[UCPM3]], #link(<UCPM4>)[[UCPM4]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM2: Visualizzazione Lista Repository <UCPM2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco completo di tutte le repository collegate al progetto.

- *Precondizioni:* l'utente sta visualizzando un progetto e si concentra sulla lista delle repository.

- *Trigger:* L'utente seleziona la voce "Repository" dal selettore di vista.

- *Scenario principale:*
  + Il Project Manager visualizza la tabella riepilogativa di tutte le repository importate.
  + Per ogni repository, il sistema mostra:
    - nome repository (*<\<include>>* #link(<UCPM2.1>)[[UCPM1.1]]).
    - data ultimo aggiornamento (*<\<include>>* #link(<UCPM2.2>)[[UCPM2.2]]).

- *Scenari alternativi:* Il Project Manager non ha aggiunto nessuna repository, visualizza un messaggio informativo che lo invita ad importarne uno tramite il pulsante "Aggiungi Repository" (*<\<extend>>* #link(<UC2>)[[UC2]]).

- *Postcondizioni:* Il Project Manager ha visionato le repository collegate all'account.

// Hanno senso questi due UC, 9.1 e 9.2 oppure è una granularità troppo dettagliate, magari anche corretta ma conforme a quanto fatto negli altri uc?
- *Inclusioni:* #link(<UCPM2.1>)[[UCPM2.1]], #link(<UCPM2.2>)[[UCPM2.2]].
- *Estensioni:* #link(<UC2>)[[UC2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3: Visualizzazione Mappatura Competenze <UCPM3>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager consulta la distribuzione delle tecnologie utilizzate dal team.

- *Precondizioni:* Il Project Manager si trova nella dashboard di dettaglio di un progetto (#link(<UCBO1.1.1>)[[UCBO1.1.1]]).

- *Trigger:* Il Project Manager seleziona il pulsante "Team & Competenze".

- *Scenario principale:*
  + Il sistema visualizza una lista dei membri del team a cui viene associata un'icona delle tecnologie di loro competenza.
  + Il Project Manager può selezionare un membro specifico per approfondirne il profilo (*<\<include>>* #link(<UCPM3.1>)[[UCPM3.1]]).

- *Postcondizioni:* Il Project Manager ha analizzato la mappatura delle competenze all'interno del team del progetto.

- *Inclusioni:* #link(<UCPM3.1>)[[UC3.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.1: Dettaglio Membro del Team <UCPM3.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Visualizzazione delle metriche specifiche di uno sviluppatore nel contesto del progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di mappatura competenze #link(<UCPM3>)[[UCPM3]].

- *Trigger:* Il Project Manager ha selezionato uno specifico membro del team.

- *Scenario principale:*
  + Il Project Manager visualizza il profilo dell'utente.
  + Il Project Manage visualizza le statistiche di contribuzione (*<\<include>>* #link(<UCPM3.1.1>)[[UCPM3.1.1]]).
  + Il Project Manager visualizza i linguaggi maggiormente utilizzati dall'utente (*<\<include>>* #link(<UCPM3.1.2>)[[UCPM3.1.2]]).

// anche qui si possono aggiungere degli UC più specificiper entrambe le parti dello scenario principali. Quindi UC10.1.1 per visuallizare il profilo utente, UC10.1.2 per visualizzare le statistiche di contribuzione e UC1.1.3 per informazioni sui linguaggi affini.

- *Postcondizioni:* Il Project Manager ha consultato i dettagli di uno specifico membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.1.1: Dettaglio Membro del Team <UCPM3.1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza le statistiche di contribuzione del membro del team relative al progetto precedentemente scelto.

- *Precondizioni:* Il Project Manager sta visualizzando il profilo di un membro del team #link(<UCPM3.1>)[[UCPM3.1]].

- *Trigger:* Il Project Manager si concentra sulle statistiche relative alle contribuzione.

- *Scenario principale:*
  + Il Project Manager visualizza una serie di statistiche come:
    - Numero di commit.
    - Numero di Pull Request.

- *Postcondizioni:* Il Project Manager ha consultato le statistiche di contribuzione di un membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM3.1.2: Dettaglio linguaggi di un developer <UCPM3.1.2>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager guarda e le informazioni relativi ai linguaggi usati dal developer.

- *Precondizioni:* Il Project Manager sta visualizzando il profilo di un membro del team #link(<UCPM3.1>)[[UCPM3.1]].

- *Trigger:* Il Project Manager si concentra sulle informazioni riguardanti i linguaggi affini al developer.

- *Scenario principale:*
  + Il Project Manager visualizza una lista delle dei linguaggi di programmazione usate dal developer.

- *Postcondizioni:* Il Project Manager ha consultato i linguaggi affini a un membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCPM4: Stack Tecnologico e Suggerimenti <UCPM4>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager analizza lo stack tecnologico per identificare librerie obsolete e ricevere suggerimenti.

- *Precondizioni:* Il Project Manager si trova nella Dashboard di Dettaglio Progetto (#link(<UCPM1.1.1>)[[UCPM1.1.1]]).

- *Trigger:* Il Project Manager seleziona la voce "Stack Tecnologico".

- *Scenario principale:*
  + Il Project Manager visualizza l'elenco consolidato di framework e librerie usate.
  + Il sistema segnala le dipendenze deprecate o a rischio sicurezza.
  + Il Project Manager visualizza i suggerimenti strategici generati dall'IA.

// Anche qua si può pensare ad una maggiore granularità UC11.1 Segnalatori di deprecazione o sicurezza e UC11.2 Suggeriemtni strategici generati dall'IA

- *Postcondizioni:* Il Project Manager ha preso visione dello stato tecnologico del progetto analizzato.

#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

== Specifica dei casi d'uso - Business Owner

=== UCBO1: Visualizzare Dashboard Home con Statistiche <UCBO1>

- *Attore principale:* Business Owner 
- *Descrizione:* Il Business Owner accede alla home page dell'applicazione che mostra una panoramica aggregata di tutti i progetti attraverso grafici e indicatori chiave.
- *Precondizioni:* 
  + Il Business Owner è autenticato nel sistema.
  + Esiste almeno un progetto nel sistema.
- *Trigger:* Il Business Owner accede all'applicazione o clicca su "Home"/"Dashboard".
- *Scenario principale:*
  + Il sistema visualizza la dashboard home con diversi grafici e istogrammi.
  + Il Business Owner visualizza le statistiche aggregate sui progetti (*<\<include>>* #link(<UCBO1.1>)[[UCBO1.1]]).
  + Il Business Owner analizza le issue totali in lavorazione (*<\<include>>* #link(<UCBM1.2>)[[UCBO1.2]]).
  + Il Business Owner consulta il rapporto budget vs spesa complessivo (*<\<include>>* #link(<UCBO1.3>)[[UCBO1.3]]).
  + Il Business Owner valuta l'indice di coerenza tra progetti (*<\<include>>* #link(<UCBO1.4>)[[UCBO1.4]]).
  + Il Business Owner può selezionare un progetto per analizzarlo nel dettaglio (*<\<include>>* #link(<UC11>)[[UC11]]).
- *Postcondizioni:* Il Business Owner ha una visione d'insieme dello stato del portafoglio progetti.
- *Inclusioni:* #link(<UCBO1.1>)[[UCBO1.1]], #link(<UCBO1.2>)[[UCBO1.2]], #link(<UCBO1.3>)[[UCBO1.3]], #link(<UCBO1.4>)[[UCBO1.4]], #link(<UCBO2>)[[UCBO2]]

=== UCBO1.1: Visualizzare grafici a torta/istogrammi su progetti <UCBO1.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta le visualizzazioni grafiche che rappresentano statistiche aggregate sui progetti.
- *Precondizioni:* Il Business Owner sta visualizzando la Dashboard Home (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner si concentra sulla sezione grafici della dashboard.
- *Scenario principale:*
  + Il sistema visualizza grafici a torta e/o istogrammi che rappresentano vari aspetti dei progetti.
  + Il Business Owner interpreta i grafici per comprendere distribuzioni e proporzioni.
- *Postcondizioni:* Il Business Owner ha composto un quadro visivo della situazione dei progetti.
- *Estensioni:* 

=== UCBO1.2: Visualizzare issue totali in lavorazione (complessivo) <UCBO1.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta il conteggio totale delle issue attualmente in lavorazione su tutti i progetti.
- *Precondizioni:* Il Business Owner sta visualizzando la Dashboard Home (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner consulta il widget/indicatore delle issue.
- *Scenario principale:*
  + Il sistema visualizza il numero totale di issue attualmente "in lavorazione" o "in sviluppo".
  + Il Business Owner legge il valore per comprendere il carico di lavoro complessivo.
- *Postcondizioni:* Il Business Owner è consapevole del volume totale di lavoro in corso.

=== UCBO1.3: Visualizzare rapporto budget vs spesa complessivo <UCBO1.3>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta l'indicatore aggregato che confronta il budget totale allocato con la spesa totale sostenuta.
- *Precondizioni:* Il Business Owner sta visualizzando la Dashboard Home (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner consulta il widget/indicatore finanziario.
- *Scenario principale:*
  + Il sistema visualizza un indicatore che mostra budget totale e spesa totale.
  + Il Business Owner analizza se la spesa complessiva è entro il budget complessivo.
- *Postcondizioni:* Il Business Owner conosce la situazione finanziaria aggregata.

=== UCBO1.4: Visualizzare indice coerenza tra progetti <UCBO1.4>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta un indicatore che misura il livello di coerenza o standardizzazione tra i vari progetti.
- *Precondizioni:* Il Business Owner sta visualizzando la Dashboard Home (#link(<UCBO1>)[[UCBO1]]).
- *Trigger:* Il Business Owner consulta l'indicatore di coerenza.
- *Scenario principale:*
  + Il sistema visualizza un indicatore di "coerenza tra progetti".
  + Il Business Owner interpreta il valore per valutare quanto i progetti siano allineati tra loro.
- *Postcondizioni:* Il Business Owner ha una misura del livello di coerenza del portafoglio progetti.

#pagebreak()

=== UCBO2: Accedere Progetto Singolo <UCBO2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner seleziona ed entra in un progetto specifico per analizzarne i dettagli: tecnologie, repository, issue, costi e team.
- *Precondizioni:* Il Business Owner sta visualizzando una lista o dashboard dei progetti.
- *Trigger:* Il Business Owner seleziona un progetto specifico dalla lista/dashboard.
- *Scenario principale:*
  + Il Business Owner visualizza le informazioni principali del progetto ad esempio nome, data di creazione ecc.
  + Il Business Owner visualizza la *lista delle tecnologie utilizzate* nel progetto (*<\<include>>* #link(<UCBO2.1>)[[UCBO2.1]]).
  + Il Business Owner consulta la *vista generale sulle repository* del progetto (*<\<include>>* #link(<UCBO2.2>)[[UC2.2]]).
  + Il Business Owner visualizza la *lista del team di sviluppo* (*<\<include>>* #link(<UCBO2.3>)[[UCBO2.3]]).
  + Il Business Owner può tornare alla dashboard home.
- *Postcondizioni:* Il Business Owner ha analizzato i dettagli del progetto selezionato.
- *Inclusione:* #link(<UCBO2.1>)[[UCBO2.1]], #link(<UCBO2.2>)[[UCBO2.2]], #link(<UCBO2.3>)[[UCBO2.3]]

=== UCBO2.1: Visualizzare lista tecnologie utilizzate nel progetto <UCBO2.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner esamina l'elenco delle tecnologie impiegate nel progetto specifico.
- *Precondizioni:* Il Business Owner sta visualizzando un progetto (#link(<UCBO2>)[[UCBO2]]).
- *Trigger:* Il Business Owner si concentra sulla sezione "Tecnologie" del progetto.
- *Scenario principale:*
  + Il sistema visualizza una lista delle tecnologie utilizzate nel progetto.
  + Il Business Owner legge l'elenco per comprendere lo stack tecnologico.
  + Il Business Owner può verificare se ci sono *aggiornamenti disponibili* (*<\<include>>* #link(<UCBO2.1.1>)[[UCBO.2.1.1]]).
- *Postcondizioni:* Il Business Owner conosce le tecnologie utilizzate nel progetto.
- *Inclusioni:* #link(<UCBO2.1.1>)[[UCBO2.1.1]]

=== UCBO2.1.1: Identificare aggiornamenti disponibili <UCBO2.1.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner verifica se ci sono aggiornamenti importanti disponibili per le tecnologie utilizzate nel progetto.
- *Precondizioni:* Il Business Owner sta visualizzando la lista tecnologie del progetto (#link(<UCBO2.1>)[[UCBO2.1]]).
- *Trigger:* Il Business Owner cerca specificamente informazioni sugli aggiornamenti.
- *Scenario principale:*
  + Il sistema evidenzia le tecnologie che hanno aggiornamenti disponibili.
  + Il Business Owner identifica quali tecnologie richiedono aggiornamento.
  + Il Business Owner valuta l'importanza degli aggiornamenti disponibili.
- *Postcondizioni:* Il Business Owner è consapevole degli aggiornamenti disponibili per le tecnologie del progetto.
- *Estensioni:* 

=== UCBO2.2: Visualizzare vista generale sulle repository del progetto <UCBO2.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta una vista d'insieme delle repository che compongono il progetto.
- *Precondizioni:* Il Business Owner è entrato in un progetto (#link(<UCBO2>)[[UCBO2]]).
- *Trigger:* Il Business Owner accede alla sezione "Repository" del progetto.
- *Scenario principale:*
  + Il sistema visualizza una lista o panoramica delle repository del progetto identificate dal nome.
  + Il Business Owner può vedere le *quantità di issue* per repository (*<\<include>>* #link(<UCBO2.2.1>)[[UCBO2.2.1]]).
  + Il Business Owner può consultare le *stime dei costi* (*<\<include>>* #link(<UCBO2.2.2>)[[UCBO2.2.2]]).
- *Postcondizioni:* Il Business Owner ha una visione generale della struttura repository del progetto.
- *Estensioni:* #link(<UCBO2.2.1>)[[UCBO2.2.1]], #link(<UCBO2.2.2>)[[UCBO2.2.2]]

=== UCBO2.2.1: Visualizzare quantità issue completate/aperte/in sviluppo <UCBO2.2.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta i numeri delle issue divise per stato nelle repository del progetto.
- *Precondizioni:* Il Business Owner sta visualizzando la vista repository del progetto (#link(<UCBO2.2>)[[UCBO2.2]]).
- *Trigger:* Il Business Owner cerca informazioni sullo stato delle issue.
- *Scenario principale:*
  + Il sistema visualizza i conteggi delle issue per stato:
    - Issue completate
    - Issue aperte
    - Issue in sviluppo
  + Il Business Owner analizza la distribuzione per valutare l'avanzamento.
- *Postcondizioni:* Il Business Owner comprende lo stato di avanzamento del progetto attraverso le issue.

=== UCBO2.2.2: Visualizzare stima dei costi <UCBO2.2.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta una stima dei costi associati al progetto o alle sue repository.
- *Precondizioni:* Il Business Owner sta visualizzando la vista repository del progetto (#link(<UCBO2.2>)[[UCBO2.2]]).
- *Trigger:* Il Business Owner cerca informazioni sui costi.
- *Scenario principale:*
  + Il sistema visualizza una stima dei costi (se calcolabile dal sistema).
  + Il Business Owner legge il valore per comprendere l'impatto finanziario.
- *Postcondizioni:* Il Business Owner ha una stima dei costi del progetto.

=== UCBO2.3: Visualizzare lista del team di sviluppo <UCBO2.3>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner esamina l'elenco dei membri del team assegnati al progetto.
- *Precondizioni:* Il Business Owner è entrato in un progetto (#link(<UCBO2>)[[UCBO2]]).
- *Trigger:* Il Business Owner accede alla sezione "Team" del progetto.
- *Scenario principale:*
  + Il sistema visualizza una lista dei membri del team di sviluppo.
  + Il Business Owner può *accedere alle statistiche dei singoli developer* (*<\<include>>* #link(<UCBO3>)[[UCBO3]]).
- *Postcondizioni:* Il Business Owner conosce la composizione del team del progetto.
- *Inclusioni:* #link(<UCBO3>)[[UCBO3]]

=== UCBO3: Accedere alle statistiche dei singoli developer <UCBO3>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta le statistiche e informazioni dettagliate di uno specifico developer del team.
- *Precondizioni:* Il Business Owner sta visualizzando la lista del team (#link(<UCBO2.3>)[[UCBO2.3]]).
- *Trigger:* Il Business Owner seleziona un developer dalla lista del team.
- *Scenario principale:*
  + Il sistema visualizza le statistiche del developer selezionato.
  + Il Business Owner può vedere il *numero di progetti* in cui il developer ha lavorato/sta lavorando (*<\<include>>* #link(<UCBO3.1>)[[UCBO3.1]]).
  + Il Business Owner può consultare i *linguaggi e tecnologie affini* del developer (*<\<include>>* #link(<UCBO3.2>)[[UCBO3.2]]).
- *Postcondizioni:* Il Business Owner ha approfondito la conoscenza delle competenze e del carico di lavoro del developer.
- *Inclusioni:* #link(<UCBO3.1>)[[UCBO3.1]], #link(<UCBO3.2>)[[UCBO3.2]]

=== UCBO3.1: Visualizzare numero progetti in cui ha lavorato/sta lavorando <UCBO3.1>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta l'elenco e il conteggio dei progetti associati al developer.
- *Precondizioni:* Il Business Owner sta visualizzando le statistiche di un developer (#link(<UCBO3>)[[UCBO3]]).
- *Trigger:* Il Business Owner cerca informazioni sul carico di progetti del developer.
- *Scenario principale:*
  + Il sistema visualizza:
    - Numero totale di progetti in cui il developer ha lavorato
    - Numero di progetti attualmente assegnati
    - Lista dei progetti (passati e attuali)
  + Il Business Owner valuta il carico di lavoro e l'esperienza del developer.
- *Postcondizioni:* Il Business Owner comprende il coinvolgimento del developer nei vari progetti.

=== UCBO3.2: Visualizzare linguaggi e tecnologie affini <UCBO3.2>

- *Attore principale:* Business Owner
- *Descrizione:* Il Business Owner consulta le competenze tecnologiche del developer.
- *Precondizioni:* Il Business Owner sta visualizzando le statistiche di un developer (#link(<UCBO3>)[[UCBO3]]).
- *Trigger:* Il Business Owner cerca informazioni sulle competenze tecniche del developer.
- *Scenario principale:*
  + Il sistema visualizza:
    - Linguaggi di programmazione conosciuti/utilizzati
    - Tecnologie e framework con esperienza
    - Livello di competenza (base/intermedio/avanzato) se disponibile
  + Il Business Owner valuta le competenze tecniche del developer.
- *Postcondizioni:* Il Business Owner conosce le competenze tecnologiche del developer.