#import "@preview/g-exam:0.3.2": *

// #set text(font:"OpenDyslexic")
// #set text(font: "New Computer Modern")

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    // logo:image("./logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "1º Evaluación",
    content: "Operaciones con números enteros",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
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

=? Realiza las siguienes sumas con números enteros:

#columns(2, gutter: 11pt)[
  ==? $(+2)+(-3)=$
  ==? $(+5)+(-5)=$
  ==? $(-2)-(-7)=$
  ==? $(-6)-(-2)=$
  ==? $(+3)+(+4)=$
  ==? $(+2)+(-6)=$

  #colbreak()

  ==? $(-3)+(7)=$
  ==? $(-9)+(3)=$
  ==? $(-6)+(-5)=$
  ==? $(+20)+(+31)=$
  ==? $(-31)+(-64)=$
  ==? $(+23)-(-23)=$
]

=? Realiza las siguientes operaciones combinadas:

#columns(2, gutter: 11pt)[
  ==? $13 - 2 dot 5 =$
  ==? $13 - 2 dot 5 =$
  ==? $2 + 6 dot (13 - 2 dot 5 ) = $
  ==? $2 + 6 dot (13 - 2 dot 5 ) - 7 dot 2 = $
  ==? $5 dot 3 - 2 dot 5 = $
  ==? $(14-9) dot 3 - (22- 20) dot 6 = $
  ==? $(7 dot 2 - 9) dot 3 - (22- 5 dot 4) dot 6 =$
  ==? $18:(3 - 8) = $
    
    #colbreak()

  ==? $14 - 24 : 3 + 6 : 2 = $
  ==? $9 : 3 + 5 dot 7 =$
  ==? $17+ (4 dot 2 - 7) dot 3 = $
  ==? $(22 - 5 dot 3 ) dot 7 = $
  ==? $7 dot 4 - 12 + 3 dot 6 - 2 = $
  ==? $3 dot (14 + 12 - 20 ) : 6 + 2 = $
  ==? $15 + 2 dot [ 8 - 3 dot 5] = $
  ==? $32 dot 12 - (23 + 3 dot 6) = $
]

  ==? $[(1 - 4) - (5 - 3) - (-6)] dot [-3 + (-7)] = $
  ==? $-3 dot (4 - 2) - 4 dot (3-8) - [4 dot (-5)] dot [(-3) dot 11] = $
  ==? $(-3)dot (+5) - 3 dot [11 + 3 dot (5-11)] = $
  ==? $28 : (-7) - (-6) dot [23 - 5 dot (9-4)] = $ 
    
=? Realiza las siguientes operaciones combinadas con potencias y raíces:
  
    ==? $4 dot 9 - 2^3 dot 3$
    ==? $12- 2 dot 5$
    ==? $3 dot 2^3 - 7 +1$
    ==? $3 dot 2^3 - (7 +1)$
    ==? $3 dot (2^3 - 7) + 1$
    ==? $3 dot (2^3 - 7 + 1) $
    ==? $14 - 2 dot (5^2 - 3 dot 6)$
    ==? $35 - 2 dot 4^2 - (2^3 - 10:2)$
    ==? $7 dot (6 + 3^2) - 4^2$
    ==? $25 : (5^2 - 20) + 18$
    ==? $5 - 3 dot (2^2 + 3) - 5$
    ==? $7 + 4 dot sqrt{25}$
    ==? $9 - 2 dot sqrt{4} + sqrt{49}$
    ==? $(6^2:4 + 2) - (6^2 - 5^2)$
    ==? $2 + 6 dot (13 - 2 dot 5 )$
    ==? $5 dot 3 - 2 dot 6$
    ==? $(14 - 9) dot 3 - (22 - 5 dot 4) dot 6$
    ==? $3 dot 2^3 - 7 + 1$
    ==? $3 dot 2^3 - (7 + 1)$
    ==? $3 dot (2^3 - 7) + 1$
    ==? $3 dot (2^3 - 7 + 1)$
    ==? $14-2dot (5^2 - 3 dot 6)$
    ==? $35 - 2 dot 4^2 - (2^3 - 10:2)$

=? Calcula las siguientes operaciones combinadas

    ==? $[5+(4-2) dot (2^2-5)]$
    ==? $[3 dot (4-5) + (3-8) dot 3^2  ]$
    ==? $(6^2 : 4 + 2)-(6^2 - 5^2)$
    ==? $[(1 - 4)-(5-3)-(-6)]dot[-3+(-7)]$
    ==? $-4(3-8)-[4dot(-5)]dot[(-3) dot 11]$
    ==? $15 + 2 dot [8 - 3 dot 5]$
    ==? $(-3) dot (+5) - 3 dot [11+3dot(5-11)]$
    ==? $28:(-7)-(-6)dot [23-5dot(9-4)]$

    ==? $6 - 5dot [-4-1+(-2)^2-3^2]$
    ==? $60-(8-5)^3 + (-2) dot [(-2)^4 + 3 dot (2-7)]$
    ==? $(-10) dot 3 + 5 dot (4 - 8 - 2) - 5 dot 5 [1 + 2 dot (1 - 6)]$
    ==? $[15 + 3 dot (-4 - 2)] - 3 dot [9 - 10 : (12 - 10)]$