= REQUISITI UTENTE
== UC1 - Accesso tramite Piattaforma Esterna <UC1>

- *Attore principale:* Utente.

- *Attore secondario:* GitHub.

- *Descrizione:* L’utente accede a _Code Guardian_ delegando l'autenticazione al provider esterno (GitHub).

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L'utente preme sul tasto "accedi con GitHub" dalla pagina iniziale di _Code Guardian_.

- *Scenario principale:*
+ Il sistema reindirizza l’utente verso GitHub per l’autenticazione.
+ L’utente completa la procedura di autenticazione esterna.
+ L’utente accede alla propria dashboard.

- *Scenari alternativi:*
- Al passo 2:
  + Autenticazione esterna fallita. Il sistema informa l’utente e ritorna alla schermata di accesso.
  + Primo accesso dell’utente:
    - Il sistema rileva che l’utente ha mai fatto un accesso. 
    - L'utente visualizza il riepilogo dei dati importati da GitHub.
    // HO DEI DUBBI QUI IN CASO TOGLI
    - Il sistema fa selezionare un ruolo all'utente.
  
  + L'utente sceglie di annullare l'autenticazione (UC1.1 - Annullare autenitcazione). <<\extends>>
  
// DOMANDA! In questo caso è corretto menzionare il 'flusso (es riepilogo dati)' nella parte testuale dello UC?
// Lo UC2, sebbene fa parte del flusso dati; alla fine dei conti può essere un desiderio dell'utente nel sistema e quindi un UC a sé stante?

- *Postcondizioni:* L’utente è autenticato e visualizza la Dashboard.

#pagebreak()

== UC2 - Aggiunta di un repository nel sistema <UC2>

- *Attore principale:* Utente.

- *Descrizione:* L'Utente è autenticato e vuole registrare un nuovo repository _GitHub_ nella piattaforma.

- *Precondizioni:* L'Utente è all'interno della dashboard.

- *Trigger:* L'Utente seleziona l'opzione "Aggiungi Repository" dalla dashboard.

- *Scenario principale:*
  + Il sistema mostra l’interfaccia per l’inserimento dei dati della repository.
  + L'Utente digita o copia l'URL del repository _GitHub_.
  + L'Utente conferma l'operazione.
  + Il sistema valida l’URL e registra la repository.
  + Il sistema mostra un messaggio di conferma dell’avvenuta aggiunta.

- *Scenari alternativi:* \
  Al passo 2:
  + L’utente decide di annullare l’operazione.
  Al passo 3:
  + URL del repository non valido.
    - Il sistema mostra un messaggio di errore.
  // DOMANDA: in questo caso è corretto questa granularità di spiegazione? Anche se non propriamente un diagramma di flusso?

- *Postcondizioni:* Il repository è stato aggiunto alla piattaforma.

// IN CASO UC 2.1 - Annulla Aggiunta Repository
#pagebreak()

== UC3: Visualizzazione Area Personale <UC3>

- *Attore principale:* Utente.

- *Descrizione:* L'utente è autenticato e vuole visualizzare la propria area personale.

- *Precondizioni:* L'utente si trova su una qualsiasi pagina della piattaforma.

- *Trigger:* L’utente seleziona l’opzione per visualizzare il proprio profilo.

- *Scenario principale:*
  + Il sistema recupera le informazioni dell’utente.
  + Il sistema le visualizza all’utente.
  
- *Scenari alternativi:*
  + Il sistema non riesce a recuperare le informazioni dell’utente.
    - Il sistema mostra un messaggio di errore. 
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Le informazioni dell’utente sono visualizzate correttamente.

#pagebreak()
// HO SERI DUBBI RIGUARDO LA QUESTIONE RUOLI
== UC4: Cambio Ruolo Utente <UC4>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole cambiare il proprio ruolo attivo all'interno della sessione corrente.

- *Precondizioni:* L'utente è autenticato e sta visualizzando la propria area personale.

- *Trigger:* L'utente seleziona la voce "Cambia Ruolo".

- *Scenario principale:*
  + il sistema visualizza l'elenco dei ruoli disponibili (es. se attualmente nel ruolo Developer i ruoli selezionabili saranno Project Manager e Business Owner).
  + L'utente seleziona il nuovo ruolo desiderato.
  + Il sistema aggiorna il contesto operativo in base al ruolo selezionato.
  + Il sistema ricarica l'ambiente di lavoro.
  + Il sistema mostra un messaggio di avvenuto cambio ruolo operativo.

- *Postcondizioni:* L'interfaccia è aggiornata coerentemente con il nuovo ruolo selezionato.

#pagebreak()
// PER DOMANDE: anche qui c'è un esempio se va bene la granularità degli scenari.

