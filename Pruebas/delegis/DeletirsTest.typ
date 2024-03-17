// #import "@preview/delegis:0.1.0": *
#import "./delegis.typ": *

#show: it => delegis(
  // Metadata
  title: "Vereinsordnung zu ABCDEF", // title of the law/bylaw/...
  abbreviation : "ABCDEFVO", // abbreviation of the law/bylaw/...
  resolution: "3. Beschluss des Vorstands vom 24.01.2024", // resolution number and date
  in-effect: "24.01.2024", // date when it comes into effect
  // draft: true, // whether this is a draft
  str-draft: "Borrador",
  // Template
  // logo: image("wuespace.jpg", alt: "WüSpace e. V."), // logo of the organization, shown on the first page
  // Content
  it
)

= Titulo 

§ 2 Holaaa

§ 1 Geltungsbereich

== Titulo 2 

(1) 
Diese Ordnung gilt für alle Mitglieder des Vereins.

(2) 
Sie regelt die Mitgliedschaft im Verein.

§ 2 Mitgliedschaft

(1) 
Die Mitgliedschaft im Verein ist freiwillig.

(2) 
Sie kann jederzeit gekündigt werden.

§ 2a Ehrenmitgliedschaft

(1) 
Die Ehrenmitgliedschaft wird durch den Vorstand verliehen.

§ 3 Mitgliedsbeiträge

#s~Die Mitgliedsbeiträge sind monatlich zu entrichten.
#s~Sie sind bis zum 5. des Folgemonats zu zahlen.

§ 5 Inkrafttreten

Diese Ordnung tritt am 24.01.2024 in Kraft. §~4 bleibt unberührt.