#let studiengang = "Informatik"
#let author = "Patryk Hegenberg"
#let Matrikelnummer = "102209025"
#let Betreuer = "Frank Krickel"
#let Adresse = "Dedendorf 8
 27333 Bücken"
#let Abgabedatum = "keins"
#let Thema = "Klausurvorbereitung C/C++"
#let typ = "Vorlesungszusammenfassung"
#set text(
 font: "Noto Sans",
 size: 14pt
)
#figure(
image(
 "images/cropped-iu_Logo_D_black_RGB_horizontal.png",
 width: 50%
 )
)<logo>
#v(30pt)
#align(
center + top,
typ)
#v(30pt)
#align(
 center + top,
 "Internationale Hochschule Duales Studium"
)
#align(
 center,
 "Studiengang: " + studiengang
)

#v(50pt)
#align(
 center,
 text(strong(Thema), size: 17pt)
)

#v(50pt)
#align(
 center,
 author
)

#align(
 center,
 "Matrikelnummer: " + Matrikelnummer
)

#align(
 center,
 Adresse
)
#v(50pt)
#align(
 center,
 "Betreuende Person: " + Betreuer
)

#align(
 center,
 "Abgabedatum: " + Abgabedatum
)
