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
    number: "1ª evaluación - 1º parcial",
    content: "Operaciones combinadas",
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

#question(points:3)[Efectúa las siguientes operaciones:]

#subquestion[$display(3 + 4 + 3(2 + 5))=$]
#v(1fr) 

#subquestion[$display(2 + 7 - 7(4 - 2))=$]
#v(1fr)

#pagebreak()
#question(points:3)[Calcula el resultado de:]

#subquestion[$display(2(3-5) - 3(5+7) - 5(4-2) + 5(9-4))=$]
#v(1fr) 

#subquestion[$display((2 + 7)(3-7) - 7(4 - 2))=$]
#v(1fr) 


#pagebreak()
#question(points: 4)[Resuelve las siguientes operaciones combinadas:]

#subquestion[$display(12 dot (2^3 - 5)^2 + 3 dot sqrt(12 - 3))=$]
#v(1fr)

#subquestion[$display([(2 - 3)^2 dot (4 + 3) + 2 dot 6] dot 3)=$]
#v(1fr)