== UC5: Logout Utente <UC5>
- *Attore principale:* Utente.

- *Descrizione:* Permette all'utente di terminare la sessione di lavoro corrente.

- *Precondizioni:* L'utente è autenticato e sta visualizzando la propria area personale.

- *Trigger:* L'utente seleziona la voce "Logout".

- *Scenario principale:*
  + L’utente conferma l’operazione di logout premendo "Conferma Logout".
  + Il sistema termina la sessione dell’utente.
  + Il sistema reindirizza l’utente alla pagina di accesso.
  + Il sistema mostra un messaggio di avvenuta disconnessione.

- *Scenari alternativi:* \
  Al passo 1:
  + L’utente annulla l’operazione di logout. Il sistema interrompe l’operazione.
  Al passo 2:
  + Si verifica un errore durante la terminazione della sessione.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* La sessione dell’utente è terminata e l’utente si trova in uno stato non autenticato.

#pagebreak()

== UC6: Creazione di un Gruppo di Progetto <UC6>

- *Attore principale:* Utente.

- *Descrizione:* L'Utente crea un Progetto per aggregare più repository già importate nella piattaforma.

- *Precondizioni:* L'Utente è autenticato e ha già importato almeno una repository.

- *Trigger:* L'Utente seleziona il pulsante "Nuovo Progetto" dalla propria dashboard o dalla lista progetti.

- *Scenario principale:*
  + Il sistema visualizza il modulo di creazione del progetto.
  + L'Utente inserisce il *Nome del Progetto* (obbligatorio) e una *Descrizione* (opzionale).
  + L'Utente conferma la creazione.
  + Il sistema visualizza il nuovo progetto generato nella lista dei suoi progetti attivi.

- *Scenari alternativi:* \
  L'Utente annulla l'operazione premendo "Annulla" in qualsiasi punto del flusso principale prima della conferma.  \
  Al passo 3:
  + L'utente seleziona 'Salta passaggio' senza scegliere alcuna repository.
    - Il sistema procede con la creazione del progetto senza repository associate.

- *Postcondizioni:* Un nuovo progetto è stato creato e contiene le repository selezionate.

== 6.1 - Aggiunta Repository ad un Progetto <UC6.1>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente è registrato e seleziona quali repository, tra quelle già collegate al suo account, faranno parte del nuovo progetto.

- *Precondizioni:* L'utente vuole aggiungere una o più repository al progetto.

- *Trigger:* Pulsante per aggiungere una repository ad un progetto.

- *Scenario principale:*
  + Il sistema mostra una lista di repository importabili dall'account dell'Utente.
  + L'Utente seleziona tramite checkbox una o più repository da includere nel gruppo.

- *Scenari alternativi:* \
  + L'Utente decide di non selezionare alcuna repository e annulla l'operazione.

- *Postcondizioni:* L'Utente ha selezionato le repository da associare al progetto in fase di creazione.

== 6.2 - Eliminazione Repository da un Progetto <UC6.2>
- *Attore principale:* Utente.
  
- *Descrizione:* L'Utente è registrato e seleziona quali repository, tra quelle associate ad un progetto esistente, vuole eliminare.

- *Precondizioni:* L'utente vuole rimuovere una o più repository da un progetto esistente.

- *Trigger:* Pulsante per rimuovere una repository da un progetto.

- *Scenario principale:*
  + Il sistema mostra una lista di repository attualmente associate al progetto.
  + L'Utente seleziona tramite checkbox una o più repository da rimuovere dal gruppo.
  + L'Utente conferma l'operazione di rimozione.

- *Scenari alternativi:* \
  Al passo 2:
  + L'Utente decide di non selezionare alcuna repository e annulla l'operazione.
  Al passo 3:
  + L'Utente annulla l'operazione di rimozione.

- *Postcondizioni:* Le repository selezionate sono state rimosse dal progetto.

== UC7 - Eliminazione Repository dal Sistema <UC7>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente è registrato ed elimina una repository precedentemente aggiunta alla piattaforma.

- *Precondizioni:* L'Utente vuole eliminare una repository dal sistema.

- *Trigger:* L'Utente seleziona l'opzione di eliminazione della repository.

- *Scenario principale:*
  + Il sistema richiede una conferma dell'operazione di eliminazione.
  + L'Utente conferma l'eliminazione.
  + Il sistema rimuove la repository dal sistema.
  + Il sistema mostra un messaggio di conferma dell'avvenuta eliminazione.

- *Scenari alternativi:* \
  Al passo 2:
  + L'Utente annulla l'operazione di eliminazione.

- *Postcondizioni:* La repository è stata eliminata dal sistema assieme a tutti i suoi contenuti.

