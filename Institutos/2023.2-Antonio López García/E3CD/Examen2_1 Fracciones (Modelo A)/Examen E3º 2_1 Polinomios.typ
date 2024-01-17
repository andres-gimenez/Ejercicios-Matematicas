#import "./exam.typ": exam, question, subquestion, explanation

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
    content: "Radicales y polinomios",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: true,
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
 [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
    [Esta prueba ha de realizarse con boligrafo no borrable azul o negro.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
    La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector implicara la anulará de la prueba y por consiguiente será calificada con un cero.],
    [No está permitido compartir material, durante la prueba.],
  )
)

#question(point: 2)[Opera y simplifica lo máximo posible las siguientes operaciones con radicales: \
    #explanation[
    Se ha de indicar la descomposición de cada valor en sus factores primos antes de extraerlos del radical.
    El no mostrar los factores primos o el utilizar número decimales anulará la respuesta.
  ]

  #subquestion[$sqrt(12) + sqrt(27)=$]
  #v(1fr)
 
  #subquestion[$sqrt(28) - sqrt(112) + sqrt(175) - sqrt(63) =$]
  #v(1fr)

  #subquestion[$5 sqrt(2) - 2 sqrt(18) + sqrt(8) -2 sqrt(50)=$]
  #v(1fr)

  #subquestion[$-1/5 root(3, 40) + 2/3 root(3, 135) - 3 root(3, 5)=$]
  #v(1fr)
]

#question(point: 2)[Opera y simplifica lo máximo posible las siguientes operaciones con radicales \
  #explanation[
    Se ha de indicar la descomposición de cada valor en sus factores primos antes de extraerlos del radical.
    El no mostrar los factores primos o el utilizar número decimales anulará la respuesta.
  ]
  
  #subquestion[$sqrt(45) + sqrt(20)=$]
  #v(1fr)

  #subquestion[$sqrt(28) - sqrt(63) - sqrt(175) + sqrt(112)=$]
  #v(1fr)

  #subquestion[$5 sqrt(20) - 2 sqrt(45) + 2 sqrt(245)=$]
  #v(1fr)

  #subquestion[$3/2 root(3, 32) + 4/5 root(3, 500) - 5/3 root(3, 108)=$]
  #v(1fr)
]

#pagebreak()

#question(point: 2)[Si $P(x) = x^4+2x^3-x^2+x+2$, evalúa:
  #subquestion[$P(-1)=$]
  #v(1fr)

  #subquestion[$P(0)=$]
  #v(1fr)

  #subquestion[$P(1/2)=$]
  #v(1fr)
]

#question(point: 2)[Si $P(x) = x^4+x^3-2x^2+x-2$, evalúa:
  #subquestion[$P(-1)=$]
  #v(1fr)

  #subquestion[$P(0)=$]
  #v(1fr)

  #subquestion[$P(1/2)=$]
  #v(1fr)
]

#question(point: 2)[Sea $P(x) = x^5+2x^3-3x^2+2$, $Q(x)=2x^4-2x^2+1$ $R(x) = x^2-1$. Calcula:
  #subquestion[$P(x) - Q(x) =$]
  #v(1fr)

  #subquestion[$Q(x) dot R(x)=$]
  #v(1fr)
]

#question(point: 2)[Sea $P(x) = x^5+3x^3-2x^2+2$, $Q(x)=2x^4-3x^2-1$ $R(x) = x^2+1$. Calcula:
  #subquestion[$P(x) - Q(x) =$]
  #v(1fr)

  #subquestion[$Q(x) dot R(x)=$]
  #v(1fr)
]
#pagebreak()

#question(point: 2)[Sea $P(x)=x^4+x^2+1$ y $Q(x) = x^2-1$ Realiza la división $P(x):Q(x)$ y expresa el resultado de la forma $P(x) = Q(X) dot C(x) + R(x)$. 
]
#v(1fr)

#question(point: 2)[Sea $P(x)=x^4-x^2+1$ y $Q(x) = x^2+1$ Realiza la división $P(x):Q(x)$ y expresa el resultado de la forma $P(x) = Q(X) dot C(x) + R(x)$. 
]
#v(1fr)

#question(point: 2)[Sea $P(x) = x^5-x^3+3x-1$ y $Q(x)= x+2$ Realiza la división $P(x):Q(x)$ por el método de Rouffini y expresa el resultado de la forma $P(x) = Q(X) dot C(x) + R(x)$.]
#v(1fr)

#question(point: 2)[Sea $P(x) = x^5+x^3-3x+1$ y $Q(x)= x+2$ Realiza la división $P(x):Q(x)$ por el método de Rouffini y expresa el resultado de la forma $P(x) = Q(X) dot C(x) + R(x)$.]
#v(1fr)

#question(point: 2)[Factoriza las siguientes expresiones, sacando factor común o utilizando las desigualdades notables
  #subquestion[$x^3+3x = $]
  #v(1fr)

  #subquestion[$3x^4+9x^2 = $]
  #v(1fr)

  #subquestion[$x^2+2x+1= $]
  #v(1fr)

  #subquestion[$x^2 - 4=$]
  #v(1fr)
]

#question(point: 2)[Factoriza las siguientes expresiones, sacando factor común o utilizando las desigualdades notables
  #subquestion[$x^3+5x = $]
  #v(1fr)

  #subquestion[$5x^4+25x^2 = $]
  #v(1fr)

  #subquestion[$x^2-2x+1= $]
  #v(1fr)

  #subquestion[$x^2 - 9=$]
  #v(1fr)
]
