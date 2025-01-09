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
    model: "Modelo Ad"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-points-position: right,
  clarifications: [No está permitido el uso de calculadora],
  question-text-parameters: (size: 14pt, spacing:150%, font:"OpenDyslexic")
)

#set math.cases(reverse: true)

#question()[Efectúa las siguientes operaciones con notación científica:]

#subquestion(points:0.5)[$display("3,2" dot 10^(18) + "2,8" dot 10^(17))$=]
#v(1fr)

#subquestion(points:0.5)[$display("5,8" dot 10^(-32) - "2,4" dot 10^(-33))$=]
#v(1fr)

#subquestion(points:0.5)[$display("1,5" dot 10^(7) dot "3,2" dot 10^(-2))$=]
#v(1fr)

#subquestion(points:0.5)[$display("1,2" dot 10^(4) + "1,7" dot 10 ^6 dot "3,2" dot 10^(-2))$=]
#v(1fr)
#pagebreak()

#question(points:2)[Un fabricante de piezas de automóvil tiene un contrato en el que las piezas que ha de fabricar tienen que tener menos de un error absoluto de $3 dot 10^(-4)$ metros. Al realizar las pruebas de calidad, una pieza que ha de medir $3,1 dot 10^(-3)$ metros, mide $3,2 dot 10^(-3)$ metros. ¿Está la pieza dentro de los márgenes de calidad que se le exige?]
#v(1fr)
#pagebreak()

#question()[Siendo el polinomio $P(x)= 2x^3 - 3x^2 + x-5$, calcula:]
#subquestion(points:0.75)[$display(P(1))=$]
#v(1fr)

#subquestion(points:0.75)[$display(P(1/2))=$]
#v(1fr)

#subquestion(points:0.75)[$display(P(-1))=$]
#v(1fr)

#subquestion(points:0.75)[$display(P(2))=$]
#v(1fr)

#pagebreak()
#question()[Reduce todo lo que se pueda las siguientes expresiones algebraicas:]

#subquestion(points:0.5)[$display(5x - (3x^3 + 2x^2 - 5x - 2))$=]
#v(2fr)

#subquestion(points:0.5)[$display((3x + 2) - (-5x^3 - x^2 + 5x - 7))$=]
#v(2fr)

#subquestion(points:0.5)[$display(3x dot 5x^5)$=]
#v(1fr)

#subquestion(points:0.5)[$display(140x^14 : 20x^2)$=]
#v(1fr)

#subquestion(points:0.5)[$display((3x^5)^3)$=]
#v(1fr)

#subquestion(points:0.5)[$display((2x^3)^2) dot 5 x^6$=]
#v(1fr)