#import "@preview/g-exam:0.4.1": *

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "2ª evaluación - Ficha 1",
    content: "Operaciones combinadas",
    // model: "Modelo A"
  ),
  localization: (
    grade-table-grade: [Calificación]
  ),
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  // show-student-number: 2,
  show-grade-table: false,
  question-points-position: right,
)

#set math.cases(reverse: true)

#question[Realiza las siguientes operaciones combinadas]

#subquestion()[$display(4 dot (5- 8) + (6 - 4) dot (4 -12)^2)$ = ]
#v(1fr)

#subquestion[$display(15 dot (3 - 5)^2 + 4 dot sqrt(12 - 3))=$]
#v(1fr)
#pagebreak()

#subquestion[$display([(3 - 2)^2 dot (4^2 + 2) + 2 dot 6] dot 3)=$]
#v(1fr)
#subquestion[$display(5 dot 4 - (7 - 1)^2 dot 5 + 15:(-3))=$]
#v(1fr)