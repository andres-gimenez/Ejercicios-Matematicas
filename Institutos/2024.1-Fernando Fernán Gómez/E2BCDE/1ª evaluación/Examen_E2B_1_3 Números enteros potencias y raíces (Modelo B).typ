#import "@preview/g-exam:0.4.0": *

// #set text(font:"OpenDyslexic")
// #set text(font: "New Computer Modern")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 3º examen",
    content: "Números enteros, potencias y raíces",
    model: "Modelo B"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-points-position: right,
  clarifications: [No está permitido el uso de calculadora]
  // question-text-parameters: (font:"OpenDyslexic")
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

#question(points:2)[Efectua las siguientes operaciones:]

#subquestion[$display((-12) + (+30) - (-10) + (32) - (+17) - (-23))$ = ] // 66
#v(2fr)

#subquestion[$display(abs(-35) + abs(+35) - abs(12 - 15) + (-35))$ = ]  // 32
#v(2fr)

#question(points: 2)[Expresa como una única potencia:]
#subquestion[$display((-8)^4 dot (-8)^7)$ = ]
#v(1fr)

#subquestion[$display((-62)^6 dot (-62)^4)$ = ]
#v(1fr)

#subquestion[$display((-5)^9 dot (+6)^9)$ = ]
#v(1fr)

#subquestion[$display([(-12)^8]^3)$ = ]
#v(1fr)

#pagebreak()

#question(points: 2)[Calcula el valor exacto de las siguientes expresiones con raíces:]
#subquestion[$display(sqrt(3600))$ = ]
#v(1fr)

#subquestion[$display(sqrt(1296))$ = ]
#v(1fr)

#subquestion[$display(root(3, -27))$ = ]
#v(1fr)

#subquestion[$display(sqrt(10) dot sqrt(14) dot sqrt(35))$ = ]
#v(1fr)

#question(points: 2)[Resuelve la siguiente expresión:]

\

$display((6^2 dot (5^3)^5 dot 6^8)/(15^4 dot (10^5)^2 dot 3^6))=$  // 5
#v(2fr)

#pagebreak()
#question(points: 2)[Resuelve las siguientes operaciones combinadas:]

#subquestion[$display(12 dot (2^3 - 5)^2 + 3 dot sqrt(12 - 3))=$]  // 117
#v(1fr)

#subquestion[$display([(2 - 3)^2 dot (4 + 3) + 2 dot 6] dot 3)=$]  // 57
#v(1fr)