#show link: set text(fill: color.linear-rgb(121, 1, 238))
#show link: underline

#v(1fr)
#align(center, [
  #set text(lang: "it")
  #image("../../asset/logo.svg")

  #v(1.5cm)

  #text(size: 25pt, weight: "bold")[Norme di Progetto]

  #v(2.0cm)
  #align(center, text(size: 15pt, weight: "bold")[Contenuto del Documento])

  #align(center,
  [#text(12pt)[Norme e linee guida operative del team _HeptaCode_ nello sviluppo del progetto _Code Guardian_.]]
  )
])
#v(1fr)

#counter(page).update(1)

#pagebreak()

#text(size:17pt, weight: "bold")[Registro delle modifiche:]
#set text(size: 11pt, lang: "it")
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 9pt,
  align: horizon,
  table.header(
    [*Versione*], [*Data*], [*Autore*], [*Verificatore*], [*Descrizione*]
  ),
  "0.1",
  "2025/12/10",
  "Amerigo Vegliante",
  "",
  ""
)

#counter(page).update(0)

#pagebreak()

#set page(
  numbering: "1",
  header: [
    #align(left)[HeptaCode #h(57%) Norme di Progetto]
    #v(2pt)
    #line(length: 100%, stroke: black)
  ],
)

#outline(title: "Indice")
#set heading(numbering: "1.")

#pagebreak()

= Introduzione

== Scopo del documento

Questo documento serve a definire le norme e le linee guida del team _HeptaCode_ per lo sviluppo del progetto _CodeGuardian_.
Nello specifico, si descrivono i processi di lavoro, le modalità di collaborazione, standard di codifica e le pratiche di gestione della qualità che il team si impegna a seguire per garantire coerenza, qualità ed efficienza nel ciclo di vita del prodotto.

== Scopo del prodotto

_Code Guardian_ è un prodotto ideato dall'azienda _Var Group S.p.a_, si tratta di una piattaforma web basata su un sistema ad agenti per l'audit e la remediation dei repository software. Analizza repository GitHub per valutarne qualità, sicurezza e manutenzione, generando report automatici e suggerendo miglioramenti su test, sicurezza (OWASP) e documentazione.

== Glossario

Termini tecnici e ambiguità sono chiariti nel documento _glossario.pdf_, ogni termine presente nel glossario presenta una lettera "G" a pedice, in questo modo intendiamo rendere la lettura della documentazione coerente e chiara.

== Riferimenti

=== Riferimenti Normativi

- Capitolato d'appalto C2 _Vargroup S.p.a._ - Code Guardian: \
#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")

- Standard ISO/IEC 12207:1995 - Processi di Ciclo di Vita del Software:
#linke("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")

=== Riferimenti Informativi

- Documentazione Typst: \
#link("https://typst.app/docs/")

= Processi Primari

== Fornitura

=== Scopo

Il processo di fornitura, secondo lo standard ISO/IEC 12207:1995, comprende le attività e le risorse necessarie al fornitore per realizzare il progetto. Esso monitora l'avanzamento delle operazioni del gruppo _HeptaCode_, confrontando il lavoro completato con le richieste del proponente. Questo processo inizia dopo lo Studio di Fattibilità, quando le esigenze del committente sono chiare. Il fornitore stipula un contratto che definisce i requisiti e la data di consegna. Solo dopo l'accordo si passa alla fase esecutiva con la redazione del Piano di Progetto.

==== Fasi della Fornitura



=== Descrizione

=== Aspettative

=== Rapporti con la Proponente

=== Documentazione Fornitura

==== Studio di Fattibilità

==== Analisi dei requisiti

==== Piano di Progetto

==== Piano di Qualifica

==== Glossario

==== Lettera di Presentazione

=== Strumenti

== Sviluppo

=== Scopo

=== Descrizione

=== Aspettative

=== Analisi dei Requisiti

==== Scopo

==== Descrizione

==== Casi d'uso

==== Requisiti

==== Metriche

=== Codifica

==== Scopo

==== Descrizione

==== Aspettative

==== Stile di Codifica

==== Metriche

=== Progettazione

==== Scopo

==== Descrizione

==== Aspettative

==== Documentazione

==== Metriche

==== Diagrammi UML

==== Design Pattern

= Processi di Supporto

== Documentazione

=== Scopo

=== Descrizione

=== Aspettative

=== Ciclo di Vita dei Documenti

=== Template Typst

=== Struttura dei Documenti

=== Documenti del Progetto

=== Convenzioni Stilistiche

=== Strumenti

=== Metriche

== Verifica

=== Scopo

=== Aspettative

=== Descrizione

=== Analisi Statica

=== Analisi Dinamica

==== Test di Unità

==== Test di Integrazione

==== Test di Sistema

==== Test di Regressione

==== Test di Accettazione

== Validazione

=== Scopo

=== Aspettative

=== Descrizione

=== Test di Accettazione

== Gestione della Configurazione

=== Descrizione

=== Scopo

=== Codice di Versionamento

=== Tecnologie Adottate

=== Repository

=== Sincronizzazione

== Gestione della Qualità

=== Descrizione

=== Scopo

=== PDCA

==== Plan

==== Do

==== Check

==== Act

=== Strumenti

=== Struttura delle Metriche

=== Struttura degli Obbiettivi

=== Metriche

= Processi Organizzativi

== Gestione dei Processi

=== Scopo

=== Descrizione

=== Aspettative

=== Pianificazione

==== Scopo

==== Descrizione

==== Aspettative

==== Assegnazione Ruoli

==== Ticketing

=== Coordinamento

==== Scopo

==== Descrizione

==== Aspettative

==== Comunicazioni

==== Riunioni

=== Metriche

== Miglioramento

=== Scopo

=== Descrizione

==== Analisi

==== Miglioramento

==== Metriche

== Formazione

=== Scopo

=== Aspettative

=== Formazione dei Membri del Gruppo

= Standard per la Qualità

== Funzionalità

== Affidabilità

== Usabilità

== Efficienza

== Manutenibilità

== Portabilità

= Metriche per la Qualità

== Metriche Interne

== Metriche Esterne

== Metriche della Qualità in Uso

== Metriche della Qualità di Processo

=== Miglioramento

=== Fornitura

=== Codifica

=== Documentazione

== Metriche della Qualità di Prodotto

=== Funzionalità

=== Usabilità

== Manutenibilità

=== Affidabilità