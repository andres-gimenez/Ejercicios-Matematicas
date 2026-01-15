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
    number: [Integrales definidas],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Calcula el valor de las siguientes integrales definidas:]
    #questions-columns(
    [
      #subquestion()[$display(∫_0^2 (3x^2 - 4x + 1) dif x)$]
    ],
    [
      #subquestion()[$display(∫_(-1)^1 (x^3 + x) dif x)$]
    ],
    [
      #subquestion()[$display(∫_1^3 1/x dif x)$]
    ],
    [
      #subquestion()[$display(∫_1^2 (2x + 3) dif x)$]
    ],
    [
      #subquestion()[$display(∫_(-2)^2 (x^5 - 3x^3) dif x)$]
    ],
    )
  ],
  [
    #question()[Teorema Fundamental del Cálculo:]
    #questions-columns(
    [
      #subquestion()[Sabiendo que $display(F'(x)=4x^3-2x)$, calcula $display(∫_0^1 4x^3 - 2x dif x)$]
    ],
    [
      #subquestion()[Calcula $display(∫_a^b 6x^2 + 1 dif x)$]
    ],
    [
      #subquestion()[Si $display(F(x)=x^3-5x)$, evalúa $display(∫_(-2)^1 3x^2 - 5 dif x)$]
    ],
    )
  ],
  [
    #question()[Si $display(∫_1^4 f(x) dif x = 6)$ y $display(∫_4^6 f(x) dif x = -2)$, calcula:]
    #questions-columns(
   
    [
      #subquestion()[$display(∫_1^6 f(x) dif x)$]
    ],
    [
      #subquestion()[$display(∫_6^1 f(x) dif x)$]
    ],
    )
  ],
  [
    #question()[Área entre dos curvas:]
    #questions-columns(
    [
      #subquestion()[Área comprendida entre $y = x^2$ y $y = 2x + 3$.]
    ],
    [
      #subquestion()[Área limitada por $y = √x$ y $y = x$.]
    ],
    [
      #subquestion()[Área encerrada entre $y = x^2$ y $y = 4 - x^2$.]
    ],
    [
      #subquestion()[Área comprendida entre $y = e^x$ y $y = 2x + 1$.]
    ],
    [
      #subquestion()[Área limitada por $y = |x|$ y $y = 2 - x$.]
    ],
    [
      #subquestion()[Área entre $y = x^2 - 4$ y el eje $x$.]
    ],
    [
      #subquestion()[Área entre $y = sin(x)$ y $y = cos(x)$ en $[0, π]$.]
    ],
    [
      #subquestion()[Área encerrada entre $y = x^2$ y $y = 2x$.]
    ],
    [
      #subquestion()[Área comprendida entre $y = sin(x)$ y el eje $x$ en $[-π, π]$.]
    ],
    [
      #subquestion()[Área comprendida entre $y = |sin(x)|$ y el eje $x$ en $[0, 2π]$.]
    ],
    [
      #subquestion()[Región limitada por $y = x^2$, $y = 4$ y el eje $y$.]
    ],
    )
  ],
)
