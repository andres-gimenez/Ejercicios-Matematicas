#import "@preview/cetz:0.1.2"
#import "./exam.typ": exam, question, part

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
    academic-level: "4º ESO",
    academic-subject: "Matemáticas B",
    number: "1º Evaluación 3º Examen",
    content: "Ecuaciones e inecuaciones",
    model: none
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "Diciembre 21, 2023",
  show-studen-data: true,
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
    [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    // [Se podrán quitar hasta cinco décimas por falta de claridad o rigor en el desarrollo de las respuestas o por una mala presentación.],
    // [Se valorará que se indiquen las cuentas en línea, realizando las operaciones en el margen.],
    [Está permitido utilizar la calculadora.],
    [No está permitido compartir material durante el examen.],
  )
)

#question(point: 2)[Resuelve la siguiente ecuación exponencial y comprueba el resultado:
  \
  \
  $display(3^(2x-2)+3^(x-1) = 12)$
  // \
  // \
  // $display(3^(2x+2) + 3^(x+2) = 4)$
]
#v(1fr)
#pagebreak()

#question(point: 2)[Determina que intervalo es solución de la siguiente inecuación:
  \
  \
  // $display(3x^2 - 6x < 0)$
  $display(x^2 + x - 6 <= 0)$
]
#v(1fr)

#question(point: 2)[Determina que intervalo es solución de la siguiente inecuación:
  \
  \
  // $display(3x^2 - 6x < 0)$
  // $display(x^2 + x - 6 <= 0)$
  $display(log_7(3x-2) - log_7(x+1) = log_7(2))$
]
#v(1fr)

#pagebreak()

#question(point: 2)[Indica la región del plano que cumple  la inecuación:
  \
  \
  $display(2 (x-1) >= 3 (y+1))$
  
  #v(1fr)

  #align(center, 
    cetz.canvas(
      length: 0.5cm,
      {
        import cetz.draw: *

        set-style(
          mark: (fill: black),
          stroke: (thickness: 0.4pt, cap: "round"),
          content: (padding: 1pt)
        )

        grid((-10, -10), (10, 10), step: 1, stroke: gray + 0.6pt)

        line((-10.5, 0), (10.5, 0), mark: (end: ">"))
        content((), $ x $, anchor: "left")
        line((0, -10.5), (0, 10.5), mark: (end: ">"))
        content((), $ y $, anchor: "bottom")
      }
    )
  )

]
#v(1fr)

#pagebreak(weak: true)

#question(point: 2)[Resuelve la siguiente inecuación indicando que intervalo es solución:
  \
  \
  // Sol:x<=5
  $display((5x) /10 - (5x - 6)/12 >= (x - 4)/6 + (2x - 4) /8)$
]
#v(1fr)

// #pagebreak(weak: true)