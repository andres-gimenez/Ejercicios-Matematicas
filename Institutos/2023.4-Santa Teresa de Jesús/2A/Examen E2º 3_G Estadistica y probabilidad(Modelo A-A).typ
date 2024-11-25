#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.0": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo: image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "3º Evaluación - Global",
    content: "Estadística, combinatoria y probabilidad",
    model: "Modelo A-A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  question-text-parameters: (size: 15pt, spacing:200%),
  // clarifications: (
  //   [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
  //   [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
  //   La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
  //   [No está permitido compartir material, durante la prueba.],
  // )
)

#set math.cases(reverse: true)

#let style-point =  (stroke: color.black, fill: color.gray)

#g-question[Una urna contiene 8 bolas rojas, 5 amarillas y 7 verdes. Se extrae una bola al azar. Calcula la probabilidad de que:]

#g-subquestion(point: 1.5)[Sea verde]
#v(1fr)
#g-subquestion(point: 1.5)[No sea verde]
#v(1fr)

// #g-question(point: 1)[Un jugador de baloncesto durante el partido ha lanzado 16 tiros libres y ha anotado 11. Si en el último minuto, va a lanzar un tiro libre, ¿cuál es la probabilidad de que lo falle?]
// #v(2fr)

#pagebreak()
// #g-question[Los días que en una ciudad se han dado distintos factores climáticos han sido:]

// #align(center,
//   table(
//     fill: (x, y) =>
//       if(x == 0) { luma(230) },
//   columns: (4cm,auto,auto,auto,auto,auto),
//   rows:(auto, auto),
//   gutter:0pt,
//   [Clima], [Lluvia], [Soleado], [Nubes y claros], [Nublado], [Nieve],
//   [Número de días], [6], [40], [28], [17], [3]
// ))

// #g-subquestion(point:0.5)[¿Se trata de un carácter estadístico cualitativo o cuantitativo?]¿Por qué?
// #v(1fr)
// #g-subquestion(point:1.5)[Calcula, si se puede, la moda, la media y la mediana. Si no se puede, indicar el por qué.]
// #v(3fr)

#g-question[En un club deportivo juvenil admiten socios con edades entre 12 y 18 años. La distribución de las
edades es:]

#align(center,
  table(
    fill: (x, y) =>
      if(x == 0) { luma(230) },
  columns: (4cm,auto,auto,auto,auto,auto,auto,auto),
  rows:(auto, auto),
  gutter:0pt,
  [Edad], [12], [13],[14],[15],[16],[17],[18],
  [Número de socios], [6], [8], [12], [17], [15], [7], [5]
))

#g-subquestion(point:0.5)[¿Se trata de un carácter estadístico cualitativo o cuantitativo?]¿Por qué?
#v(1fr)
#g-subquestion(point:2)[Calcula, si se puede, la moda, la media y la mediana. Si no se puede, indicar el por qué.]
#v(3fr)

#pagebreak()
#g-question(point: 2)[Escribe debajo de cada gráfica a que expresión algebraica corresponde de la siguiente lista:]

#box(height: 79pt,
columns(3, gutter: 11pt)[
 - $display(y = x - 3)$ \ \
 - $display(y = 2x + 1)$ \ \

 - $display(y = -2/x)$ \ \
 - $display(y = -x + 2)$ \ \

 - $display(y = 2/x)$ \ \
 - $display(y = 1/2 x)$ \ \
])

#grid(columns: (auto, auto, auto),
    gutter:25pt, 
    {
    cetz.canvas(length:4cm, {
      cetz.plot.plot(
        // size: (10, 10),
        axis-style: "school-book",
        fill-below: false,
        x-domain: (-4, 4),
        y-domain: (-4, 4),
        x-max: 4, x-min: -4,
        y-max: 4, y-min: -4,
        x-grid: "both", y-grid: "both",
        x-tick: none, y-tick: none,
        x-tick-step: 1, y-tick-step: 1,
          {
            cetz.plot.add(domain: (-4, 4), x=>2*x+1, style: style-point)
          }
        )
      }) 
      v(1cm)
    },
    {
      cetz.canvas(length:4cm, {
        cetz.plot.plot(
          // size: (10, 10),
          axis-style: "school-book",
          fill-below: false,
          x-domain: (-4, 4),
          y-domain: (-4, 4),
          x-max: 4, x-min: -4,
          y-max: 4, y-min: -4,
          x-grid: "both", y-grid: "both",
          x-tick: none, y-tick: none,
          x-tick-step: 1, y-tick-step: 1,
            {
              cetz.plot.add(domain: (-4, 4), x=>2/x, style: style-point)
            }
          )
        }
      )
      v(1cm)
    },
    // {
    //   cetz.canvas(length:4cm, {
    //     cetz.plot.plot(
    //       // size: (10, 10),
    //       axis-style: "school-book",
    //       fill-below: false,
    //       x-domain: (-4, 4),
    //       y-domain: (-4, 4),
    //       x-max: 4, x-min: -4,
    //       y-max: 4, y-min: -4,
    //       x-grid: "both", y-grid: "both",
    //       x-tick: none, y-tick: none,
    //       x-tick-step: 1, y-tick-step: 1,
    //         {
    //           cetz.plot.add(domain: (-4, 4), x=>-2/x, style: style-point)
    //         }
    //       )
    //     }
    //   )
    //   v(1cm)
    // },
    // {
    //   cetz.canvas(length:4cm, {
    //     cetz.plot.plot(
    //       // size: (5, 5),
    //       axis-style: "school-book",
    //       fill-below: false,
    //       x-domain: (-4, 4),
    //       y-domain: (-4, 4),
    //       x-max: 4, x-min: -4,
    //       y-max: 4, y-min: -4,
    //       x-grid: "both", y-grid: "both",
    //       x-tick: none, y-tick: none,
    //       x-tick-step: 1, y-tick-step: 1,
    //         {
    //           cetz.plot.add(domain: (-4, 4), x=>x+(-3), style: style-point)
    //         }
    //       )
    //     })
    //     v(1cm)
    // },
    // {
    //   cetz.canvas(length:4cm, {
    //     cetz.plot.plot(
    //       // size: (5, 5),
    //       axis-style: "school-book",
    //       fill-below: false,
    //       x-domain: (-4, 4),
    //       y-domain: (-4, 4),
    //       x-max: 4, x-min: -4,
    //       y-max: 4, y-min: -4,
    //       x-grid: "both", y-grid: "both",
    //       x-tick: none, y-tick: none,
    //       x-tick-step: 1, y-tick-step: 1,
    //         {
    //           cetz.plot.add(domain: (-4, 4), x=>-x+2, style: style-point)
    //         }
    //       )
    //     })
    //     v(1cm)
    // },
    {
      cetz.canvas(length:4cm, {
        cetz.plot.plot(
          // size: (5, 5),
          axis-style: "school-book",
          // axis-ticks: "none",
          fill-below: false,
          x-domain: (-4, 4),
          y-domain: (-4, 4),
          x-max: 4, x-min: -4,
          y-max: 4, y-min: -4,
          x-grid: "both", y-grid: "both",
          x-tick: none, y-tick: none,
          x-tick-step: 1, y-tick-step: 1,
            {
              cetz.plot.add(domain: (-4, 4), x=>0.5*x, style: style-point)
            }
          )
        })
        v(1cm)
      }
    )

#pagebreak()

#g-question(point:2.5)[Si los sucesos A y B son incompatibles y sabemos que $display(P(A)=3/5)$ y $display(P(B)=1/3)$. Calcula $display(P(A cal(union) B))$.]