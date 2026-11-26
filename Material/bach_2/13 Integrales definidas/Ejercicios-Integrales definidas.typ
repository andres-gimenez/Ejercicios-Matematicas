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
    number: [Integrales definidas],
    // content: [($X->infinity$)],
    model: [v1],
  ),

  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default: config.at("show-solutions")),
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Calcula el valor de las siguientes integrales definidas:]
    #questions-columns(
      [#subquestion(
        solution: $display(
          =
          x^3 - 2x^2 + x scripts(|)_0^2 =
          (2^3 - 2dot 2^2 + 2) - (0^3 - 2 dot 0^2 + 0)
          = #result[2]
        )$,
      )[$display(∫_0^2 (3x^2 - 4x + 1) dif x)$]],
      [#subquestion[$display(∫_(-1)^1 (x^3 + x) dif x)$]
        #solution[
          $display(
            display(∫_(-1)^1 (x^3 + x) dif x) =
            x^4/4 + x^2/2 scripts(|)_(-1)^(#hide[+]1) =
            (1^4/4 + 1^2/2) - ((-1)^4/4 + (-1)^2/2) = \ =
            (1/4 + 1/2) - (1/4 + 1/2)
            = #result[0]
          )$,
        ]
      ],

      [#subquestion(
        solution: $display(
          = ln(x) scripts(|)_1^e =
          ln(e) - ln(1)
          = #result[1]
        )$,
      )[$display(∫_1^e 1/x dif x)$]],

      [#subquestion(
        solution: $display(
          = (x^2 + 3x) scripts(|)_1^2 =
          (2^2 + 3 dot 2) - (1^2 + 3 dot 1)
          = #result(6)
        )$,
      )[$display(∫_1^2 (2x + 3) dif x)$]],

      [#subquestion(
        solution: $display(
          = (x^6/6 - (3x^4)/4) scripts(|)_(-2)^(#hide[+]2) =
          (2^6/6 - (3 dot 2^4)/4) - ((-2)^6/6 - (3 dot (-2)^4)/4)
          = 0
        )$,
      )[$display(∫_(-2)^2 (x^5 - 3x^3) dif x)$]],

      [#subquestion()[$display(∫_(0)^1 x arctan(x) dif x)$]
        #solution()[
          Integramos por partes:

          $ ∫u dif v = u v - ∫v dif u $

          Elegimos:

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &u = arctan (x) & => dif u = 1/(1+x^2) dif x,
              &dif v = x dif x & => v = x^2/2,
            )
          )$

          $display(
            ∫ x arctan(x) dif x =
            arctan(x) dot x^2/2 - ∫ x^2/2 dot 1/(1+x^2) dif x =
            x^2/2 arctan (x) - 1/2 ∫ x^2 /(1+x^2) dif x = \ =
            x^2/2 arctan (x) - 1/2 ∫ ((1+x^2) - 1)/(1+x^2) dif x =
            x^2/2 arctan (x) - 1/2 ∫ 1 - 1/(1+x^2) dif x = \ =
            x^2/2 arctan (x) - 1/2 [∫ 1 dif x - ∫ 1/(1+x^2) dif x] =
            x^2/2 arctan (x) - 1/2 [x - arctan (x)] = \
            x^2/2 arctan (x) - x/2 - (arctan (x))/2 =
            1/2 [(x^2 + 1) arctan (x) - x] + C
          )$

          Aplicando la regla de Barrow:

          $display(
            ∫_(0)^1 x arctan(x) dif x =
            1/2 [(x^2 + 1) arctan (x) - x] scripts(|)_0^1 = \ =
            1/2 [(1^2 + 1) arctan (1) - 1] - 1/2 [(0^2 + 1) arctan (0) - 0] =
            1/2 dot [(2pi)/4-1] - 0 =
            #result($display(pi/4 - 1/2)$)
          )$
        ],
      ],
      [#subquestion()[$display(∫_(-pi)^pi x^2 "sen"(x) dif x)$]
        #solution()[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &u = x^2 & => dif u = 2 x dif x,
              &dif v = "sen"(x) dif x & => v = integral "sen"(x) dif x = -cos(x),
            )
          )$

          $display(
            ∫ x^2 "sen"(x) dif x =
            -x^2 cos(x) + 2 ∫ x cos(x) dif x
          )$

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &u = x & => dif u = dif x,
              &dif v = "cos"(x) dif x & => v = integral "cos"(x) dif x = "sen"(x),
            )
          )$

          $display(
            ∫ x^2 "sen"(x) dif x =
            -x^2 cos(x) + 2[x "sen"(x) - integral "sen"(x) dif x] =
            -x^2 cos(x) + 2[x "sen"(x) + cos (x)] = \ =
            (2-x^2) cos(x) + 2x "sen"(x)
          )$

          $display(
            ∫_(-pi)^pi x^2 "sen"(x) dif x =
            (2-x^2) cos(x) + 2x "sen"(x) script(|)_(-pi)^(#hide[+]pi) = \ =
            [(2-pi^2) cos(pi) + 2pi "sen"(pi)] - [(2-(-pi)^2) cos(-pi) + 2pi "sen"(-pi)] = \ =
            [(2-pi^2) (-1) + 2pi dot 0]- [(2-(-pi)^2) (-1) + 2pi dot 0] =
            [-(2-pi^2)] - [-(2-pi^2)] = #result[0]
          )$
        ]
      ],
      [#subquestion[$display(∫_(-1)^1 x e^x dif x)$]
        #solution[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &u = x & => dif u = dif x,
              &dif v = e^x dif x & => v = integral e^x dif x = e^x,
            )
          )$

          $display(∫ x e^x dif x) = x e^x - ∫ e^x dif x = x e^x - e^x$

          $display(
            ∫_(-1)^1 x e^x dif x =
            e^x (x-1)script(|)_(-1)^(#hide[+]1) =
            0 - (-2/e) =
            #result($display(2/e)$)
          )$
        ]
      ],
      [#subquestion()[$display(∫_(0)^2 (2x+1)/(x^2+x+1)^2 dif x)$]
        #solution[
          $display(
            ∫_(0)^2 (2x+1)/(x^2+x+1)^2 dif x =
            (-1)/(x^2+x+1)script(|)_0^2 =
            -1/7 - (-1) =
            #result[$display(6/7)$]
          )$
        ]
      ],
      [
        #subquestion()[$display(∫_(-pi)^pi"sen"(x) dif x)$ ]
        #solution[
          Vamos a aprovechar que la función $f(x) = "sen"(x)$ es impar, ya que $-"sen(x)" = "sen"(-x)$.

          $display(
            ∫_(-pi)^pi"sen"(x) dif x =
            ∫_(-pi)^0"sen"(x) dif x + ∫_0^pi"sen"(x) dif x =
            - ∫_0^(-pi)"sen"(x) dif x + ∫_0^pi"sen"(x) dif x = \ =
            - ∫_0^(pi) -"sen"(-x) dif x + ∫_0^pi"sen"(x) dif x =
            - ∫_0^(pi) "sen"(x) dif x + ∫_0^pi"sen"(x) dif x =
            #result(0)
          )$
        ]
      ],
    )
  ],
  [
    #question()[Si $display(∫_1^4 f(x) dif x = 6)$ y $display(∫_4^6 f(x) dif x = -2)$, calcula:]
    #questions-columns(
      [
        #subquestion(
          solution: $display(= ∫_1^4 f(x) dif x + ∫_4^6 f(x) dif x = 6 + (-2) = #result[4])$,
        )[$display(∫_1^6 f(x) dif x)$]
      ],
      [
        #subquestion(
          solution: $display(= ∫_6^1 f(x) dif x = -∫_1^6 f(x) dif x = #result[-4])$,
        )[$display(∫_6^1 f(x) dif x)$]
      ],
    )
  ],
  [
    #question()[Calcula el valor de las siguientes integrales de la función:

      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & x^2 & "si" & x < 0,
          & 2x & "si" & 0 <= x < 2,
          & 10-3x & "si" & x > 2,
        )
      $
    ]
    #questions-columns(
      [
        #subquestion()[$display(∫_(-2)^1 f(x) dif x)$]
        #solution()[
          $display(
            ∫_(-2)^1 f(x) dif x =
            ∫_(-2)^0 f(x) dif x + ∫_0^1 f(x) dif x =
            ∫_(-2)^0 x^2 dif x + ∫_0^1 2x dif x =
            [x^3/3]_(-2)^0 + [x^2]_(0)^(1) = \ =
            - (-2)^3/3 + 1^2 = 8/3 +1 = #result[$display(11/3)$]
          )$
        ]
      ],
      [
        #subquestion()[$display(∫_(1)^4 f(x) dif x)$]
        #solution()[
          $display(
            ∫_1^4 f(x) dif x =
            ∫_1^2 f(x) dif x + ∫_2^4 f(x) dif x =
            ∫_1^2 2x dif x + ∫_2^4 10-3x dif x =
            [x^2]_(1)^(2) + [10x-(3x^2)/2]_(2)^(4) = \ =
            2^2 - 1^2 + (10 dot 4 - (3 dot 4^2)/2) - (10 dot 2 - (3 dot 2^2)/2) =
            4 -1 + 40 - 48/2 - 20 + 12/2 =
            #result[$display(5)$]
          )$
        ]
      ],
      [
        #subquestion()[$display(∫_(-2)^4 f(x) dif x)$]
        #solution[
          $display(
            ∫_(-2)^4 f(x) dif x =
            ∫_(-2)^1 f(x) dif x + ∫_1^4 f(x) dif x =
            11/3 + 5 =
            #result[$display(26/3)$]
          )$
        ]
      ],
    )
  ],
  [
    #question()[Siendo la función:

      $
        display(
          f(x) = cases(
            reverse: #false, delim: "{", gap: #1em,
            & "sen"(x) & "si" & x < pi/2,
            & e^x & "si" & pi/2<= x < 1,
            & cos(x) & "si" & x >= 1
          )
        )
      $

      Calcula

      $ ∫_(-pi)^pi f(x) dif x $
    ]
  ],
  [
    #question()[Calcula las derivadas de las siguientes funciones utilizando el *teorema fundamental del calculo*:
      \ #clarification()[La (d) es muy fácil]]
    #questions-columns(
      [#subquestion()[$display(F(x) = ∫_0^x cos(t) dif t)$.]
        #solution()[$display(F'(x) = cos(x))$]
      ],
      [#subquestion()[$display(F(x) = ∫_3^x (t^2+1)^4 dif t)$.]
        #solution()[$display(F'(x) = (x^2+1)^4)$]
      ],
      [#subquestion()[$display(F(x) = ∫_0^x e^(-t)^2 dif t)$.]
        #solution()[$display(F'(x) = e^(-x)^2)$]
      ],
      [
        #subquestion()[$display(F(x) = ∫_x^5 sqrt(t) dot ln(t^2+1)^4 dif t)$.]

        #solution()[$display(F(x) = ∫_x^5 sqrt(t) dot ln(t^2+1)^4 dif t = -∫_5^x sqrt(t) dot ln(t^2+1)^4 dif t) = \ =∫_5^x -sqrt(t) dot ln(t^2+1)^4 dif t ) =>$

          $display(F'(x) = -sqrt(x) dot ln(x^2+1)^4 dif x) =>$
        ]

      ],
    )
  ],
  [
    #question()[Área entre dos curvas:]
    #questions-columns(
      [
        #subquestion()[Área comprendida entre $y = x^2$ y $y = 2x + 3$.]
        #solution[
          Buscamos los puntos de corte entre $x^2$ y $2x+1$

          $x^2 = 2x+3 => x = -1 " y " x = 3$

          Comprobamos que $2x + 3 >= x^2 " " forall x in [-1, 3]$

          Luego el area es

          $display(
            A = integral_(-1)^3 2x+3 - x^2 dif x = [x^2 + 3x - x^3/3]_(-1)^3 = \ =((3)^2 + 3 (3) - (3)^3/3) - ((-1)^2 + 3 (-1) - (-1)^3/3) =
            (9 + 9 - 9) - (1 - 3 +1/3) = \ = 9 - (-5/3) =
            #result[$display(32/6)$]
          )$
        ]
      ],
      [
        #subquestion()[Área limitada por $y = √x$ y $y = x$.]
      ],
      [
        #subquestion()[Área encerrada entre $y = x^2$ y $y = 4 - x^2$.]
      ],
      [
        #subquestion()[Área limitada por $y = |x|$ y $y = 5$.]
      ],
      [
        #subquestion()[Área entre $y = x^2 - 4$ y el eje $x$.]
      ],
      [
        #subquestion()[Área comprendida entre $y = "sen"(x)$ y el eje $x$ en $[-π, π]$.]
        // #solution[
        //   Vamos a aprovechar que la función $f(x) = "sen"(x)$ es impar, ya que $"sen(x)" = -"sen"(-x)$.

        // ]
      ],
      [
        #subquestion()[Área comprendida entre $y = |sin(x)|$ y el eje $x$ en $[0, 2π]$.]
      ],
      [
        #subquestion()[Región limitada por $y = x^2$, $y = 4$ y el eje $y$.]
      ],
    )
  ],
  [
    #question()[Calcula los siguientes áreas:]
    #subquestion()[Área entre la curva $f(x) = x^2$, su perpendicular en $x=2$ y el eje de abscisas.]
    #subquestion()[Área entre la curva $f(x) = x^2$, su tangente en $x=2$ y el eje de abscisas.]
  ],
  [
    #question()[Calcula el volumen generado por las siguientes funciones al girar sobre el eje x:]
    #subquestion()[$f(x) = x^2$, entre $x=0$ y $x=5$.]

    #subquestion()[$f(x) = sqrt(r^2-x^2)$, entre $x=-r$ y $x=r$.]
  ],
  [
    #question()[Sabemos que $display(∫_0^x f(t) dif t = x^2(1+x))$, siendo continua en $RR$. Calcula $f(2)$.]
    #solution()[
      Tenemos:
      $ F(x)= ∫_0^x f(t) dif t = x^2(1+x) = x^2 + x^3 $

      Como f es continua en R, aplicamos el Teorema Fundamental del Cálculo:
      $ F'(x) = ∫_0^x f(t) dif t = f(x) $

      Derivamos el segundo miembro:
      $ (x^2 + x^3)' = 2x + 3x^2 $

      Por tanto:
      $ f(x) = 2x + 3x^2 $

      Evaluamos en x = 2:
      $ f(2) = 2·2 + 3·2^2 = 4 + 12 = 16 $

      Con lo que:

      $ #result($f(2) = 16$) $
    ]
  ],
)
