// 1. Legge il contenuto del file glossario come semplice testo
#let contenuto-glossario = read("../PB/glossario.typ")

// Cerca la stringa esatta usata file e cattura il contenuto tra [ ]
#let pattern = regex("heading\(level: 2, outlined: false\)\[(.*?)\]")

// 3. Estrae i termini e li pulisce
#let termini = ()

#for match in contenuto-glossario.matches(pattern) {
  let termine-grezzo = match.captures.at(0)
  
  // Se il termine è "Repository (repo)", lo spezza in "Repository" e "repo"
  if termine-grezzo.contains("(") {
    let parti = termine-grezzo.split("(") // Divide alla parentesi aperta
    
    // Aggiunge la prima parte ("Repository") pulita dagli spazi
    termini.push(parti.at(0).trim()) 
    
    // Aggiunge la seconda parte ("repo") togliendo la parentesi chiusa ")"
    termini.push(parti.at(1).replace(")", "").trim())
  } else {
    // Se non ha parentesi, lo aggiunge così com'è
    termini.push(termine-grezzo)
  }
}

// 4. Definisce la funzione con gestione dello stato
#let applica-glossario(doc) = {
  show heading: it => it
  if termini.len() > 0 {
    // 1. Definiamo la regola di show
    show regex("(?i)\b(" + termini.join("|") + ")\b"): it => {
      // Estraiamo la stringa pulita
      let parola = lower(it.text)
      let chiave = "usato-" + parola
      
      // Recuperiamo lo stato
      let s = state(chiave, false)
      
      // Usiamo il context (Typst 0.11+) per leggere lo stato in modo sicuro
      context {
        if s.get() == false {
          // Prima occorrenza
          it
          super[G]
          s.update(true)
        } else {
          // Occorrenze successive
          it
        }
      }
    }
    doc
  } else {
    doc
  }
}