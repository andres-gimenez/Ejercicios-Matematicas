#import "@preview/g-exam:0.4.5": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: config.at("author").at("name"),
    email: config.at("author").at("email"),
    watermark: config.at("author").at("watermark"),
  ),
  school: (
    name: config.at("school").at("name"),
    logo: image("../../" + config.at("school").at("logo")),
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Funciones elementales],
    model: [v1],
  ),

  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default: config.at("show-solutions")),
  // show-solutions: false,
  question-points-position: none,
)
#set math.cases(reverse: true)

#let styleBlue = (stroke: (paint: blue, thickness: 1pt))
#let styleRed = (stroke: (paint: red, thickness: 1pt))
#let styleGreen = (stroke: (paint: green, thickness: 1pt))
#let styleYellow = (stroke: (paint: yellow, thickness: 1pt))

#grid(
  columns: (auto, auto),
  gutter: 30pt,
  [
    *Constante:*

    #align(center, $f(x) = 3$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            x => 3,
          )
        },
      )
    }))
  ],
  [
    *Lienal:*

    #align(center, $f(x) = 3x+2$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            x => 3 * x + 2,
          )
        },
      )
    }))
  ],
)

#grid(
  columns: (auto, auto),
  gutter: 30pt,
  [
    *Valor absoluto:*

    #align(center, $f(x) = |x|$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => calc.abs(x),
          )
        },
      )
    }))
  ],
  [
    *Parte entera:*

    #align(center, $f(x) = floor(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          for i in range(-6, 6) {
            plot.add(
              style: styleBlue,
              domain: (i, i + 1),
              x => i,
            )
            plot.add(
              ((i, i),),
              style: (stroke: none),
              mark: "o",
              mark-size: 0.1,
              mark-style: (stroke: blue, fill: color.blue),
            )
            plot.add(
              ((i + 1, i),),
              style: (stroke: none),
              mark: "o",
              mark-size: 0.1,
              mark-style: (stroke: blue, fill: color.white),
            )
          }
          plot.add(
            ((6, 6),),
            style: (stroke: none),
            mark: "o",
            mark-size: 0.1,
            mark-style: (stroke: blue, fill: color.blue),
          )
        },
      )
    }))
  ],
)


*Cuadrática:*

#grid(
  columns: (auto, auto, auto),
  gutter: 30pt,
  [
    #align(center, $f(x) = x^2$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => x * x,
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = 2x^2-3x-5$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 5,
        x-min: -5,
        y-max: 8,
        y-min: -8,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => 2 * x * x - 3 * x - 5,
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = -x^2$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => -x * x,
          )
        },
      )
    }))
  ],
)

#pagebreak()
*Polinómica:*

#grid(
  columns: (auto, auto, auto),
  gutter: 30pt,
  [
    #align(center, $f(x) = x^3$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => x * x * x,
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = - x^3$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 8,
        y-min: -8,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => -x * x * x,
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = 3x^3+2x^2-2x-1$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => 3 * x * x * x + 2 * x * x - 2 * x - 1,
          )
        },
      )
    }))
  ],

  [
    #align(center, $f(x) = 3x^3-2x^2+2x-1$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => 3 * x * x * x - 2 * x * x + 2 * x - 1,
          )
        },
      )
    }))
  ],
)
#pagebreak()
*Exponencial:*

#grid(
  columns: (auto, auto, auto),
  gutter: 30pt,
  [
    #align(center, $f(x) = e^x$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => calc.exp(x),
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = - e^x$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => calc.exp(-x),
          )
        },
      )
    }))
  ],
  [
    #align(center, [$f(x)=5^x$ \ $f(x) = e^(x)$])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleRed,
            domain: (-10, 10),
            samples: 200,
            x => calc.exp(x),
          )
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => calc.pow(4, x),
          )
        },
      )
    }))
  ],

  [
    #align(center, [$f(x)=(1/2)^x$])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, 10),
            samples: 200,
            x => calc.pow(0.5, x),
          )
        },
      )
    }))
  ],
)

*Logarítmica:*

