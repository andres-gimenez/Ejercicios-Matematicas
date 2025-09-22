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
    logo: image("../../logo-ies_gabriela_mistral.png"),
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 1º parcial",
    content: "Números enteros y divisibilidad",
    model: [Modelo ◔], // ◔◓◮◤◨◨◫◢◨◫◱◵◹◾▶▨▢
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  // question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#question(points: 1)[Enumera al menos 10 múltiplos de 4.]
#v(1fr)

#question(points: 1)[Indica cuales son todos los divisores de 45.]
#v(1fr)

#question(points: 1)[Descompón en factores primos el número 45.]
#v(1fr)

#question(points: 1)[¿Ves alguna relación entre el resultado del ejercicio 2 y 3?]
#v(1fr)

#pagebreak()

#question(points: 2)[Calcula el mínimo común múltiplo y máximo común divisor de 28 y 32]
#v(1fr)

#question(points: 2)[En un instituto, los alumnos de 2ºA tienen clase de Educación Física cada 6 días, y los de 2ºF cada 8 días.
Hoy ambos grupos han coincidido en el polideportivo.]

#clarification()[Realiza el ejercicio utilizando el mínimo común múltiplo o el máximo común divisor.]

#subquestion()[¿Dentro de cuántos días volverán a coincidir en clase de Educación Física?]
#v(1fr)
#subquestion()[¿Cuántas veces coincidirán en los próximos 60 días?] 
#v(1fr)

#question(points: 2)[Un profesor quiere repartir 48 caramelos y 60 galletas entre sus alumnos, formando bolsas todas iguales y sin que sobre nada.]

#clarification()[Realiza el ejercicio utilizando el mínimo común múltiplo o el máximo común divisor.]

#subquestion()[¿Cuál es el número máximo de bolsas que puede preparar?]
#v(1fr)
#subquestion()[¿Cuántos caramelos y cuántas galletas habrá en cada bolsa?] 
#v(1fr)