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
     [En caso de que el trabajo realizado por los alumnos, no sea equitativo, se podrán poner calificaciones diferentes a los miembros del equipo.]),
    //  question-text-parameters:(size: 14pt, spacing:200%)
)

#set text(12pt)
#set math.cases(reverse: true)

#question[Resuelve las siguientes ecuaciones de 1º grado]

#subquestion()[$2x - 5 = 3x + 7$]
#v(1fr)

#subquestion()[$5x - 9 = -3x - 18$]
#v(1fr)

#subquestion()[$5 - 5y = 7- 6 y$]
#v(1fr)

#pagebreak()
#question[Resuelve las siguientes ecuaciones]

#subquestion()[$display((3x + 3)/5 = (5 - 2x)/3)$]
#v(2fr)

#pagebreak()
#question()[Resuelve los siguientes sistemas de ecuaciones]
#subquestion[
    Por el método de sustitución: \ \
      $display(cases( delim: "{",
            2&x &- 3&y  &= -&4 ,
            3&x &+ 2&y &= &7
        ))$
    #v(1fr)
]
 
#subquestion[
  Por el método de igualación. \ \
      $display(cases( delim: "{",
            &2x &+  &y &= &10 ,
          -&3x &- 2&y &= -&16
        ))$
    #v(1fr)
]

#pagebreak()

#question[Escribe una ecuación en la que se calcule la nota de la evaluación en función de las notas obtenidas en los exámenes, 
como la nota del global no la conocimos todavía pon una $x$. Iguala la a la nota deseada y calcula que nota necesitamos en el global para obtenerla.]
#v(1fr)