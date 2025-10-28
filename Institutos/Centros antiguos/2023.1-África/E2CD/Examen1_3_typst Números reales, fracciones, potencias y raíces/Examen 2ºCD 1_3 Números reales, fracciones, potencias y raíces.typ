#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES África",
    logo: "logo-ies_africa.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1º Evaluación 3º Examen",
    content: "Números enteros, fracciones, potencias y raíces",
    model: none
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
    [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    // [Se podrán quitar hasta cinco décimas por falta de claridad o rigor en el desarrollo de las respuestas o por una mala presentación.],
    // [Se valorará que se indiquen las cuentas en línea, realizando las operaciones en el margen.],
    [No está permitido utilizar la calculadora ni compartir material durante el examen.],
  )
)

#g-question(point: 2)[Realiza las siguientes operaciones:]
  
  #subquestion[$display((5/2+1) dot (4/7+2/3) = )$]
  #v(1fr)

  #subquestion[$display((2 dot 5/21) + (4/7 dot 2/3) =)$]
  #v(1fr)

#pagebreak()

#g-question(point: 2)[Expresa como una única potencia:]

  #subquestion[$display((-5)^3 dot (-5)^4 : (-5)^2 = )$]
  #v(1fr)

  #subquestion[$display(45^7 dot 45^9 dot 45^3 =)$]
  #v(1fr)

  #subquestion[$display((3^2 dot 3^3) ^2 =)$]
  #v(1fr)

  #subquestion[$display(2^3 dot 3^3 =)$]
  #v(1fr)

#g-question(point: 2)[Calcula las siguientes raíces, factorizando en números primos:]

  #subquestion[$display(sqrt(64)) =$]
  #v(1fr)

  #subquestion[$display(sqrt(729)) =$]
  #v(1fr)

  #subquestion[$display(sqrt(900)) =$]
  #v(1fr)

  #subquestion[$display(sqrt(225)) =$]
  #v(1fr)

#pagebreak()

#g-question(point: 2)[Opera y simplifica los resultados siguientes:]

  #subquestion[$display(15/18 + (3/2-1/4)^2)$]
  #v(1fr)

  #subquestion[$display(4/3+(3/2-1/4)^2)$]
  #v(1fr)

#pagebreak()

#g-question(point: 2)[Un hospital tiene 11 plantas,
 18 habitaciones en cada una de las plantas,
 2 camas en cada una de las  habitaciones y 
 dos almohadas en cada una de las camas.
 ¿Cuántas almohadas hay en el hospital?
]
#v(1fr)

