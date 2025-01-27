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
    number: "2ª evaluación - 2º examen",
    content: "Operaciones combinadas, números decimales y lenguaje algebraico",
    model: [Modelo A]
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-points-position: right,
  clarifications: (
    [Se permite el uso de calculadora.],
    [No está permitido el uso de teléfono móvil, ni la calculadora de este.]
  )
  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#set math.cases(reverse: true)
 


#question(points:3)[Siendo los polinomios: 

  $P[x] = 3x^4+5x^3-2x^2+4x-2$

  $Q[x] = 5x^4-2x^3+5x^2-2x+4$

  $R[x] = 3x^2+2x+3$

  Calcula: $ P[x] + Q[x] dot R[x] = $
]
#pagebreak()

#question(points:1)[Resuelve las siguientes ecuaciones:]
  #subquestion()[$x-6=3x-10$] //(sol: x=)
  #subquestion()[$x+6=9-3x + 2$] //(sol: x=)
  #subquestion()[$x+9=3$] //(sol: x=)

#question()[Resuelve las siguientes ecuaciones:]
  #subquestion()[$display(3/2 x + 1/3 = 3/5 - (2- 2x)/3)$] //(sol: x=)
  #subquestion()[$display(1/5 x + 2/7 = (2x - 1)/2) + 2/3$] //(sol: x=)

#question()[Halla la solución de la  ecuacion]
  #subquestion()[$display((3x + 5)/7 = (2x - 3) / 4)$]
  #subquestion()[$display((2x+4)/5 = 5 - (3x+5)/3)$]
  #subquestion()[$display((x+2)/5 + (2x-3)/4 = (3x+5)/3)$]

#question()[Resuelve las siguientes ecuaciones de 2º grados:]
  #subquestion()[$display(x^2-5x+6 = 0)$] //(sol: x=)
  #subquestion()[$display(2x^2+3x-2 = 0)$] //(sol: x=)
  #subquestion()[$display(x^2+4x+4 = 0)$] //(sol: x=)
// #question()[Efectúa las siguientes operaciones con notación científica:]

// #subquestion(points:0.5)[$display("1,3" dot 10^(15) + "2,7" dot 10^(14))$=]
// #v(1fr)

// #subquestion(points:0.5)[$display("6,3" dot 10^(-35) - "3,7" dot 10^(-36))$=]
// #v(1fr)

// #subquestion(points:0.5)[$display("1,3" dot 10^(8) dot "3,5" dot 10^(-3))$=]
// #v(1fr)

// #subquestion(points:0.5)[$display("1,2" dot 10^(4) + "1,7" dot 10 ^6 dot "3,2" dot 10^(-2))$=]
// #v(1fr)
// #pagebreak()

// #question(points:2)[Un fabricante de piezas de automóvil tiene un contrato en el que las piezas que ha de fabricar tienen que tener menos de un error absoluto de $4 dot 10^(-4)$ metros. Al realizar las pruebas de calidad, una pieza que ha de medir $4,3 dot 10^(-3)$ metros, mide $4,2 dot 10^(-3)$ metros. ¿Está la pieza dentro de los márgenes de calidad que se le exige?]
// #v(1fr)
// #pagebreak()

// #question()[Siendo el polinomio $P(x)= 3x^3 - 2x^2 + x - 6$, calcula:]
// #subquestion(points:0.75)[$display(P(1))=$]
// #v(1fr)

// #subquestion(points:0.75)[$display(P(-1))=$]
// #v(1fr)

// #subquestion(points:0.75)[$display(P(1/2))=$]
// #v(1fr)

// #subquestion(points:0.75)[$display(P(2))=$]
// #v(1fr)

// #pagebreak()
// #question()[Reduce todo lo que se pueda las siguientes expresiones algebraicas:]

// #subquestion(points:0.5)[$display(6x - (4x^3 + x^2 - 7x - 2))$=]
// #v(2fr)

// #subquestion(points:0.5)[$display((2x + 5) - (-6x^3 - 2x^2 + 7x - 3))$=]
// #v(2fr)

// #subquestion(points:0.5)[$display(7x^4 dot 15x)$=]
// #v(1fr)

// #subquestion(points:0.5)[$display(140x^14 : 20x^2)$=]
// #v(1fr)

// #subquestion(points:0.5)[$display((4x^6)^2)$=]
// #v(1fr)

// #subquestion(points:0.5)[$display((5x^5)^2) dot 2 x^7$=]
// #v(1fr)