#grid(
  columns: (auto, auto, auto),
  gutter: 30pt,
  [
    #align(center, $f(x) = "ln"(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (0.01, 10),
            samples: 200,
            x => calc.ln(x),
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = "ln"(-x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 8,
        y-min: -8,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-10, -0.01),
            samples: 200,
            x => calc.ln(-x),
          )
        },
      )
    }))
  ],
  [
    #align(center, [$f(x) = "log"_10(x)$ \ $f(x) = "ln"(x)$])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 3,
        x-min: -3,
        y-max: 8,
        y-min: -8,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleRed,
            domain: (0.01, 10),
            samples: 200,
            x => calc.ln(x),
          )
          plot.add(
            style: styleBlue,
            domain: (0.01, 10),
            samples: 200,
            x => calc.log(x),
          )
        },
      )
    }))
  ],
)

#pagebreak()

*Racionales:*

#grid(
  columns: (auto, auto),
  gutter: 30pt,
  [
    #align(center, $f(x) = 1/x$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-6, -0.01),
            samples: 200,
            x => 1 / x,
          )
          plot.add(
            style: styleBlue,
            domain: (0.01, 6),
            samples: 200,
            x => 1 / x,
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = (-1)/x$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-6, -0.01),
            samples: 200,
            x => 1 / x,
          )
          plot.add(
            style: styleBlue,
            domain: (0.01, 6),
            samples: 200,
            x => 1 / x,
          )
        },
      )
    }))
  ],

  [
    #align(center, $f(x) = 1/(x-5)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 10,
        x-min: -2,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-6, 4.9),
            samples: 200,
            x => 1 / (x - 5),
          )
          plot.add(
            style: styleBlue,
            domain: (5.01, 10),
            samples: 200,
            x => 1 / (x - 5),
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = 1/x+5$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 10,
        y-min: -1,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-6, -0.01),
            samples: 200,
            x => 1 / x + 5,
          )
          plot.add(
            style: styleBlue,
            domain: (0.01, 6),
            samples: 200,
            x => 1 / x + 5,
          )
        },
      )
    }))
  ],
)

*Irracionales:*

#grid(
  columns: (auto, auto),
  gutter: 30pt,
  [
    #align(center, $f(x) = sqrt(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (0, 6),
            samples: 200,
            x => calc.sqrt(x),
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = root(3, x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (4, 4),
        x-max: 6,
        x-min: -6,
        y-max: 6,
        y-min: -6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 2,
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-6, 6),
            samples: 200,
            x => calc.root(x, 3),
          )
        },
      )
    }))
  ],
)

#pagebreak()

*Trigonométricas:*

