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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º evaluación - Trabajo en equipo",
    content: "Fracciones y porcentajes",
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
     [En caso de que el trabajo realizado por los alumnos, no sea equitativo, se podrán poner calificaciones diferentes a los miembros del equipo.]),
    // question-text-parameters: (size: 16pt, spacing:200%)
)
// question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
#set text(16pt)

#set math.cases(reverse: true)

#question()[Resuelve las siguientes operaciones con fracciones:]

$(-2/5 - 3/10) dot (7/12 + 3/2) dot 3 = $
#v(1fr)

#question()[Tenemos 350 caramelos de fresa de los le damos 3/5 a Rosa y 1/7 a Carlos. ¿Qué proporción de caramelos nos quedan? ¿Cuántos caramelos le dimos a Rosa?]
#v(1fr)
#pagebreak()

#question()[Un comerciante compra 1000 bolígrafos a 0,25 € cada uno. Si los vende un 20% más caro] 
#subquestion[¿Cuál es su beneficio por cada bolígrafo?]
#subquestion[Si tiene que cobrar un 21% de IVA, a cuanto tiene que vender cada bolígrafo?]
#subquestion[Si vende el 90% de los bolígrafos que compro, ¿cuánto dinero ha ganado?]
#subquestion[Tras vender el 90% de los bolígrafos, ¿qué beneficio le queda?]
#subquestion[¿Qué porcentaje a obtenido de beneficio?]





