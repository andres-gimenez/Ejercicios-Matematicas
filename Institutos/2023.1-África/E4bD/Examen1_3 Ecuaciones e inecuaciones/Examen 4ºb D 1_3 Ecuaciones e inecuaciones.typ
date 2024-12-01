#import "@preview/cetz:0.1.2"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES África",
    logo: image("./logo-ies_africa.jpeg"),
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas B",
    number: "1º Evaluación 3º Examen",
    content: "Ecuaciones e inecuaciones",
    model: none
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "Diciembre 21, 2023",
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

#g-question(point: 2)[Resuelve la siguiente ecuación exponencial y comprueba el resultado:
  \
  \
  $display(3^(2x-2)+3^(x-1) = 12)$
  // \
  // \
  // $display(3^(2x+2) + 3^(x+2) = 4)$
]
#v(1fr)
#pagebreak()

#g-question(point: 2)[Determina que intervalo es solución de la siguiente inecuación:
  \
  \
  // $display(3x^2 - 6x < 0)$
  $display(x^2 + x - 6 <= 0)$
]
#v(1fr)

#g-question(point: 2)[Resuelve la siguiente versión logarítmica:
  \
  \
  // $display(3x^2 - 6x < 0)$
  // $display(x^2 + x - 6 <= 0)$
  $display(log_7(3x-2) - log_7(x+1) = log_7(2))$
]
#v(1fr)

#pagebreak()

#g-question(point: 2)[Indica la región del plano que cumple  la inecuación:
  \
  \
  $display(2 (x-1) >= 3 (y+1))$
  
  #v(1fr)

  #align(center, 
    cetz.canvas(
      length: 0.5cm,
      {
        import cetz.draw: *

        set-style(
          mark: (fill: black),
          stroke: (thickness: 0.4pt, cap: "round"),
          content: (padding: 1pt)
        )

        grid((-10, -10), (10, 10), step: 1, stroke: gray + 0.6pt)

        line((-10.5, 0), (10.5, 0), mark: (end: ">"))
        content((), $ x $, anchor: "left")
        line((0, -10.5), (0, 10.5), mark: (end: ">"))
        content((), $ y $, anchor: "bottom")
      }
    )
  )

]
#v(1fr)

// #g-question(point: 3)[Simplifica estas expresiones:]

// #g-question(point: 3)[Simplifica estas expresiones:]
//   // Pones más facil.
//   #subquestion[
//     $display(5x dot [(2x^2 + x - 1) - 3 dot (x^2 -x +3)])$
//   ]
//   #v(1fr)

//   #subquestion[
//     $display((2x+3) dot (3x - 5) - (x^3 + 2x - 7))$
//   ]
//   #v(1fr)

// #pagebreak()

//   #subquestion[
//     $display(2/(x+1)+ x/(x-1) = )$
//   ]
//   #v(1fr)

// #pagebreak()

// #g-question[El número de personas que acceden a un comercio en cada hora puede estimarse a partir de la expresión $P(x)=-x^2+8x$ 
// y el número de personas que sale, la expresión $Q(x)=-0,25x^2+2x$, donde $x$ representa el número de horas desde su apertura.]

//   #subquestion(point: 1)[Indica cuantas personas entran en el comercio durante la segunda hora y cuántas salen.]
//   #v(1fr)

//   #subquestion(point: 2)[Indica la expresión que calcula el número de personas que hay en el interior del comercio a cualquier hora.]
//   #v(2fr)

//   #subquestion(point: 1)[¿Cuántas personas hay en el comercio en la segunda hora? ¿y en la cuarta?]
//   #v(1fr)

// #pagebreak()



// #g-question[En un restaurante, se divide la jornada laboral en turnos de comida y cena, realizando cuatro horas en cada turno. 
// Los cuatro camareros se reparten la jornada laboral de la siguiente manera:
// Marta trabaja de lunes a viernes en el turno de comidas y cenas;
// Juan trabaja los viernes solo en el turno de cena y los sábados y domingos realiza los turnos de comida y cena;
// Ignacio trabaja de jueves a domingo, realizando solo el turno de comidas
// y Consuelo trabaja en el turno de noche, los viernes, sábados y domingos.]
  
