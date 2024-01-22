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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación 1º Examen",
    content: "Radicales y fracciones",
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
    [No está permitido utilizar calculadora, móvil, ni ningún otro tipo de aparato electrónico. La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
    [No está permitido compartir material, durante la prueba.],
  )
)

// #question(point: 2)[Calcula las siguientes raíces:
//   #subquestion[$sqrt(49)=$]
//   #v(1fr)

//   #subquestion[$sqrt(169)=$]
//   #v(1fr)

//   #subquestion[$sqrt(15^2)=$]
//   #v(1fr)

//   #subquestion[$sqrt(2500)=$]
//   #v(1fr)
// ]
// #pagebreak(weak: true)

// #question(point: 2)[Realiza las siguientes operaciones con fracciones y simpliﬁca el resultado lo máximo posible: \ 
//   #text(size:8pt)[$(*)$  Recuerda que con las fracciones no se pueden utilizar decimales:]

//   #subquestion[$11+2/3+3/4=$]
//   #v(1fr)

//   #subquestion[$(3+1/5):2 + ((-3))/4=$]
//   #v(1fr)

//   #subquestion[$(5/2+3/4) - (2/10 + 5)=$]
//   #v(1fr)

//   #subquestion[$(5/2 dot 4/5) + 3/7=$]
//   #v(1fr)
// ]
// #pagebreak(weak: true)

// #question(point: 2)[Resuelve las operaciones convinadas:
//   #subquestion[$5+3 dot (-4 +2)=43$]
//   #v(1fr)

//   #subquestion[$(-3)^3+ 3 dot (10-13)=$]
//   #v(1fr)

//   #subquestion[$5 + (-4)^2 dot sqrt(25)=$]
//   #v(1fr)

//   #subquestion[$sqrt(9) + sqrt(25) - sqrt(36) + sqrt(81)=$]
//   #v(1fr)
// ]
// #pagebreak()

#question(point: 2)[Calcula las siguientes operaciones y simplifica si se puede:
  #subquestion[$display(5/12 dot 9/15=)$]
  #v(1fr)

  #subquestion[$display(10 dot 9/15=)$]
  #v(1fr)

  #subquestion[$display(5/12 : 4/15=)$]
  #v(1fr)

  #subquestion[$display(2 : 5/3 =)$]
  #v(1fr)
]
#pagebreak()

#question(point: 2)[Calcula las siguientes operaciones y simplifica si se puede:
  #subquestion[$display(4/11+5/11-2/11=)$]
  #v(1fr)

  #subquestion[$display(3+2/5=)$]
  #v(1fr)

  #subquestion[$display(7/12+2/9=)$]
  #v(1fr)

  #subquestion[$display(1-9/13=)$]
  #v(1fr)
]
#pagebreak()

#question(point: 2)[Calcula las siguientes operaciones y simplifica si se puede:
  #subquestion[$display(3/5 - (1-7/10) = )$]
  #v(1fr)

  #subquestion[$display((3-5/3) dot (2-7/5) =)$]
  #v(1fr)
]
#pagebreak()

#question(point: 2)[Ordena de mayor a menor las siguientes fracciones:
      \ \
      #align(center, [$ 2/3 ; 3/8 ; 4/6 ; 1/2 $])
      #v(1fr)
]    

#question(point: 2)[En un jardín tenemos 20 rosales rojos, 10 blancos y 15 amarillos.
  #subquestion[¿Qué fracción representa cada color?]
  #v(1fr)

  #subquestion[Si hemos podados los rosales rojos, ¿qué fracción nos queda por podar?]
  #v(1fr)
]
