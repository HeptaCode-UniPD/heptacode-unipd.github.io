Project Manager
- In generale si fa un abuso di extends
- da rivedere lo scenario principale dell'uc 9

Business Owner
- In generale si fa un abuso di extends
- l'uc 10.1 forse non ha senso
- uc 11 e 11.1 sono praticamente la stessa cosa e se collegati praticamente descrivono il flusso, non un uc
- uc 11.2.1 e simili non credo abbiano senso, perchè non descrivono un'interazione e lo scopo dell'utente (in questo caso pm), ma semplicemente un ragionamento (ripensandoci forse vanno bene, tipo visualiza titolo del brano nell'appello visto durante la simulazione esame)
- per la issue 11.3.1 se si vuole si possono suddividere ulteriormente nelle tre diversi tipi di issue

pagebreak()

- UC 8 da capire cos'è (forse la home), probabilmente anche l'uc8.2 va come estensione e non nei scenari alternativi
- UC 8.1 sembra corretto, ma cambierei da extend UC9 a include UC9

== Specifica dei casi d'uso - Project Manager

=== UC8: Accesso alla Dashboard Generale <UC8>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla propria dashboard principale.

- *Precondizioni:* L'utente si è autenticato e assume il ruolo di Project Manager.

- *Trigger:* L'Utente seleziona il ruolo Project Manager o clicca sulla voce "Dashboard" nel menu di navigazione.

- *Scenario principale:*
  + Il sistema carica i dati generali relativi ai progetti collegati all'account.
  + Il Project Manager visualizza di default la *Lista Progetti* (*<\<include>>* #link(<UC8.1>)[[UC8.1]]).

- *Scenari alternativi:* 
  + Il Project Manager decider di creare un nuovo Progetto (*<\<extend>>* #link(<UC7>)[[UC7]]).

- *Postcondizioni:* Il Project Manager visualizza la lista Progetti.

- *Inclusioni:* #link(<UC8.1>)[[UC8.1]].
- *Estensioni:* #link(<UC7>)[[UC7]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.1: Visualizzazione Lista Progetti <UC8.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco dei Progetti attivi e i relativi indicatori di sintesi.

- *Precondizioni:* Il selettore di vista in #link(<UC8>)[[UC8]] è impostato su "Progetti".

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC8>)[[UC8]].

- *Scenario principale:*
  + Il Project Manager visualizza la lista delle card di Progetto, contenenti:
    - Nome del Progetto.
    - Numero di repository associate.
    - Indicatori sintetici di salute (es. media qualità).
  + Il Project Manager può selezionare una card specifica per accedere al dettaglio del Progetto (*<\<include>>* #link(<UC8.1.1>)[[UC8.1.1]]).

- *Scenari alternativi:* Il sistema non rileva progetti: mostra uno stato vuoto e invita a creare il primo progetto tramite il pulsante "Nuovo Progetto" (*<\<extend>>* #link(<UC7>)[[UC7]]).

- *Postcondizioni:* Il Project Manager naviga verso il dettaglio di un progetto o ne crea uno nuovo.

- *Inclusioni:* #link(<UC8.1.1>)[[UC8.1.1]].
- *Estensioni:* #link(<UC7>)[[UC7]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC8.1.1: Accesso alla Dashboard di Dettaglio Progetto <UC8.1.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager accede alla vista aggregata di uno specifico progetto per analizzarne i KPI complessivi.

- *Precondizioni:* Esiste almeno un progetto creato.

- *Trigger:* Il Project Manager clicca su una card di Progetto in #link(<UC8.1>)[[UC8.1]].

- *Scenario principale:*
  + Il Project Manager visualizza l'intestazione del progetto.
  + Il Project Manager visualizza i widget aggregati (Sicurezza, copertura Test, adeguatezza Documentazione, Avanzamento ecc...).
  + Il Project Manager visualizza il pulsante "Team & Competenze", su cui può premere per approfondire le competenze del team (*<\<extend>>* #link(<UC10>)[[UC10]]).
  + Il Project Manager visualizza il pulsante "Stack Tecnologico", su cui può premere per analizzare le tecnologie utilizzate nel progetto e ricevere suggerimenti (*<\<extend>>* #link(<UC11>)[[UC11]]).
  + Il Project Manager visualizza l'elenco dei Repository che compongono il progetto con i relativi indicatori di stato. (*<\<extend>>* #link(<UC9>)[[UC9]])
 + Il Project Manager clicca "Indietro" per tornare alla lista progetti.

- *Postcondizioni:* Il Project Manager visualizza i dati aggregati del progetto.

- *Estensioni:* #link(<UC9>)[[UC9]],#link(<UC10>)[[UC10]], #link(<UC11>)[[UC11]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC9.0: Visualizzazione Lista Repository <UC9.0>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager visualizza l'elenco completo di tutte le repository collegate al progetto.

- *Precondizioni:* l'utente sta visualizzando un progetto e si concentra sulla lista delle repositoy.

- *Trigger:* L'utente seleziona la voce "Repository" dal selettore di vista.

- *Scenario principale:*
  + Il Project Manager visualizza la tabella riepilogativa di tutte le repository importate.
  + Per ogni repository, il sistema mostra:
    - nome repository (*<\<include>>* #link(<UC9.1>)[[UC9.1]]).
    - data ultimo aggiornamento (*<\<include>>* #link(<UC9.2>)[[UC9.2]]).

- *Scenari alternativi:* Il Project Manager non ha aggiunto nessuna repository, visualizza un messaggio informativo che lo invita ad importarne uno tramite il pulsante "Aggiungi Repository" (*<\<extend>>* #link(<UC2>)[[UC2]]).

- *Postcondizioni:* Il Project Manager ha visionato le repository collegate all'account.

// Hanno senso questi due UC, 9.1 e 9.2 oppure è una granularità troppo dettagliate, magari anche corretta ma conforme a quanto fatto negli altri uc?
- *Inclusioni:* #link(<UC9.1>)[[UC9.1]], #link(<UC9.2>)[[UC9.2]].
- *Estensioni:* #link(<UC2>)[[UC2]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC10: Visualizzazione Mappatura Competenze <UC10>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager consulta la distribuzione delle tecnologie utilizzate dal team.

- *Precondizioni:* Il Project Manager si trova nella dashboard di dettaglio di un progetto (#link(<UC8.1.1>)[[UC8.1.1]]).

- *Trigger:* Il Project Manager seleziona il pulsante "Team & Competenze".

- *Scenario principale:*
  + Il sistema visualizza una lista dei membri del team a cui viene associata un'icona delle tecnologie di loro competenza.
  + Il Project Manager può selezionare un membro specifico per approfondirne il profilo (*<\<inclue>>* #link(<UC10.1>)[[UC10.1]]).

- *Postcondizioni:* Il Project Manager ha analizzato la mappatura delle competenze all'interno del team del progetto.

- *Inclusioni:* #link(<UC10.1>)[[UC10.1]].
- *Estensioni:* #link(<UC8.1.1>)[[UC8.1.1]].

#line(length: 100%, stroke: 0.5pt + gray)

=== UC10.1: Dettaglio Membro del Team <UC10.1>

- *Attore principale:* Project Manager.

- *Descrizione:* Visualizzazione delle metriche specifiche di uno sviluppatore nel contesto del progetto.

- *Precondizioni:* Il Project Manager sta visualizzando la schermata di mappatura competenze #link(<UC10>)[[UC10]].

- *Trigger:* Il Project Manager ha selezionato uno specifico membro del team.

- *Scenario principale:*
  + Il Project Manager visualizza il profilo dell'utente e le statistiche di contribuzione (commit, PR).
  + Il Project Manager visualizza i linguaggi maggiormente utilizzati dall'utente.

// anche qui si possono aggiungere degli UC più specificiper entrambe le parti dello scenario principali. Quindi UC10.1.1 per visuallizare il profilo utente, UC10.1.2 per visualizzare le statistiche di contribuzione e UC1.1.3 per informazioni sui linguaggi affini.

- *Postcondizioni:* Il Project Manager ha consultato i dettagli di uno specifico membro del team.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC11: Stack Tecnologico e Suggerimenti <UC11>

- *Attore principale:* Project Manager.

- *Descrizione:* Il Project Manager analizza lo stack tecnologico per identificare librerie obsolete e ricevere suggerimenti.

- *Precondizioni:* Il Project Manager si trova nella Dashboard di Dettaglio Progetto (#link(<UC8.1.1>)[[UC8.1.1]]).

- *Trigger:* Il Project Manager seleziona la voce "Stack Tecnologico".

- *Scenario principale:*
  + Il Project Manager visualizza l'elenco consolidato di framework e librerie usate.
  + Il sistema segnala le dipendenze deprecate o a rischio sicurezza.
  + Il Project Manager visualizza i suggerimenti strategici generati dall'IA.

// Anche qua si può pensare ad una maggiore granularità UC11.1 Segnalatori di deprecazione o sicurezza e UC11.2 Suggeriemtni strategici generati dall'IA

- *Postcondizioni:* Il Project Manager ha preso visione dello stato tecnologico del progetto analizzato.

#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()
