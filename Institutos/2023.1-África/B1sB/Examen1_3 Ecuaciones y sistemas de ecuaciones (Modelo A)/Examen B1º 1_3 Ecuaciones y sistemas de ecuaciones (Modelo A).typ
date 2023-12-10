// #import "exam.typ": exam, questions, question
#import "exam.typ": *

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES África",
    logo: "logo-ies_africa.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º Bachillerato",
    academic-subject: "Matemáticas aplicadas a las ciencias sociales",
    number: "1º Evaluación 3º Examen",
    content: "Ecuaciones y sistemas de ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: true,
  show-grade-table: true,
  question-point-position: right
)

#rect(
  width: 100%, 
  stroke: luma(120),
  inset:8pt,
  radius: 4pt,
  [
    - Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.
    - Deben aparecer todas las operaciones, no vale solo con indicar el resultado.
    - Se ha de llegar a la solución más reducida posible.
    // - Se podrán quitar hasta cinco décimas por falta de claridad o rigor en el desarrollo de las respuestas o por una mala presentación.
    // - Se valorará que se indiquen las cuentas en línea, realizando las operaciones en el margen.
    - Está permitido utilizar la calculadora.
    - No está permitido compartir metarial durante el examen.
  ]
)

#v(15pt)

#question(point: 1)[adddddddddd ddd dddd ddddddd ]

#question[Discute y resuleve por el método de Gauß, indicando cuantas soluciones tiene el siguiente sistema:]

    #part(point: 2)[
      $display(
        cases(
        x &+   y &+ z &= 1,
        x &-   y &+ z &= 3,
        5x &- 3y &+ z &= 5
        )
      )$
    ]

    #pagebreak()

    #part(point: 2)[
      $display(
        cases(
        x &+   y &+ z &= 1,
        x &-   y &+ z &= 3,
        5x &- 3y &+ z &= 5
        )
      )$
    ]


#pagebreak()

#question(point: 2)[Discute y resuleve por el método de Gauß, indicando cuantas soluciones tiene el siguiente sistema:
\ \
    $display(
      cases(
        x &+   y &+ z &= 1,
        x &-   y &+ z &= 3,
        5x &- 3y &+ z &= 5
        )
      )$
]

#pagebreak()


//   #part[$display((5/2+1) dot (4/7+2/3) = )$]
//   #v(1fr)

//   #part[$display((2 dot 5/21) + (4/7 dot 2/3) =)$]
//   #v(1fr)

// #pagebreak()

// #question(point: 2)[Calcula las siguientes potencias:]

//   #part[$display((-5)^2 = )$]
//   #v(1fr)

//   #part[$display(5^3 =)$]
//   #v(1fr)

//   #part[$display((3)^2 =)$]
//   #v(1fr)

//   #part[$display(1.000^2 =)$]
//   #v(1fr)

// #question(point: 2)[Calcula las siguientes raíces, factorizando en números primos:]

//   #part[$display(sqrt(64)) =$]
//   #v(1fr)

//   #part[$display(sqrt(729)) =$]
//   #v(1fr)

//   #part[$display(sqrt(900)) =$]
//   #v(1fr)

//   #part[$display(sqrt(225)) =$]
//   #v(1fr)

// #pagebreak()

// #question(point: 2)[Opera y simplifica los resultados siguientes:]

//   #part[$display(15/18 + (3/2-1/4)^2)$]
//   #v(1fr)

//   #part[$display(4/3+(3/2-1/4)^2)$]
//   #v(1fr)


// #question(point: 2)[Problema:]
// #v(1fr)
