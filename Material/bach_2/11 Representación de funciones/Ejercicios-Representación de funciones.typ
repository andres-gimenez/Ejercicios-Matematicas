#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Representación de funciones],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 22),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: false,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Representa las siguientes funciones.]
    #questions-columns(
    [
      #subquestion()[$f(x) = x^2 - 4$]
      #solution()[
          La función es un polinomio de segundo grado, por lo que su gráfica es una parábola con vértice en el punto $(0, -4)$ y que abre hacia arriba.

          // #plot(
          //   function: (x) -> x * x - 4,
          //   range-x: [-5, 5],
          //   range-y: [-5, 5],
          //   width: 300pt,
          //   height: 300pt,
          //   grid: true,
          //   axes: true,
          //   title: "$f(x) = x^2 - 4$",
          // )
          ]
    ],[
      #subquestion()[$f(x) = sqrt(x + 2)$]
      #solution()[
        La función es una raíz cuadrada desplazada 2 unidades a la izquierda. Su dominio es $x \geq -2$.

        // #plot(
        //   function: (x) -> sqrt(x + 2),
        //   range-x: [-3, 5],
        //   range-y: [0, 5],
        //   width: 300pt,
        //   height: 300pt,
        //   grid: true,
        //   axes: true,
        //   title: "$g(x) = \sqrt{x + 2}$",
        // )
      ]
    ], [
      #subquestion()[$f(x) = 1/(x-1)$]
      #solution()[
        La función es una función racional con una asíntota vertical en $x = 1$ y una asíntota horizontal en $y = 0$.

        // #plot(
        //   function: (x) -> 1/(x - 1),
        //   range-x: [-3, 5],
        //   range-y: [-5, 5],
        //   width: 300pt,
        //   height: 300pt,
        //   grid: true,
        //   axes: true,
        //   title: "$h(x) = 1/(x - 1)$",
        // )
      ]
    ],
    [
      #subquestion()[$f(x) = (x^4)/(x^2-1)$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = (x^3)/(x-2)^2$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = sqrt(x^2-2x)$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = ln(x^2+1)$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = 1/2 "sen"(2x) + "sen"(x)$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = e^x/x$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = e^x/x$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = x^3/(3(x+1))$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = |x+3|+|x-1|+|2x+4|)$]
      #solution()[]
    ],
    [
      #subquestion()[$f(x) = ln((x-3)/(x-1))$]
      #solution()[]
    ],
    ),
  ],
)

