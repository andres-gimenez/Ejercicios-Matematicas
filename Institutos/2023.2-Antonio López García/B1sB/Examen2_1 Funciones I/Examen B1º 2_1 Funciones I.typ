#import "./exam.typ": exam, question, subquestion
#import "@preview/cetz:0.2.0"

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Antonio López García",
    logo: "logo-ies_antonio.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º Bachillerato",
    academic-subject: "Matemáticas aplicadas a las ciencias sociales",
    number: "2º Evaluación 1º Examen",
    content: "Funciones I",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
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

#question(point: 2)[
  Resuelve el siguiente sistema de inecuaciones:
  \
  \
    #align(center,
      $display(
        cases(
          4(x+1) - 2 &<= 0,
          2x+4 &>= 6
        )
      )$
    )
]
#v(1fr)

#question(point: 2)[
  Resuelve el siguiente sistema de inecuaciones:
  \
  \
    #align(center,
      $display(
        cases(
          2x-y+2 &> 0,
          x-3y &<= 0,
          x &<= 3,
          y <= 3
        )
      )$
   )
]
#v(1fr)
#pagebreak()

#question(point: 2)[
  A partir de la gráfica de la siguientes funciones, indica cuál es su dominio de definición y su recorrido:
]
#v(1fr)

#question(point:2)[
  Halla el dominio de definición de la s funciones:
  #subquestion[$y = (2+x)/(x^2+1)$]
  #v(1fr)

  #subquestion[$y = sqrt(3x-1)$]
  #v(1fr)

  #subquestion[$y = 1/(x^2+1)$]
  #v(1fr)
  
  #subquestion[$y = (log(x+1))/(x^2-4)$]
  #v(1fr)
]
#pagebreak()

#question(point:2)[
  Una función lineal esta definida en el intervalo $[-3,5)$. 
  Escribe la expresión analitítica de dicha función lineal y represéntala, a partir de los siguientes datos:
  $f(-2) = 3$ y $f(3) = -4$.
]
#v(1fr)

#question(point:2)[
  Halla la función exponencial tipo $y=k dot a^x$, que pasa por los puntos $(1, 10)$ y $(-2,50)$. Representala aproximadamente.
]
#v(1fr)
#pagebreak()

#question(point:2)[
  Representa la siguiente función: \ \
  $f(x) = display(
        cases(
          2/x &"si" &x < 0,
          sqrt(x+1)-2 &"si" &x >= 0,
        )
      )$
]
#v(1fr)

// #let style = (stroke: black, fill: rgb(0, 0, 200, 75))
#let style = (stroke: black)

#question(point:2)[
  Obtén la expresión analítica de la siguiente función:
  //  #align(center, 
    #cetz.canvas(length: 0.5cm, {
      // import cetz.draw: *
      // cetz.draw.grid((-4, 8), (-2, 9), step: 0.5, stroke: gray + 0.2pt)

      cetz.plot.plot(
        // axes: ("x", "y"),
        size: (12, 11),
        axis-style: "school-book",
        fill: "o" ,
        fill-below: true,
        // horizontal:false,
        x-domain: (-4, 8),
        y-domain: (-2, 9),
        x-max: 8,
        x-min:-4,
        y-max: 9,
        y-min:-2,
        x-grid: "both",
        y-grid: "both",
        // x-tick-step: none,
        x-tick-step: 2,
        // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
          {
            cetz.plot.add(((2,5),(2,3)), mark: "o")

            cetz.plot.add(
              style: style,
              domain: (-4, 2), 
              // mark: "+",
              x=> x*x+1)
            cetz.plot.add(
              style: style,
              domain: (2, 8), 
              x=>x+1)
          }
        )
      }
    )
  // )
]

#v(1fr)

 #cetz.plot.add(
              style: style,
              domain: (-4, 2), calc.sin)

// #align(center, 
//     cetz.canvas(
//       length: 0.5cm,
//       {
//         import cetz.draw: *

//         set-style(
//           mark: (fill: black),
//           stroke: (thickness: 0.4pt, cap: "round"),
//           content: (padding: 1pt)
//         )

//         grid((-10, -10), (10, 10), step: 1, stroke: gray + 0.6pt)

//         line((-10.5, 0), (10.5, 0), mark: (end: ">"))
//         content((), $ x $, anchor: "left")
//         line((0, -10.5), (0, 10.5), mark: (end: ">"))
//         content((), $ y $, anchor: "bottom")
//       }
//     )
//   )

#cetz.canvas(length: 3cm, {
  import cetz.draw: *

  set-style(
    mark: (fill: black, scale: 2),
    stroke: (thickness: 0.4pt, cap: "round"),
    angle: (
      radius: 0.3,
      label-radius: .22,
      fill: green.lighten(80%),
      stroke: (paint: green.darken(50%))
    ),
    content: (padding: 1pt)
  )

  grid((-1.5, -1.5), (1.4, 1.4), step: 0.5, stroke: gray + 0.2pt)

  // circle((0,0), radius: 1)

  line((-1.5, 0), (1.5, 0), mark: (end: "stealth"))
  content((), $ x $, anchor: "west")
  line((0, -1.5), (0, 1.5), mark: (end: "stealth"))
  content((), $ y $, anchor: "south")

  // for (x, ct) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (1, $ 1 $)) {
  //   line((x, 3pt), (x, -3pt))
  //   content((), anchor: "north", ct)
  // }

  // for (y, ct) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (0.5, $ 1/2 $), (1, $ 1 $)) {
  //   line((3pt, y), (-3pt, y))
  //   content((), anchor: "east", ct)
  // }

  // Draw the green angle
  // cetz.angle.angle((0,0), (1,0), (1, calc.tan(30deg)),
  //   label: text(green, [#sym.alpha]))

  // line((0,0), (1, calc.tan(30deg)))

  // set-style(stroke: (thickness: 1.2pt))

  // line((30deg, 1), ((), "|-", (0,0)), stroke: (paint: red), name: "sin")
  // content(("sin.start", 50%, "sin.end"), text(red)[$ sin alpha $])
  // line("sin.end", (0,0), stroke: (paint: blue), name: "cos")
  // content(("cos.start", 50%, "cos.end"), text(blue)[$ cos alpha $], anchor: "north")
  // line((1, 0), (1, calc.tan(30deg)), name: "tan", stroke: (paint: orange))
  // content("tan.end", $ text(#orange, tan alpha) = text(#red, sin alpha) / text(#blue, cos alpha) $, anchor: "west")
})