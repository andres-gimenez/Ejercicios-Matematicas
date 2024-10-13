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
    content: "Números enteros",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  question-text-parameters: (font:"OpenDyslexic")
  // question-text-parameters: (size: 18pt, spacing:200%)
  // question-text-parameters: (size: 11pt, spacing:100%)
)

#set math.cases(reverse: true)

#g-question(point:1)[Calcula los valor de las siguientes operaciones:]

#g-subquestion[$display(3 times 3 times 3 = )$]
#v(1fr)

#g-subquestion[$display(5 times 5 times 5 =)$]
#v(1fr)

#g-subquestion[$display(27 colon 3 =)$]
#v(1fr)

#g-question(point:1)[Completa la tabla:]

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    columns: (6cm, 4cm,  4cm, 4cm),
    [Suma],                             [Multiplicación], [Factores], [Producto], 
    [$6+6+6+6+6$],                      [$6 times 5$],    [6 y 5],    [$30$], 
    [$8 + 8 + 8 + 8$],                  [], [], [],
    [$2 + 2 + 2 + 2 + 2 +2$],           [], [], [],
    [$3 + 3 + 3 + 3 + 3 + 3 + 3$],      [], [], [],
    [$7 + 7 + 7$],                      [], [], [],
    [$9 + 9 + 9 + 9 + 9$],              [], [], [],
))



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

#g-question(point:1)[Multiplicar por 8 la suma de 5 y 7 se escribe:

  $8 times 5 + 78 times (5 + 7) 8 times 7 + 5$
  #v(1fr)
]

#g-question(point:2)[Relaciona cada división con su cociente:
  
  #v(1cm)
  
    #align(center,
      columns(2, gutter: 11pt)[
          $513 colon 82$

          $918 colon 24$

          $416 colon 37$

          $661 colon 46$

          $807 colon 75$

        #colbreak()

          $14$

          $10$

          $6$

          $38$

          $11$
      ]
    )

  #v(1cm)
]

#g-question(point:1)[Jorge dice que ha envasado 73 salchichas en paquetes de 5 salchichas. ¿Es posible que le hayan sobrado 8 salchichas? ¿Por qué?:

  #columns(2, gutter: 11pt)[
    Datos

    #colbreak()

    Operación
    ]

  #v(1fr)
]

#pagebreak()

#g-question(point:1)[¿Cuáles son los posibles restos al dividir un número por 3? ¿Y por 4?:

  #columns(2, gutter: 11pt)[
    Datos

    #colbreak()

    Operación
    ]

  #v(1fr)
]

#g-question(point:1)[El resto de una división es 5 y el divisor es 2. ¿Está bien hecha esa división? ¿por qué?:

  #columns(2, gutter: 11pt)[
    Datos

    #colbreak()

    Operación
    ]

  #v(1fr)
]