#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.2": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "1º Evaluación",
    content: "Números enteros",
    model: "Modelo (NEE 5)"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  question-text-parameters: (size: 18pt, font:"OpenDyslexic")
  // question-text-parameters: (size: 18pt, spacing:200%)
  // question-text-parameters: (size: 11pt, spacing:100%)
)

#set math.cases(reverse: true)

// #g-question(point:1)[Calcula los valor de las siguientes operaciones:]

// #g-subquestion[$display(3 times 3 times 3 =)$]
// #v(1fr)

// #g-subquestion[$display(5 times 5 times 5 =)$]
// #v(1fr)

// #g-subquestion[$display(27 colon 3 =)$]
// #v(1fr)

// #g-question(point:1)[Completa la tabla:]

// #align(center,
//   table(
//     fill: (x, y) =>
//       if(y == 0) { luma(230) },
//     columns: (5cm, 4cm,  4cm, 4cm),
//     text(size:14pt, font: "OpenDyslexic")[Suma],                             
//     text(size:14pt, font: "OpenDyslexic")[Multiplicación], 
//     text(size:14pt, font: "OpenDyslexic")[Factores], 
//     text(size:14pt, font: "OpenDyslexic")[Producto], 
//     [$6+6+6+6+6$],                      [$6 times 5$],    [6 y 5],    [$30$], 
//     [$8 + 8 + 8 + 8$],                  [], [], [],
//     [$2 + 2 + 2 + 2 + 2 +2$],           [], [], [],
//     [$3 + 3 + 3 + 3 + 3 + 3 + 3$],      [], [], [],
//     [$7 + 7 + 7$],                      [], [], [],
//     [$9 + 9 + 9 + 9 + 9$],              [], [], [],
// ))

#g-question(point:2)[Descubre las cifras perdidas:

#columns(2, gutter: 11pt)[
    #grid(
      columns: 6,
      rows: auto,
      gutter: 5pt,
      align: right,
      [], [], [], [3], [6], [5],
      [], [], [$times$], [], [4], [5],
      grid.hline(stroke: 0.2mm),
      
      [], [], [\_], [8], [3], [\_],
      [], [1], [4], [\_], [8], [],
      grid.hline(stroke: 0.2mm),

      [\_], [\_], [5], [1], [\_], [\_],
    )
    #colbreak()

    #grid(
      columns: 7,
      rows: auto,
      gutter: 5pt,
      align: right,
      [], [], [], [2], [\_], [7], [4],
      [], [], [$times$], [], [\_], [2], [3],
      grid.hline(stroke: 0.2mm),
      
      [], [], [], [7], [7], [2], [2],
      [], [], [5], [1], [4], [8], [],
      [\_], [5], [4], [\_], [5], [], [],
      grid.hline(stroke: 0.2mm),

      [1], [6], [\_], [3], [\_], [0], [2],
    )
  ]

]
#pagebreak()


#g-question(point:2)[Multiplicar por 8 la suma de 5 y 7 se escribe:]

  #g-subquestion()[$8 times 5 + 7 times 5 - 4 times 2=$]
  #v(1fr)

  #g-subquestion()[$8 times (5 + 7) - 5 times 7 =$]
  #v(1fr)

  #g-subquestion()[$ 8 times 7 + 5 times (3 + 7)=$]
  #v(1fr)

// #g-question(point:1)[Relaciona cada división con su cociente:
  
//   #v(1cm)
  
//     #align(center,
//       columns(2, gutter: 11pt)[
//           $513 colon 82$
//           #v(0.2cm)

//           $918 colon 24$
//           #v(0.2cm)

//           $416 colon 37$
//           #v(0.2cm)

//           $661 colon 46$
//           #v(0.2cm)

//           $807 colon 75$
//           #v(0.2cm)

//         #colbreak()

//           $14$
//           #v(0.2cm)

//           $10$
//           #v(0.2cm)

//           $6$
//           #v(0.2cm)

//           $38$
//           #v(0.2cm)

//           $11$
//           #v(0.2cm)
//       ]
//     )

//   #v(1cm)
// ]
#pagebreak()

#g-question(point:2)[Jorge dice que ha envasado 73 salchichas en paquetes de 5 salchichas. ¿Es posible que le hayan sobrado 8 salchichas? ¿Por qué?:

  #columns(2, gutter: 11pt)[
    Datos

    #colbreak()

    Operación
    ]

  #v(1fr)
]

#g-question(point:2)[Para unas obras, cada uno de los 125 vecinos de un bloque tiene que pagar 2 cuotas de 48 € cada una.
¿Cuánto cuestan las obras?:

  #columns(2, gutter: 11pt)[
    Datos

    #colbreak()

    Operación
    ]

  #v(1fr)
]
#pagebreak()

#g-question(point:2)[Un teatro tiene 125 butacas. De un colegio llegaron 2 autobuses con 48 alumnos cada uno.
¿Cuántas butacas quedaron libres?:

  #columns(2, gutter: 11pt)[
    Datos

    #colbreak()

    Operación
    ]

  #v(1fr)
]