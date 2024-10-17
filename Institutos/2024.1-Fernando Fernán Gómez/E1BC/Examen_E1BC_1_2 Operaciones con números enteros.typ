#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.2": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("./logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "1º Evaluación",
    content: "Operaciones con números enteros",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // question-text-parameters: (size: 18pt, spacing:200%)
  // question-text-parameters: (size: 11pt, spacing:100%)
)

#set math.cases(reverse: true)

// #place(
//   center ,
//   clearance: 0pt,
//   dx: -30pt,
//   dy: 40pt,
//   rotate(-45deg,
//     origin: top + right,
//     text(size:70pt, fill:silver)[Borrador] 
//   )
// )

#g-question(point:1)[Ordena de mayor a menor los siguientes números, utilizando el signo '$gt$' o '$lt$':
  #align(center)[
    $+225, +323, -532, +236, -15, 0, -323 $
  ]
]

#v(1fr)

#g-question(point:1)[Representa los siguientes número enteros en la recta:
  #align(center)[
    $-5, 3, -7, 0, 6$
  ]
  #v(1cm)
  #align(center, [------------------------------------------------------------------------------------------])
  #v(1cm)
]

// #align(center, 
//   cetz.canvas(
//     length: 0.5cm,
//     {
//       import cetz.draw: *

//       // set-style(
//       //   mark: (fill: black),
//       //   stroke: (thickness: 0.4pt, cap: "round"),
//       //   content: (padding: 1pt)
//       // )
//       // grid((0,0), (2,2))

//       // grid((-10, -10), (10, 10), step: 1, stroke: gray + 0.6pt)

//       line((-10.5, 0), (10.5, 0), mark: (end: ">"))
//       // content((), $ x $, anchor: "left")
//       // line((0, -10.5), (0, 10.5), mark: (end: ">"))
//       // content((), $ y $, anchor: "bottom")
//     }
//   )
// )

// #align(center,
// cetz.canvas(
//     length: 5cm, 
//     {
//       cetz.plot.plot(
//         // axes: ("x", "y"),
//         size: (3, 0.3),
//         axis-style: "school-book",
//         x-tick-step: 1,
//         y-tick-step: none,
//         // fill: "o" ,
//         // fill-below: true,
//         x-domain: (-10, 10),
//         // y-domain: (-10, 10),
//         x-max:10,
//         x-min: -10,
//         // y-max: -2,
//         // y-min: -1,
//         // x-grid: "both",
//         // y-grid: "both",
//           {
//             cetz.plot.add(((0,0),), mark-size: 0,)
//           }
//         )
//     }
//   )
// )

#g-question(point:1.5)[Efectúa las siguientes operaciones con números enteros:]

  #g-subquestion()[$(-5)+(-2)$=]
  #v(1fr)

  #g-subquestion()[$(+2)+(-5)$=]
  #v(1fr)

  #g-subquestion()[$(+5)+(-3)$=]
  #v(1fr)

  #g-subquestion()[$(-5)+(+2)$=]
  #v(1fr)

  #g-subquestion()[$(-3)-(-2)$=]
  #v(1fr)

  #g-subquestion()[$(-3)-(+5)$=]
  #v(1fr)


#pagebreak()
#g-question(point:1.5)[Efectúa las siguientes operaciones con números enteros:]
  
  #g-subquestion()[$(-2) dot (-7)$=]
  #v(1fr)

  #g-subquestion()[$(+3) dot (-5)$=]
  #v(1fr)

  #g-subquestion()[$(-5) dot (-8)$=]
  #v(1fr)

  #g-subquestion()[$(-15) : (+3)$=]
  #v(1fr)

  #g-subquestion()[$(-14):(-2)$=]
  #v(1fr)

  #g-subquestion()[$(-25) : (-5)$=]
  #v(1fr)

#pagebreak()

#g-question(point:2)[Realiza las siguientes operaciones combinadas:]

  #g-subquestion()[$(-5) dot (-7) + (-4) dot 3 - 4 dot 7$=]
  #v(1fr)

  #g-subquestion()[$(-16) : (4) + (-5) dot 2 - 12 : (-4)$=]
  #v(1fr)

#g-question(point:1)[Resuelve las siguientes operacions:]

  #g-subquestion()[$(-3)^2$=]
  #v(1fr)

  #g-subquestion()[$(-3)^3$=]
  #v(1fr)

  #g-subquestion()[$sqrt(25)$=]
  #v(1fr)

  #g-subquestion()[$sqrt(-25)$=]
  #v(1fr)

  #g-subquestion()[$(-12)^6 : (-12)^5$=]
  #v(1fr)

  #g-subquestion()[$[(-59)^25]^0$=]
  #v(1fr)


#pagebreak()

#g-question(point:2)[Hoy a las seis de la mañana hacia tres grados bajo cero de temperatura, si en las siguientes cuatro horas sube la temperatura siete grados, indica la temperatura que hace a las seis y a las diez de la mañana *utilizando números enteros*.] 

#g-subquestion()[Expresa con un *número entero* la temperatura a las tres de la mañana = ]
#v(0.5cm)

#g-subquestion()[Expresa con un *número entero* la cantidad que ha cambiado la temperatura = ]
#v(0.5cm)

#g-subquestion()[Indica la operación en linea para calcular la temperatura a las diez y expresa el resultado:]