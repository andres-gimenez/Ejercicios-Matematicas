#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion

#show: g-exam.with(
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
    academic-level: "1º Bachillerato",
    academic-subject: "Matemáticas aplicadas a las ciencias sociales",
    number: "1º Evaluación 3º Examen",
    content: "Ecuaciones y sistemas de ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
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

#g-question(point: 2)[Discute y resuelve por el método de Gauss, indicando cuantas soluciones tiene el siguiente sistema:
\
\
    //Sol: x=1, y=2, z=-1
    $display(
      cases(
        2&x &-  &y &+ 3&z &= -&3,
        2&x &- 2&y &+  &z &= -&3,
        2&x &- 3&y &+ 5&z &= -&9
      )
    )$
]
#v(1fr)
#pagebreak()

#g-question(point: 2)[Discute y resuelve por el método de Gauss, indicando cuantas soluciones tiene el siguiente sistema:
\
\
    // Sol: Incompatible
    $display(
      cases(
        3&x &+  &y &+ 3&z &= &2,
         &x &- 2&y &+  &z &= -&1,
        4&x &-  &y &+ 4&z &= &4
        )
      )$
]
#v(1fr)
#pagebreak()

#g-question(point: 2)[Resuelve la siguiente ecuación racional:
  \
  \
  // $display((x-1)/x-(x+1)/(x-5)=(x+2)/(x^2-5x))$
  // Sol x=3 y x=-14/9
  $display((x+2)/(x+1)-(x+1)/(x+2)=9/20)$

  // \
  // \

  // $display((x-2)/(x+3)+1/(x-1)= 2/x)$ 

  // \
  // \

  // $display(1/(2x+1)-3/(3x-2)= 2/(2x+1))$
]
#v(2fr)

// https://www.matesfacil.com/ESO/exponenciales/ejercicios-resueltos-ecuaciones-exponenciales.html
// https://www.superprof.es/apuntes/escolar/matematicas/algebra/log/ejercicios-de-ecuaciones-exponenciales.html
#g-question(point: 2)[Resuelve la siguiente ecuación polinómica, indicando todas sus soluciones:]
  \
  \
  $display((x^3-4x) dot (x-7)) = 0$
  // $display((x^3-7x-6) dot (x-4) = 0)$

//   \
//   \

//   $display((x^3-7x+6) dot (x-5) = 0)$

//   \
//   \

//   $display(4^(x+1) + 2^(x+3) = 320)$

// ]
// #v(1fr)

// #g-question(point: 2)[Resuelve la siguiente ecuación exponencial y comprueba el resultado:
//   \
//   \
//   $display(3^(2x-2)+3^(x-1) = 12)$
//   \
//   \
//   $display(3^(2x+2) + 3^(x+2) = 4)$
// ]
#v(1fr)
#pagebreak()

//https://www.matematicasonline.es/BachilleratoCCNN/Primero/ejercicios/Ecuaciones_con_radicales_resueltas.pdf
#g-question(point: 2)[Resuelve la siguiente ecuación con radicales y comprueba el resultado: \
  \
  \
  // Sol x = 2
  $display(sqrt(3x+19)=x+3)$
  // \
  // \
  // $display(x-sqrt(x-1)=1)$
  // \
  // \
  // $display(2x=sqrt(-2x+5)-1)$
]
#v(1fr)


// #pagebreak()

// #g-question(point: 2)[Resuelve la siguiente ecuación con logaritmos:
//   \
//   \
//   $display(log(3x+13) = 2)$

//   \
//   \

//   $display(log(7x-3) = -1)$
// ]

// #v(1fr)

// #g-question(point: 2)[Resuelve la siguiente ecuación con valores absolutos y comprueba el resultado:
//   \
//   \
//   $display(|x^2-x| + 3 = 3x)$

//   \
//   \

//    $display(|5x+1| = 15x -7)$
// ]
// #v(1fr)