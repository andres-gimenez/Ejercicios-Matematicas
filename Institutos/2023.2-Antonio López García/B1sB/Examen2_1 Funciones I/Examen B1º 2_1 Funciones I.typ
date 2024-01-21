#import "./exam.typ": exam, question, subquestion
#import "@preview/cetz:0.2.0"

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
    academic-level: "1º Bachillerato",
    academic-subject: "Matemáticas aplicadas a las ciencias sociales",
    number: "2º Evaluación 1º Examen",
    content: "Funciones I",
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

  #cetz.canvas(length: 0.5cm, {
      cetz.plot.plot(
        // axes: ("x", "y"),
        size: (12, 11),
        axis-style: "school-book",
        fill: "o" ,
        fill-below: true,
        // horizontal:false,
        x-domain: (-4, 8),
        y-domain: (-5, 5),
        x-max: 8,
        x-min:-4,
        y-max: 5,
        y-min:-5,
        x-grid: "both",
        y-grid: "both",
        // x-tick-step: none,
        x-tick-step: 2,
        // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
          {
            cetz.plot.add(((0,0),), mark-size: 0,)
            cetz.plot.add-vline(3,
              // style:(
              //   stroke: (
              //     colors: (color.luma(90),),
              //     // dash: "dashed",
              //     ),
              // ),
              // style: (
              //   // stroke: color.luma(100) + ,
              //     // colors: (color.gray, ),
              //     // colors: (color.luma(100),),
              //     // dash: "dashed",
              //   // ),
              // ),
              style: (stroke: (paint: color.luma(100), thickness: 1pt, dash: "dashed")),
            )
            cetz.plot.add(
              style: (stroke: black),
              // domain: (-4, 6),
              domain: (-4, 2.9),
              // mark: "+",
              x=>1/(x+(-3))
            )
            cetz.plot.add(
              style: (stroke: black),
              domain: (3.1, 8), 
              // mark: "+",
              x=>1/(x+(-3))
            )
          }
        )
      }
    )

    #cetz.canvas(length: 0.5cm, {
      cetz.plot.plot(
        // axes: ("x", "y"),
        size: (12, 11),
        axis-style: "school-book",
        fill: "o" ,
        fill-below: true,
        // horizontal:false,
        x-domain: (-4, 8),
        y-domain: (-5, 5),
        x-max: 8,
        x-min:-4,
        y-max: 5,
        y-min:-5,
        x-grid: "both",
        y-grid: "both",
        // x-tick-step: none,
        x-tick-step: 2,
        // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
          {
            cetz.plot.add(((0,0),), mark-size: 0,)
            cetz.plot.add(
              style: (stroke: black),
              // domain: (-4, 6),
              domain: (2, 8),
              // mark: "+",
              x=>calc.sqrt(4/3*x+(-8/3))
            )
          }
        )
      }
    )
]
#v(1fr)

#question(point:2)[
  Halla el dominio de definición de la s funciones:
  #subquestion[$y = (2+x)/(x^2+1)$]
  #v(1fr)

  #subquestion[$y = sqrt(3x-1)$]
  #v(1fr)

  #subquestion[$y = 1/(x^2+1)$]
  #v(1fr)
  
  #subquestion[$y = (log(x+1))/(x^2-4)$]
  #v(1fr)
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

#let style = (stroke: black)

#question(point:2)[
  Representa la siguiente función: \ \
    $f(x) = display(
      cases(
        2/x &"si" &x < 0,
        sqrt(x+1)-2 &"si" &x >= 0,
      )
    )$
      
    #cetz.canvas(length: 0.5cm, {
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
          {
            cetz.plot.add(((0,0),), mark-size: 0,)
            // cetz.plot.add(
            //   style: style,
            //   domain: (-10, 0.1), 
            //   // mark: "+",
            //   x=>2/x
            // )
            // cetz.plot.add(
            //   style: style,
            //   domain: (0, 10), 
            //   // mark: "+",
            //   x=>calc.sqrt(x+1)-2
            // )
          }
        )
      }
    )
]
#v(1fr)

// #let style = (stroke: black, fill: rgb(0, 0, 200, 75))
#let style = (stroke: black)

#question(point:2)[
  Obtén la expresión analítica de la siguiente función:
  //  #align(center, 
    #cetz.canvas(length: 0.5cm, {
      cetz.plot.plot(
        // axes: ("x", "y"),
        size: (12, 11),
        axis-style: "school-book",
        fill: "o" ,
        fill-below: true,
        // horizontal:false,
        x-domain: (-4, 8),
        y-domain: (-2, 9),
        x-max: 8,
        x-min:-4,
        y-max: 9,
        y-min:-2,
        x-grid: "both",
        y-grid: "both",
        // x-tick-step: none,
        x-tick-step: 2,
        // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
        y-tick-step: 2,
        x-minor-tick-step: 1,
        y-minor-tick-step: 1,
          {
            cetz.plot.add(
              style: style,
              domain: (-4, 2), 
              // mark: "+",
              x=> x*x+1
            )
            cetz.plot.add(
              style: style,
              domain: (2, 8), 
              // mark: "+",
              x=>x+1
            )

            cetz.plot.add(
              ((2,5),),
              style: (stroke: none),
              mark: "o",
              mark-size: 0.25,
              mark-style:(stroke: black, fill: color.black)
            )
            cetz.plot.add(
              // style: style,
              style: (stroke: none),
              ((2,3),),
              mark: "o",
              mark-size: 0.25,
              mark-style:(stroke: black, fill: color.white)
            )
          }
        )
      }
    )
  // )
]

#v(1fr)

 