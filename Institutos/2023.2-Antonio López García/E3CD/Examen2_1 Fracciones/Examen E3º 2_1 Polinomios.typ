#import "./exam.typ": exam, question, subquestion

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Antonio López García",
    logo: "logo-ies_antonio.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación 1º Examen",
    content: "Polinomios",
    model: "Modelo A"
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
    [Está permitido utilizar la calculadora.],
    [No está permitido compartir material durante el examen.],
  )
)

#question(point: 2)[
  Resuelve el siguiente sistema de inecuaciones:
  \
  \
    #align(center,
      $display(
        cases(
          4(x+1) - 2 &<= 0,
          2x+4 &>= 6
        )
      )$
    )
]
#v(1fr)

#question(point: 2)[
  Resuelve el siguiente sistema de inecuaciones:
  \
  \
    #align(center,
      $display(
        cases(
          2x-y+2 &> 0,
          x-3y &<= 0,
          x &<= 3,
          y <= 3
        )
      )$
   )
]
#v(1fr)
#pagebreak()

#question(point: 2)[
  A partir de la gráfica de la siguientes funciones, indica cuál es su dominio de definición y su recorrido:
]
#v(1fr)

#question(point:2)[
  Halla el dominio de definición de la s funciones:
  + $y = (2+x)/(x^2+1)$ #v(1fr)
  + $y = sqrt(3x-1)$ #v(1fr)
  + $y = 1/(x^2+1)$ #v(1fr)
  + $y = (log(x+1))/(x^2-4)$ #v(1fr)
]
#pagebreak()

#question(point:2)[
  Una función lineal esta definida en el intervalo $[-3,5)$. 
  Escribe la expresión analitítica de dicha función lineal y represéntala, a partir de los siguientes datos:
  $f(-2) = 3$ y $f(3) = -4$.
]
#v(1fr)

#question(point:2)[
  Halla la función exponencial tipo $y=k dot a^x$, que pasa por los puntos $(1, 10)$ y $(-2,50)$. Representala aproximadamente.
]
#v(1fr)
#pagebreak()

#question(point:2)[
  Representa la siguiente función: \ \
  $f(x) = display(
        cases(
          2/x &"si" &x < 0,
          sqrt(x+1)-2 &"si" &x >= 0,
        )
      )$
]
#v(1fr)

#question(point:2)[
  Obtén la expresión analítica de la siguiente función:
]
#v(1fr)