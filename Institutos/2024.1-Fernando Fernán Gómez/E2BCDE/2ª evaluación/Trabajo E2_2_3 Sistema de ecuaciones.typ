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
    number: "3º evaluación - Ejercicios sistema de ecuaciones",
    content: "Ecuaciones",
    // model: "Modelo A"
  ),
  localization: (
    grade-table-grade: [Calificación]
  ),
  language: "es",
  decimal-separator: ",",
  // show-student-data: "odd-pages",
  show-student-data: false,
  show-student-number: 1,
  show-grade-table: false,
  question-points-position: right,
  // clarifications:
  //   ([La prueba se tendrá que hacer en grupos de dos personas, excepcionalmente de tres con permiso expreso del profesor.], 
  //    [Durante la realización de la prueba, se evaluará la capacidad de trabajo en equipo de los alumnos, la colaboración entre ellos y la corrección del trabajo.],
  //    [En caso de que el trabajo realizado por los alumnos, no sea equitativo, se podrán poner calificaciones diferentes a los miembros del equipo.]),
  //    question-text-parameters:(size: 14pt, spacing:200%)
)

// #set text(12pt)
// #set math.cases(reverse: true)

#question[María y Juan deciden viajar a un pueblo. María va en coche y Juan en moto. Observan los siguientes datos:

El coche de María viaja a 20 km/h más rápido que la moto de Juan.
El coche tarda 3 horas en recorrer 240 km, mientras que la moto tarda 4 horas en hacer el mismo recorrido.


Preguntas:

¿A qué velocidad viaja la moto?

¿A qué velocidad viaja el coche?

¿Cambia algo el resultado si la distancia al pueblo es distinta?
]
