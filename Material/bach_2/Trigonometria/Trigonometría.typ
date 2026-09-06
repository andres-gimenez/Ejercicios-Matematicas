#import "@preview/g-exam:0.4.5": *
// #import "@preview/wrap-it:0.1.0": wrap-content

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz",
    email: "agimenezmunoz@educa.madrid.com",
    watermark: "Profesor: Andrés",
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
    content: "Trigonometría",
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

// #let header-color = rgb(0, 80, 180)
// #let alt-row = rgb(0xE8, 0xF4, 0xFF)

// #set text(size:8pt)

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

// #set page(columns: 2)

// #set table.hline(stroke:0.7pt + gray)

// #set table(
//     align: left,
//     inset: 5pt,
//     stroke: (x, y) => {
//     if y == 0 {
//       if x == 0{
//         (bottom: 0.7pt + gray, right: 0.7pt + gray)
//       }
//       else {
//         (bottom: 0.7pt + gray)
//       }

//     }
//     else {
//       if x == 0 {
//         (right: 0.7pt + gray)
//     }
//     else {
//       none
//     }
//   }
//   }
// )

#place(
  top + center,
  scope: "parent",
  float: true,
  [= Trigonometría],
)

== Tabla trigonometrica
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  [Grados], [$0$], [$30º$], [$45º$], [$60º$], [$90º$],
  [Radianes], [0], [$pi/6$], [$pi/4$], [$pi/3$], [$pi/2$],
  [$"sen"(x)$], [$0$], [$1/2$], [$sqrt(2)/2$], [$sqrt(3)/2$], [$1$],
  [$"cos"(x)$], [$1$], [$sqrt(3)/2$], [$sqrt(2)/2$], [$1/2$], [$0$],
  [$"tg"(x)$], [$0$], [$sqrt(3)/3$], [$1$], [$sqrt(3)$], [$exists.not$],
  [$"cotg"(x)$], [$exists.not$], [$sqrt(3)$], [$sqrt(2)/2$], [$sqrt(3)/3$], [$1$],
  [$"sec"(x)$], [$1$], [$(2sqrt(3))/3$], [$sqrt(2)$], [$2$], [$exists.not$],
  [$"cosec"(x)$], [$exists.not$], [$2$], [$sqrt(2)$], [$(2sqrt(3))/3$], [$1$],
)

