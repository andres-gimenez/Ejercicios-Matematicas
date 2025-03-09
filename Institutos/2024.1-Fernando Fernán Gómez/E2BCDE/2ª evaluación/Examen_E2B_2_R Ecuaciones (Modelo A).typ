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
    number: "2ª evaluación - Examen recuperación",
    content: "Polinomios y ecuaciones de 1º y 2º grado",
    model: "Modelo ◔"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-points-position: right,
  clarifications: (
    [Se permite el uso de calculadora.],
    [No está permitido el uso de teléfono móvil, ni la calculadora de este.],
    [No está permitido compartir calculadora con un compañero.]
  ),
  question-text-parameters: (size: 14pt, spacing:150%)
  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#set math.cases(reverse: true)
 
#question(points:2)[Siendo los polinomios: 

  $P[x] = 2x^2 + 3x - 5$ #h(2cm)  $Q[x] = 2x^3-2x^2-7x+3$

  Calcula: $ 5 dot P[x] - Q[x] = $
  #v(10fr)
]

#pagebreak()
#question(points:2)[Desarrolla las siguientes identidades notables:]
  #subquestion()[$(3x + 2)^2 = $] //(sol: x=)
  #v(1fr)

  #subquestion()[$(y^2-4)^2 = $] //(sol: x=)
  #v(1fr)

  #subquestion()[$(x-y^3) dot (x + y^3) = $] //(sol: x=)
  #v(1fr)

  #subquestion()[$(5x^2-3y^7)^2 = $] //(sol: x=)
  #v(1fr)

#question(points:2)[Resuelve las siguientes ecuación de 2º grado:]

  #subquestion()[$display(2x^2-11x+5 = 0)$]
  #v(3fr)

// #subquestion()[$display(x^2+3x+2 = 0)$]
// #v(1fr)

#pagebreak()

#question(points:2)[Resuelve las siguientes ecuaciones de 1º grado paso a paso:]

#subquestion()[$display(4 dot (x - 2) - 3x = 2 dot (x - 5) + 6)$]
#v(1fr)

#subquestion()[$display((3x-2)/4 + (2x)/3 = (5x+4)/6)$]
#v(1fr)

#pagebreak()

// #question(points:0.5)[Resuelve la siguiente operación con la calculadora:]
// #v(0.2cm)
// $display("1,6" + 3 dot ("5,6" - "4,8") = )$
// #v(0.2cm)

// #pagebreak()

#g-question(point:2)[Resuelve los siguientes sistemas de ecuaciones, por métodos distintos:]
    #g-subquestion[
          $display(cases( delim: "{",
                2&x &+ &3 &y &= &12 ,
                &x  &+ &  &y &= &-4
            ))$
        #v(1fr)
    ]
        
    #g-subquestion[
          $display(cases( delim: "{",
              &5x &- 2&y &= &5,
              &3x &+ 4&y &= &29
            ))$
        #v(1fr)
    ]