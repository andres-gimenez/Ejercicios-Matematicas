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
    number: "3º Evaluación - 1º Examen",
    content: "Expresiones algebraicas y ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
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

#g-question(point:2)[En la siguiente gráfica, se muestra la correspondencia entre el número de horas díarias que le dedicamos a la lectura de un libro y el número de días que tardamos en leer el libro completo:]
#align(center,
  grid(
    columns: (25pt, auto),
    rows: (auto, 25pt),
    align(center + horizon)[#rotate(-90deg, reflow: true)[Número de días en leer un libro]],
    cetz.canvas(length: 0.8cm, {
      cetz.plot.plot(
        size: (10, 10),
        axis-style: "school-book",        
        fill: "o" ,
        fill-below: true,
        // horizontal:false,
        x-domain: (0, 13),
        y-domain: (0, 13),
        x-max: 13,
        x-min: 0,
        y-max: 13,
        y-min: 0,
        x-grid: "both",
        y-grid: "both",
        x-tick-step: 1,
        y-tick-step: 1,
          {
            cetz.plot.add(((1,9),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((2,4.5),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((3,3),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((4,2.25),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((5,1.8),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((6,1.5),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((7,1.28),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((8,1.129),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((9,1),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((10,0.9),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((11,0.82),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((12,0.75),), mark-size: 0.2, mark: "o", mark-style: style-point)
            cetz.plot.add(((13,0.69),), mark-size: 0.2, mark: "o", mark-style: style-point)
          }
        )
      }
    ),
    [],
    [\ Número de horas de lectura diaria]
  )
)

#g-subquestion[¿Es una función?]
#v(1fr)
#g-subquestion[¿Qué magnitudes se relacionan?]
#v(1fr)
#g-subquestion[¿Cuál es la variable  independiente? ¿Es discreta o continua?]
#v(1fr)
#g-subquestion[¿Cuál es la variable dependiente?]
#v(1fr)
#pagebreak()

#g-question(point: 3)[Calcula la ecuación de la recta que para por los puntos $P(1,2)$ y $Q(2,4)$]
#pagebreak()

// #g-question(point: 2)[Proporcionalidad inversa - Poner tabla, calcular la K y ]

// #g-question(point: 2)[Si el IVA aplicado es del 21%. Escribe la ecuación que da el IVA en función del precio, representala y calcula la pendiente]

#g-question(point: 3)[Escribe debajo de cada gráfica a que función corresponde de la siguiente lista:]

#box(height: 68pt,
columns(3, gutter: 11pt)[
 - $display(y = 2x + 1)$ \ \
 - $display(y = 4/x)$ \ \

 - $display(y = -4/x)$ \ \
 - $display(y = x - 3)$ \ \

 - $display(y = -x + 2)$ \ \
 - $display(y = 1/2 x)$ \ \
])

#grid(columns: (auto, auto, auto),
    gutter:25pt,{
    cetz.canvas(length:0.4cm, 
    {
      cetz.plot.plot(
        size: (10, 10),
        axis-style: "school-book",
        fill-below: false,
        x-domain: (-10, 10),
        y-domain: (-10, 10),
        x-max: 10, x-min: -10,
        y-max: 10, y-min: -10,
        x-grid: "both", y-grid: "both",
        x-tick: none, y-tick: none,
        x-tick-step: 1, y-tick-step: 1,
          {
            cetz.plot.add(domain: (-10, 10), x=>2*x+1, style: style-point)
          }
        )
      }
    ) 
    v(1cm)
    },
    {
      cetz.canvas(length:0.4cm, {
        cetz.plot.plot(
          size: (10, 10),
          axis-style: "school-book",
          fill-below: false,
          x-domain: (-10, 10),
          y-domain: (-10, 10),
          x-max: 10, x-min: -10,
          y-max: 10, y-min: -10,
          x-grid: "both", y-grid: "both",
          x-tick: none, y-tick: none,
          x-tick-step: 1, y-tick-step: 1,
            {
              cetz.plot.add(domain: (-10, 10), x=>4/x, style: style-point)
            }
          )
        }
      )
      v(1cm)
    },
    {
      cetz.canvas(length:0.4cm, {
        cetz.plot.plot(
          size: (10, 10),
          axis-style: "school-book",
          fill-below: false,
          x-domain: (-10, 10),
          y-domain: (-10, 10),
          x-max: 10, x-min: -10,
          y-max: 10, y-min: -10,
          x-grid: "both", y-grid: "both",
          x-tick: none, y-tick: none,
          x-tick-step: 1, y-tick-step: 1,
            {
              cetz.plot.add(domain: (-10, 10), x=>-4/x, style: style-point)
            }
          )
        }
      )
      v(1cm)
    },
    {
      cetz.canvas(length:0.4cm, {
        cetz.plot.plot(
          size: (10, 10),
          axis-style: "school-book",
          fill-below: false,
          x-domain: (-10, 10),
          y-domain: (-10, 10),
          x-max: 10, x-min: -10,
          y-max: 10, y-min: -10,
          x-grid: "both", y-grid: "both",
          x-tick: none, y-tick: none,
          x-tick-step: 1, y-tick-step: 1,
            {
              cetz.plot.add(domain: (-10, 10), x=>x+(-3), style: style-point)
            }
          )
        })
        v(1cm)
    },
    {
      cetz.canvas(length:0.4cm, {
        cetz.plot.plot(
          size: (10, 10),
          axis-style: "school-book",
          fill-below: false,
          x-domain: (-10, 10),
          y-domain: (-10, 10),
          x-max: 10, x-min: -10,
          y-max: 10, y-min: -10,
          x-grid: "both", y-grid: "both",
          x-tick: none, y-tick: none,
          x-tick-step: 1, y-tick-step: 1,
            {
              cetz.plot.add(domain: (-10, 10), x=>-x+2, style: style-point)
            }
          )
        })
        v(1cm)
    },
    {
      cetz.canvas(length:0.4cm, {
        cetz.plot.plot(
          size: (10, 10),
          axis-style: "school-book",
          fill-below: false,
          x-domain: (-10, 10),
          y-domain: (-10, 10),
          x-max: 10, x-min: -10,
          y-max: 10, y-min: -10,
          x-grid: "both", y-grid: "both",
          x-tick: none, y-tick: none,
          x-tick-step: 1, y-tick-step: 1,
            {
              cetz.plot.add(domain: (-10, 10), x=>0.5*x, style: style-point)
            }
          )
        })
        v(1cm)
      }
    )

#pagebreak()

#g-question(point: 2)[Halla la pendiente, el valor de la ordenada en el origen y dibuja la gráfica de la función] \ \
$ y = 2x - 2 $

#v(1fr)
#align(center, 
  cetz.canvas(length: 1.3cm, {
      cetz.plot.plot(
        // axes: ("x", "y"),
        size: (10, 10),
        axis-style: "school-book",
        fill: "o" ,
        fill-below: true,
        // horizontal:false,
        x-domain: (-10, 10),
        y-domain: (-10, 10),
        x-max: 10,
        x-min: -10,
        y-max: 10,
        y-min: -10,
        x-grid: "both",
        y-grid: "both",
        // x-tick-step: none,
        x-tick-step: 1,
        // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
        y-tick-step: 1,
        // x-minor-tick-step: 0.2,
        // y-minor-tick-step: 0.2,
        // y-minor-tick-color:
          {
            cetz.plot.add(((0,0),), mark-size: 0,)
          }
        )
      }
    )
  )