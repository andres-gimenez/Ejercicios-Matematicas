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
    // number: "Versión 1",
    content: "Continuidad",
    model: [v1],
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default: config.at("show-solutions")),
  // draft: true,
  question-points-position: right,
  //   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#let styleBlue = (stroke: (paint: blue, thickness: 1pt))
#let styleRed = (stroke: (paint: red, thickness: 1pt))
#let styleGreen = (stroke: (paint: green, thickness: 1pt))
#let styleYellow = (stroke: (paint: yellow, thickness: 1pt))

#questions-pages(
  [
    #question()[Indica si las siguientes afirmaciones son verdaderas o falsas, justificando brevemente:]

    #questions-columns(
      [
        #subquestion()[Si una función es continua en un punto, entonces existen los límites laterales en ese punto.]
        #solution()[*Verdadero*: Porque el requisito para que una función sea continua es que tenga limites laterales y que coincidan:
          $ limits("lím")_(x->a^-) f(x) = limits("lím")_(x->a^+) f(x) = f(a) $
        ]
      ],
      [
        #subquestion()[Si existe el límite de una función en un punto, entonces es continua en ese punto.]
        #solution()[*Falso*: Que exista el límite de una función en un punto no implica que la función
          sea continua en ese punto.

          Para que $f$ sea continua en $x = a$ debe cumplirse:

          $ lim_(x -> a) f(x) = f(a) $

          Por ejemplo:

          $
            f(x) = cases(
              x^2 & "si " x != 1,
              5 & "si " x = 1
            )
          $

          Existe el límite:

          $ lim_(x -> 1) f(x) = 1 $

          pero:

          $ f(1) = 5 $

          Como $1 != 5$, la función no es continua en $x = 1$.
        ]
      ],
      [
        #subquestion()[Si $limits("lím")_(x->a^-) f(x) = limits("lím")_(x->a^+) f(x)$ existen y son iguales, entonces $limits("lím")_(x->a) f(x)$ existe.]
        #solution()[*Verdadero*: Para que exista el límite, los limites laterales han de existir y ser iguales.

          $ limits("lím")_(x->a^-) f(x) = limits("lím")_(x->a^+) f(x) = limits("lím")_(x->a) f(x) $
        ]
      ],
      [
        #subquestion()[Si $limits("lím")_(x->a^-) f(x) = limits("lím")_(x->a^+) f(x) = L$ existen $f(a) = L$.]
        #solution[*Falso*: La función $display(f(x) = (x^2 - 1) / (x - 1)),$ tiene límites laterales en $x=1$, pero no está definida en $f(1)$

          $exists limits("lím")_(x->a^+) f(x) "y" limits("lím")_(x->a^-) f(x)$ pero $exists! f(1)$]
      ],
      [
        #subquestion()[Toda función polinómica es continua en todo $RR$.]
        #solution()[*Verdadero*: Los polinomios están definidos en todo $RR$ y son continuos en $RR$. ]
      ],
    )
  ],
  [
    #question()[Estudia la continuidad de la función $display(f(x) = (x^2 - 5x + 6)/(x - 3))$ en el punto $x=3$.]
    #solution[Las fracciones algebraicas está definidas en $RR$, salvo en los puntos donde el denominador se hace $0$ como en $f(3)$ el denominador es cero, la función no está definida, con lo que no puede ser continua.]
  ],
  [
    #question()[Estudia la continuidad de la función $display(f(x) = (|x-1|)/(x-1))$ en el punto $x=1$. (Estudia primero los límites laterales en $x=1$).]
    #solution[
      La función se puede interpretar como

      $
        f(x) = (|x-1|)/(x-1) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & (-(x-1))/(x-1) & "si" & x < 1,
          & (x-1)/(x-1) & "si" & x > 1,
        ) = cases(
          reverse: #false, delim: "{", gap: #1em,
          - & 1 & "si" & x < 1,
          & 1 & "si" & x > 1,
        )
      $

      Teniendo en cuenta que $f(1)$ no está definida, la función no puede ser continua en $x=1$.

      Calculamos los limites laterales en $x=1$:

      $limits("lím")_(x->1^-) = -1$ y $limits("lím")_(x->1^+) = 1$, como los limites laterales no coincide, podemos decir que el límite no existe.

      Podemos ver, de forma intuitiva, la gráfica de la función.
      #align(left, cetz.canvas({
        import cetz.draw: *
        import cetz-plot: *
        plot.plot(
          size: (4, 4),
          x-max: 5,
          x-min: -5,
          y-max: 2,
          y-min: -2,
          x-grid: "both",
          y-grid: "both",
          x-tick-step: 2,
          y-tick-step: 2,
          x-minor-tick-step: 1,
          y-minor-tick-step: 1,
          axis-style: "school-book",
          {
            plot.add(((0, 0),))
            plot.add(
              style: styleBlue,
              domain: (-5, 0.9999),
              samples: 4,
              x => calc.abs(x - 1) / (x - 1),
            )
            plot.add(
              ((1, -1),),
              style: (stroke: none),
              mark: "o",
              mark-size: 0.158,
              mark-style: (stroke: blue, fill: color.white),
            )
            plot.add(
              style: styleBlue,
              domain: (1.001, 5),
              samples: 4,
              x => calc.abs(x - 1) / (x - 1),
            )
            plot.add(
              ((1, 1),),
              style: (stroke: none),
              mark: "o",
              mark-size: 0.158,
              mark-style: (stroke: blue, fill: color.white),
            )
          },
        )
      }))
    ]
  ],
  [
    #question()[Estudia la continuidad de la siguiente función en todo su dominio:
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & x^2 -1 & "si" & x < 2,
          & 3x-4 & "si" & x >= 2,
        )
      $
    ]
    #solution()[
      El dominio de la función es $RR$.

      Para $x<2$, $x^2-1$ es continua por ser un polinomio y en $x >=2$, es continua, por ser $3x-4$ un polinomio.

      Estudiamos la continuidad en $x=2$, estudiando los limites laterales.

      $limits("lím")_(x->2^-) f(x) = limits("lím")_(x->2^-) x^2-1 = 2^2 - 1 = 4 -1 = 3$

      $limits("lím")_(x->2^+) f(x) = limits("lím")_(x->2^-) 3x-4 = 3 dot 2 - 4 = 6 -4 = 2$

      Como limites laterales son distintos, no existe el límite en $x=2$, luego no es continua.
    ]
  ],
  [
    #question()[Determina el valor de $k$ para que la siguiente función sea continua en todo $RR$.
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & 2x+1 & "si" & x < 1,
          & k x^2 & "si" & x >= 1,
        )
      $
    ]
    #solution()[
      Para $x<1$ la función es continua por ser $2x+1$ un polinomio.

      Para $x>1$ la función es continua por ser $k x^2$ un polinomio.

      Para que la función sea continua en $forall RR$, debemos comprobar
      el punto $x = 1$, donde cambia su definición.

      $
        limits("lím")_(x -> 1^-) f(x)
        = limits("lím")_(x -> 1^-) (2x + 1)
        = 3
      $

      Por la derecha:

      $
        limits("lím")_(x -> 1^+) f(x)
        = limits("lím")_(x -> 1^+) k x^2
        = k
      $

      Además, como $x = 1$ pertenece al segundo tramo:

      $
        f(1) = k dot 1^2 = k
      $

      Para que sea continua debe cumplirse:

      $ limits("lím")_(x -> 1^-) f(x) = limits("lím")_(x -> 1^+) f(x) = f(1) $

      Que se cumple para
      $
        k = 3
      $
    ]
  ],
  [
    #question()[Determina el valor de $k$ para que la siguiente función sea continua en todo $RR$.
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & (x^2-4)/(x-2) & "si" & x != 2,
          & a & "si" & x = 2,
        )
      $
    ]
    #questions-columns(
      [
        #subquestion()[Estudia la continuidad de $f(x)$ en todo su dominio]
        #solution()[
          Para $x != 2$ la función es continua en todos sus puntos, ya el el único punto problemático, seria el $x=2$ ya que el denominador de (x^2-4)/(x-2) se hace cero y no estaría bien definida.

          Para $x=2$ tenemos que mira el valor de los limites laterales.

          $display(limits("lím")_(x -> 2^-) f(x) = limits("lím")_(x -> 2^-) (x^2-4)/(x-2) = limits("lím")_(x -> 2^-) ((x+2)(x-2))/(x-2) = limits("lím")_(x -> 2^-) (x+2) = 4)$

          $display(limits("lím")_(x -> 2^+) f(x) = limits("lím")_(x -> 2^+) (x^2-4)/(x-2) = limits("lím")_(x -> 2^+) ((x+2)(x-2))/(x-2) = limits("lím")_(x -> 2^+) (x+2) = 4)$

          Luego si $a=4$ la función es continua en $RR$, si $a!=4$ la función es continua en $RR \\ {4}$
        ]
      ],
      [
        #subquestion()[Si $a=5$, que tipo de discontinuidad tiene $f(x)$ en $x=2$?]
        #solution()[Si $a=5$ la función no es continua en $x=2$, tiene una discontinuidad evitable, ya que, cambiando el valor de un punto, la función seria continua.
          #align(left, cetz.canvas({
            import cetz.draw: *
            import cetz-plot: *
            plot.plot(
              size: (6, 6),
              x-max: 6,
              x-min: -6,
              y-max: 6,
              y-min: -6,
              x-grid: "both",
              y-grid: "both",
              x-tick-step: 2,
              y-tick-step: 2,
              x-minor-tick-step: 1,
              y-minor-tick-step: 1,
              axis-style: "school-book",
              {
                plot.add(((0, 0),))
                plot.add(
                  style: styleBlue,
                  domain: (-6, -0.0001),
                  samples: 4,
                  x => x + 2,
                )
                plot.add(
                  style: styleBlue,
                  domain: (0.001, 5),
                  samples: 4,
                  x => x + 2,
                )
                plot.add(
                  ((0, 2),),
                  style: (stroke: none),
                  mark: "o",
                  mark-size: 0.158,
                  mark-style: (stroke: blue, fill: color.white),
                )
                plot.add(
                  ((0, 5),),
                  style: (stroke: none),
                  mark: "o",
                  mark-size: 0.158,
                  mark-style: (stroke: blue, fill: color.blue),
                )
              },
            )
          }))
        ]
      ],
    )
  ],
  [
    #question()[Estudia la continuidad de las siguientes funciones:]

    #questions-columns(
      [
        #subquestion()[$display(f(x) = (x^2 - 4)/(x^2 - x - 6))$]
        #solution()[
          Tanto el  numerador $x^2-4$ como el denominador $x^2-x-6$ son continua en $RR$. Así que solo tenemos que mirar cuando el denominador se hace 0.

          Tenemos que buscar donde $x^2-x-6=0$. Resolviendo la ecuación obtenemos que ocurre para $x=-2$ y $x=3$ el denominador se hace cero, luego la función es continua en:

          $ {x in RR | x!=-2 "y" x !=3 } = (-oo, -2) union (-2, 3) union (3, +oo) $
        ]
      ],
      [
        #subquestion()[$display(f(x) = (2x - 1)/(x^2 - 4x + 4))$]
        #solution()[
          Tanto el  numerador $2x -1$ como el denominador $x^2-4x+4$ son continua en $RR$. Así que solo tenemos que mirar cuando el denominador se hace 0.

          Tenemos que buscar donde $x^2-4x+4=0$. Resolviendo la ecuación obtenemos que ocurre para $x=2$ el denominador se hace cero, luego la función es continua en:

          $ {x in RR | x!=2 } = (-oo, 2) union (2, +oo) $
        ]
      ],
      [
        #subquestion()[$display(f(x) = (x^2 - 3x + 2)/(x^2 - 1))$]
        #solution()[
          Tanto el  numerador $x^2 - 3x +2$ como el denominador $x^2-1$ son continua en $RR$. Así que solo tenemos que mirar cuando el denominador se hace 0.

          Tenemos que buscar donde $x^2-1$. Resolviendo la ecuación obtenemos que ocurre para $x=-1$ y $x=-1$ el denominador se hace cero, luego la función es continua en:

          $ {x in RR | x!=-1 "y" x!=1 } = (-oo, -1) union (-1, 1) union (1, +oo) $
        ]
      ],
      [
        #subquestion()[$display(f(x) = (x^2 - 4)/(x - 2))$]
      ],
      [
        #subquestion()[$display(f(x) = (x^3 - 8)/(x - 2))$]
      ],
      [
        #subquestion()[$display(f(x) = ln(x-3))$]
        #solution()[
          La función $ln(x)$, está definida y es continua cuando $x>0$.

          $x-3$ es continua en $RR$ luego tenemos que buscar donde $x-3>0$, que ocurre en $x>3$.

          Luego la función es continua en:

          $ {x in RR | x > 3} = (3, oo) $
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(x-3))$]
        #solution()[
          La función $sqrt(x)$, está definida y es continua cuando $x>=0$,

          $x-3$ es continua en $RR$ luego tenemos que buscar donde $x-3>=0$, que ocurre en $x>=3$

          Luego la función es continua en:

          $ {x in RR | x >= 3} = [3, oo) $
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(4 - x^2))$]
        #solution()[
          La función $sqrt(x)$, está definida y es continua cuando $x>=0$,

          $4-x^2$ es continua en $RR$ luego tenemos que buscar donde $4 - x^2>=0$, que ocurre cuando $x in [-2, 2]$

          Luego la función es continua en:

          $ {x in RR | -2 <= x <= 2} = [-2, 2] $
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(x^2 - 4))$]
        #solution()[
          La función $sqrt(x)$, está definida y es continua cuando $x>=0$,

          $x^2-4$ es continua en $RR$ luego tenemos que buscar donde $x^2-4>=0$, que ocurre cuando $x in (-oo, -2] union [2, oo)]$

          Luego la función es continua en:

          $ {x in RR | x <= -2 "y" x >= 2 } = (-oo, -2] union [2, oo) = RR \\ (-2, 2) $
        ]
      ],
      [
        #subquestion()[$display(f(x) = ln(x^2-4))$]
        #solution()[
          La función $ln(x)$, está definida y es continua cuando $x>0$,

          $x^2-4$ es continua en $RR$ luego tenemos que buscar donde $x^2-4>0$, que ocurre cuando $x in (-oo, -2) union (2, oo)]$

          Luego la función es continua en:

          $ {x in RR | x < -2 "y" x > 2 } = (-oo, -2) union (2, oo) = RR \\ [-2, 2] $
        ]

      ],
      [
        #subquestion()[$display(f(x) = 1/sqrt(x-2))$]
      ],
      [
        #subquestion()[$display(f(x) = 1/sqrt(4 - x^2))$]
      ],
      [
        #subquestion()[$display(f(x) = 1/ln(x-2))$]
      ],
      [
        #subquestion()[$display(f(x) = 1/ln(4 - x^2))$]
      ],
      [
        #subquestion()[$display(f(x) = e^(1/(x-3)))$]
      ],
      [
        #subquestion()[$display(f(x) = e^(1/(4 - x^2)))$]
      ],
    )
  ],
  [
    #question[
      Halla $b$ para que la función $f(x)$ sea continua en $RR$

      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & x^2 + 2x + b & "si" & x <= 0,
          & ln(1+x)/(2x) & "si" & x > 0,
        )
      $
    ]
    #solution[

      Para $x<0$ la función es un polinomio, luego es continua en $(-oo, 0)$.

      Para $x>0$ ln(1+x) es continua, ya que si $x>0 => 1+x>0$ y $1/2x$ es continua si $x>0$.

      *Estudiamos el caso $x=0$:*

      Primero vemos si existen los límites laterales:

      $display(
        limits("lím")_(x->0^-) f(x) =
        limits("lím")_(x->0^-) (x^2 + 2x + b) = b
      )$

      $display(
        limits("lím")_(x->0^+) f(x) =
        limits("lím")_(x->0^-) ln(1+x)/(2x) = ln(1+0)/(2 dot 0) = 0/0
      )$

      Usamos L'Hôpital

      $display(
        limits("lím")_(x->0^-) ln(1+x)/(2x) =
        limits("lím")_(x->0^-) 1/(1+x)/(2) =
        limits("lím")_(x->0^-) 1/(2(1+x)) = 1/2
      )$

      Para que exista $display(limits("lím")_(x->0) f(x))$, se tiene que cumplir  $display(limits("lím")_(x->0^+) f(x)) = limits("lím")_(x->0^-) f(x)$

      Luego si  $display(b = 1/2)$  existe el límite.

      Tenemos que ver que $f(0)$ esté bien definido.

      $display(f(0) = 0^2 + 2 dot 0 + 1/2 = 1/2)$


    ]
  ],

  // [
  //   #question[Dada la función:

  //     $ f(x) = x - 4/(x-1)^2 $

  //     Halla el dominio de $f(x)$ y determinar las asíntotas en caso de que existan.
  //   ]
  //   #solution[
  //     *Dominio:*

  //     La función es continua en $RR$, menos cuando $x-1 = 0$

  //     $display(D = {forall x in RR | x-1 = 0} = RR \\ {1})$

  //     *Asíntota horizontal:*

  //     // Para $x -> +oo$:

  //     $display(
  //       limits("lím")_(x -> +oo) f(x)
  //       = limits("lím")_(x -> +oo) (x - frac(4, (x - 1)^2))
  //       = oo - 4/(oo-1)^2
  //       = oo - 4/oo
  //       = oo - 0
  //       = +oo
  //     )$

  //     Por tanto, *no tiene asíntota horizontal por la derecha*.

  //     // Para $x -> -oo$:

  //     $display(
  //       limits("lím")_(x -> -oo) f(x)
  //       = limits("lím")_(x -> +oo) f(-x)
  //       = limits("lím")_(x -> +oo) [-x - frac(4, (-x - 1)^2)]
  //       = limits("lím")_(x -> +oo) [-x - frac(4, (x + 1)^2)] = \
  //       = -oo - 4/(oo+1)^2
  //       = -oo - 4/oo
  //       = -oo - 0
  //       = -oo
  //     )$

  //     Por tanto, *no tiene asíntota horizontal por la izquierda*.

  //     *Asíntota vertical:*

  //     Como el dominio de la función es $display(D = RR \\ {1})$

  //     Estudiamos el comportamiento cuando $x -> 1$.

  //     Por la *izquierda*:

  //     $display(
  //       limits("lím")_(x -> 1^-) f(x)
  //       = limits("lím")_(x -> 1^-) [x - frac(4, (x - 1)^2)]
  //       = 1 - frac(4, 0)
  //       = -oo
  //     )$

  //     Por la *derecha*:

  //     $display(
  //       limits("lím")_(x -> 1^+) f(x)
  //       = limits("lím")_(x -> 1^+) (x - frac(4, (x - 1)^2))
  //       = 1 - frac(4, 0)
  //       = -oo
  //     )$

  //     Como los dos límites laterales coinciden,

  //     $
  //       limits("lím")_(x -> 1) f(x) = -oo
  //     $

  //     Por tanto, tiene una *asíntota vertical* en *$x=1$*

  //     *Asíntota oblicua:*

  //     Una posible asíntota oblicua tiene la forma: *$display(y = m x + n)$*

  //     Calculamos primero la pendiente:

  //     Para $x -> +oo$:

  //     $display(
  //       m = limits("lím")_(x -> +oo) frac(x - frac(4, (x - 1)^2), x) =
  //       lim_(x -> +oo) (1 - frac(4, x (x - 1)^2)) =
  //       1 - 5/ oo(oo-1)^2=
  //       1 - 5/oo =
  //       1 - 0 =
  //       1
  //     )$

  //     Para $x -> -oo$:

  //     $display(
  //       m' = limits("lím")_(x -> -oo) frac(x - frac(4, (x - 1)^2), x) =
  //       limits("lím")_(x -> oo) frac(-x - frac(4, (-x - 1)^2), -x) =
  //       limits("lím")_(x -> oo) frac(-x - frac(4, (x + 1)^2), -x) =
  //       limits("lím")_(x -> +oo) (1 + frac(4, x (x + 1)^2)) = \
  //       1 + 5/ oo(oo+1)^2=
  //       1 + 5/oo =
  //       1 + 0 =
  //       1
  //     )$

  //     Por tanto, tenemos dos asíntotas con pendiente *$m = 1$*

  //     Calculamos ahora la ordenada $n$.

  //     Para $x -> +oo$:

  //     $display(
  //       n = limits("lím")_(x -> +oo) [f(x) - x] =
  //       limits("lím")_(x -> +oo) [ x - frac(4, (x - 1)^2) - x ] =
  //       limits("lím")_(x -> +oo) -frac(4, (x - 1)^2) =
  //       1/oo^2 = 1/oo = 0
  //     )$

  //     Para $x -> -oo$:

  //     $display(
  //       n = limits("lím")_(x -> -oo) [f(x) - x] =
  //       limits("lím")_(x -> -oo) [ x - frac(4, (x - 1)^2) - x ] =
  //       limits("lím")_(x -> +oo) [ -x - frac(4, (-x - 1)^2) + x ] =
  //       limits("lím")_(x -> +oo) [ - frac(4, (x + 1)^2)] =
  //       1/oo^2 = 1/oo = 0
  //     )$

  //     Luego tenemos la asíntota *$y = x$* a la que se acerca la función tanto por la derecha como por la izquierda.

  //     #align(center, cetz.canvas({
  //       import cetz.draw: *
  //       import cetz-plot: *
  //       plot.plot(
  //         size: (6, 6),
  //         x-max: 10,
  //         x-min: -10,
  //         y-max: 10,
  //         y-min: -10,
  //         // x-grid: "both",
  //         // y-grid: "both",
  //         grid: none,
  //         x-tick-step: 2,
  //         y-tick-step: 2,
  //         x-minor-tick-step: 1,
  //         y-minor-tick-step: 1,
  //         axis-style: "school-book",
  //         {
  //           plot.add(
  //             domain: (-10, 0.9),
  //             x => x - 4 / ((x - 1) * (x - 1)),
  //             style: (stroke: blue),
  //             samples: 200,
  //           )
  //           plot.add(
  //             domain: (1.1, 10),
  //             x => x - 4 / ((x - 1) * (x - 1)),
  //             style: (stroke: blue),
  //           )
  //           plot.add(
  //             domain: (-10, 10),
  //             x => x,
  //             style: (stroke: yellow + 1pt, dash: (6pt, 5pt)),
  //             samples: 200,
  //           )
  //           plot.add-vline(
  //             1,
  //             style: (stroke: yellow + 1pt, dash: (6pt, 5pt)),
  //           )
  //         },
  //       )
  //     }))
  //   ]
  // ],
)
