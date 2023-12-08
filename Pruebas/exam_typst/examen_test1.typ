// #import "exam.typ": exam, questions, question
#import "exam.typ": *

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo: "logo.png",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas A",
    number: "1º Evaluación 2º Examen",
    content: "Proporcionalidad",
    model: "Model A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: true,
  show-grade-table: true,
  question-point-position: right
)

#question(point: 3)[Pregunta 1]
#v(20pt)

#question(point: 2.4)[
    Contenido de la pregunta 1 \
    $ 4 + x = 2 $
    $ (2 sqrt(3))/(sqrt(2)-sqrt(3)) $
  ]
#v(4fr)

#question(point: 1.5)[ Resuelve las siguientes expresiones:]
  #part(point: 1)[
    $4 - x = 2$
  ]
  #v(3fr)
  
  #part()[
    $5 + x = 3$
  ]
  #v(1fr)

  #part(point: 2)[
    #lorem(45)
  ]
  #v(2fr)

#pagebreak(weak:true)

#question(point: 2.3)[ 
  #lorem(45)
  ]
#v(1fr)  

#pagebreak(weak:true)

#question(point: 3.7)[
  Contenido de la pregunta 4
  #lorem(60)]

#v(1fr) 

#question(point: 2.1)[
  hola
  #lorem(160)]

#pagebreak(weak:true)

= Pregunta aislada
== Sub pregunta 1 aislada
== Sub pregunta 2 aislada

= Otra pregunta aislada
== Sub pregunta 1 aislada
== Sub pregunta 2 aislada
