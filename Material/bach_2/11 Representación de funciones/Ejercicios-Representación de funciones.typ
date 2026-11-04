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
            columns: (1fr, 1fr, 1fr, 1fr),
            align: center,
            stroke: 0.5pt,

            [$x$], [$(-oo, -2)$], [$(-2, 2)$], [$(2, +oo)$],
            [$f(x)$], [$plus$], [$minus$], [$plus$],
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
            plot.plot(size: (10, 10), x-tick-step: 2, y-tick-step: 2, axis-style: "school-book", {
              plot.add(
                domain: (-4, 4),
                samples: 200,
                x => x * x - 4,
                // style: (stroke:blue, mark:(start:(symbol:"o", fill:blue))),
              )
              plot.add(((0, -4),), mark-size: 0.2, mark: "o")
            })
          }))
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(x + 2))$]
        // #solution()[
        //   La función es una raíz cuadrada desplazada 2 unidades a la izquierda. Su dominio es $x \geq -2$.


        // ]
      ],
      [
        #subquestion()[$display(f(x) = 1/(x-1))$]
        // #solution()[
        //   La función es una función racional con una asíntota vertical en $x = 1$ y una asíntota horizontal en $y = 0$.


        // ]
      ],
      [
        #subquestion()[$display(f(x) = (x^4)/(x^2-1))$]
        #solution()[]
      ],
      [
        #subquestion()[$display(f(x) = x^3/(x-2)^2)$]
        #solution()[

          *Dominio*

          La función es racional, por lo que está definida para todos los valores reales excepto aquellos que anulan el denominador.

          $ (x-2)^2 != 0 quad arrow.r quad x != 2 $

          Por tanto, el dominio es:

          $ DD(f) = RR \\ {2} $

          *Simetría*

          Calculamos la función en el opuesto:

          $ f(-x) = frac(-x^3, (-x-2)^2) = -frac(x^3, (x+2)^2) $

          Como:

          $ f(-x) != f(x) quad "y" quad f(-x) != -f(x) $

          La función no es par ni impar. Por tanto, no presenta simetría respecto al eje de ordenadas ni respecto al origen.

          *Cortes con los ejes*

          *Eje de abscisas (y=0):*

          Igualamos la función a cero:

          $ frac(x^3, (x-2)^2) = 0 $

          Una fracción es cero cuando su numerador es cero:

          $ x^3 = 0 quad arrow.r quad x = 0 $

          *Eje de ordenadas (x=0):*

          Sustituimos $x=0$:

          $ f(0) = frac(0^3, (0-2)^2) = 0 $

          Por tanto, la función corta ambos ejes en el punto:

          $ (0, 0) $

          *Signo de la función*

          El denominador es siempre positivo, excepto en $x=2$, donde no está definida. Por tanto, el signo depende exclusivamente del numerador $x^3$.

          #table(
            columns: (1fr, 1fr, 1fr, 1fr),
            align: center,
            stroke: 0.5pt,

            [$x$], [$(-oo, 0)$], [$(0, 2)$], [$(2, +oo)$],
            [$f(x)$], [$minus$], [$plus$], [$plus$],
          )

          La función se anula en $x=0$ y no tiene más raíces.

          *Asíntotas*

          *Asíntotas verticales*

          Estudiamos los límites en los puntos que no pertenecen al dominio:

          $ limits("lím")_(x -> 2^-) frac(x^3, (x-2)^2) = +oo $

          $ limits("lím")_(x -> 2^+) frac(x^3, (x-2)^2) = +oo $

          Por tanto, existe una asíntota vertical:

          $ x = 2 $

          y la función se acerca a a ella por ambos lados, por la parte superior de la gráfica.

          *Asíntotas horizontales*

          Calculamos los límites en el infinito:

          $ limits("lím")_(x -> +oo) frac(x^3, (x-2)^2) = +oo $

          $ limits("lím")_(x -> -oo) frac(x^3, (x-2)^2) = -oo $

          No existen asíntotas horizontales.

          *Asíntotas oblicuas*

          Buscamos una asíntota de la forma $y=m x+n$.

          Calculamos la pendiente:

          $ m = limits("lím")_(x -> +oo) frac(f(x), x) = 1 $

          Calculamos la ordenada en el origen:

          $ n = limits("lím")_(x -> +oo) (f(x)-x) = 4 $

          Por tanto, la asíntota oblicua es:

          $ y = x+4 $

          Igualmente podemos calcular el límite cuando $x -> -oo$:

          $ m = limits("lím")_(x -> -oo) frac(f(x), x) =
          m = limits("lím")_(x -> +oo) frac(f(-x), x) = 1 $

          $ n = limits("lím")_(x -> -oo) (f(x)-x) = limits("lím")_(x -> +oo) (f(-x)+x) = 4 $

          Esta asíntota se cumple tanto cuando $x -> +oo$ como cuando $x -> -oo$.

          Para ver si la asíntota oblicua queda por encima o por debajo de la función, calculamos el límite:

          $ limits("lím")_(x -> +oo) (f(x)-(x+4)) = limits("lím")_(x -> +oo) frac(12x-16, (x-2)^2) = 0^+ "(Se acerca a la asíntota por encima)" $

          $ limits("lím")_(x -> -oo) (f(x)-(x+4)) = limits("lím")_(x -> -oo) frac(12x-16, (x-2)^2) = 0^- "(se acerca a la asíntota por debajo)" $


          *Crecimiento y decrecimiento*

          Calculamos la primera derivada aplicando la regla del cociente:

          $ f'(x) = frac(3x^2 (x-2)^2 - 2x^3(x-2), (x-2)^4) = frac(x^2(x-6), (x-2)^3) $

          *Puntos críticos*

          Igualamos la derivada a cero:

          $ frac(x^2(x-6), (x-2)^3) = 0 $

          Obtenemos:

          $ x^2(x-6) = 0 $

          $ x=0 quad "ó" quad x=6 $

          Además, debemos tener en cuenta que $x=2$ no pertenece al dominio.

          *Tabla de signos de la primera derivada*

          Estudiamos el signo de $f'(x)$ en los intervalos determinados por los puntos críticos:

          #table(
            columns: (1fr, 1fr, 1fr, 1fr, 1fr),
            align: center,
            stroke: 0.5pt,

            [$x$], [$(-oo, 0)$], [$(0, 2)$], [$(2, 6)$], [$(6, +oo)$],
            [$f'(x)$], [$plus$], [$plus$], [$minus$], [$plus$],
            [$f(x)$], [Creciente], [Creciente], [Decreciente], [Creciente],
          )

          Por tanto:

          - La función es creciente en $(-oo,2)$.
          - La función es decreciente en $(2,6)$.
          - La función es creciente en $(6,+oo)$.

          *Extremos relativos*

          En $x=0$, la derivada no cambia de signo. Por tanto, no existe un extremo relativo.

          En $x=6$, la derivada cambia de negativa a positiva. Por tanto, existe un mínimo relativo.

          Calculamos su ordenada:

          $ f(6) = frac(6^3, (6-2)^2) = frac(216, 16) = frac(27, 2) $

          El mínimo relativo es:

          $ (6, 27/2) $

          *Curvatura y puntos de inflexión*

          Calculamos la segunda derivada:

          $ f''(x) = frac(24x, (x-2)^4) $

          Estudio del signo de la segunda derivada

          Como el denominador es siempre positivo en el dominio, el signo depende del numerador.

          #table(
            columns: (1fr, 1fr, 1fr, 1fr),
            align: center,
            stroke: 0.5pt,

            [$x$], [$(-oo, 0)$], [$(0, 2)$], [$(2, +oo)$],
            [$f''(x)$], [$minus$], [$plus$], [$plus$],
            [$f(x)$], [Convexa], [Cóncava], [Cóncava],
          )

          *Puntos de inflexión*

          Igualamos la segunda derivada a cero:

          $ frac(24x, (x-2)^4) = 0 $

          $ 24x = 0 quad => quad x=0 $

          La segunda derivada cambia de signo al pasar por $x=0$, por lo que existe un punto de inflexión.

          Como:

          $ f(0) = 0 $

          El punto de inflexión es:

          $ (0,0) $

          Además, como $f'(0)=0$, se trata de un punto de inflexión con tangente horizontal.

          *Recorrido*

          En el intervalo $(-oo,2)$ la función es continua y estrictamente creciente.

          Además:

          $ limits("lím")_(x -> -oo) f(x) = -oo $

          $ limits("lím")_(x -> 2^-) f(x) = +oo $

          Por tanto, en ese intervalo la función toma todos los valores reales.

          Así, su recorrido es:

          $ Im(f) = RR $

          *Resumen del estudio*

          #table(
            columns: (1fr, 2fr),
            stroke: 0.5pt,
            inset: 7pt,
            [*Característica*], [*Resultado*],
            [Dominio], [$RR \\ {2}$],
            [Simetría], [Ninguna],
            [Corte con los ejes], [$(0,0)$],
            [Asíntota vertical], [$x=2$],
            [Asíntota horizontal], [No tiene],
            [Asíntota oblicua], [$y=x+4$],
            [Crecimiento], [$(-oo,2)$ y $(6,+oo)$],
            [Decrecimiento], [$(2,6)$],
            [Máximo relativo], [No tiene],
            [Mínimo relativo], [$(6,27/2)$],
            [Convexa], [$(-oo,0)$],
            [Cóncava], [$(0,2)$ y $(2,+oo)$],
            [Punto de inflexión], [$(0,0)$, con tangente horizontal],
            [Recorrido], [$RR$],
          )

          #align(center, cetz.canvas({
            import cetz.draw: *
            import cetz-plot: *
            plot.plot(size: (10, 10), x-tick-step: 5, y-tick-step: 5, axis-style: "school-book", {
              plot.add(domain: (-10, 1.6), samples: 200, x => x * x * x / ((x - 2) * (x - 2)), style: (stroke: blue))
              plot.add(domain: (3, 10), samples: 200, x => x * x * x / ((x - 2) * (x - 2)), style: (stroke: blue))
              plot.add(domain: (-10, 10), samples: 200, x => x + 4, style: (stroke: (paint: green, thickness: 0.8pt, dash: "dashed")))

              plot.add(((2, -10), (2, 27)), style: (stroke: (paint: green, thickness: 0.8pt, dash: "dashed")))

              plot.add(((0, 0),), mark-size: 0.2, mark: "o")
              plot.add(((6, 27 / 2),), mark-size: 0.2, mark: "o")
            })
          }))
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(x^2-2x))$]
        #solution()[
          *Dominio*

          Para que la función esté definida, el radicando debe ser mayor o igual que cero:

          $ x^2 - 2x >= 0 $

          Factorizamos:

          $ x (x - 2) >= 0 $

          Estudiando el signo del producto:

          $ x <= 0 quad "o" quad x >= 2 $

          Por tanto, el dominio es:

          $ D(f) = (-oo, 0] union [2, +oo) $

          *Simetría*

          Comprobamos si la función presenta simetría respecto al eje de ordenadas:

          $ f(-x) = sqrt(x^2 + 2x) $

          Como $f(-x) != f(x)$, no es par.

          Tampoco es impar, ya que la función no verifica
          $f(-x) = -f(x)$.

          Sin embargo, podemos expresar la función como:

          $ f(x) = sqrt((x-1)^2 - 1) $

          Por tanto, es simétrica respecto a la recta vertical $x=1$.

          *Puntos de corte con los ejes*

          *Eje X:*

          Igualamos la función a cero:

          $ sqrt(x^2 - 2x) = 0 $

          $ x^2 - 2x = 0 $

          $ x(x-2) = 0 $

          Obtenemos los puntos:

          $ (0,0) quad "y" quad (2,0) $

          *Eje Y:*

          Calculamos el valor de la función en $x=0$:

          $ f(0) = sqrt(0) = 0 $

          El punto de corte es:

          $ (0,0) $

          *Signo de la función*

          Como se trata de una raíz cuadrada, la función nunca puede tomar valores negativos.

          - $f(x) = 0$ para $x=0$ y $x=2$.
          - $f(x) > 0$ para $x in (-oo,0) union (2,+oo)$.

          *Asíntotas*

          *Asíntotas verticales*

          $ limits("lím")_(x -> 0^-) sqrt(x^2-2x) = 0 $

          $ limits("lím")_(x -> 2^+) sqrt(x^2-2x) = 0 $

          No hay asíntotas verticales.

          *Asíntotas horizontales*

          $ limits("lím")_(x -> -oo) sqrt(x^2-2x) = +oo $

          $ limits("lím")_(x -> +oo) sqrt(x^2-2x) = +oo $

          No hay asíntotas horizontales.

          *Asíntotas oblicuas:*

          Para $x -> +oo$:

          $ m = lim_(x -> +oo) frac(f(x), x) = 1 $

          $ n = lim_(x -> +oo) (f(x)-x) = -1 $

          Por tanto, la asíntota oblicua es:

          $ y = x - 1 $

          Si restamos la función menos la asíntota tenemos:
          $f(x) - (x-1) = sqrt(x^2-2x) - (x - 1) stretch(->)_(x->+oo) 0^-$

          El valor de la asíntota en mayor, que el de la función, luego se acerca por arriba.

          Para $x -> -oo$:

          $ m = lim_(x -> -oo) frac(f(x), x) = -1 $

          $ n = lim_(x -> -oo) (f(x)+x) = 1 $

          Por tanto, la asíntota oblicua es:

          $ y = -x + 1 $

          Si restamos la función menos la asíntota tenemos:

          $f(x) - (x-1) = sqrt(x^2-2x) - (-x + 1) stretch(->)_(x->-oo) 0^-$

          El valor de la asíntota en mayor, que el de la función, luego se acerca por arriba.

          *Continuidad*

          La función es continua en todo su dominio, puesto que es la composición de funciones continuas donde el radicando es no negativo.

          Por tanto, es continua en:

          $ (-oo,0] union [2,+oo) $

          *Derivabilidad y monotonía*

          Calculamos la primera derivada:

          $ f'(x) = frac(2x-2, 2 sqrt(x^2-2x)) $

          Simplificando:

          $ f'(x) = frac(x-1, sqrt(x^2-2x)) $

          Estudiamos el signo de la derivada:

          - Si $x < 0$, entonces $f'(x) < 0$.
          - Si $x > 2$, entonces $f'(x) > 0$.

          Por tanto:

          - La función es estrictamente decreciente en $(-oo,0]$.
          - La función es estrictamente creciente en $[2,+oo)$.

          La derivada no existe en $x=0$ ni en $x=2$, ya que el denominador se anula.

          En ambos puntos la gráfica presenta una tangente vertical por el lado de su dominio.

          *Extremos relativos y absolutos*

          En $x=0$:

          La función es decreciente hasta alcanzar el valor cero.

          Por tanto, presenta un mínimo absoluto en:

          $ (0,0) $

          En $x=2$:

          La función es creciente a partir de este punto.

          Por tanto, también presenta un mínimo absoluto en:

          $ (2,0) $

          No tiene máximos relativos ni absolutos.

          *Curvatura y puntos de inflexión*

          Calculamos la segunda derivada:

          $ f''(x) = -frac(1, (x^2-2x)^(3/2)) $

          Como el denominador es siempre positivo en el interior del dominio:

          $ f''(x) < 0 $

          Por tanto, la función es cóncava hacia abajo en los dos intervalos:

          $ (-oo,0) quad "y" quad (2,+oo) $

          No presenta puntos de inflexión.

          *Recorrido*

          La función es una raíz cuadrada, por lo que sus valores son no negativos.

          Además, alcanza el valor cero en $x=0$ y $x=2$, y tiende a infinito cuando $x$ tiende a cualquiera de los dos infinitos.

          Por tanto, el recorrido es:

          $ R(f) = [0,+oo)) $


          = Resumen del estudio

          #table(
            columns: (1fr, 2fr),
            stroke: 0.5pt,
            inset: 7pt,
            [*Característica*], [*Resultado*],

            [Dominio], [$(-oo,0] union [2,+oo)$],
            [Simetría], [Respecto a $x=1$],
            [Cortes con los ejes], [$(0,0)$ y $(2,0)$],
            [Signo], [No negativa],
            [Asíntotas], [$y=-x+1$ y $y=x-1$],
            [Continuidad], [Continua en todo su dominio],
            [Monotonía], [Decreciente en $(-oo,0]$ y creciente en $[2,+oo)$],
            [Extremos], [Mínimos absolutos en $(0,0)$ y $(2,0)$],
            [Curvatura], [Cóncava hacia abajo en ambos intervalos],
            [Puntos de inflexión], [No tiene],
            [Recorrido], [$[0,+oo)$],
          )

          #align(center, cetz.canvas({
            import cetz.draw: *
            import cetz-plot: *
            plot.plot(size: (10, 10), x-tick-step: 5, y-tick-step: 5, axis-style: "school-book", {
              plot.add(domain: (-5, 0), samples: 200, x => calc.sqrt(x * x - 2 * x), style: (stroke: blue))
              plot.add(domain: (2, 7), samples: 200, x => calc.sqrt(x * x - 2 * x), style: (stroke: blue))
              plot.add(domain: (-5, 3), samples: 200, x => -x + 1, style: (stroke: (paint: green, thickness: 0.8pt, dash: "dashed")))
              plot.add(domain: (-1, 7), samples: 200, x => x - 1, style: (stroke: (paint: green, thickness: 0.8pt, dash: "dashed")))
            })
          }))

        ]
      ],
      [
        #subquestion()[$display(f(x) = ln(x^2+1))$]
        #solution()[]
      ],
      [
        #subquestion()[$display(f(x) = 1/2 "sen"(2x) + "sen"(x))$]
        #solution()[]
      ],
      [
        #subquestion()[$display(f(x) = e^x/x)$]
        #solution()[]
      ],
      [
        #subquestion()[$display(f(x) = x^3/(3(x+1)))$]
        #solution()[]
      ],
      [
        #subquestion()[$display(f(x) = |x+3|+|x-1|+|2x+4|)$]
        #solution()[]
      ],
      [
        #subquestion()[$display(f(x) = ln((x-3)/(x-1)))$]
        #solution()[]
      ],
    ),
  ],
)

