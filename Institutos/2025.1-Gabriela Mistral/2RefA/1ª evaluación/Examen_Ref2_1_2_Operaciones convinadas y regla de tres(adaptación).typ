#import "@preview/g-exam:0.4.3": *

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "Refuerzo 2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 2º parcial",
    content: "Operaciones combinadas y regla de tres",
    model: [Modelo ◨]
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  // question-text-parameters: (size: 14pt, spacing:150%)

  question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#question(points:1)[Expresa como una única potencia:]

#subquestion[$display(4^14 dot 5^14 dot 3^12)=$]
#v(1fr) 

#subquestion[$display(3^2 dot 3^8 dot 3^9)=$]
#v(1fr)

#subquestion[$display((3^4)^3)=$]
#v(1fr)

#subquestion[$display(5^12 : 5^3)=$]
#v(1fr)

#subquestion[$display(15^21 : 3^21)=$]
#v(1fr)

#question(points:1)[Calcula el valor de las siguientes potencias:]

#subquestion[$display((-5)^2 =)$]
#v(1fr)

#subquestion[$display((-5)^3 = )$]
#v(1fr)

#subquestion[$display((5)^3 = )$]
#v(1fr)

#subquestion[$display(-5^3 = )$]
#v(1fr)

#pagebreak()
#question(points:1)[Calcula las siguientes raíces:]

#subquestion[$display(sqrt(81))=$]
#v(1fr)

#subquestion[$display(sqrt(12 + 13))=$]
#v(1fr)

#question[Calcula el resultado de:]

#subquestion(points:1)[$display(5(3-2) - 7(2+4) - 5(3-5) + 5(7-2))=$]
#v(2fr) 

#subquestion(points:1)[$display((3 - 2)(5 + 1) - 4(5 - 3))=$]
#v(2fr) 

#pagebreak()
#subquestion(points:1)[$display(2/6 - 5/2  (2/3 + 5/2))=$]
#v(1fr) 

#subquestion(points:1)[$display((2/3 + 3/2) (2/5 + 7/10))=$]
#v(1fr) 

#pagebreak()

#question(points:1)[Expresa los siguientes números decimales en forma de fracción:]

#subquestion[$display(2","4)=$]
#v(1fr) 
#subquestion[$display(5","25)=$]
#v(1fr) 
#subquestion[$display(0","accent(6, \u{0311}))=$]
#v(1fr) 

#question(points:2)[Una empresa de mensajería nos ha cobrado 15€ por llevar a cierta dirección un paquete de 2kg. 
Suponiendo que el coste del servicio dependiera solo del peso y de la distancia, 
¿cuánto nos habría costado mandar el paquete si este hubiera pesado 6kg.]
#v(5fr) 

