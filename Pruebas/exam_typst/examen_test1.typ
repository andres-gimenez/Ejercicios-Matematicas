#import "exam.typ": *

// #show: exam.with(
#show: exam.with(
  title: "Plantilla de examen con typst",
  authors: (
    (name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    affiliation: "Profesor de mates"),
  ),
  logo: "logo.png",
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: true,
  show-grade-table: true,
  questions: (
    (
      points: 2.3,
      content: [
        Contenido de la pregunta 1 \
        $ 4 + x = 2 $
        #v(50pt)
      ]
    ),
    (
      points: 1.5,
      content: [
        Contenido de la pregunta 2
        $ 4 - x = 2 $
        #v(1fr)
      ]
    ),
    (
      points: 2,
      content: [
      #lorem(45)
      #v(1fr)
      #pagebreak(weak:true)
      ]
    ),
    (
      points: 3.8,
      content: [Contenido de la pregunta 4]
    )
  )
)

= Pregunta 1
#lorem(60)

// #studentData
// #v(10pt)

// #gradeTableHeader2()
// #v(10pt)

// #gradeTableHeader()
// #v(10pt)

// Hola

// #question(2.4, 
//   [
//     Opera y simplifica los resultadod \ \
//     $display( 5/3+4/9+4/6= 3 dot (4/2 + 3)^2 = 5 dot frac(3, 10))$

//     $ (3/2)/(3/7)/(3/4) $ 

//     $display(frac(frac(3,6), frac(2,9)))$
//     // #v(1fr)
//   ]
//   )
// #v(1fr)

// #question(2.4, 
//   [
//     Pregunta número 1 \ \
//     $ 2x -5 = sum_(x=0)^oo (x+1)/2 $

//     $ scripts(sum)_1^2 != sum_1^2 $
//     // #v(1fr)
//   ]
//   )

// #question(3.8,
//   [
//     Pregunta número 2 \ \
//     $2x -5 = sum_(x=0)^oo$
//   ]
//   )
// #v(1fr)

// #question(1.8, 
//   [
//     Pregunta número 3 \ \
//     $2x -5 = sum_(x=0)^oo$
//   ]
//   )
// #v(1fr)
// #pagebreak(weak:true)

// #question(4.8, 
//   [
//     Pregunta número 4 \ \
//     $2x -5 = sum_(x=0)^oo$
//   ]
//   )

// #question(4.8, 
//   [
//      #lorem(40)
//   ]
//   )

// let questions = (
//     (
//       calification: 2.3,
//       conten: [Contenido de la pregunta 1]
//     ),
//     (
//       calification: 1.4,
//       conten: [Contenido de la pregunta 2]
//     ),
//     (
//       calification: 2,
//       conten: [Contenido de la pregunta 3]
//     ),
//      (
//       calification: 3,
//       conten: [Contenido de la pregunta 4]
//     )
//   )



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

// #rotate(-90deg)[Profesor andres]

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  lorem(30),
)
