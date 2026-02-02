#outline(title: "Indice dei contenuti")


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
  + Il sistema mostra l'opzione di visualizzazione delle analisi precedenti (*<\<extend>>* #link(<UCD14>)[[UCD14]]).
  + Il sistema mostra l'opzione per avviare un Analisi sul repository (*<\<extend>>* #link(<UCD15>)[[UCD15]]).
  + Il sistma mostra il pulsante per tornare alla pagina precedente. 
  
- *Scenari alternativi:* \
  Al passo 1: 
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i dati aggregati del progetto.

- *Estensioni:* \
  - #link(<UCD6>)[[UCD6]]
  - #link(<UCD14>)[[UCD14]]

- *Inclusioni:*
  - #link(<UCD13>)[[UCD13]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13 - Visualizzazione Dettagli Ultima Analisi Repository
<UCD13>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate dall'ultima analisi condotta nelle varie aree.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'ultima analisi condotta su ogni area (*<\<include>>* #link(<UCD13.1>)[[UCD13.1]], #link(<UCD13.2>)[[UCD13.2]], #link(<UCD13.3>)[[UCD13.3]]).  

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi svolta relativa ai vari agenti.

- *Inclusioni:*
  - #link(<UCD13.1>)[[UCD13.1]] 
  - #link(<UCD13.2>)[[UCD13.2]] 
  - #link(<UCD13.3>)[[UCD13.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.1 - Visualizzazione Dettagli Ultima Analisi Area Test
<UCD13.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area test dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi sui test.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi sui test.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.1>)[[UCD6.0.1]]).
  + Il sistema mostra l'opzione per avviare un'Analisi per l'area Test (*<\<extend>>* #link(<UCD15.1>)[[UCD15.1]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi relativa ai test.

- *Estensioni:*  
  - #link(<UCD6.0.1>)[[UCD6.0.1]]
  - #link(<UCD15.1>)[[UCD15.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.2 - Visualizzazione Dettagli Ultima Analisi Area OWASP
<UCD13.2>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area OWASP dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi OWASP.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi OWASP.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.2>)[[UCD6.0.2]]).
  + Il sistema mostra l'opzione per avviare un'Analisi per l'area OWASP (*<\<extend>>* #link(<UCD15.2>)[[UCD15.2]]).

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi OWASP.

- *Estensioni:*  
  - #link(<UCD6.0.2>)[[UCD6.0.2]]
  - #link(<UCD15.2>)[[UCD15.2]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD13.3 - Visualizzazione Dettagli Ultima Analisi Area Documentazione
<UCD13.3>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate nell'area Documentazione dall'ultima analisi condotta.

