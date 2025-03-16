#import "@preview/g-exam:0.4.2": *

// #set text(font:"OpenDyslexic")
// #set text(font: "New Computer Modern")

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    // logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Expresiones algebraicas",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year:2024, month:1, day:8),
  show-student-data: false,
  show-grade-table: false,
  question-point-position: right,
  // question-text-parameters: (font:"OpenDyslexic")
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

#question()[Indica la expresión que representa las siguientes frases:]
#columns(2, gutter: 11pt)[
  #subquestion()[El doble de cuatro.]
  #subquestion()[El triple de cinco.]
  #subquestion()[El doble de la mitad de tres.]
  #subquestion()[La mitad de diez menos dos.]
#colbreak()
  #subquestion()[La mitad de diez, menos dos.]
  #subquestion()[El triple de cinco más cuatro.]
  #subquestion()[El triple de cinco, más cuatro.]
]

#question()[Escribe las siguientes expresiones en notación algebraica:]
#columns(2, gutter: 11pt)[
  #subquestion()[El doble de un número.]
  #subquestion()[La mitad de un número.]
  #subquestion()[El doble de un número más su mitad.]
  #subquestion()[La mitad de un número menos dos.]
  #subquestion()[La mitad de un número, menos dos.]

  #subquestion()[El triple de la mitad de un número.]
#colbreak()
  #subquestion()[La mitad del triple de un número.]
  #subquestion()[El siguiente número a uno dado.]
  #subquestion()[El triple de un número al sumarle siete.]

  #subquestion()[Un número par.]
  #subquestion()[Un número impar.]
]

#question()[Realiza las siguientes operaciones con monomio:]
#columns(2, gutter: 11pt)[
  #subquestion()[$2x + 3x$]
  #subquestion()[$x + 4x$]
  #subquestion()[$2x^2 + 3x^2$] 
  #subquestion()[$3x^2 - 5x^2$]
  #subquestion()[$15x^5 - 10x^5$]
  #subquestion()[$5x^2 -4x^2$]
  #subquestion()[$3 x y^2 + 5 x y ^2$]
  #subquestion()[$32x^2 - 4x^2 + 5x^2$]
  #subquestion()[$2z + 7 z$]
  #subquestion()[$x^2 - 3x^2$]
  #subquestion()[$-4r - 8r$]
  #subquestion()[$-4x^34 - 8x^34$]

#colbreak()

  #subquestion()[$4x dot 5x$]
  #subquestion()[$7x^3 dot 3x^2$]
  #subquestion()[$7x^2 dot 3x^5$]

  #subquestion()[$3r dot 7r$]
  #subquestion()[$15x colon 3x$]
  #subquestion()[$x dot 2x$]

  #subquestion()[$20x^2 colon 5x$]

  #subquestion()[$-7x^2 colon x$]

  #subquestion()[$(-3x) dot (+7x)$]
  #subquestion()[$(-9x^4) dot (-4x^2)$]
  #subquestion()[$7t^2 dot 3t^5$]
   #subquestion()[$(-25x^7) colon (+15x^3)$]
]

#question()[Simplifica las siguientes expresiones algebraicas:]
#columns(2, gutter: 11pt)[
  #subquestion()[$5x^2 + 2x - 3x^2$]
  #subquestion()[$$] 
  #subquestion()[$$]
  #subquestion()[$$]
  #subquestion()[$$]
#colbreak()
  #subquestion()[$5x^2-4x + 6x^2 +2x$]
  #subquestion()[$$] 
  #subquestion()[$$]
  #subquestion()[$$]
  #subquestion()[$$]
]


