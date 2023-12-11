#import "./exam.typ": exam, question, part

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
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
  show-studen-data: true,
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
    [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    // [Se podrán quitar hasta cinco décimas por falta de claridad o rigor en el desarrollo de las respuestas o por una mala presentación.],
    // [Se valorará que se indiquen las cuentas en línea, realizando las operaciones en el margen.],
    [No está permitido utilizar la calculadora ni compartir material durante el examen.],
  )
)

#question(point: 2)[Realiza las siguientes operaciones:]
  
  #part[$display((5/2+1) dot (4/7+2/3) = )$]
  #v(1fr)

  #part[$display((2 dot 5/21) + (4/7 dot 2/3) =)$]
  #v(1fr)

#pagebreak()

#question(point: 2)[Calcula las siguientes potencias:]

  #part[$display((-5)^2 = )$]
  #v(1fr)

  #part[$display(5^3 =)$]
  #v(1fr)

  #part[$display((3)^2 =)$]
  #v(1fr)

  #part[$display(1.000^2 =)$]
  #v(1fr)

#question(point: 2)[Calcula las siguientes raíces, factorizando en números primos:]

  #part[$display(sqrt(64)) =$]
  #v(1fr)

  #part[$display(sqrt(729)) =$]
  #v(1fr)

  #part[$display(sqrt(900)) =$]
  #v(1fr)

  #part[$display(sqrt(225)) =$]
  #v(1fr)

#pagebreak()

#question(point: 2)[Opera y simplifica los resultados siguientes:]

  #part[$display(15/18 + (3/2-1/4)^2)$]
  #v(1fr)

  #part[$display(4/3+(3/2-1/4)^2)$]
  #v(1fr)


#question(point: 2)[Problema:]
#v(1fr)
