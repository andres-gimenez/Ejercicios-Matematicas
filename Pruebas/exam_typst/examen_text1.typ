#import "exam.typ": *


#show: exam.with(
  title: "Plantilla de examen con typst",
  authors: (
    (name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    affiliation: "Profesor de mates"),
  ),
  date: "November 21, 2023",
)



#studentData
#gradeTableHeader




#question(2.4, 
  [
    Pregunta número 1 \ \
    $2x -5 = sum_(x=0)^oo$
  ]
  )

#question(3.8,
  [
    Pregunta número 2 \ \
    $2x -5 = sum_(x=0)^oo$
  ]
  )

#question(1.8, 
  [
    Pregunta número 3 \ \
    $2x -5 = sum_(x=0)^oo$
  ]
  )


#question(4.8, 
  [
    Pregunta número 4 \ \
    $2x -5 = sum_(x=0)^oo$
  ]
  )



= Pregunta 1
#lorem(60)

// #table(
//     columns: (1fr, auto, auto),
//     inset: 10pt,
//     align: horizon,
//     [], [*Area*], [*Parameters*],
//     image("cylinder.svg"),
//     $ pi h (D^2 - d^2) / 4 $,
//     [
//       $h$: height \
//       $D$: outer radius \
//       $d$: inner radius
//     ],
//     image("tetrahedron.svg"),
//     $ sqrt(2) / 12 a^3 $,
//     [$a$: edge length]
//   )

== Sección 1

$5+sqrt(12) = x/3$

$S = sum_(x=0)^oo (x+3)/2$

=== Sub sección 1
#par(justify: true)[
  #lorem(40)
]

= Pregunta 2

$4x + 2 = 5$

#pagebreak(weak:true)

#rotate(-90deg)[Profesor andres]

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  lorem(30),
)
