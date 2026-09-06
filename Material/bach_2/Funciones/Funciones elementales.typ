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
            x => calc.exp(-x),
          )
        },
      )
    }))
  ],
  [
    #align(center, [$f(x)=5^x$ \ $f(x) = e^(-x)$])

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
            x => calc.exp(x),
          )
          plot.add(
            style: styleRed,
            domain: (-10, 10),
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
            domain: (-10, 10),
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
            x => calc.ln(-x),
          )
        },
      )
    }))
  ],
  [
    #align(center, [$f(x) = "ln"(x)$ \ $f(x) = "log"_10(x)$])

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
            domain: (0.01, 10),
            x => calc.ln(x),
          )
          plot.add(
            style: styleRed,
            domain: (0.01, 10),
            x => calc.log(x),
          )
        },
      )
    }))
  ],
)
