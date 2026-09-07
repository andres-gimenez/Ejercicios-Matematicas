#import "@preview/g-exam:0.4.5": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

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

      $limits("lím")_(x->2^-) f(x) = 2^2 - 1 = 4 -1 = 3$

      $limits("lím")_(x->2^+) f(x) = 3 dot 2 - 4 = 6 -4 = 2$

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
    #subquestion()[Estudia la continuidad de $f(x)$ en todo su dominio]

    #subquestion()[Si $a=5$, que tipo de discontinuidad tiene $f(x)$ en $x=2$?]
  ],
  [
    #question()[Estudia la continuidad de las siguientes funciones:]

    #questions-columns(
      [
        #subquestion()[$display(f(x) = (x^2 - 4)/(x^2 - x - 6))$]
      ],
      [
        #subquestion()[$display(f(x) = (2x - 1)/(x^2 - 4x + 4))$]
      ],
      [
        #subquestion()[$display(f(x) = (x^2 - 3x + 2)/(x^2 - 1))$]
      ],
      [
        #subquestion()[$display(f(x) = (x^2 - 4)/(x - 2))$]
      ],
      [
        #subquestion()[$display(f(x) = (x^3 - 8)/(x - 2))$]
      ],
      [
        #subquestion()[$display(f(x) = ln(x-3))$]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(4 - x^2))$]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(x^2 - 4))$]
      ],
      [
        #subquestion()[$display(f(x) = ln(x^2-4))$]
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
)
