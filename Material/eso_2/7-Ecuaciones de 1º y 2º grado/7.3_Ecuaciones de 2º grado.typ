#import "@preview/g-exam:0.4.4": *

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
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Ecuaciones de 2º grado",    
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  question-points-position: none,
// show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

   
#question()[Resuelve las siguientes ecuaciones de 2º grados:]
#columns(2, gutter: 11pt)[
  #subquestion()[$display(x^2-5x+6 = 0)$] //(sol: x=)
  #subquestion()[$display(2x^2+3x-2 = 0)$] //(sol: x=)
  #subquestion()[$display(x^2+4x+4 = 0)$] //(sol: x=)
  #subquestion()[$display(x^2-7x = 0)$] //(sol: x=)
  #subquestion()[$display(x^2+1 = 0)$] //(sol: x=)
  #subquestion()[$display(x dot (x+2) = 0)$] //(sol: x=)
    #colbreak()
  #subquestion()[$display(3 dot (x-2)^2 = 0)$] //(sol: x=)
  #subquestion()[$display((x-2) dot (x+1) = 0)$] //(sol: x=)
  #subquestion()[$display(5x^2  dot (2x-1) = -1)$] //(sol: x=)
  #subquestion()[$display((x - 3)^2 = 2x + 7)$]
  #subquestion()[$display((2x + 1)^2 = x^2 + 9)$]
  #subquestion()[$display((x + 4)(x - 1) = 3x + 2)$]
]

#question()[Un rectángulo tiene una área de 24 m². Su base mide 6 m más que su altura. Calcula las dimensiones del rectángulo resolviendo una ecuación de segundo grado.]

#question()[El área de un rectángulo es 180 m².La base mide 5 m más que la altura. Calcula las dimensiones del rectángulo.]

#question()[El perímetro de un cuadrado es igual al perímetro de un rectángulo cuya base mide 6 cm más que su altura, y cuyo área es 96 cm². Calcular el lado del cuadrado.]