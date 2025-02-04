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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º evaluación - Trabajo en equipo",
    content: "Operaciones combinadas",
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

#question()[Resuelve las siguientes operaciones con fracciones:]
#subquestion(points:2)[$(-7/6 + 4/9) dot (5/12 - 1/2) dot 4$ =]
#v(1fr)

#subquestion(points:2)[$(-2/7 - 4/14) dot (15/14 - 8/21) + 1/35 $ =]
#v(1fr)

#pagebreak()

#question()[Un coche recorre 240 kilómetros con 15 litros de gasolina. ¿Cuántos kilómetros recorrerá con 50 litros de gasolina, manteniendo la misma eficiencia?]
#v(1fr)

#question()[Si 5 trabajadores construyen una casa en 10 días, ¿cuántos días necesitarían 10 trabajadores para construir la misma casa, trabajando al mismo ritmo?]
#v(1fr)

// #pagebreak()

// #question()[Un comerciante compra 1000 bolígrafos a 0,25 € cada uno. Si los vende a 0,35 € cada uno, ¿cuál será su beneficio?]

// #subquestion(points:2)[¿Cuál es el precio total de compra de los bolígrafos?]
// #v(1fr)

// #subquestion(points:2)[¿Cuál es el precio total de venta de los bolígrafos?]

// #subquestion(points:2)[¿Cuál es el beneficio total que obtiene el comerciante?]

// #pagebreak()




