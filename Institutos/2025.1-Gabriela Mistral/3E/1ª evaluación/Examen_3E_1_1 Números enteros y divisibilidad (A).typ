#import "@preview/g-exam:0.4.3": *
// #import "@preview/wrap-it:0.1.0": wrap-content

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
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 1º parcial",
    content: "Números enteros y divisibilidad",
    model: [Modelo $alpha$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#question(points: 2.5)[Dos faros marinos emiten destellos de luz: el primero cada 45 segundos y el segundo cada 60 segundos.]

#subquestion()[¿Cada cuántos segundos se encenderán a la vez?]
#v(1fr)

#subquestion()[Si ambos se encienden juntos a las 20:00:00, ¿a qué hora volverán a coincidir?]
#v(1fr)

#pagebreak()

#question(points: 2.5)[En un almacén hay $600$ cajas de fruta. Primero se vendieron $1/4$ del total. Después se estropearon $1/5$ de las cajas que quedaban. Finalmente se donaron $1/3$ de las cajas restantes.]
#subquestion()[¿Cuántas cajas se han vendido?]
#subquestion()[¿Cuántas se estropearon?]
#subquestion()[¿Cuántas se donaron?]
#subquestion()[¿Cuántas cajas quedaron en el almacén al final?]
#v(2fr)

#pagebreak()
#question()[Calcula]
#subquestion(points: 1)[$display(7/5 dot 3/4 - 3/5:3/10) = $]
#v(1fr)

#subquestion(points: 1)[$display(2 (1/3 + 2/6) - 4 (1/6 - 5/2)) = $]
#v(1fr)

#subquestion(points: 1)[$display(5/6-3/7 : 6/14 + (2/3 - 6/9):16/45 -1/14) = $]
#v(2fr)

#pagebreak()

#question(points: 2)[Convierte a fracción los siguientes números en formato decimal.]

#subquestion()[$display("0,25" = )$]
#v(1fr)

#subquestion()[$display("3,75" = )$]
#v(1fr)

#subquestion()[$display("0,"overparen("18") = )$]
#v(1fr)

#subquestion()[$display("5,2"overparen("34") = )$]
#v(1fr)