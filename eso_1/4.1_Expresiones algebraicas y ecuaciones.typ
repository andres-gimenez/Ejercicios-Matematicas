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
    content: "Expresiones algebraicas y ecuaciones",
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
  #subquestion()[La mitad de diez menos dos.]
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
  #subquestion()[El triple de un número más siete.]
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
  #subquestion()[$display(-4x^34 - 8x^34)$]

  #subquestion()[$4x dot 5x$] 
  #subquestion()[$7x^3 dot 3x^2$]
  #subquestion()[$7x^2 dot 3x^5$]
// #colbreak()
  #subquestion()[$3r dot 7r$]
  #subquestion()[$15x colon 3x$]
  #subquestion()[$x dot 2x$]

  #subquestion()[$20x^2 colon 5x$]
  #subquestion()[$-7x^2 colon x$]

  #subquestion()[$(-3x) dot (+7x)$]
  #subquestion()[$(-9x^4) dot (-4x^2)$]
  #subquestion()[$7t^2 dot 3t^5$]
  #subquestion()[$display(-25x^7) colon (+15x^3)$]
  #subquestion()[$display(1/2x + 3/2 x)$]
  #subquestion()[$display(2/3x + 5/4 x)$]
  #subquestion()[$display(x/3 + 2x/5)$]

  #subquestion()[$5 x^2 y^3-3x^2 y^3$]
  #subquestion()[$5 x^5 y^2-3x^5 y^2$]
  #subquestion()[$5 alpha + 3 alpha$]
  #subquestion()[$6 beta^2 - 2 beta^2$]
]

#pagebreak()

#question()[Evalua las siguientes expresiones algebraicas para los valores indicados:]
#columns(2, gutter: 11pt)[
#subquestion()[$5x^2 + 3x - 2 "para" x = 3$]
#subquestion()[$5x^2 + 3x - 2 "para" x = 2$]
#subquestion()[$5x^2 + 3x - 2 "para" x = -2$]
#subquestion()[$5x^2 + 3x - 2 "para" x = 0$]
#subquestion()[$5x^2 + 3x - 2 "para" x = -1$]

#colbreak()
#subquestion()[$display(2/3x^2 + 1/5 "para" x = 1/4)$]
#subquestion()[$display(4/5x - 1/5 "para" x = -1)$]
#subquestion()[$display(5x^2y - 2x + 2y -1 "para" x = 1 " e " y = 2)$]
#subquestion()[$display(5 x y + 3 "para" x = 2 )$]
#subquestion()[$display(alpha + 5 "para" alpha = 3 )$]
]

#question()[Simplifica las siguientes expresiones algebraicas:]
#columns(2, gutter: 11pt)[
  #subquestion()[$5x^2 + 2x - 3x^2$]
  #subquestion()[$4x^2 - 12x + 1 - 5x$] 
  #subquestion()[$7x^2 + 2x + 1 + 2x^2$ ]
  #subquestion()[$8x^4 - 5x^2 + 4x^4 -5x ^2$]
  #subquestion()[$2x^2 - 3x$]
  #subquestion()[$5x^4 - 5x + 3x^4 - 3$] 
  #subquestion()[$x^3 + 5x^2 + 2x^3$]
  #subquestion()[$x^2 - 5x - 3 + 3x^2 - x -1$]
  #subquestion()[$7y^2 - 4y^2 + 3y + 2$]
  #subquestion()[$5x^2-4x + 6x^2 +2x$]
  #subquestion()[$4t^2 - 3t + 2t^2 - 5t$] 

  #subquestion()[$(3x + 3) + (5x + 2)$]
  #subquestion()[$(6x + 7) + (8x + 2)$]
  
  #subquestion()[$(5x - 3) - (2x + 2)$]
   
#colbreak()
  #subquestion()[$(2x + 3) - (3x - 2)$]
  #subquestion()[$(-2x - 5) - (-3x + 2)$]
  #subquestion()[$-(2x + 2) + (3x - 1)$]  
  #subquestion()[$3y^3 - 5y + 2) - (5y^3 + 3y - 2$] 
  #subquestion()[$5x - [3x + 4x - (5x + 2x)]$]
  
  #subquestion()[$- (4x + 3x - 3) + (5x + 1)$]
  #subquestion()[$- [3x + (3x + 5x - 3)]$]
  #subquestion()[$5 - (3x + 1) - (3x + 2) + (3x - 2)$]
  
  #subquestion()[$display(2/5 x^2 - 1/3 x + 3/8 x^2 - 2/5 x)$]
  #subquestion()[$display(21/5x^2+2/5x-[3/2x^2+(5x+2)])$]

  #subquestion()[$display((5x)/2 - (3x)/5)$]
  #subquestion()[$display((6x^2)/5 + (2x^2) / 7)$]
]

#pagebreak()

#question()[Resuelve las siguientes ecuaciones:]
#columns(2, gutter: 11pt)[
   #subquestion()[$x-3 = 5$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]
   #subquestion()[$$]

]
