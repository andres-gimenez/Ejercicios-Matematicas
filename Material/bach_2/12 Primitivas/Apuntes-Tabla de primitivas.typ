#import "@preview/g-exam:0.4.5": *
// #import "@preview/wrap-it:0.1.0": wrap-content

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
    academic-subject: "Matemáticas",
    // number: "Versión 1",
    content: "Tabla de derivadas",
    model: [v1],
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 20),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default: config.at("show-solutions")),
  // draft: true,
  question-points-position: right,
  //   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#let header-color = rgb(0, 80, 180)
#let alt-row = rgb(0xE8, 0xF4, 0xFF)

#set text(size: 8pt)

#show heading: it => {
  if it.level == 1 {
    text(size: 22pt, weight: "bold")[#it \ ]
  } else if it.level == 2 {
    text(fill: blue, size: 14pt)[#it]
  } else if it.level == 3 {
    text(fill: red, size: 12pt)[#it]
  } else {
    it
  }
}

#set page(columns: 1)

#set table.hline(stroke: 0.7pt + gray)

#set table(
  align: left,
  inset: 5pt,
  stroke: (x, y) => {
    if y == 0 {
      if x == 0 {
        (bottom: 0.7pt + gray, right: 0.7pt + gray)
      } else {
        (bottom: 0.7pt + gray)
      }
    } else {
      if x == 0 {
        (right: 0.7pt + gray)
      } else {
        none
      }
    }
  },
)

#place(
  top + center,
  scope: "parent",
  float: true,
  [= Tabla de primitivas],
)

#align(center)[
  // == Funciones simples
  #table(
    columns: (auto, auto),

    [$display(limits(integral) k dif x) = k x + C$], [],
    [$display(limits(integral) x^n u dif x) = x^(n+1)/(n+1) + C "si" n != -1$],
    [$display(limits(integral) f'(x)[f(x)]^n dif x = [f(x)]^(n+1)/(n+1) + C "si" n != -1)$],
    [$display(limits(integral)1/x dif x = ln|x| + C)$], [$display(limits(integral) (f'(x))/f(x) dif x = ln|f(x)| + C)$],
    [$display(limits(integral) e^x dif x = e^x + C)$],
    [$display(limits(integral) f'(x) e^(f(x))) dif x = e^(f(x)) + C)$],
    [$display(limits(integral) a^x dif x = a^x / (ln a) + C) "si" a > 0 "y" a != 1$],
    [$display(limits(integral) f'(x) a^f(x) dif x = a^f(x) / (ln a) + C) "si" a > 0 "y" a != 1$],
    table.hline(),

    [$display(limits(integral)"sen" x dif x = -"cos" x + C)$],
    [$display(limits(integral) f'(x) "sen" f(x) dif x = -"cos" f(x) + C)$],

    [$display(limits(integral)"cos" x dif x = "sen" x + C)$],
    [$display(limits(integral) f'(x) "cos" f(x) dif x = "sen" f(x) + C)$],
    [$display(limits(integral) 1/sqrt(1-x^2) dif x = "arc sen"(x) + C)$],
    [$display(limits(integral) f'(x) 1/sqrt(1-f(x)^2) dif x = "arc sen"[f(x)] + C)$],
    [$display(limits(integral) (-1)/sqrt(1-x^2) dif x = "arc cos"(x) + C)$],
    [$display(limits(integral) f'(x) (-1)/sqrt(1-f(x)^2) dif x = "arc cos"[f(x)] + C)$],
    [$display(limits(integral) (-1)/(1+x^2) dif x = "arc tan"(x) + C)$],
    [$display(limits(integral) f'(x) (-1)/(1-f(x)^2) dif x = "arc tan"[f(x)] + C)$],
  )
]
