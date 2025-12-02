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
    number: "1º Evaluación",
    content: "Operaciones con números enteros",
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

#question[Realiza las siguientes sumas con números enteros:]
  
#columns(2, gutter: 11pt)[

  #subquestion()[$(+2)+(-3)=$]
  #subquestion()[$(+2)+(-3)=$]
  #subquestion()[$(+5)+(-5)=$]
  #subquestion()[$(-2)-(-7)=$]
  #subquestion()[$(-6)-(-2)=$]
  #subquestion()[$(+3)+(+4)=$]
  #subquestion()[$(+2)+(-6)=$]

  #colbreak()

  #subquestion()[$(-3)+(7)=$]
  #subquestion()[$(-9)+(3)=$]
  #subquestion()[$(-6)+(-5)=$]
  #subquestion()[$(+20)+(+31)=$]
  #subquestion()[$(-31)+(-64)=$]
  #subquestion()[$(+23)-(-23)=$]
]

#question[Realiza las siguientes operaciones combinadas:]

  #columns(2, gutter: 11pt)[
    #subquestion()[$13 - 2 dot 5 =$]
    #subquestion()[$13 - 2 dot 5 =$]
    #subquestion()[$2 + 6 dot (13 - 2 dot 5 ) = $]
    #subquestion()[$2 + 6 dot (13 - 2 dot 5 ) - 7 dot 2 = $]
    #subquestion()[$5 dot 3 - 2 dot 5 = $]
    #subquestion()[$(14-9) dot 3 - (22- 20) dot 6 = $]
    #subquestion()[$(7 dot 2 - 9) dot 3 - (22- 5 dot 4) dot 6 =$]
    #subquestion()[$18:(3 - 8) =$]
      
    #colbreak()

    #subquestion()[$14 - 24 : 3 + 6 : 2 = $]
    #subquestion()[$9 : 3 + 5 dot 7 =$]
    #subquestion()[$17+ (4 dot 2 - 7) dot 3 = $]
    #subquestion()[$(22 - 5 dot 3 ) dot 7 = $]
    #subquestion()[$7 dot 4 - 12 + 3 dot 6 - 2 = $]
    #subquestion()[$3 dot (14 + 12 - 20 ) : 6 + 2 = $]
    #subquestion()[$15 + 2 dot [ 8 - 3 dot 5] = $]
    #subquestion()[$32 dot 12 - (23 + 3 dot 6) = $]
  ]

  #subquestion()[$[(1 - 4) - (5 - 3) - (-6)] dot [-3 + (-7)] = $]
  #subquestion()[$-3 dot (4 - 2) - 4 dot (3-8) - [4 dot (-5)] dot [(-3) dot 11] = $]
  #subquestion()[$(-3)dot (+5) - 3 dot [11 + 3 dot (5-11)] = $]
  #subquestion()[$28 : (-7) - (-6) dot [23 - 5 dot (9-4)] = $]
    
#question[Realiza las siguientes operaciones combinadas con potencias y raíces:]
  
  #columns(2, gutter: 11pt)[
    #subquestion()[$4 dot 9 - 2^3 dot 3$]
    #subquestion()[$12- 2 dot 5$]
    #subquestion()[$3 dot 2^3 - 7 +1$]
    #subquestion()[$3 dot 2^3 - (7 +1)$]
    #subquestion()[$3 dot (2^3 - 7) + 1$]
    #subquestion()[$3 dot (2^3 - 7 + 1) $]
    #subquestion()[$14 - 2 dot (5^2 - 3 dot 6)$]
    #subquestion()[$35 - 2 dot 4^2 - (2^3 - 10:2)$]
    #subquestion()[$7 dot (6 + 3^2) - 4^2$]
    #subquestion()[$25 : (5^2 - 20) + 18$]
    #subquestion()[$5 - 3 dot (2^2 + 3) - 5$]
    #subquestion()[$7 + 4 dot sqrt(25)$]
    #subquestion()[$9 - 2 dot sqrt(4) + sqrt(49)$]
    #subquestion()[$(6^2:4 + 2) - (6^2 - 5^2)$]
  ]
  
  #question[Realiza las siguientes operaciones combinadas con potencias y raíces:]
  #columns(2, gutter: 11pt)[
    #subquestion()[$2 + 6 dot (13 - 2 dot 5)$]
    #subquestion()[$5 dot 3 - 2 dot 6$]
    #subquestion()[$(14 - 9) dot 3 - (22 - 5 dot 4) dot 6$]
    #subquestion()[$3 dot 2^3 - 7 + 1$]
    #subquestion()[$3 dot 2^3 - (7 + 1)$]
     #colbreak()
    #subquestion()[$3 dot (2^3 - 7) + 1$]
    #subquestion()[$3 dot (2^3 - 7 + 1)$]
    #subquestion()[$14-2dot (5^2 - 3 dot 6)$]
    #subquestion()[$35 - 2 dot 4^2 - (2^3 - 10:2)$]
  ]

#question[Calcula las siguientes operaciones combinadas:]

#columns(2, gutter: 11pt)[
    #subquestion()[$[5+(4-2) dot (2^2-5)]$]
    #subquestion()[$[3 dot (4-5) + (3-8) dot 3^2]$]
    #subquestion()[$(6^2 : 4 + 2)-(6^2 - 5^2)$]
    #subquestion()[$[(1 - 4)-(5-3)-(-6)]dot[-3+(-7)]$]
    #subquestion()[$-4(3-8)-[4dot(-5)]dot[(-3) dot 11]$]
    #colbreak()
    #subquestion()[$15 + 2 dot [8 - 3 dot 5]$]
    #subquestion()[$(-3) dot (+5) - 3 dot [11+3dot(5-11)]$]
    #subquestion()[$28:(-7)-(-6)dot [23-5dot(9-4)]$]

    #subquestion()[$6 - 5dot [-4-1+(-2)^2-3^2]$]
]
    #subquestion()[$60-(8-5)^3 + (-2) dot [(-2)^4 + 3 dot (2-7)]$]
    #subquestion()[$(-10) dot 3 + 5 dot (4 - 8 - 2) - 5 dot 5 [1 + 2 dot (1 - 6)]$]
    #subquestion()[$[15 + 3 dot (-4 - 2)] - 3 dot [9 - 10 : (12 - 10)]$]