#grid(
  columns: (auto, auto),
  gutter: 30pt,
  [
    #align(center, $f(x) = "sen"(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 3),
        x-min: -2 * calc.pi,
        x-max: 2 * calc.pi,
        y-min: -2,
        y-max: 2,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: calc.pi / 2,
        y-tick-step: 1,
        x-minor-tick-step: calc.pi / 4,
        y-minor-tick-step: 1,
        x-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-2 * calc.pi, 2 * calc.pi),
            samples: 200,
            x => calc.sin(x),
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = "cos"(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 3),
        x-min: -2 * calc.pi,
        x-max: 2 * calc.pi,
        y-min: -2,
        y-max: 2,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: calc.pi / 2,
        y-tick-step: 1,
        x-minor-tick-step: calc.pi / 4,
        y-minor-tick-step: 1,
        x-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-2 * calc.pi, 2 * calc.pi),
            samples: 200,
            x => calc.cos(x),
          )
        },
      )
    }))
  ],

  [
    #align(center, [$f(x) = "tan"(x)$])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (5, 5),
        x-max: 2 * calc.pi,
        x-min: -2 * calc.pi,
        y-max: 8,
        y-min: -8,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: calc.pi / 2,
        y-tick-step: 2,
        x-minor-tick-step: calc.pi / 4,
        y-minor-tick-step: 1,
        x-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-2 * calc.pi, -3 / 2 * calc.pi),
            samples: 200,
            x => calc.tan(x),
          )
          plot.add(
            style: styleBlue,
            domain: (-3 / 2 * calc.pi, -1 / 2 * calc.pi),
            samples: 200,
            x => calc.tan(x),
          )
          plot.add(
            style: styleBlue,
            domain: (-1 / 2 * calc.pi, 1 / 2 * calc.pi),
            samples: 200,
            x => calc.tan(x),
          )
          plot.add(
            style: styleBlue,
            domain: (1 / 2 * calc.pi, 3 / 2 * calc.pi),
            samples: 200,
            x => calc.tan(x),
          )
          plot.add(
            style: styleBlue,
            domain: (3 / 2 * calc.pi, 2 * calc.pi),
            samples: 200,
            x => calc.tan(x),
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = "sec"(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (5, 5),
        x-min: -2 * calc.pi,
        x-max: 2 * calc.pi,
        y-min: -6,
        y-max: 6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: calc.pi / 2,
        y-tick-step: 1,
        x-minor-tick-step: calc.pi / 4,
        y-minor-tick-step: 1,
        x-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-2 * calc.pi, -3 / 2 * calc.pi),
            samples: 200,
            x => 1 / (calc.cos(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (-3 / 2 * calc.pi, -1 / 2 * calc.pi),
            samples: 200,
            x => 1 / (calc.cos(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (-1 / 2 * calc.pi, 1 / 2 * calc.pi),
            samples: 200,
            x => 1 / (calc.cos(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (1 / 2 * calc.pi, 3 / 2 * calc.pi),
            samples: 200,
            x => 1 / (calc.cos(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (3 / 2 * calc.pi, 2 * calc.pi),
            samples: 200,
            x => 1 / (calc.cos(x)),
          )
        },
      )
    }))
  ],

  [
    #align(center, $f(x) = "cosec"(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (5, 5),
        x-min: -2 * calc.pi,
        x-max: 2 * calc.pi,
        y-min: -6,
        y-max: 6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: calc.pi / 2,
        y-tick-step: 1,
        x-minor-tick-step: calc.pi / 4,
        y-minor-tick-step: 1,
        x-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-2 * calc.pi, -calc.pi),
            samples: 200,
            x => 1 / (calc.sin(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (-calc.pi, -0.01),
            samples: 200,
            x => 1 / (calc.sin(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (0.01, calc.pi),
            samples: 200,
            x => 1 / (calc.sin(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (calc.pi, 2 * calc.pi),
            samples: 200,
            x => 1 / (calc.sin(x)),
          )
        },
      )
    }))
  ],
  [
    #align(center, $f(x) = "cotan"(x)$)

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (5, 5),
        x-min: -2 * calc.pi,
        x-max: 2 * calc.pi,
        y-min: -6,
        y-max: 6,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: calc.pi / 2,
        y-tick-step: 1,
        x-minor-tick-step: calc.pi / 4,
        y-minor-tick-step: 1,
        x-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-2 * calc.pi, -calc.pi),
            samples: 200,
            x => 1 / (calc.tan(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (-calc.pi, -0.01),
            samples: 200,
            x => 1 / (calc.tan(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (0.01, calc.pi),
            samples: 200,
            x => 1 / (calc.tan(x)),
          )
          plot.add(
            style: styleBlue,
            domain: (calc.pi, 2 * calc.pi),
            samples: 200,
            x => 1 / (calc.tan(x)),
          )
        },
      )
    }))
  ],
)

#pagebreak()
*Trigonométricas inversas:*

