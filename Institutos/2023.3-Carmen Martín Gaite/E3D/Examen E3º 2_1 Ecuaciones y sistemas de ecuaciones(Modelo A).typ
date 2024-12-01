#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    // watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Carmen Martín Gaite",
    logo: read("./logo-ies_carmen.jpeg", encoding: none)
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
  show-studen-data: "odd-pages",
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

#set math.cases(reverse: true)

#g-question[Resuelve las siguientes ecuaciones:

 #g-subquestion(point: 0.75)[$display(3x^2-2x-3=4 dot (x^2-5x-2) - x^2)$]
 #v(1fr)

 #g-subquestion(point: 1.25)[$display(x^4 - 16x^2 -225 = 0)$]
 #v(1fr)

#pagebreak()

 #g-subquestion(point: 2)[$display(x^5 + 5x^4 - x^3 - 5x^2 = 0)$]
 #v(1fr)
]

#g-question[
  Dadas las gráficas de los siguientes sistemas de ecuaciones lineales,
  determina por la posición de las rectas el tipo de sistema según el número de soluciones. \

#columns(2, gutter: 2cm)[
 #g-subquestion(point: 0.5)[
      #align(center, 
      cetz.canvas(length: 0.7cm, {
        cetz.plot.plot(
          // axes: ("x", "y"),
          size: (10, 10),
          axis-style: "school-book",
          fill: "o" ,
          fill-below: true,
          // horizontal:false,
          x-domain: (-5.2, 5.2),
          y-domain: (-5.2, 5.2),
          x-max: 5.2,
          x-min:-5.2,
          y-max: 5.2,
          y-min:-5.2,
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
            
              cetz.plot.add(
                style: (stroke: blue + 2pt),
                domain: (-5.2, 5.2), 
                x=>x + 3
              )

              cetz.plot.add(
                style: (stroke: olive + 2pt),
                domain: (-5.2, 5.2), 
                x=>x
              )
            }
          )
        }
      )
    )
  ]
  #colbreak()

  #g-subquestion(point: 0.5)[
      #align(center, 
      cetz.canvas(length: 0.7cm, {
        cetz.plot.plot(
          // axes: ("x", "y"),
          size: (10, 10),
          axis-style: "school-book",
          fill: "o" ,
          fill-below: true,
          // horizontal:false,
          x-domain: (-5.2, 5.2),
          y-domain: (-5.2, 5.2),
          x-max: 5.2,
          x-min:-5.2,
          y-max: 5.2,
          y-min:-5.2,
          // grid: (stroke:(paint: gray.lighten(20%))
          x-grid: "both",
          y-grid: "both",
          // x-tick-step: none,
          x-tick-step: 1,
          // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
          y-tick-step: 1,
          // x-minor-tick-step: 0.2,
          // y-minor-tick-step: 0.2,
          // y-minor-tick-color:
          // plot-style:(stroke: blue + 2pt),
          // mark-tyle:(stroke: blue + 2pt),
            {
              cetz.plot.add(((0,0),), mark-size: 0,)
            
              cetz.plot.add(
                style: (stroke: blue + 2pt),
                domain: (-5.2, 5.2), 
                x=>-x - 4
              )

              cetz.plot.add(
                style: (stroke: olive + 2pt),
                domain: (-5.2, 5.2), 
                x=>3
              )
            }
          )
        }
      )
    )
  ]
]
]
// #v(1cm)

#pagebreak()

#g-question[Resuelve los siguientes sistemas de ecuaciones lineales por métodos diferentes. \
  #g-subquestion(point: 1)[
      $display(cases( delim: "{",
              // reverse: true,
              // grap: 2em,
              x &+ &y &= &0,
              3x &+ &5y &= &0
            ))$
    #v(1fr)
  ]

  #g-subquestion(point: 1)[
      $display(cases( delim: "{",
              // reverse: true,
              // grap: 2em,
              &3x &+ &y &= &0,
              -&6x &- 2&y &= &5
            ))$
    #v(1fr)
  ]

  #g-subquestion(point: 1)[
      $display(cases( delim: "{",
              // reverse: true,
              // grap: 2em,
              2x &= &y &- &2,
              6x &= 3&y &+ &12
            ))$
      // ]
    #v(1fr)
  ]
]
#pagebreak()

#g-question(point: 1)[
  La suma de los cuadrados de dos números consecutivos es 181. 
  Calcula dichos números.
  
  #v(1fr)
]


#g-question(point: 1)[
El día 12 de julio, Metallica da un concierto benéfico en una sala de Madrid para
el cual se venden dos tipos de entradas, una del tipo general y otra VIP con acceso anticipado.
El concierto resulta un éxito, se venden todas las entradas y se recaudan 23 mil dólares. 
Los precios de las entradas son 50 dólares las de tipo general y 300 dólares las VIP.

Calcula el número de entradas vendidas de cada tipo si el aforo del establecimiento es de 160 personas.
#v(2fr)
]
