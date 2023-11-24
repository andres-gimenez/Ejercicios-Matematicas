#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Plantilla de examen con typst",
  authors: (
    (name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    affiliation: "Profesor de mates"),
  ),
  date: "November 21, 2023",
)

= Pregunta 1
#lorem(60)

#table(
    columns: (1fr, auto, auto),
    inset: 10pt,
    align: horizon,
    [], [*Area*], [*Parameters*],
    image("cylinder.svg"),
    $ pi h (D^2 - d^2) / 4 $,
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],
    image("tetrahedron.svg"),
    $ sqrt(2) / 12 a^3 $,
    [$a$: edge length]
  )

== Sección 1

$5+sqrt(12) = x/3$

$S = sum_(x=0)^3 (x+5)/2$

=== Sub sección 1
#par(justify: true)[
  #lorem(40)
]

= Pregunta 2

$4x + 2 = 5$