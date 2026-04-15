#import "@preview/g-exam:0.4.4": *
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
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Tabla Normal(0,1)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  question-points-position: none,
)
// #set math.cases(reverse: true)

#set table(
  columns: 11,
  align: center,
  stroke: 0.5pt
)

= Tabla de la Normal Estándar

La tabla muestra probabilidades acumuladas de una variable
$Z ~ N(0,1)$.

// #let phi(z) = {
//   let t = 1 / (1 + 0.2316419 * calc.abs(z))
//   let d = 0.3989422804 * calc.exp(-z*z/2)
//   let p = d * t * (0.319381530 + t * (-0.356563782 + t * (1.781477937 + t * (-1.821255978 + t * 1.330274429))))
//   if z >= 0 { 1 - p } else { p }
// }

#let erf(x) = {
  // aproximación numérica precisa
  let a1 = 0.254829592
  let a2 = -0.284496736
  let a3 = 1.421413741
  let a4 = -1.453152027
  let a5 = 1.061405429
  let p = 0.3275911

  let sign = if x < 0 { -1 } else { 1 }
  let ax = calc.abs(x)

  let t = 1 / (1 + p * ax)

  let y = 1 - (
    (((a5*t + a4)*t + a3)*t + a2)*t + a1
  ) * t * calc.exp(-ax*ax)

  sign * y
}

#let phi(z) = {
  0.5 * (1 + erf(z / calc.sqrt(2)))
}

// Función para forzar 4 decimales como texto
#let fmt(val, d) = {
  let s = str(calc.round(val, digits: d))
  let parts = s.split(".")
  if parts.len() == 1 { s + "." + "0" * d }
  else { s + "0" * (d - parts.at(1).len()) }
}

#table(
  columns: (auto, ..(3.9em,) * 10),
  align: center + horizon,
  stroke: 0.5pt + gray,
  // Cebra y encabezados
  fill: (x, y) => if y == 0 or x == 0 { gray.lighten(80%) },
  
  table.header(
    [*z*], 
    ..range(0, 10).map(c => [*#fmt(c/100, 2)*])
  ),

  ..{
    let cells = ()
    for r in range(0, 46) { // Hasta z = 3.0
      let base = r / 10
      cells.push([*#calc.round(base, digits: 2)*])
      
      for c in range(0, 10) {
        let z = base + c/100
        cells.push([#fmt(phi(z), 5)])
      }
    }
    cells
  }
)