//   #subquestion(point: 1)[Calcula las horas semanales que realiza cada camarero.]
//   #v(1fr)

//   #subquestion(point: 2)[¿Si durante la semana han recaudado 1.300€ de bote, cuánto le corresponde a cada camarero si se reparte en función de las horas trabajadas durante la semana?]
//   #v(1fr)
// #g-question[Discute y resuleve por el método de Gauß, indicando cuantas soluciones tiene el siguiente sistema:]

//     #subquestion(point: 2)[
//       $display(
//         cases(
//          &x &+ 2&y &+ &z &= 1,
//          &x &-  &y &+ &z &= 3,
//         5&x &- 3&y &+ &z &= 5
//         )
//       )$
//     ]

// #pagebreak()

// #g-question(point: 2)[Discute y resuleve por el método de Gauß, indicando cuantas soluciones tiene el siguiente sistema:
// \ \
//     $display(
//       cases(
//          &x &+ 2&y &+ &z &= 1,
//          &x &-  &y &+ &z &= 3,
//         5&x &- 3&y &+ &z &= 5
//         )
//       )$
// ]

// #pagebreak()

// #g-question(point: 2)[Resuelve las siguiente ecuacion racional:
//   \
//   \
//   $display((x-1)/x-(x+1)/(x-5)=(x+2)/(x^2-5x))$
//   \
//   \

//   $display(1/(x+3)-3/(2x-1)=4)$

//   \
//   \

//   $display((x-2)/(x+3)+1/(x-1)= 2/x)$ 

//   \
//   \

//   $display(1/(2x+1)-3/(3x-2)= 2/(2x+1))$
// ]

// #pagebreak()

// //https://www.matematicasonline.es/BachilleratoCCNN/Primero/ejercicios/Ecuaciones_con_radicales_resueltas.pdf
// #g-question(point: 2)[Resuelve las siguiente ecuacion con radicales:
//   \
//   \
//   $display(x-sqrt(x-1)=1)$
//   \
//   \
//   $display(2x=sqrt(-2x+5)-1)$
// ]

// #pagebreak()

// // https://www.matesfacil.com/ESO/exponenciales/ejercicios-resueltos-ecuaciones-exponenciales.html
// // https://www.superprof.es/apuntes/escolar/matematicas/algebra/log/ejercicios-de-ecuaciones-exponenciales.html
// #g-question(point: 2)[Resuelve la siguiente ecuación polinómica, indicando todas sus soluciones:
//   \
//   \
//   $display((x^3-7x-6) dot (x-4) = 0)$

//   \
//   \

//   $display((x^3-7x+6) dot (x-5) = 0)$

//   \
//   \

//   $display(4^(x+1) + 2^(x+3) = 320)$

// ]
// #v(1fr)

// #g-question(point: 2)[Resuelve la siguien ecuación exponencial y comprueba el resultado:
//   \
//   \
//   $display(3^(2x-2)+3^(x-1) = 12)$
//   \
//   \
//   $display(3^(2x+2) + 3^(x+2) = 4)$
// ]
// #v(1fr)

// #pagebreak()

// #g-question(point: 2)[Resuelve la siguien ecuación con logaritmos:
//   \
//   \
//   $display(log(3x+13) = 2)$

//   \
//   \

//   $display(log(7x-3) = -1)$
// ]

// #v(1fr)

// #g-question(point: 2)[Resuelve la siguien ecuación con valores absolutos y comprueba el resultado:
//   \
//   \
//   $display(|x^2-x| + 3 = 3x)$

#g-question(point: 2)[Resuelve la siguiente inecuación indicando que intervalo es solución:
  \
  \
  // Sol:x<=5
  $display((5x) /10 - (5x - 6)/12 >= (x - 4)/6 + (2x - 4) /8)$
]
#v(1fr)

// #pagebreak(weak: true)