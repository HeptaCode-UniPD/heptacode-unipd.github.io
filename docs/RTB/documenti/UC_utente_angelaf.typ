#set page(
  footer: context [
    #align(center)[
      #line(length: 100%)
      #counter(page).display("1")
      di
      #counter(page).final().first()
    ]
  ]
)

== Specifica dei casi d'uso - Utente

=== UC1 - Accesso alla Piattaforma 
<UC1>
- *Attore principale:* Utente.

- *Attore secondario:* GitHub.

- *Descrizione:* L’utente accede a _Code Guardian_ delegando l'autenticazione al provider esterno (GitHub).

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L’utente interagisce con la funzionalità di login nella pagina iniziale.

- *Scenario principale:*
  + L’utente esprime la volontà di accedere tramite il provider GitHub.
  + L'utente completa la procedura di autenticazione esterna.
  + L'utente accede alla propria dashboard personale.

- *Scenari alternativi:* \
  Al passo 1: \
  - l'utente esprime la volontà di annullare l'autenticazione (*<\<extend>>* #link(<UC1.1>)[[UC1.1]]) 
  Al passo 2: \
  - Si verifica un errore durante la procedura.
    - Il sistema mostra un messaggio di errore.
    - Il sistema reindirizza l'utente alla pagina di Login.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* L’utente è autenticato e visualizza la Dashboard.

- *Estensioni:* #link(<UC1.1>)[[UC1.1]].
- *Generalizzazioni:* #link(<UC1.2>)[[UC1.2]].
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.1 - Annullamento Accesso alla Piattaforma
<UC1.1>
- *Attore principale:* Utente.

- *Descrizione:* L'utente annulla la procedura di accesso alla piattaforma _Code Guardian_.

- *Precondizioni:* L'utente ha selezionato il tasto di annullamento dell'operazione di autenticazione.

- *Trigger:* Condizione di estensione dei casi d'uso #link(<UC1>)[[UC1]].

- *Scenario principale:*
  + L’utente si ritrova nella schermata iniziale di login.

- *Postcondizioni:* L’utente non è autenticato, si trova nella pagina di login.

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2 - Primo Accesso alla Piattaforma
<UC1.2>
- *Attore principale:* Utente.

- *Descrizione:* L’utente accede per la prima volta a _Code Guardian_ delegando l'autenticazione al provider esterno (GitHub).

- *Precondizioni:* L’utente non ha ancora effettuato l’accesso.

- *Trigger:* L’utente interagisce con la funzionalità di login nella pagina iniziale.

- *Scenario principale:*
  + L’utente esprime la volontà di accedere tramite il provider GitHub.
  + L'utente completa la procedura di autenticazione esterna.
  + (*<\<include>>* #link(<UC1.2.1>)[[UC1.2.1]]) 
  + Il sistema mostra all'utente la dashboard personale.

- *Scenari alternativi:* \
  Al passo 1: \
  - l'utente esprime la volontà di annullare l'autenticazione (*<\<extend>>* #link(<UC1.1>)[[UC1.1]]) 
  Al passo 2: \
  - Si verifica un errore durante la procedura.
    - Il sistema mostra un messaggio di errore.
    - Il sistema reindirizza l'utente alla pagina di Login.
    - Il caso d'uso termina senza successo.
  
- *Postcondizioni:* L’utente è autenticato e visualizza la Dashboard secondo il ruolo da lui selezionato.

- *Inclusioni:* #link(<UC1.2.1>)[[UC1.2.1]].
- *Estensioni:* #link(<UC1.1>)[[UC1.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UC1.2.1 - Selezione Ruolo Primo Accesso
<UC1.2.1>
- *Attore principale:* Utente.

- *Descrizione:* L'utente sceglie il ruolo iniziale che utilizzerà all'interno della piattaforma.

- *Precondizioni:* L'utente sta completando la procedura di primo accesso.

- *Trigger:* Condizione d'inclusione del caso d'uso #link(<UC1.2>)[[UC1.2]].

- *Scenario principale:*
  + L'utente visualizza le opzioni di ruolo disponibili: _Developer_, _Project Manager_ o _Business Owner_.
  + L'utente seleziona una tra le opzioni disponibili.
  + Il sistema evidenzia graficamente la selezione effettuata.
  + L'utente conferma la scelta.
  
- *Postcondizioni:* Il ruolo iniziale dell'utente è stato selezionato.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC2 - Visualizzazione Area Personale
<UC2>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole visualizzare la propria area personale.

- *Precondizioni:* L'utente è autenticato e si trova su una qualsiasi pagina della piattaforma.

- *Trigger:* L'utente seleziona l'icona del proprio profilo presente nella barra di navigazione globale.

- *Scenario principale:*
  + L'utente visualizza il pannello a comparsa del menù utente.
  + L'utente visualizza il riepilogo delle proprie informazioni (Nome, Email, Ruolo attuale).
  + L'utente visualizza il pulsante per il Cambio Ruolo, su cui può cliccare per cambiare il ruolo operativo (*<\<extend>>* #link(<UC3>)[[UC3]]).
  + L'utente visualizza il pulsante per il Logout, su cui può cliccare per terminare la sessione e tornare all'interfaccia di login (*<\<extend>>* #link(<UC4>)[[UC4]]).
  + L'utente visualizza il pulsante "X", su cui può cliccare per uscire dal menù utente e tornare alla pagina precedente.

- *Postcondizioni:* Il menù utente è attivo e le opzioni sono selezionabili.

- *Estensioni:*
  - #link(<UC3>)[[UC3]]
  - #link(<UC4>)[[UC4]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC3 - Cambio Ruolo Operativo
<UC3>
- *Attore principale:* Utente.

- *Descrizione:* L'utente vuole cambiare il proprio ruolo attivo all'interno della sessione corrente.

- *Precondizioni:* L'utente è autenticato e sta visualizzando la propria area personale.

- *Trigger:* L'utente seleziona il pulsante per il Cambio Ruolo.

- *Scenario principale:*
  + Il sistema visualizza l'elenco dei ruoli disponibili (es. se attualmente nel ruolo Developer i ruoli selezionabili saranno Project Manager e Business Owner).
  + L'utente seleziona il nuovo ruolo desiderato.
  + Il sistema aggiorna il contesto operativo in base al ruolo selezionato.

- *Scenario alternativo:* \
  Ai passi 1 o 2: \
  -  L'utente sceglie di annullare l'operazione selezionando il tasto di annullamento #link(<UC3.1>)[[UC3.1]]. 
  Al passo 3: \
  - Si verifica un errore durante la procedura.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* L'interfaccia è aggiornata coerentemente con il nuovo ruolo selezionato.

- *Estensioni:* #link(<UC3.1>)[[UC3.1]]
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC3.1 - Annullamento Cambio Ruolo Operativo
<UC3.1>
- *Attore principale:* Utente.

- *Descrizione:* L'Utente decide di annullare l'operazione di Cambio Ruolo Operativo.

- *Precondizioni:* L'Utente è autenticato e sta eseguendo l'operazione di cambio ruolo #link(<UC3>)[[UC3]].

- *Trigger:* L'utente selzione il tasto per uscire dall'operazione di Cambio Ruolo.

- *Scenario principale:* 
+ Il sistema reindirizza l'utente alla pagina di visualizzazione Area Personale.

- *Postcondizioni:* L'utente si trova nella propria area personale senza aver effettuato un cambio ruolo.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UC4 - Logout
<UC4>
- *Attore principale:* Utente.

- *Descrizione:* Permette all'utente di terminare la sessione di lavoro corrente.

- *Precondizioni:* L'utente è autenticato e sta visualizzando la propria Area Personale.

- *Trigger:* L'utente seleziona il pulsante di Logout.

- *Scenario principale:*
  + L’utente conferma l’operazione di Logout.
  + Il sistema termina la sessione dell’utente.
  + Il sistema reindirizza l’utente alla pagina di accesso.
  + Il sistema mostra un messaggio di avvenuta disconnessione.

- *Scenari alternativi:* \
  Al passo 1:
  + L’utente annulla l’operazione di logout. Il sistema interrompe l’operazione #link(<UC4.1>)[[UC4.1]].
  Al passo 2:
  + Si verifica un errore durante la terminazione della sessione.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* La sessione dell’utente è terminata e l’utente si trova in uno stato non autenticato.

- *Estensioni:* #link(<UC4.1>)[[UC4.1]]
  
#line(length: 100%, stroke: 0.5pt + gray)

=== UC4.1 - Annullamento Logout
<UC4.1>
- *Attore principale:* Utente.

- *Descrizione:* Gestisce il caso in cui l'Utente decida di annullare l'operazione di Logout.

- *Precondizioni:* L'Utente è autenticato e sta eseguendo l'operazione di logout #link(<UC4>)[[UC4]].

- *Trigger:* L'utente selziona il tasto per annullare l'operazione di logout.

- *Scenario principale:* 
+ Il sistema reindirizza l'utente alla pagina di visualizzazione Area Personale.

- *Postcondizioni:* L'utente è autenticato e si trova nella propria area personale senza aver effettuato il Logout.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()
== Specifica dei casi d'uso - developer

=== UCD1 - Aggiungi Singola Repository
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer vuole registrare un nuovo repository singolo _GitHub_ nella piattaforma.

- *Precondizioni:* Il Developer è all'interno della dashboard.

- *Trigger:* Il Developer seleziona l'opzione di Aggiunta Repository dalla dashboard.

- *Scenario principale:*
  + Il sistema mostra l’interfaccia per l’inserimento dei dati della repository.
  + Il Developer inserisce l'URL del repository _GitHub_.
  + Il Developer conferma l'operazione.
  + Il sistema valida l’URL e registra la repository.
  + Il sistema mostra un messaggio di conferma dell’avvenuta aggiunta.

- *Scenari alternativi:* \
  Al passo 1 o 2:
  - Il Developer decide di annullare l’operazione #link(<UCD1.1>)[[UCD1.1]].
  Al passo 4:
  - URL del repository non valido.
    - Il sistema mostra un messaggio di errore.
    - Il Developer può effettuare un nuovo tentativo.
  - Si verifica un errore durante il collegamento con GitHub.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il repository è stato aggiunto alla piattaforma.

- *Estensioni:* #link(<UCD1.1>)[[UCD1.1]]
- *Generalizzazioni:* #link(<UCD1.0.1>)[[UCD1.0.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD1.0.1 - Aggiungi Singola Repository Privata
<UCD1.0.1>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer vuole registrare un nuovo repository singolo _GitHub_ nella piattaforma.

- *Precondizioni:* Il Developer è all'interno della dashboard.

- *Trigger:* Il Developer seleziona l'opzione di Aggiunta Repository dalla dashboard.

- *Scenario principale:*
  + Il sistema mostra l’interfaccia per l’inserimento dei dati della repository.
  + Il Developer inserisce l'URL del repository _GitHub_.
  + Il Developer conferma l'operazione.
  + Il sistema valida l’URL.
  + Il sistema richiede l'inserimento di un token per poter accedere alla Repository.
  + Il Developer inserisce il token.
  + Il Developer conferma l'operazione.
  + Il sistema valida il token e registra la repository.
  + Il sistema mostra un messaggio di conferma dell’avvenuta aggiunta.

- *Scenari alternativi:* \
  Al passo 1 o 2:
  - Il Developer decide di annullare l’operazione #link(<UCD1.1>)[[UCD1.1]].
  Al passo 4:
  - URL del repository non valido.
    - Il sistema mostra un messaggio di errore.
    - Il Developer può effettuare un nuovo tentativo.
  Al passo 4 o 7: \
  - Si verifica un errore durante il collegamento con GitHub.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 8: \
  - Token del repository non valido.
    - Il sistema mostra un messaggio di errore.
    - Il Developer può effettuare un nuovo tentativo di aggiunta repository.

- *Postcondizioni:* Il repository è stato aggiunto alla piattaforma.

- *Estensioni:* #link(<UCD1.1>)[[UCD1.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD1.1 - Annullamento Aggiungi Singola Repository
<UCD1.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer decide di annullare l'operazione di aggiunta di un repository nel proprio profilo.

- *Precondizioni:* Il Developer visualizza l'interfaccia per l'inserimento dei dati del repository.

- *Trigger:* Il Developer selziona il tasto per l'annullamento di aggiunta di repoitory.

- *Scenario principale:* 
  + Il Developer viene reindirizzato alla dashboard principale della piattaforma _Code Guardian_.

- *Postcondizioni:* Il Developer si trova nuovamente nella dashboard senza aver aggiunto il repository.
  
#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD2 - Visualizzazione Lista Repository Personali
<UCD2>
- *Attore principale*: Developer.

- *Descrizione:* Il Developer desidera visualizzare la lista delle proprie Repository presenti sulla piattaforma _Code Guardian_. Le repository non fanno parte di un progetto.

- *Precondizioni:* Il Developer si trova all'interno della daashboard.

- *Trigger:* Caricamento della schermata della dashboard.

- *Scenario principale:*
  + Il sistema visualizza all'intero della dasboard una sezione contente la lista delle repository.
  + L'utente può scorrere per visualizzare tutte le repository presenti.

- *Scenari alternativi:* \
  - Il Developer decide di visualizzare una repository (*<\<extend>>* #link(<UCD5>)[[UCD5]]).

- *Postcondizioni:* Il Developer visualizza la lista delle proprie Repository.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD3 - Visualizzazione Lista Progetti
<UCD3>
- *Attore principale*: Developer.

- *Descrizione:* Il Developer desidera visualizzare la lista dei progetti ai quali partecipa presenti sulla piattaforma _Code Guardian_.

- *Precondizioni:* Il Developer si trova all'interno della daashboard.

- *Trigger:* Caricamento della schermata della dashboard.

- *Scenario principale:*
  + Il sistema visualizza all'intero della dasboard una sezione contente la lista dei progetti.
  + L'utente può scorrere per visualizzare tutti i progetti presenti.
  
- *Scenari alternativi:* \
  - Il Developer decide di visualizzare un progetto nel dettaglio (*<\<extend>>* #link(<UCD4>)[[UCD4]]).

- *Postcondizioni:* Il Developer visualizza la lista dei progetti in cui è coinvolto.

- *Estensioni:* #link(<UCD4>)[[UCD4]])

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD4 - Visualizzazione Dettagli Progetto
<UCD4>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole accedere alla vista di uno specifico progetto.

- *Precondizioni:* Esiste almeno un progetto creato.

- *Trigger:* Il developer clicca su una card di Progetto in #link(<UCD3>)[[UCD3]].

- *Scenario principale:*
  + Il sistema mostra l'intestazione del progetto.
  + Il sistema mostra i widget aggregati (Analisi Sicurezza, Test, OWASP).
  + Il sistema mostra l'elenco dei Repository che compongono il progetto con i relativi indicatori di stato.
  + Il sistma mostra il pulsante per tornare alla cisualizzazione della lista dei progetti. 
  
- *Scenari alternativi:* \
  Al passo 1: 
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 3:
  - Il Developer decide di visualizzare una Repository del progetto nel dettaglio (*<\<extend>>* #link(<UCD5>)[[UCD5]]).

- *Postcondizioni:* Il Developer visualizza i dati aggregati del progetto.

- *Estensioni:* #link(<UCD5>)[[UCD5]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD5 - Visalizzazione Dettagli Repository
<UCD5>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole accedere alla vista di una specifica Repository.

- *Precondizioni:* Esiste almeno una repository all'interno del sistema.

- *Trigger:* Il Developer clicca su una card di Progetto in #link(<UCD2>)[[UCD2]] o #link(<UCD3>)[[UCD3]].

- *Scenario principale:*
  + Il sistema mostra l'intestazione della repository.
  + Il sistema mostra i widget aggregati (Analisi Sicurezza, Test, OWASP).
  + Il sistema mostra l'opzione di visualizzazione delle proposte di remediation (*<\<extend>>* #link(<UCD6>)[[UCD6]]).
  + Il sistema mostra l'opzione di visualizzazione delle analisi precedenti (*<\<extend>>* #link(<UCD13>)[[UCD13]]).
  + Il sistma mostra il pulsante per tornare alla pagina precedente. 
  
- *Scenari alternativi:* \
  Al passo 1: 
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i dati aggregati del progetto.

- *Estensioni:* \
  - #link(<UCD6>)[[UCD6]]
  - #link(<UCD13>)[[UCD13]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD5.1 - Visualizzazione Dettagli Area Test
<UCD5.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area test dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi sui test.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi sui test.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.1>)[[UCD6.0.1]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi relativa ai test.

- *Estensioni:*  #link(<UCD6.0.1>)[[UCD6.0.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD5.2 - Visualizzazione Dettagli OWASP
<UCD5.2>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area OWASP dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi OWASP.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi OWASP.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.2>)[[UCD6.0.2]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi OWASP.

- *Estensioni:*  #link(<UCD6.0.2>)[[UCD6.0.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD 5.3 - Visualizzazione Dettagli Documentazione
<UCD5.3>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area Documentazione dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi sulla Documentazione.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi sulla Documentazione.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.3>)[[UCD6.0.3]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi sulla Documentazione.

- *Estensioni:*  #link(<UCD6.0.3>)[[UCD6.0.3]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD6 - Visualizzazione Proposta Remediation
<UCD6>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation dell'agente che ha svolto l'analisi sul repository.

- *Precondizioni:* Il Developer sta visualizzando la dashboard di dettaglio della repository #link(<UCD5>)[[UCD5]] e dove deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per il repository.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area test. 
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area OWASP.
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area Documentazione.
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali gli agenti, di ogni categoria, hanno riscontrato criticità e hanno elaborato una soluzione.

- *Estensioni:* #link(<UCD6.1>)[[UCD6.1]]

- *Generalizzazioni:*
  - #link(<UCD6.0.1>)[[UCD6.0.1]]
  - #link(<UCD6.0.2>)[[UCD6.0.2]]
  - #link(<UCD6.0.3>)[[UCD6.0.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.1 - Visualizzazione Proposta Remediation Test
<UCD6.0.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation relative ai test sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area test sulla dashboard di dettaglio del repository #link(<UCD5.1>)[[UCD5.1]]. Deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per i test.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area test. 
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi dei test, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* #link(<UCD6.1>)[[UCD6.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.2 - Visualizzazione Proposta Remediation Documentazione
<UCD6.0.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation relative alla documentazione sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area documentazione sulla dashboard di dettaglio del repository #link(<UCD5.2>)[[UCD5.2]]. Deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per i test.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area documentazione. 
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi della documentazione, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* #link(<UCD6.1>)[[UCD6.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.0.3 - Visualizzazione Proposta Remediation OWASP
<UCD6.0.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la o le proposte di remediation delle OWASP sul repository. 

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area OWASP sulla dashboard di dettaglio del repository #link(<UCD5.3>)[[UCD5.3]]. Deve essere stata eseguita almeno un analisi.

- *Trigger:* Il Developer seleziona il pulsante di visualizzazione di proposta remediation per OWASP.

- *Scenario principale:* \
  - Il sistema mostra una lista di zero o più documenti dove ha riscontrato criticità e propone remediation per l'area OWASP. 
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta visualizzando una lista di documenti sui quali l'agente incaricato all'analisi OWASP, ha riscontrato criticità e ha elaborato una soluzione.

- *Estensioni:* #link(<UCD6.1>)[[UCD6.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1 - Visualizzazione Dettaglio Singolo File per Remediation
<UCD6.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare la proposta di remediation di uno specifico file.

- *Precondizioni:* Il Developer sta visualizzando una lista di file sui quali il sistema propone delle remediation: #link(<UCD6>)[[UCD6]], #link(<UCD6.0.1>)[[UCD6.0.1]], #link(<UCD6.0.2>)[[UCD6.0.2]], #link(<UCD6.0.3>)[[UCD6.0.3]]

- *Trigger:* Il Developer seleziona il file che gli interessa consultare.

- *Scenario principale:* \
  - Il sistema mostra il contenuto del file con le differenze tra il file presente e la proposta applicaile (_diff_). 
  - Il sistema mostra un pulsante per accettare la proposta dell'agente #link(<UCD6.2.1>)[[UCD6.2.1]].
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta la proposta di remediation relativa ad un file specifico.

- *Estensioni:* #link(<UCD6.2.1>)[[UCD6.2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.2 - Accettazione proposta Remediation 
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il developer ha visualizzato le proposte di remediation e desidera accettare.
  
- *Precondizioni:* Il developer sta visualizzando una lista di file sui quali sono proposte remediation: #link(<UCD6>)[[UCD6]], #link(<UCD6.0.1>)[[UCD6.0.1]], #link(<UCD6.0.2>)[[UCD6.0.2]], #link(<UCD6.0.3>)[[UCD6.0.3]].

- *Trigger:* Il Developer seleziona il pulsante di accettazione remediation.

- *Scenario principale:*
  + Il sistema chiede conferma al Developer.
  + Il sistema valida che le proposta di remediation siano ancora disponibili e non obsolete.
  + Il sistema prepara le modifiche secondo la remediation proposta.
  + Il sistema interagisce con GitHub per creare un nuovo branch dedicato.
  + Il sistema applica automaticamente le modifiche al file nel branch.
  + Il sistema avvia una Pull Request verso il branch di destinazione della repository.
  + Il sistema notifica il Developer della corretta creazione della Pull Request.

- *Scenari alternativi*
  GitHub non è raggiungibile o restituisce un errore.
  - Il sistema notifica il Developer dell’errore e invita a riprovare. \ 
  Al passo 1: \
  - Annullamento accettazione. Il sistema reindirizza il Developer alla pagina precedente #link(<UCD6.3>)[[UCD6.3]]
  Al passo 2: \
  - Il sistema rileva che la remediation non è più valida.
  - Il sistema interrompe il processo di accettazione.
  - Il sistema notifica il Developer dell’impossibilità di procedere.
  Al passo 3: \
  - Uno o più file sono stati modificati sulla repository dopo la generazione della remediation. Il sistema rileva un conflitto durante l’applicazione delle modifiche.
  - Il sistema interrompe l’automazione.
  - Il sistema segnala il conflitto al Developer, suggerendo una risoluzione manuale.
  
- *Postcondizioni:* è stata avviata una richiesta di pull request su github che prevede l'aggiornamento della repository secondo remediation.

*Estensioni:* #link(<UCD6.3>)[UCD6.3]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.2.1 - Accettazione Remediation Singolo File
<UCD6.2.1>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il developer ha visualizzato la proposta di remediation su un singolo file e desidera accettare #link(<UCD6.1>)[[UCD6.1]].
  
- *Precondizioni:* Il developer sta visualizzando la proposta di remediation di un singolo file.

- *Trigger:* Il Developer seleziona il pulsante di accettazione remediation.

- *Scenario principale:*
  + Il sistema chiede conferma al Developer.
  + Il sistema valida che la proposta di remediation sia ancora disponibile e non obsoleta.
  + Il sistema prepara le modifiche al file secondo la remediation proposta.
  + Il sistema interagisce con GitHub per creare una nuova branch dedicata.
  + Il sistema applica automaticamente le modifiche al file nella branch.
  + Il sistema avvia una Pull Request verso il branch di destinazione della repository.
  + Il sistema notifica il Developer della corretta creazione della Pull Request.

- *Scenari alternativi*
  GitHub non è raggiungibile o restituisce un errore.
  - Il sistema notifica il Developer dell’errore e invita a riprovare. \ 
  Al passo 1: \
  - Annullamento accettazione. Il sistema reindirizza il Developer alla pagina precedente #link(<UCD6.3>)[[UCD6.3]]
  Al passo 2: \
  - Il sistema rileva che la remediation non è più valida.
  - Il sistema interrompe il processo di accettazione.
  - Il sistema notifica il Developer dell’impossibilità di procedere.
  Al passo 3: \
  - Il file è stato modificato sulla repository dopo la generazione della remediation. Il sistema rileva un conflitto durante l’applicazione delle modifiche.
  - Il sistema interrompe l’automazione.
  - Il sistema segnala il conflitto al Developer, suggerendo una risoluzione manuale.
  
- *Postcondizioni:* è stata avviata una richiesta di pull request su github che prevede l'aggiornamento della repository secondo remediation.

*Estensioni:* #link(<UCD6.3>)[UCD6.3]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.2.2 - Percorso di Destinazione File 
<UCD6.2.2>

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.3 - Annullamento Accettazione Remediation
<UCD6.3>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'accettazione della proposta di remediation #link(<UCD6.2.1>)[UCD6.2.1].

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD6.2.1>)[UCD6.2.1] e la Pull Request non è ancora stata creata.

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di accettazione della remediation.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento dell’accettazione.
  - Il sistema interrompe il processo di applicazione della remediation.
  - Il sistema ripristina lo stato precedente alla richiesta di accettazione.

- *Postcondizioni:* Il processo di accettazione è stato annullato. Nessuna Pull Request è stata creata su GitHub e lo stato del sistema è coerente con la situazione precedente all’avvio dell’accettazione.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD7 - Eliminazione Singola Repository

=== UCD7.1 - Annullamento Eliminazione Singola Repository

#pagebreak()

=== UCD8 - Visualizzazione Remediation Avviate

#pagebreak()

=== UCD9 - Interrompi Remediation Avviata

#pagebreak()

=== UCD10 - Visualizzazione Analisi su Repository in corso

#pagebreak()

=== UCD11 - Visualizzazione Esiti Analisi Repository

#pagebreak()

=== UCD12 - Visualizzazione Dettaglio Ultima Analisi Repository

=== UCD12.1 - Visualizzazione Dettaglio Ultima Analisi di Test Repository

=== UCD12.2 - Visualizzazione Dettaglio Ultima Analisi di Documentazione Repository

=== UCD12.2 - Visualizzazione Dettaglio Ultima Analisi OWASP Repository

#pagebreak()

=== UCD13 - Visualizzazione Storico Analisi Repository
<UCD13>
#pagebreak()

=== UCD14 - Avvio Analisi di una Repository

=== UCD14.1 - Avvio Analisi di Test di una Repository

=== UCD14.2 - Avvio Analisi di Documentazione di una Repository

=== UCD14.2 - Avvio Analisi OwASP di una Repository