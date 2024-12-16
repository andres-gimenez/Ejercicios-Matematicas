#import "@preview/g-exam:0.4.2": *

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "2ª evaluación - 1º examen",
    content: "Operaciones combinadas, números decimales y lenguaje algebraico",
    model: "Modelo B"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-points-position: right,
  clarifications: [No está permitido el uso de calculadora]
  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#set math.cases(reverse: true)

#question()[Efectúa las siguientes operaciones con notación científica:]

#subquestion(points:0.5)[$display("1,3" dot 10^(15) + "2,7" dot 10^(14))$=]
#v(1fr)

#subquestion(points:0.5)[$display("6,3" dot 10^(-35) - "3,7" dot 10^(-36))$=]
#v(1fr)

#subquestion(points:0.5)[$display("1,3" dot 10^(8) dot "3,5" dot 10^(-3))$=]
#v(1fr)

#subquestion(points:0.5)[$display("1,2" dot 10^(4) + "1,7" dot 10 ^6 dot "3,2" dot 10^(-2))$=]
#v(1fr)
#pagebreak()

#question(points:2)[Un fabricante de piezas de automóvil tiene un contrato en el que las piezas que ha de fabricar tienen que tener menos de un error relativo de $4 dot 10^(-4)$ metros. Al realizar las pruebas de calidad, una pieza que ha de medir $4,3 dot 10^(-3)$ metros, mide $4,2 dot 10^(-3)$ metros. ¿Está la pieza dentro de los márgenes de calidad que se le exige?]
#v(1fr)
#pagebreak()

#question()[Siendo el polinomio $P(x)= 3x^3 - 2x^2 + x - 6$, calcula:]
#subquestion(points:0.75)[$display(P(1))=$]
#v(1fr)

#subquestion(points:0.75)[$display(P(-1))=$]
#v(1fr)

#subquestion(points:0.75)[$display(P(1/2))=$]
#v(1fr)

#subquestion(points:0.75)[$display(P(2))=$]
#v(1fr)

#pagebreak()
#question()[Reduce todo lo que se pueda las siguientes expresiones algebraicas:]

#subquestion(points:0.5)[$display(6x - (4x^3 + x^2 - 7x - 2))$=]
#v(2fr)

#subquestion(points:0.5)[$display((2x + 5) - (-6x^3 - 2x^2 + 7x - 3))$=]
#v(2fr)

#subquestion(points:0.5)[$display(7x^4 dot 15x)$=]
#v(1fr)

#subquestion(points:0.5)[$display(140x^14 : 20x^2)$=]
#v(1fr)

#subquestion(points:0.5)[$display((4x^6)^2)$=]
#v(1fr)

#subquestion(points:0.5)[$display((5x^5)^2) dot 2 x^7$=]
#v(1fr)