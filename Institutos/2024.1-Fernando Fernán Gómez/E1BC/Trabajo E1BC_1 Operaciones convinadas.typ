#import "@local/g-exam:0.4.0": *

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("./logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "1º evaluación",
    content: "Trabajo operaciones con enteros(1ª parte)",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-student-number: 2,
  show-grade-table: false,
  question-points-position: right,
)

#set math.cases(reverse: true)

#question[Realiza las siguientes sumas y restas]

#columns(2)[
  #subquestion[$display(3+5)=$]
  #subquestion[$display(4-6)=$]
  #subquestion[$display(6-3)=$]
  #subquestion[$display(-6-9)=$]
  #subquestion[$display(-6+5)=$]
  #colbreak()
  #subquestion[$display((-5)+(-3))=$]
  #subquestion[$display((-5)+(-7))=$]
  #subquestion[$display((-3)+(-8))=$]
  #subquestion[$display((+3)-(-2))=$]
  #subquestion[$display((-8)-(-5))=$]
]

#question[Realiza las siguientes multiplicaciones y divisiones]

#columns(2)[
  #subquestion[$display(5 dot 4)=$]
  #subquestion[$display(-2 dot (-9))=$]
  #subquestion[$display((-4) dot (-8))=$]
  #subquestion[$display((-6) dot (-9))=$]
  #subquestion[$display((-8) dot (+3))=$]
#colbreak()
  #subquestion[$display((-15) dot (-3))=$]
  #subquestion[$display((-5) dot (-7))=$]
  #subquestion[$display((-18) : (-2))=$]
  #subquestion[$display((+25) :(-5))=$]
  #subquestion[$display((+100) :(-10))=$]
]

#question[Realiza las siguientes potencias]
  #columns(2)[
    #subquestion[$display((+5)^2)=$]
    #subquestion[$display((-5)^2)=$]
    #subquestion[$display((+5)^3)=$]
    #subquestion[$display(((-5)^4)^0)=$]
  #colbreak()
    #subquestion[$display((-5)^3)=$]
    #subquestion[$display((-5)^4 : (-5)^3)=$]
    #subquestion[$display((-15)^3 : (-3)^3)=$]
    #subquestion[$display((17^6)/(17^5))=$]
]

#question[Realiza las siguientes operaciones combinadas]

#subquestion[$display(5 dot (4 + 2) - 3 dot (4 - 2))=$]
#v(1fr)
#subquestion[$display(5 dot (3 - 5) + 6 dot (5 - 12))=$]
#v(1fr)

#pagebreak()

#subquestion[$display(3 dot (7 - 5) - (5 - 3) dot (3+6))=$]
#v(1fr)
#subquestion[$display(15 dot (3 - 5)^2 + 4 dot (12 - 4))=$]
#v(1fr)
#subquestion[$display([(3 - 2) dot (4 + 2) + 2 dot 6] dot 3)=$]
#v(1fr)
#subquestion[$display(5 dot 4 - (7 - 1) dot 5 + 15:(-3))=$]
#v(1fr)