#grid(
  columns: (auto, auto),
  gutter: 30pt,
  [
    #align(center, [
      $f(x) = "arcsen"(x)$ \
      D= $[-1, 1]$ \
      Rango= $[-pi/2, pi/2]$
    ])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 6),
        x-min: -1,
        x-max: 1,
        y-min: -1.5,
        y-max: 1.5,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 1,
        y-tick-step: 1,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-1, 1),
            samples: 100,
            x => calc.asin(x).rad(),
          )
        },
      )
    }))
  ],
  [
    #align(center, [
      $f(x) = "arccos"(x)$ \
      D= $[-1, 1]$ \
      Rango= $[0, pi]$
    ])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 6),
        x-min: -1,
        x-max: 1,
        y-min: -1,
        y-max: 3,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 1,
        y-tick-step: 1,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-1, 1),
            samples: 100,
            x => calc.acos(x).rad(),
          )
        },
      )
    }))
  ],

  [
    #align(center, [
      $f(x) = "arctan"(x)$ \
      D= $[- oo, oo]$ \
      Rango= $[-pi/2, pi/2]$
    ])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 6),
        x-min: -5,
        x-max: 5,
        y-min: -2,
        y-max: 2,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 1,
        y-tick-step: calc.pi / 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: calc.pi / 4,
        y-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-5, 5),
            samples: 100,
            x => calc.atan(x).rad(),
          )
        },
      )
    }))
  ],
  [
    #align(center, [
      $f(x) = "arcsec"(x)$ \
      D= $[- oo, oo]$ \
      Rango= $[-pi/2, pi/2]$
    ])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 6),
        x-min: -5,
        x-max: 5,
        y-min: -2,
        y-max: 2,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 1,
        y-tick-step: calc.pi / 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: calc.pi / 4,
        y-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-5, -1.0001),
            samples: 100,
            x => calc.asin(1 / x).rad(),
          )
          plot.add(
            ((-1, -calc.pi / 2),),
            style: (stroke: none),
            mark: "o",
            mark-size: 0.158,
            mark-style: (stroke: blue, fill: color.white),
          )
          plot.add(
            style: styleBlue,
            domain: (1.0001, 5),
            samples: 100,
            x => calc.asin(1 / x).rad(),
          )
          plot.add(
            ((1, calc.pi / 2),),
            style: (stroke: none),
            mark: "o",
            mark-size: 0.158,
            mark-style: (stroke: blue, fill: color.white),
          )
        },
      )
    }))
  ],

  [#v(2cm)], [#v(2cm)],
  [
    #align(center, [
      $f(x) = "arccosec"(x)$ \
      D= $[- oo, oo]$ \
      Rango= $[-pi/2, pi/2]$
    ])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 6),
        x-min: -5,
        x-max: 5,
        y-min: -1,
        y-max: 5,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 1,
        y-tick-step: calc.pi / 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: calc.pi / 4,
        y-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-5, -1.0001),
            samples: 100,
            x => calc.acos(1 / x).rad(),
          )
          plot.add(
            ((-1, calc.pi),),
            style: (stroke: none),
            mark: "o",
            mark-size: 0.158,
            mark-style: (stroke: blue, fill: color.white),
          )
          plot.add(
            style: styleBlue,
            domain: (1.0001, 5),
            samples: 100,
            x => calc.acos(1 / x).rad(),
          )
          plot.add(
            ((1, 0),),
            style: (stroke: none),
            mark: "o",
            mark-size: 0.158,
            mark-style: (stroke: blue, fill: color.white),
          )
        },
      )
    }))
  ],
  [
    #align(center, [
      $f(x) = "arccotan"(x)$ \
      D= $[- oo, oo]$ \
      Rango= $[-pi/2, pi/2]$
    ])

    #align(left, cetz.canvas({
      import cetz.draw: *
      import cetz-plot: *
      plot.plot(
        size: (6, 6),
        x-min: -5,
        x-max: 5,
        y-min: -2,
        y-max: 2,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 1,
        y-tick-step: calc.pi / 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: calc.pi / 4,
        y-format: plot.formats.multiple-of,
        axis-style: "school-book",
        {
          plot.add(((0, 0),))
          plot.add(
            style: styleBlue,
            domain: (-5, -0.01),
            samples: 100,
            x => calc.atan(1 / x).rad(),
          )
          plot.add(
            ((0, -calc.pi / 2),),
            style: (stroke: none),
            mark: "o",
            mark-size: 0.158,
            mark-style: (stroke: blue, fill: color.white),
          )
          plot.add(
            style: styleBlue,
            domain: (0.01, 5),
            samples: 100,
            x => calc.atan(1 / x).rad(),
          )
          plot.add(
            ((0, calc.pi / 2),),
            style: (stroke: none),
            mark: "o",
            mark-size: 0.158,
            mark-style: (stroke: blue, fill: color.white),
          )
        },
      )
    }))
  ],
)
