#import "@preview/g-exam:0.4.1": *

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
    number: "2º evaluación - Trabajo en equipo",
    content: "Ecuaciones",
    // model: "Modelo A"
  ),
  localization: (
    grade-table-grade: [Calificación]
  ),
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-student-number: 2,
  show-grade-table: false,
  question-points-position: right,
  clarifications:
    ([La prueba se tendrá que hacer en grupos de dos personas, excepcionalmente de tres con permiso expreso del profesor.], 
     [Durante la realización de la prueba, se evaluará la capacidad de trabajo en equipo de los alumnos, la colaboración entre ellos y la corrección del trabajo.],
     [En caso de que el trabajo realizado por los alumnos, no sea equitativo, se podrán poner calificaciones diferentes a los miembros del equipo.])
)

#set math.cases(reverse: true)

#question[Resuelve las siguientes ecuaciones]


