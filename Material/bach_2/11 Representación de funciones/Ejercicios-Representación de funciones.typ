#import "@preview/g-exam:0.4.5": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4"

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: config.at("author").at("name"),
    email: config.at("author").at("email"),
    watermark: config.at("author").at("watermark"),
  ),
  school: (
    name: config.at("school").at("name"),
    logo: image("../../" + config.at("school").at("logo")),
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Representación de funciones],
    // content: [($X->infinity$)],
    model: [v1],
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 22),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default: config.at("show-solutions")),
  // draft: true,
  question-points-position: right,
  //   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Representa las siguientes funciones.]
    #questions-columns(
      [
        #subquestion()[$f(x) = x^2 - 4$]
        #solution()[

          *1. Dominio*

          Es una función polinómica, por lo que está definida para cualquier número real.

          $ D(f) = RR $

          *2. Simetría*

          Calculamos $f(-x)$:

          $ f(-x) = (-x)^2 - 4 = x^2 - 4 = f(x) $

          Por tanto, es una función *par*, simétrica respecto al eje $Y$.

          *3. Puntos de corte con los ejes*

          *Eje de abscisas ($y= 0$):*

          Igualamos la función a cero:

          $ x^2 - 4 = 0 => x = plus.minus 2 $

          Los puntos de corte son:

          $ (-2, 0) quad "y" quad (2, 0) $

          *Eje de ordenadas ($x = 0$):*

          Hacemos $x = 0$:

          $ f(0) = 0^2 - 4 = -4 $

          El punto de corte es $(0, -4)$.

          *4. Signo de la función*

          Estudiamos dónde la función es positiva, negativa o nula.

          #table(
            columns: (1fr, 1fr),
            align: center,
            stroke: 0.5pt,
            [*Intervalo*], [*Signo*],
            [$(-oo, -2)$], [Positiva],
            [$x = -2$], [Nula],
            [$(-2, 2)$], [Negativa],
            [$x = 2$], [Nula],
            [$(2, +oo)$], [Positiva],
          )

          *5. Continuidad*

          Al ser una función polinómica, es continua en todo su dominio.

          $ "Continua en " RR $

          *6. Asíntotas*

          Las funciones polinómicas no tienen asíntotas.

          Por tanto, no tiene asíntotas verticales, horizontales ni oblicuas.

          *7. Monotonía: crecimiento y decrecimiento*

          Calculamos la primera derivada:

          $ f'(x) = 2x $

          Igualamos a cero:

          $ 2x = 0 quad => quad x = 0 $

          Estudiamos el signo de la derivada:

          - Si $x < 0$, entonces $f'(x) < 0$: decreciente.
          - Si $x > 0$, entonces $f'(x) > 0$: creciente.

          Por tanto:

          - Decreciente en $(-oo, 0)$.
          - Creciente en $(0, +oo)$.

          *8. Extremos relativos y absolutos*

          En $x = 0$, la función pasa de decreciente a creciente.

          Por tanto, tiene un mínimo relativo y absoluto:

          $ f(0) = -4 $

          El mínimo absoluto se alcanza en el punto $(0, -4)$.

          No tiene máximo.

          *9. Curvatura: concavidad y convexidad*

          Calculamos la segunda derivada:

          $ f''(x) = 2 $

          Como $f''(x) > 0$ para todo $x in RR$, la función es convexa (cóncava hacia arriba) en todo su dominio.

          No tiene puntos de inflexión.

          *10. Recorrido o imagen*

          Como el valor mínimo es $-4$ y la función crece indefinidamente:

          $ "Im"(f) = [-4, +oo) $

          *11.  Representación gráfica*

          La gráfica es una parábola con vértice en $(0, -4)$, abierta hacia arriba y simétrica respecto al eje $Y$.

          #align(center, cetz.canvas({
            import cetz.draw: *
            import cetz-plot: *
            plot.plot(size: (5, 5), x-tick-step: 2, y-tick-step: 2, axis-style: "school-book", {
              plot.add(
                domain: (-4, 4),
                samples: 200,
                x => x * x - 4,
                // style: (stroke:blue, mark:(start:(symbol:"o", fill:blue))),
              )
            })
          }))
        ]
      ],
      [
        #subquestion()[$f(x) = sqrt(x + 2)$]
        #solution()[
          La función es una raíz cuadrada desplazada 2 unidades a la izquierda. Su dominio es $x \geq -2$.

          // #plot(
          //   function: (x) -> sqrt(x + 2),
          //   range-x: [-3, 5],
          //   range-y: [0, 5],
          //   width: 300pt,
          //   height: 300pt,
          //   grid: true,
          //   axes: true,
          //   title: "$g(x) = \sqrt{x + 2}$",
          // )
        ]
      ],
      [
        #subquestion()[$f(x) = 1/(x-1)$]
        #solution()[
          La función es una función racional con una asíntota vertical en $x = 1$ y una asíntota horizontal en $y = 0$.

          // #plot(
          //   function: (x) -> 1/(x - 1),
          //   range-x: [-3, 5],
          //   range-y: [-5, 5],
          //   width: 300pt,
          //   height: 300pt,
          //   grid: true,
          //   axes: true,
          //   title: "$h(x) = 1/(x - 1)$",
          // )
        ]
      ],
      [
        #subquestion()[$f(x) = (x^4)/(x^2-1)$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = (x^3)/(x-2)^2$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = sqrt(x^2-2x)$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = ln(x^2+1)$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = 1/2 "sen"(2x) + "sen"(x)$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = e^x/x$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = e^x/x$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = x^3/(3(x+1))$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = |x+3|+|x-1|+|2x+4|$]
        #solution()[]
      ],
      [
        #subquestion()[$f(x) = ln((x-3)/(x-1))$]
        #solution()[]
      ],
    ),
  ],
)