- *Precondizioni:* Il Developer si trova sulla Dashboard del repository (#link(<UCD5>)[[UCD5]]) e sono presenti dati relativi all'analisi sulla Documentazione.

- *Trigger:* Viene caricata la pagina di dettaglio del Repository.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'analisi sulla Documentazione.
  + Il sistema mostra il comando per visualizzare le criticità e relative proposte di remediation (*<\<extend>>* #link(<UCD6.0.3>)[[UCD6.0.3]]).
  + Il sistema mostra l'opzione per avviare un'Analisi per l'area Documentazione (*<\<extend>>* #link(<UCD15.3>)[[UCD15.3]]).
  + 

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati delle dell'ultima analisi sulla Documentazione.

- *Estensioni:*  
  - #link(<UCD6.0.3>)[[UCD6.0.3]]
  - #link(<UCD15.3>)[[UCD15.3]]

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

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area test sulla dashboard di dettaglio del repository #link(<UCD13.1>)[[UCD13.1]]. Deve essere stata eseguita almeno un analisi.

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

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area documentazione sulla dashboard di dettaglio del repository #link(<UCD13.2>)[[UCD13.2]]. Deve essere stata eseguita almeno un analisi.

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

- *Precondizioni:* Il Developer sta visualizzando la sezione relativa all'area OWASP sulla dashboard di dettaglio del repository #link(<UCD13.3>)[[UCD13.3]]. Deve essere stata eseguita almeno un analisi.

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
  - Il sistema mostra il path che il file seguirà all'interno del repository (*<\<extend>>* #link(<UCD6.1.2>)[[UCD6.1.2]]).
  - Il sistema mostra un pulsante per accettare la proposta dell'agente (*<\<extend>>* #link(<UCD6.2.1>)[[UCD6.2.1]]).
  - Il sistema mostra un pulsante per tornare alla pagina precedente.

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il developer sta la proposta di remediation relativa ad un file specifico.

- *Estensioni:* 
  - #link(<UCD6.1.2>)[[UCD6.1.2]]
  - #link(<UCD6.2.1>)[[UCD6.2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.2 - Cambio Percorso di Destinazione File 
<UCD6.1.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole cambiare la destinazione di uno specifico file nel contesto di una proposta di remediation.

- *Precondizioni:* Il Developer sta visualizzando la proposta di remdiation relativa ad un singolo file #link(<UCD6.1>)[[UCD6.1]].

- *Trigger:* Il Developer seleziona il pulsante per il cambio path.

- *Scenario principale:* \
  - Il sistema mostra un pop-up con un campo sul quale inserire il nuovo path.
  - Il Developer inserisce il path all'interno del campo.
  - Il Developer conferma l'operazione.

- *Scenari alternativi:*
  - Il Developer decide di annullare l'operazione (*<\<extend>>* #link(<UCD6.1.2.1>)[[UCD6.1.2.1]])
  Al passo 3:
  - Il path inserito non è valido:
    - Il sistema mostra un messaggio di errore.
    - Viene data la possibilità di effettuare un nuovo tentativo

- *Postcondizioni:* Il file in visione al Developer ha un nuovo path all'interno del campo di destinazione. 

- *Estensioni:* #link(<UCD6.1.2.1>)[[UCD6.1.2.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD6.1.2.1 Annullamento Cambio Percorso di Destinazione File
<UCD6.1.2.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'inserimento di un nuovo percorso di destinazione di un file al quale è stata proposta remediation.

- *Precondizioni:* Il Developer annulla il Caso d'Uso #link(<UCD6.1.2>)[[UCD6.1.2]].

- *Trigger:* Il Developer seleziona l’opzione di annullamento dell'inserimeno del path.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento.
  - Il sistema ripristina lo stato precedente alla richiesta di accettazione.

- *Postcondizioni:* Il processo di inserimento del nuovo path è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell’accettazione.

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

- *Estensioni:* #link(<UCD6.3>)[UCD6.3]

- *Generalizzazioni:* #link(<UCD6.2.1>)[[UCD.2.1]]

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
  - Annullamento accettazione. Il sistema reindirizza il Developer alla pagina precedente (*<\<extend>>* #link(<UCD6.3>)[[UCD6.3]])
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
<UCD7>
- *Attore principale:* Developer

- *Descrizione:* Il Developer elimina un repository dal sistema.

- *Precondizioni:* Il Developer sta visualizzando la lista di Repository #link(<UCD2>)[[UCD2]]. 

- *Trigger:* Il Developer seleziona il tasto di cancellazione repository.

- *Scenario principale:*
  - Il sistema chiede conferma dell'operazione.
  - La Repository e tutti i dati ad essa annessi, vengono rimossi dal sistema.

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 1: \
  - Il Developer sceglie di annullare l'operazione di eliminazione (*<\<extend>>* #link(<UCD7.1>)[[UCD7.1]])

- *Postcondizioni:* Il Repository è stato correttamente eliminato dal sistema insieme ai dati ad esso associati.

- *Estensioni:* #link(<UCD7.1>)[[UCD7.1]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD7.1 - Annullamento Eliminazione Singola Repository
<UCD7.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di eliminazione di un Repository.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD7>)[UCD7].

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di eliminazione.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento dell'eliminazione.
  - Il sistema ripristina lo stato precedente alla richiesta di accettazione.

- *Postcondizioni:* Il processo di eliminazione è stato annullato. Lo stato del sistema è coerente con la situazione precedente all’avvio dell'eliminazione.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD8 - Procedimenti in corso
<UCD8>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le operazioni che sono in corso .

- *Precondizioni:* Il Developer vuole visualizzare tutte le operaizioni da lui avviate e non ancora concluse. 

- *Trigger:* Il Developer si trova nella dashboard e seleziona la voce 'Procedimenti in Corso'.

- *Scenario principale:*
  - Il sistema mostra l'opzione per visualizzare le Remediation avviate e le Analisi avviate .
  - Il Developer seleziona le due opzioni (*<\<include>>* #link(<UCD8.1>)[[UCD8.1]], *<\<include>>* #link(<UCD8.2>)[[UCD8.2]])
  - Il sistema mostra il tasto per tornare all pagina precedente (*<\<extend>>* #link(<UCD8.0.1>)[[UCD8.0.1]]).

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  - Il Developer decide di annullare la visualizzazione di una o due categorie di operazioni in corso e torna alla pagina precedente (*<\<extend>>* #link(<UCD8.0.1>)[[UCD8.0.1]]).

- *Postcondizioni:* Il Developer ha visualizzato tutte le operazioni in corso all'interno del sistema.

- *Estensioni:* #link(<UCD8.0.1>)[[UCD8.0.1]]).

- *Inclusioni:* 
  - #link(<UCD8.1>)[[UCD8.1]])
  - #link(<UCD8.2>)[[UCD8.2]])

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.0.1 - Annullamento visualizzazione Procedimenti in Corso
<UCD8.0.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di visualizzazione delle operazioni in corso.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD8>)[UCD8].

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di visualizzazione.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento.
  - Il sistema ripristina lo stato precedente alla richiesta di visualizzazione.

- *Postcondizioni:* Lo stato del sistema è coerente con la situazione precedente all’avvio della richiesta di visualizzazione.

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.1 - Visualizzazione Remediation Avviate
<UCD8.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le remediation che sono state avviate .

- *Precondizioni:* Il Developer vuole visualizzare le remediation da lui avviate e non ancora confermate tramite merge con il Repository coinvolto. 

- *Trigger:* Il Developer si trova nella sezione 'Procedimenti in Corso' e seleziona la voce di Remediation in Corso.

- *Scenario principale:*
  - Il sistema mostra la lista dei branch aperti per effettuare remdiation ai quali non è stata accettata la pull request.
  - Il sistema mostra i nomi delle repository su cui un branch sta effettuando l'operazione.
  - Il sistema mostra la data relativa all'avvio del processo di remediation.
  - Il sistema mostra un pulsante per tornare alla pagina precedente

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 1: \
  - Il Developer sceglie di annullare l'operazione di Remediation (*<\<extend>>* #link(<UCD9>)[[UCD9]])

- *Postcondizioni:* Il Developer sta visualizzando tutte le remediation in atto nel sistema.

- *Estensioni:* #link(<UCD9>)[[UCD9]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD8.2 - Visualizzazione Analisi su Repository in corso
<UCD8.2>
- *Attore principale:* Developer

- *Descrizione:* Il Developer visualizza le analisi che sono state avviate .

- *Precondizioni:* Il Developer vuole visualizzare le analisi da lui avviate e non ancora confermate tramite merge con il Repository coinvolto. 

- *Trigger:* Il Developer si trova nella sezione 'Procedimenti in Corso' e seleziona la voce di Analisi in Corso.

- *Scenario principale:*
  - Il sistema mostra la lista repository sulle quali sono state avviate delle Analisi.
  - Il sistema mostra la data relativa all'avvio del processo di remediation.
  - Il sistema mostra un pulsante per tornare alla pagina precedente

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 1: \
  - Il Developer sceglie di annullare l'operazione di Analisi (*<\<extend>>* #link(<UCD10>)[[UCD10]])

- *Postcondizioni:* Il Developer sta visualizzando tutte le Analisi in atto nel sistema.

- *Estensioni:* #link(<UCD10>)[[UCD10]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD9 - Interrompi Remediation Avviata
<UCD9>
- *Attore principale:* Developer.

- *Attore secondario:* GitHub.

- *Descrizione:* Il Developer desidera interrompere un'operazione di remediation in corso. L’interruzione comporta la revoca o il rifiuto della pull request generata automaticamente dal sistema tramite bot su GitHub.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD8.1>)[UCD8.1].

- *Trigger:* Il Developer seleziona l’opzione di interruzione del processo.

- *Scenario principale:*
  + Il sistema mostra al Developer una richiesta di conferma per l’interruzione della remediation.
  + Il Developer conferma l’operazione di interruzione.
  + Il sistema annulla automaticamente la pull request oppure ne imposta lo stato come rifiutata/chiusa su GitHub.
  + Il sistema notifica al Developer l’avvenuta interruzione della remediation.
  
- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  - Il Developer non conferma l'operazoine di interruzione (*<\<extend>>* #link(<UCD11>)[[UCD11]]).

- *Postcondizioni:* Una Remediation in atto è stata interrotta.

- *Estensioni:* #link(<UCD11>)[[UCD11]]


#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD10 - Interrompi Analisi Avviata
<UCD10>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera interrompere un'operazione di Analisi in corso.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD8.2>)[UCD8.2].

- *Trigger:* Il Developer seleziona l’opzione di interruzione del processo.

- *Scenario principale:*
  + Il sistema mostra al Developer una richiesta di conferma per l’interruzione dell'Analisi.
  + Il Developer conferma l’operazione di interruzione.
  + Il sistema annulla automaticamente l'Analisi in corso.
  + Il sistema notifica al Developer l’avvenuta interruzione dell'Analisi.
  
- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  - Il Developer non conferma l'operazoine di interruzione (*<\<extend>>* #link(<UCD11>)[[UCD11]]).

- *Postcondizioni:* Un'Analisi in atto è stata interrotta.

- *Estensioni:* #link(<UCD11>)[[UCD11]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD11 - Annullamento di Interruzione Operazione In Corso
<UCD11>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di Interruzione di un operazione in corso.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD9>)[UCD9].

- *Trigger:* Il Developer seleziona l’opzione di annullamento durante il processo di Interruzione.

- *Scenario principale:*
  - Il Developer seleziona l’opzione di annullamento.
  - Il sistema ripristina lo stato precedente alla richiesta di annullamento.

- *Postcondizioni:* Lo stato del sistema è coerente con la situazione precedente all’avvio della richiesta di annullamento.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD12 - Visualizzazione Esiti Ultime Analisi Repository
<UCD12>
- *Attore principale:* Developer

- *Descrizione:* Il Developer vuole visualizzare l'esito delle analisi nei repository.

- *Precondizioni:* Il Developer vuole visualizzare l'esito di una o più analisi da lui avviate e non ancora confermate tramite merge con il Repository coinvolto. Le Analisi non sono in atto. Le Analisi non possono essere precedenti oltre la settimana dalla data di visualizzazione ed un massimo di 30.

- *Trigger:* Il Developer selezione l'opzione dei visualizzazione delle ultime Analisi avviate e completate.

- *Scenario principale:*
  - Il sistema mostra la lista delle ultime Analisi completate.
  - Il sistema mostra il nome della repository sul quale è stata eseguita l'analisi.
  - Il sistema mostra la data relativa all'avvio del processo di remediation.
  - Il Developer consulta l'ultima analisi (*<\<extend>>* #link(<UCD5>)[[UCD5]]).
  - Il sistema mostra un pulsante per tornare alla pagina precedente

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento di una pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 1: \
  - Il Developer sceglie di annullare l'operazione di visualizzazione di una o più analisi eseguite (*<\<extend>>* #link(<UCD12.1>)[[UCD12.1]]).

- *Postcondizioni:* Il Developer ha visualizzato le ultime Analisi eseguite nel sistema.

- *Estensioni:* #link(<UCD12.1>)[[UCD12.1]]
- *inclusioni:* #link(<UCD5>)[[UCD5]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD12.1 - Annullamento Visualizzazione Esiti Ultime Analisi
<UCD12.1>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di Visualizzazione delle ultime analisi eseguite.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD12>)[UCD12].

- *Trigger:* Il Developer seleziona il pulsante per tornare alla pagina precedente.

- *Scenario principale:*
  - Il Developer seleziona l’opzione per tornare indietro.
  - Il sistema ripristina lo stato precedente alla richiesta di visualizzazione.

- *Postcondizioni:* Lo stato del sistema è coerente con la situazione precedente all’avvio della richiesta di visualizzazione.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)


#pagebreak()

=== UCD14 - Visualizzazione Storico delle Analisi sul Repository
<UCD14>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera visualizzare lo storico delle varie Analisi eseguite all'interno di un repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository (#link(<UCD5>)[[UCD5]]) e sono state eseguite almeno due analisi all'interno dello stesso.

- *Trigger:* Il Developer seleziona il pulsante per visualizzare lo storico delle analisi.

- *Scenario principale:*
  - Il sistema mostra una lista che contiene:
    - Tipo di Analisi (Documentazione, Test, OWASP)
    - Data Analisi

- *Scenari alternativi:*
  - Si verifica un errore durante il caricamento di una pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  - Il Developer selezione un Analisi specifica di visualizzare (*<\<extend>>* #link(<UCD14.1>)[[UCD14.1]]).

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD14.1 - Visualizzazione Storico Singola Analisi
<UCD14.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole controllare le criticità identificate da un'analisi condotta in una o più aree.

- *Precondizioni:* Il Developer sta visualizzando lo storico delle analisi effettuate (#link(<UCD14>)[[UCD14]]).

- *Trigger:* Il Developer preme su un elemento della lista.

- *Scenario principale:*
  + Il sistema mostra i grafici relativi all'ultima analisi condotta nell'area Test.
  + Il sistema mostra i grafici relativi all'ultima analisi condotta nell'area OWASP.  
  + Il sistema mostra i grafici relativi all'ultima analisi condotta nell'area Documentazione.
  + Il sistema mostra il pulsante per tornare alla pagina precedente.   

- *Scenari alternativi:* \
  - Si verifica un errore durante il caricamento della pagina.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.

- *Postcondizioni:* Il Developer visualizza i risultati di un-analisi svolta all'interno del repository.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD15 - Avvio Analisi di una Repository
<UCD15>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi completa del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository (#link(<UCD5>)[[UCD5]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sul repository.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
-  *Postcondizioni:* Un'analisi sul repository è stata avviata.

-  *Estensioni:* #link(<UCD16>)[[UCD16]]

- *Generalizzazioni:*
  - #link(<UCD15.1>)[[UCD15.1]]
  - #link(<UCD15.2>)[[UCD15.2]]
  - #link(<UCD15.3>)[[UCD15.3]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.1 - Avvio Analisi di Test di una Repository
<UCD15.1>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi Test del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository relativa alle analisi test (#link(<UCD13.1>)[[UCD13.1]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sull'area test.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso in quell'area all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
  *Postcondizioni:* Un'analisi sull'area Test del repository è stata avviata.

  *Estensioni:* #link(<UCD16>)[[UCD16]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.2 - Avvio Analisi OwASP di una Repository
<UCD15.2>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi OWASP del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository relativa alle analisi OWASP (#link(<UCD13.2>)[[UCD13.2]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sull'area OWASP.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso in quell'area all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
  *Postcondizioni:* Un'analisi sull'area OWASP del repository è stata avviata.

  *Estensioni:* #link(<UCD16>)[[UCD16]]

#line(length: 100%, stroke: 0.5pt + gray)

=== UCD15.3 - Avvio Analisi di Documentazione di una Repository
<UCD15.3>
- *Attore principale:* Developer.

- *Descrizione:* Il Developer vuole avviare un'analisi Documentazione del repository.

- *Precondizioni:* Il Developer sta visualizzando il dettaglio di un repository relativa alle analisi Documentazione (#link(<UCD13.3>)[[UCD13.3]]).

- *Trigger:* Il Developer preme sul tasto di avvio analisi.

- *Scenario principale:*
  + Il sistema richiede la conferma del Developer.
  + Il Developer conferma l'avvio dell'operazione.
  + Il sistema avvia un analisi sull'area documentazione.

- *Scenari alternativi*
  - Si verifica un errore durante il caricamento della conferma.
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  Al passo 2:
  - Il Developer non conferma l'operazione (*<\<extend>>* #link(<UCD16>)[[UCD16]]).
  Al passo 3:
  - Si verifica un conflitto in quanto c'è già un analisi in corso in quell'area all'interno del repository
    - Il sistema mostra un messaggio di errore.
    - Il caso d'uso termina senza successo.
  
  *Postcondizioni:* Un'analisi sull'area Documentazione del repository è stata avviata.

  *Estensioni:* #link(<UCD16>)[[UCD16]]

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)

#pagebreak()

=== UCD16 - Annullamento Avvio di un'Analisi
<UCD16>
- *Attore principale:* Developer

- *Descrizione:* Il Developer desidera annullare l'operazione di Avvio Analisi.

- *Precondizioni:* Il Developer ha avviato il caso d’uso #link(<UCD15>)[UCD15] o #link(<UCD15.1>)[UCD15.1] o #link(<UCD15.2>)[UCD15.2] o #link(<UCD15.3>)[UCD15.3].

- *Trigger:* Il Developer seleziona di annullamento dell'operazione.

- *Scenario principale:*
  - Il sistema ripristina lo stato precedente alla richiesta di analisi.

- *Postcondizioni:* Lo stato del sistema è coerente con la situazione precedente all’avvio della richiesta di analisi.

#line(length: 100%, stroke: 0.5pt + gray)
#line(length: 100%, stroke: 0.5pt + gray)