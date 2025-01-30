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
    number: "2ª evaluación - 2º examen",
    content: "Ecuaciones de 1º y 2º grado",
    model: "Modelo A"
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
  )
  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#set math.cases(reverse: true)
 


#question(points:3)[Siendo los polinomios: 

  $P[x] = 4x^4+2x^3-x^2+2x-5$

  $Q[x] = 3x^4-2x^3+8x^2-6x+3$

  $R[x] = 2x^2+5x+1$

  Calcula: $ P[x] + Q[x] dot R[x] = $
]
#pagebreak()

#question(points:1)[Resuelve las siguientes ecuaciones:]
  #subquestion()[$x-6=3x-10$] //(sol: x=)
  #v(1fr)
  #subquestion()[$x+6=9-3x + 2$] //(sol: x=)
  #v(1fr)
  #subquestion()[$x+9=3 - 1/2 x$] //(sol: x=)
  #v(1fr)

#question(points:2)[Resuelve las siguientes ecuaciones:]
  #v(0.2cm)
  $display((3x)/2 + 1/3 = 3/5 - (2- 2x)/3)$
  #v(2fr)
  // #subquestion()[$display(1/5 x + 2/7 = (2x - 1)/2) + 2/3$] //(sol: x=)
  // #v(1fr)

#pagebreak()
#question(points:2)[Halla la solución de la  ecuacion]
  // #subquestion()[$display((3x + 5)/7 = (2x - 3) / 4)$]
  // #subquestion()[$display((2x+4)/5 = 5 - (3x+5)/3)$]

  #v(0.2cm)
  $display((x+2)/5 + (2x-3)/4 = (3x+5)/3)$
  #v(1fr)


#question(points:2)[Resuelve la siguiente ecuación de 2º grado:]
  #v(0.2cm)
  $2x^2-14x+20 = 0$
#v(1fr)

  // #subquestion()[$display(x^2-5x+6 = 0)$] //(sol: x=)
  // #subquestion()[$display(2x^2+3x-2 = 0)$] //(sol: x=)
  // #subquestion()[$display(x^2+4x+4 = 0)$] //(sol: x=)
// #question()[Efectúa las siguientes operaciones con notación científica:]