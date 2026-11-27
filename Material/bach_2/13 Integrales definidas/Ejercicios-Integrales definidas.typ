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
          [x^3 - 2x^2 + x]_0^2 =
          (2^3 - 2dot 2^2 + 2) - (0^3 - 2 dot 0^2 + 0)
          = #result[2]
        )$,
      )[$display(∫_0^2 (3x^2 - 4x + 1) dif x)$]],
      [#subquestion[$display(∫_(-1)^1 (x^3 + x) dif x)$]
        #solution[
          $display(
            display(∫_(-1)^1 (x^3 + x) dif x) =
            [x^4/4 + x^2/2]_(-1)^(1) =
            (1^4/4 + 1^2/2) - ((-1)^4/4 + (-1)^2/2) = \ =
            (1/4 + 1/2) - (1/4 + 1/2)
            = #result[0]
          )$,
        ]
      ],

      [#subquestion(
        solution: $display(
          =display(
            [ln(x)]_1^e =
            ln(e) - ln(1)
            = #result[1]
          )
        )$,
      )[$display(∫_1^e 1/x dif x)$]],

      [#subquestion(
        solution: $display(
          = [(x^2 + 3x)]_1^2 =
          (2^2 + 3 dot 2) - (1^2 + 3 dot 1)
          = #result(6)
        )$,
      )[$display(∫_1^2 (2x + 3) dif x)$]],

      [#subquestion(
        solution: $display(
          = [(x^6/6 - (3x^4)/4)]_(-2)^(2) =
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
            [1/2 [(x^2 + 1) arctan (x) - x]]_0^1 = \ =
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
            [(2-x^2) cos(x) + 2x "sen"(x)]_(-pi)^pi = \ =
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
            [e^x (x-1)]_(-1)^(#hide[+]1) =
            0 - (-2/e) =
            #result($display(2/e)$)
          )$
        ]
      ],
      [#subquestion()[$display(∫_(0)^2 (2x+1)/(x^2+x+1)^2 dif x)$]
        #solution[
          $display(
            ∫_(0)^2 (2x+1)/(x^2+x+1)^2 dif x =
            [(-1)/(x^2+x+1)]_0^2 =
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
      #solution(color: red)[
        En $[-pi, pi]$, la función es $sin(x)$ hasta $x=1$ y $cos(x)$ desde $x=1$.

        $display(
          ∫_(-pi)^pi f(x) dif x =
          ∫_(-pi)^1 "sen"(x) dif x +
          ∫_1^pi cos(x) dif x
        )$

        $display(
          = [-cos(x)]_(-pi)^1 + [sin(x)]_1^pi =
          (-cos(1)+cos(-pi)) + (sin(pi)-sin(1))
          = #result[$1-cos(1)-sin(1)$]
        )$
      ]
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
      [#subquestion()[$display(F(x) = ∫_0^x e^(-t^2) dif t)$.]
        #solution()[$display(F'(x) = e^(-x^2))$]
      ],
      [
        #subquestion()[$display(F(x) = ∫_x^5 sqrt(t) dot ln(t^2+1)^4 dif t)$.]

        #solution()[$display(F(x) = ∫_x^5 sqrt(t) dot ln(t^2+1)^4 dif t = -∫_5^x sqrt(t) dot ln(t^2+1)^4 dif t) = \ =∫_5^x -sqrt(t) dot ln(t^2+1)^4 dif t ) =>$

          $display(F'(x) = -sqrt(x) dot ln(x^2+1)^4)$
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

          Luego el área es

          $display(
            A = integral_(-1)^3 2x+3 - x^2 dif x = [x^2 + 3x - x^3/3]_(-1)^3 = \ =((3)^2 + 3 (3) - (3)^3/3) - ((-1)^2 + 3 (-1) - (-1)^3/3) =
            (9 + 9 - 9) - (1 - 3 +1/3) = \ = 9 - (-5/3) =
            #result[$display(32/6)$]
          )$
        ]
      ],
      [
        #subquestion()[Área limitada por $y = √x$ y $y = x$.]
        #solution[
          Buscamos los puntos de corte entre $sqrt(x)$ y $x$

          $display(sqrt(x) = x) => x = x^2 => x^2 - x = 0 => x(x-1) = 0 => x = 0 " y " x = 1$

          #clarification[Recuerda, que si al resolver una ecuación, hemos elevar al cuadrado en algún paso, debemos comprobar el resultado de la ecuación. En nuestro caso, las dos soluciones son correctas.]

          Luego los límites de integración son $0$ y $1$.

          Como $sqrt(x) >= x " " forall x in [0, 1]$, el área que nos pides es:

          $display(
            A = integral_(0)^1 sqrt(x) - x dif x =
            integral_(0)^1 x^(1/2) - x dif x =
            [x^(3/2)/(3/2) - x^2/2]_0^1 = [(2x^(3/2))/3 - x^2/2]_0^1 = \ =
            ((2 dot 1^(3/2))/ 3 - 1^2/2) - ((2 dot 0^(3/2))/ 3 - 0/2) =
            2/3-1/2 =
            #result($display(1/6)$)
          )$

        ]
      ],
      [
        #subquestion()[Área encerrada entre $y = x^2$ y $y = 4 - x^2$.]
        #solution(color: red)[
          $x^2 = 4-x^2 => x=-sqrt(2)$ o $x=sqrt(2)$.
          En ese intervalo, $4-x^2 >= x^2$:

          $display(
            A = ∫_(-sqrt(2))^(sqrt(2)) (4-x^2-x^2) dif x =
            [4x-2x^3/3]_(-sqrt(2))^(sqrt(2)) =
            #result[$display(16 sqrt(2)/3)$]
          )$
        ]
      ],
      [
        #subquestion()[Área limitada por $y = |x|$ y $y = 5$.]
        #solution(color: red)[
          Los puntos de corte son $x=-5$ y $x=5$.

          $display(
            A = ∫_(-5)^5 (5-|x|) dif x =
            2∫_0^5 (5-x) dif x =
            2[5x-x^2/2]_0^5 =
            #result[$25$]
          )$
        ]
      ],
      [
        #subquestion()[Área entre $y = x^2 - 4$ y el eje $x$.]
        #solution(color: red)[
          La curva corta al eje en $x=-2$ y $x=2$. Como $x^2-4<=0$:

          $display(
            A = ∫_(-2)^2 -(x^2-4) dif x =
            [4x-x^3/3]_(-2)^2 =
            #result[$display(32/3)$]
          )$
        ]
      ],
      [
        #subquestion()[Área comprendida entre $y = "sen"(x)$ y el eje $x$ en $[-π, π]$.]
        #solution(color: red)[
          $display(
            A = ∫_(-π)^0 -"sen"(x) dif x +
            ∫_0^π "sen"(x) dif x =
            2∫_0^π "sen"(x) dif x =
            2[-cos(x)]_0^π =
            #result[$4$]
          )$
        ]
      ],
      [
        #subquestion()[Área comprendida entre $y = |sin(x)|$ y el eje $x$ en $[0, 2π]$.]
        #solution(color: red)[
          $display(
            A = ∫_0^(2π) |"sen"(x)| dif x =
            2∫_0^π "sen"(x) dif x =
            2[-cos(x)]_0^π =
            #result[$4$]
          )$
        ]
      ],
      [
        #subquestion()[Región limitada por $y = x^2$, $y = 4$ y el eje $y$.]
        #solution(color: red)[
          Para $x in [0,2]$, se cumple $x^2<=4$:

          $display(
            A = ∫_0^2 (4-x^2) dif x =
            [4x-x^3/3]_0^2 =
            #result[$display(16/3)$]
          )$
        ]
      ],
    )
  ],
  [
    #question()[Calcula los siguientes áreas:]
    #subquestion()[Área entre la curva $f(x) = x^2$, su perpendicular en $x=2$ y el eje de abscisas.]
    #solution(color: red)[
      La tangente en $x=2$ es $y=4x-4$, así que la perpendicular tiene pendiente $-1/4$:

      $y-4=-1/4(x-2) => y=9/2-x/4$

      Esta recta corta al eje $x$ en $x=18$. El área limitada por la parábola, la recta y el eje es:

      $display(
        A = ∫_0^2 x^2 dif x +
        ∫_2^18 (9/2-x/4) dif x =
        [x^3/3]_0^2 +
        [9x/2-x^2/8]_2^18 =
        #result[$display(104/3)$]
      )$
    ]
    #subquestion()[Área entre la curva $f(x) = x^2$, su tangente en $x=2$ y el eje de abscisas.]
    #solution(color: red)[
      La tangente en $x=2$ es $y=4x-4$ y corta al eje $x$ en $x=1$. El área encerrada es:

      $display(
        A = ∫_0^1 x^2 dif x +
        ∫_1^2 (x^2-(4x-4)) dif x =
        1/3 + 1/3 =
        #result[$display(2/3)$]
      )$
    ]
  ],
  [
    #question()[Calcula el volumen generado por las siguientes funciones al girar sobre el eje x:]
    #questions-columns(
      [
        #subquestion()[$f(x) = x^2$, entre $x=0$ y $x=5$.]


        #solution[
          Primero notamos que $f(x) >= 0 " " forall x in [0, 5]$, luego el volumen va a coincidir con el valor de la integral.

          $display(
            V = ∫_(a)^(b) pi f(x)^2 dif x = ∫_0^5 pi (x^2)^2 dif x =
            ∫_(a)^(b) pi x^4 dif x =
            [pi x^5/5]_0^5 = pi 5^5/5 - pi 0^5/5 = pi 5^4 = #result[$625 pi$]
          )$
        ]
      ],
      [
        #subquestion()[$f(x) = sqrt(r^2-x^2)$, entre $x=-r$ y $x=r$.]
        #solution[
          $display(
            V = ∫_(a)^(b) pi f(x)^2 dif x =
            ∫_(-r)^(r) pi (sqrt(r^2-x^2))^2 dif x =
            pi ∫_(-r)^(r) r^2-x^2 dif x =
            pi [r^2 x - x^3/3]_(-r)^(r) = \ =
            pi [(r^2 r - r^3/3) - (r^2 (-r) - (-r)^3/3)] =
            pi [(r^3- r^3/3) - ((-r^3) + r^3/3) ] = \ =
            pi [(2 r^3)/3 + (2r^3)/3] =
            #result[$display(4/3 pi r^3)$]
          )$

          #clarification[Con esto, hemos demostrado la formula del volumen de una esfera de radio $r$.]

        ]
      ],
    )
  ],
  [
    #question()[Sabemos que $display(∫_0^x f(t) dif t = x^2(1+x))$, siendo continua en $RR$. Calcula $f(2)$.]
    #solution()[
      Tenemos:
      $ F(x)= ∫_0^x f(t) dif t = x^2(1+x) = x^2 + x^3 $

      Como f es continua en R, aplicamos el Teorema Fundamental del Cálculo:
      $ F'(x) = f(x) $

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
  [
    #question()[*PAU Madrid 2026 - ordinaria*

      Sea $f(x) = ln(x)$. Halla el área de la región delimitada por la gráfica de $f(x)$, el eje $x$ y la recta $x = e$
    ]
    #solution(color: red)[
      La gráfica corta al eje $x$ en $ln(x)=0$, es decir, $x=1$, y es positiva en $[1,e]$.

      $display(
        A = ∫_1^e ln(x) dif x =
        [x ln(x)-x]_1^e =
        (e ln(e)-e)-(1 ln(1)-1) =
        #result[$2$]
      )$
    ]
  ],
  [
    #question()[*PAU Madrid 2026 - coincidentes, pregunta 2*

      Dada $f(x)=|x^2-6x+5|$, calcula el área delimitada por la gráfica de $f$, el eje $x$ y las rectas $x=3$ y $x=6$.
    ]
    #solution(color: red)[
      $x^2-6x+5=(x-1)(x-5)$, así que cambia de signo en $x=5$:
      es negativa en $(3,5)$ y positiva en $(5,6)$.

      $display(
        A = ∫_3^5 -(x^2-6x+5) dif x +
        ∫_5^6 (x^2-6x+5) dif x =
        16/3 + 7/3 =
        #result[$display(23/3)$]
      )$
    ]
  ],
  [
    #question()[*PAU Madrid 2024 - extraordinaria - pregunta B2*

      Sean $f(x)=x^3-3x$ y $g(x)=x(x-3)$. Calcula el área de la región acotada entre sus gráficas.
    ]
    #solution(color: red)[
      $display(f(x)-g(x)=x^3-3x-(x^2-3x)=x^2(x-1))$

      Las curvas se cortan en $x=0$ y $x=1$. En $[0,1]$, $f-g<=0$, luego:

      $display(
        A = ∫_0^1 -(x^3-x^2) dif x =
        [-x^4/4+x^3/3]_0^1 =
        #result[$display(1/12)$]
      )$
    ]
  ],
  [
    #question()[*PAU Madrid 2023 - extraordinaria, pregunta B2*

      Sean $f(x)=2+2x-2x^2$ y $g(x)=2-6x+4x^2+2x^3$. Calcula el área delimitada por ambas curvas y las rectas $x=0$ y $x=2$.
    ]
    #solution(color: red)[
      $display(
        f(x)-g(x)=
        8x-6x^2-2x^3=
        -2x(x+4)(x-1)
      )$

      Por tanto, cambia de signo en $x=1$ dentro de $[0,2]$:

      $display(
        A = ∫_0^1 (8x-6x^2-2x^3) dif x +
        ∫_1^2 -(8x-6x^2-2x^3) dif x =
        [4x^2-2x^3-x^4/2]_0^1 +
        [-4x^2+2x^3+x^4/2]_1^2
      )$

      $display(
        = 3/2 + (19/2) =
        #result[$11$]
      )$
    ]
  ],
  [
    #question()[*PAU Madrid 2025 - extraordinaria, pregunta B2*
      Un muro rectangular de la biblioteca pública del barrio se va a pintar con la ayuda de unos grafiteros. La dimensión del muro es de 3 metros de alto y 12 metros de largo. Colocando la esquina inferior izquierda del muro en el origen de coordenadas, se va a utilizar la curva $display(f(x) = cos((pi x)/9) + 2)$ para diferenciar dos regiones del muro que serán pintadas con dos colores distintos. Se sabe que con un bote de spray se pueden pintar 3 metros cuadrados de superficie.

      #subquestion[Halle el valor máximo y el valor mínimo de la función $f(x)$ en el intervalo $[0, 12]$. ¿Está la curva en este intervalo $[0, 12]$ contenida completamente en el muro?]

      #solution[
        Para calcular los máximos y mínimos utilizamos la derivada de $f(x)$.

        $display(f'(x) = - pi/9 "sen"((pi x)/9))$

        Igualamos a 0:

        $display(
          f'(x) = - pi/9 "sen"((pi x)/9) = 0 =>
          "sen"((pi x)/9) = 0
        )$

        Como el seno se hace cero en $0$, $pi$, $2 pi$, buscamos los punto donde:

        $display(
          cases(
            reverse: #false,
            (pi x)/9 = 0,
            (pi x)/9 = pi,
            (pi x)/9 = 2 pi,
          ) =>
          cases(
            reverse: #false,
            x= 0,
            x = 9,
            x = 18,
          )
        )$

        Nos quedamos con $x = 0$ y $x = 9$ que son los valores que están dentro del intervalo $[0, 12]$.

        Para ver si son un máximo y un mínimo, tomamos la segunda derivada.

        $display(f''(x) = - pi^2/81 "cos"((pi x)/9))$

        $display(f''(0) = - pi^2/81 "cos"((pi dot 0)/9)) < 0 =>$ se trata de un máximo relativo.

        $display(f''(9) = - pi^2/81 "cos"((pi dot 9)/9)) = - pi^2 (-1) = pi^2 > 0 =>$ se trata de un mínimo relativo.

        Comprobamos si los máximos y mínimos están dentro del muro.

        $f(0) = "cos"((pi dot 0)/9) + 2 = "cos"(0) + 2 = 3 =>$ Está dentro del muro, justo en la esquina superior izquierda.

        $f(9) = "cos"((pi dot 9)/9) + 2 = "cos"(pi) + 2 = -1 + 2 = 1 > 0 =>$ Está dentro del muro.

        Tenemos que ver el valor de la función en $x=12$, porque, aunque no tenga un máximo, ni mínimo relativo, podría tener un máximo o mínimo absoluto dentro del intervalo, o incluso salirse del muro.

        $f(12) = "cos"((pi dot 12)/9)+2 = -1/2 + 2 = 3/2 = 1,5 < 3 =>$ También está dentro del muro
      ]

      #subquestion[Halle el área que tienen que pintar de cada color.]
      #solution[Vamos a calcular el área bajo la curva:

        $display(
          A_b = ∫_0^12 cos((pi x)/9) + 2 dif x =
          [9/pi "sen"((pi x)/9) + 2 x]_0^(12) =
          (9/pi "sen"((pi 12)/9) + 2 dot 12) - (9/pi "sen"((pi 0)/9) + 2 dot 0) = \ =
          9/pi "sen"((12 pi) /9)
        ) + 24 - 0 =
        #result[$display(24 - (9 sqrt(3))/(2pi))$]
        approx #result[$display(21","51 m^2)$]$

        El área sobre la curva, será el área total de la pared menos el área bajo la curva.

        $A_s = display(
          3 dot 12 - A_b = 36 - (24 - (9 sqrt(3))/(2pi))
          = #result[$display(12 + (9 sqrt(3))/(2pi))$]
          approx #result[$display(14","48 m^2)$]
        )$
      ]

      #subquestion[¿Cuántos botes de spray se tienen que comprar como mínimo para pintar toda el área bajo la curva $f(x)$?]

      #solution[Si con cada bote de spray, podemos pintar $3 m^2$

        Para la parte inferior necesitamos $8$ botes, para la parte inferior,
        ya que $8 dot 3 = 24 > 21","51$
        y 5 botes para la parte superior, ya que $5 dot 3 = 15 > 14,48$
        .]
    ]
  ],
)
