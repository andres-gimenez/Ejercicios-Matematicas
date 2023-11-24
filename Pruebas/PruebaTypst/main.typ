#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Prueba de documento con typst",
  authors: (
    (name: "Andrés Jorge Giménez Muñoz", 
    email: "andres.gimenez@outlook.com", 
    affiliation: "Profesor de mates"),
  ),
  date: "November 21, 2023",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

#set text(
  font: "New Computer Modern",
  size: 10pt
)
#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
)
#set par(
  justify: true,
  leading: 0.52em,
)

// #set heading(numbering: "1.b")

= Introductión
#lorem(60)

== En el paper paper

+ Uno
+ Dos 
+ Tres

- Uno
- Dos
- / hola: ¿Qué tal?

$5+sqrt(12) = x/3$

$S = sum_(x=0)^3 (x+5)/2$

=== Contributions
#par(justify: true)[
  #lorem(40)
]


= Related Work
#lorem(500)