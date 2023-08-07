// begin Styling
#set page(
 paper: "a4",
 margin: (x: 2.0cm, y: 2.0cm),
)
#set text(
 font: "Noto Sans",
 size: 11pt,
 lang: "de"
)
#set par(
 justify: true,
 linebreaks: "optimized",
 leading: 1.5em
)
// end Styling

#let boxed(term) = block(
 fill: luma(230),
 inset: 8pt,
 radius: 4pt,
 term
)
#show par: set block(spacing: 0.55em)
#show heading: set block(above: 1.4em, below: 1em)
// Start document

#include "titel.typ"

#set page(
 numbering: "I",
)
#counter(page).update(1)

#show outline: set heading(outlined: true)
#outline(title: "Inhaltsverzeichnis")
#outline(target: figure.where(kind: table), title: "Tabellenverzeichnis")
#outline(target: figure.where(kind: figure), title: "Abbildungsverzeichnis")

#set page(
 numbering: "1",
)
#set heading(
 numbering: "1.",
)
#counter(page).update(1)
#include "lec1.typ"
#include "lec2.typ"
#include "lec3.typ"
#include "lec4.typ"
#include "lec5.typ"
#include "lec6.typ"

#set page(
 numbering: "I"
)

#bibliography("bibliografie.bib", title: "Literaturverzeichnis", style: "apa")
// End document