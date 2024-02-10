#import "@preview/cetz:0.2.0"
#import "./g-exam.typ": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Carmen Martín Gaite",
    logo: "logo-ies_carmen.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación Examen parcial",
    content: "Ecuaciones y sistemas de ecuaciones",
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
    [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
    La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
    [No está permitido compartir material, durante la prueba.],
  )
)

#g-question(point: 2)[Resuelve la ecuación:]
#pagebreak()
#set math.cases(reverse: true)

#g-question(point: 2)[Resuelve el siguiente sistema de ecuaciones por el método gráﬁco: \ \
$cases( delim: "|",
        // reverse: true,
        // grap: 2em,
        4x &+ &3y &= &2,
        5x &+ &2y &= &7
        // display(sqrt(1-4x)-5) &"si" &x <= 0,
        // display(5/x- 2) &"si" &x > 0,
      )
    $
]
#v(1fr)
#align(center, 
      cetz.canvas(length: 0.7cm, {
        cetz.plot.plot(
          // axes: ("x", "y"),
          size: (12, 11),
          axis-style: "school-book",
          fill: "o" ,
          fill-below: true,
          // horizontal:false,
          x-domain: (-10, 10),
          y-domain: (-10, 10),
          x-max: 10,
          x-min:-10,
          y-max: 10,
          y-min:-10,
          x-grid: "both",
          y-grid: "both",
          // x-tick-step: none,
          x-tick-step: 2,
          // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
          y-tick-step: 2,
          x-minor-tick-step: 1,
          y-minor-tick-step: 1,
          // y-minor-tick-color:
            {
              cetz.plot.add(((0,0),), mark-size: 0,)
              
              // cetz.plot.add(
              //   style: style,
              //   domain: (0.1, 10), 
              //   // mark: "+",
              //   x=>5/x - 5
              // )
              // cetz.plot.add(
              //   style: style,
              //   domain: (-10, 0.1), 
              //   // mark: "+",
              //   x=>calc.sqrt(1-4*x)-4
              // )
            }
          )
        }
      )
    )


// #g-question(point: 2)[Opera y simplifica lo máximo posible las siguientes operaciones con radicales: \
//     #g-explanation[
//     Se ha de indicar la descomposición de cada valor en sus factores primos antes de extraerlos del radical.
//     El no mostrar los factores primos o el utilizar número decimales anulará la respuesta.
//   ]

//   // #g-subquestion[$display(sqrt(12) + sqrt(27) = )$]
//   // #v(1fr)
 
//   // #g-subquestion[$display(sqrt(28) - sqrt(112) + sqrt(175) - sqrt(63) = ) $]
//   // #v(1fr)

//   #g-subquestion[$display(5 sqrt(2) - 2 sqrt(18) + sqrt(8) -2 sqrt(50) = )$]
//   #v(1fr)

//   #g-subquestion[$display(-1/5 root(3, 40) + 2/3 root(3, 135) - 3 root(3, 5) = )$]
//   #v(1fr)
// ]
// #pagebreak()

// #g-question[Si $P(x) = x^4+2x^3-x^2+x+2$, evalúa:
//   #g-subquestion(point: 0.5)[$P(-1)=$]
//   #v(1fr)

//   #g-subquestion(point: 0.5)[$P(0)=$]
//   #v(1fr)

//   #g-subquestion(point: 0.5)[$P(1/2)=$]
//   #v(1fr)
// ]

// // #g-question(point: 2)[Sea $P(x) = x^5+2x^3-3x^2+2$, $Q(x)=2x^4-2x^2+1$ $R(x) = x^2-1$. Calcula:
// //   #g-subquestion[$P(x) - Q(x) =$]
// //   #v(6fr)

// //   #g-subquestion[$Q(x) dot R(x)=$]
// //   #v(6fr)
// // ]

// #g-question(point: 2)[Sea $P(x) = x^5-x^3+3x-1$ y $Q(x)= x+2$ Realiza la división $P(x):Q(x)$ por el método de Rouffini y expresa el resultado de la forma $P(x) = Q(X) dot C(x) + R(x)$.]
// #v(8fr)
// #pagebreak()

// #g-question(point: 2)[Sea $P(x)=x^4+x^2+1$ y $Q(x) = x^2-1$ Realiza la división $P(x):Q(x)$ y expresa el resultado de la forma $P(x) = Q(X) dot C(x) + R(x)$. 
// ]
// #v(1fr)
// #pagebreak()

// #g-question(point: 1)[Factoriza las siguientes expresiones, sacando factor común o utilizando las desigualdades notables:
//   #g-subquestion[$display(x^3+3x = )$]
//   #v(1fr)

//   #g-subquestion[$display(3x^4 y +9x^2 y = )$]
//   #v(1fr)

//   // #g-subquestion[$display(x^2+2x+1 = )$]
//   // #v(1fr)

//   // #g-subquestion[$display(x^2 - 4 = )$]
//   // #v(1fr)
// ]

// #g-question[Realiza las siguientes operaciones utilizando las igualdades notables:
//   #g-subquestion(point:0.5)[$display((x^2 + 2)^2 =)$]
//   #v(1fr)

//   #g-subquestion(point:0.5)[$display((x^2 - 2y)^2 =)$]
//   #v(1fr)

//   #g-subquestion(point:0.5)[$display((x + 3y^3) (x - 3y^2) =)$]
//   #v(1fr)

//   // #g-subquestion[$display((x + 2) (x + 2) =)$]
//   // #v(1fr)
// ]