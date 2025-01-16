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
  #subquestion()[$2x^2 + 3x^2$] 
  #subquestion()[$3x^2 - 5x^2$]
  #subquestion()[$15x^5 - 10x^5$]
  #subquestion()[$5x^2 -4x^2$]
  #subquestion()[$3 x y^2 + 5 x y ^2$]
  #subquestion()[$32x^2 - 4x^2 + 5x^2$]
  #subquestion()[$2z + 7 z$]
  #subquestion()[$-4r - 8r$]

  #subquestion()[$5 alpha + 4 alpha $]
  #subquestion()[$6 beta^2 + 4 beta^2$]
  #subquestion()[$5 delta - 6 delta$]

  #subquestion()[$5/7 x - 2/7 x$]
  #subquestion()[$5/4 b^5 + 7/4 b^5$]
  #subquestion()[$1/3 x y - 2/5 x y$]
  #subquestion()[$2/5 x + 3/4 x$]
  #subquestion()[$1/3 x - 4/7 x + 2/ 6 x$]
  #subquestion()[$2/5 y - 5/2 x$]

  #subquestion()[$2 dot 4x$]
  #subquestion()[$4 dot 8x^2$]
  #subquestion()[$2 dot 4x$]
  #subquestion()[$5x dot 3x$]
  #subquestion()[$3t dot 8t$]
  #subquestion()[$4a dot 2a$]
  #subquestion()[$4x dot (-2x)$]
  #subquestion()[$(-2x^2) dot (-3x^5)$]
  #subquestion()[$-5x^2 dot 3x^3$]
  #subquestion()[$4x dot (-3)$]
  #subquestion()[$(4x^4) (2x^9)$]
  #subquestion()[$(-3x) (-4x)$]
  #subquestion()[$5x^2y^3 dot 4x^3y$]

  #subquestion()[$2\zeta dot 5\zeta$]
  #subquestion()[$5\nu^2 dot 6\nu$]
  #subquestion()[$4\mu^2 dot 2\mu$]

  #subquestion()[$15x^2 : 3$]
  #subquestion()[$-12a^2b : 4$]
  #subquestion()[$9x^3 : 3x^2$]
  #subquestion()[$-20x^5 : (-4x^2)$]
  #subquestion()[$2y^4 : 3y^2$]
  #subquestion()[$-4x^6:8x^3$]
  #subquestion()[$4x^3y^2 : 2x^3y$]
  #subquestion()[$-10a^2b:5a^2b$]
  #subquestion()[$5x^5y^3:4x^3y^4$]
]