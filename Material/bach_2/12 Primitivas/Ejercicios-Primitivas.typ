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
    number: [Cálculo de primitivas],
    // content: [($X->infinity$)],
    model: [v1],
  ),

  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default: config.at("show-solutions")),
  // draft: true,
  question-points-position: none,
  //   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Integrales Inmediatas:]
    #questions-columns(
      [
        #subquestion(solution: $display(=#result($x^3-5x + C$))$)[$display(limits(integral)(3x^2 -5) dif x)$]
      ],
      [
        #subquestion(
          solution: $display(=#result($x^4 + 7/2 x^2 + x +C$))$,
        )[$display(limits(integral)(4x^3 + 7x + 1) dif x)$]
      ],
      [
        #subquestion(
          solution: $display(=limits(integral)x^(1/2) dif x = x^(1/2+1)/(1/2+1) = x^(3/2)/(3/2) = #result($(2sqrt(x^3))/3+C$))$,
        )[$display(limits(integral)sqrt(x) dif x)$]
      ],
      [
        #subquestion(
          solution: $=display(limits(integral)x^(-1/2) dif x = x^(-1/2+1)/(-1/2+1) = x^(1/2)/(1/2) = #result($2sqrt(x)+C$))$,
        )[$display(limits(integral) 1/sqrt(x) dif x)$]
      ],
      [
        #subquestion(
          solution: $display(=limits(integral) 2e^x dif x + limits(integral) 5 dif x = 2 limits(integral) e^x dif x + 5 limits(integral) dif x) = 2e^x + 5x + C$,
        )[$display(limits(integral) 2e^x + 5 dif x)$]
        #solution()[
          $display(limits(integral) 2e^x + 5 dif x=limits(integral) 2e^x dif x + limits(integral) 5 dif x = 2 limits(integral) e^x dif x + 5 limits(integral) dif x) = \ = (2e^x + C_1) + (5x + C_2) = #result($2e^x + 5x + C$)$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) "sen"(x) + cos(x) dif x)$]
        #solution()[
          $display(
            limits(integral) "sen"(x) + cos(x) dif x=limits(integral) "sen"(x) dif x + limits(integral)cos(x) dif x = -cos(x) + "sen"(x) = \
            = #result($"sen"(x) -cos(x) + C$)
          )$
        ]
      ],
      [
        #subquestion(solution: $display(=#result($1/6 (x+1)^6 + C$))$)[$display(limits(integral) (x+1)^5 dif x)$]
      ],
      [
        #subquestion[$display(limits(integral) 2x e^(x^2) - "sen" x dif x)$]
        #solution[
          $display(limits(integral) 2x e^(x^2) - "sen" x dif x = limits(integral) 2x e^(x^2) dif x - limits(integral) "sen" x dif x) = e^(x^2) - (-cos(x)) = #result($e^(x^2) + cos(x) + C$)$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (2x+3)/sqrt(x^2 + 3x + 2) dif x)$]
        #solution()[
          Como $(x^2 + 3x + 2)' = 2x+3$ la integral es inmediata.

          $display(
            limits(integral) (2x+3)/sqrt(x^2 + 3x + 2) dif x =
            limits(integral) (2x+3)(x^2 + 3x + 2)^(-1/2) dif x = \ =
            (x^2+3x+2)^(1/2)/(1/2) =
            #result($display(2 sqrt(x^2+3x+2) + C)$) \
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral)(3x^2)/(x^3 + 1) dif x)$]
        #solution()[
          Como $(x^3 + 1)' = 3x^2$ la integral es inmediata.

          $display(limits(integral)(3x^2)/(x^3 + 1) dif x = #result($display(ln|x^3+1|)$))$
        ]
      ],
      [
        #subquestion()[$display(limits(integral)1/sqrt(4 - x^2) dif x)$]
        #solution()[
          $display(
            limits(integral)1/sqrt(4 - x^2) dif x =
            limits(integral)1/(2sqrt((4 - x^2)/2^2)) dif x =
            limits(integral)1/2 sqrt(1 - (x/2)^2) dif x
          )$

          Como $display((x/2)' = 1/2)$

          $display(limits(integral)1/2 sqrt(1 - (x/2)^2) dif x = #result($"arcsen" (x/2) + C$))$

          Generalizando: $display(limits(integral)1/sqrt(a - x^2) dif x = "arcsen"(x/sqrt(a)) + C)$
        ]
      ],
      [
        #subquestion(
          solution: $display(=1/5 limits(integral) 5 cos(5x+1) dif x) = #result($display(1/5 "sen"(5x+1) + C)$)$,
        )[$display(limits(integral)cos(5x+1) dif x)$]
      ],
      [
        #subquestion(
          solution: $display(
            =1/2limits(integral) 2x e^(x^2) dif x =
            #result($display(e^(x^2)/2) + C$)
          )$,
        )[$display(limits(integral) x e^(x^2) dif x)$]
      ],
      [
        #subquestion()[$display(limits(integral) 1/(2x+1)^3 dif x)$]
        #solution()[
          $display(
            limits(integral) 1/(2x+1)^3 dif x =
            limits(integral) (2x+1)^(-3) dif x =
            1/2 limits(integral) 2 (2x+1)^(-3) dif x =
            1/2 (2x+1)^(-2)/(-2) = \ =
            #result($display(-1/(4(2x+1)^2) + C)$)
          )$
        ]
      ],
      [
        #subquestion(
          solution: $display(=limits(integral) "sen"(x)/cos(x) dif x = #result($display(-ln|cos(x)| +C)$))$,
        )[$display(limits(integral) "tan"(x) dif x)$]
      ],
      [
        #subquestion(
          solution: $display(=#result($display(("sen"^4(x))/4 + C)$))$,
        )[$display(limits(integral) "sen"^3 (x) cos(x) dif x)$]
        #solution()[
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (x + 3)/(x^2 + 6x + 10) dif x)$]
        #solution()[
          $display(
            limits(integral) (x + 3)/(x^2 + 6x + 10) dif x =
            limits(integral) 1/2 dot 2(x + 3)/(x^2 + 6x + 10) dif x = \ =
            limits(integral) 1/2 (2x + 6)/(x^2 + 6x + 10) dif x =
            #result($display(1/2 ln |x^2+6x+10| +C)$)
          )$
        ]
      ],
      [
        #subquestion(
          solution: $=#result($display(5"sen"(x) + 3^x / (ln 3) + C)$)$,
        )[$display(limits(integral) 5 cos(x) + 3^x dif x)$]
      ],
      [
        #subquestion(solution: $display(=tan(x) +C)$)[$display(limits(integral) sec^2 (x) dif x)$]
      ],
      [
        #subquestion(
          solution: $=#result($display(10^x / (ln 10) - 5^x / (ln 5) + C)$)$,
        )[$display(limits(integral) 10^x - 5^x dif x)$]
      ],
      [
        #subquestion(solution: $=#result($display(3 arctan(x)+ C)$)$)[$display(limits(integral) 3/(x^2+1) dif x)$]
      ],
      [
        #subquestion()[$display(limits(integral) root(3, 2x)/sqrt(3x) dif x)$]
        #solution[$display(
          limits(integral) root(3, 2x)/sqrt(3x) dif x =
          limits(integral) root(6, (2x)^2)/root(6, (3x)^3) dif x =
          limits(integral) root(6, (2^2x^2)/(3^3x^3)) dif x =
          limits(integral) root(6, 2^2/(3^3x)) dif x =
          limits(integral) root(6, 2^2/(3^3)) x^(-1/6) dif x = \ =
          root(6, 2^3/(3^3)) limits(integral) x^(-1/6) dif x =
          root(6, 2^2/(3^3)) x^(5/6)/(5/6) dif x =
          #result($display(6/5 root(6, (4 x^5)/(27)) + C)$)
        )$]
      ],
      [
        #subquestion()[$display(limits(integral) (dif x)/(4+x^2))$]
        #solution[$display(
          limits(integral) (dif x)/(4+x^2) =
          limits(integral) (1/4)/((4+x^2)/4) dif x =
          limits(integral) (1/4)/(1+(x/2)^2) dif x =
          1/2 limits(integral) 1/2/(1+(x/2)^2) dif x =
          #result($display(1/2 "arctan"(x/2) + C)$)
        )$]
      ],
      [
        #subquestion()[$display(limits(integral) 1/(1+ e^x) dif x)$]
        #solution[$display(
          limits(integral) 1/(1+ e^x) dif x =
          limits(integral) e^(-x)/(e^(-x)) dot 1/(1+ e^x) dif x =
          limits(integral) e^(-x) /(e^(-x)(1+ e^x)) dif x =
          limits(integral) e^(-x) /(e^(-x)(1+ e^x)) dif x = \ =
          limits(integral) e^(-x) /(e^(-x) + 1) dif x =
          - limits(integral) (- e^(-x)) /(e^(-x) + 1) dif x =
          #result($-ln|e^(-x) + 1| + C$)
        )$]
      ],
      [
        #subquestion()[$display(limits(integral) x/sqrt(x^2 + 4) dif x)$]
        #solution()[
          $display(
            limits(integral) x/sqrt(x^2 + 4) dif x =
            limits(integral) x (x^2 + 4)^(-1/2) dif x =
            1/2 limits(integral) 2x (x^2 + 4)^(-1/2) dif x =
            #result($ sqrt(x^2 + 4) + C $)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) e^(2x)/(1+e^(2x)) dif x)$]
        #solution()[
          $display(
            limits(integral) e^(2x)/(1+e^(2x)) dif x =
            1/2 limits(integral) (2e^(2x))/(1+e^(2x)) dif x =
            #result($ 1/2 ln(1+e^(2x)) + C $)
          )$
        ]
      ],
    )
  ],
  [
    #question()[Calcula las siguientes integrales por partes:]
    #questions-columns(
      [
        #subquestion()[$display(limits(integral) x e^x dif x)$]
        #solution()[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = x,
              dif v = e^x dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = dif x,
              v = limits(integral) e^x dif x = e^x,
            )
          )$

          $display(limits(integral) x e^x dif x) =
          x e^x - limits(integral) e^x dif x = x e^x - e^x =
          #result($(x-1) e^x + C$)$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) x ln(x) dif x)$]
        #solution()[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = ln(x),
              dif v = x dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = 1/x dif x,
              v = limits(integral) x dif x = x^2/2,
            )
          )$

          $display(
            limits(integral) x ln(x) dif x =
            x^2/2 ln(x) - limits(integral) x^2/2 dot 1/x dif x =
            x^2/2 ln(x) - limits(integral) x/2 dif x =
            display(x^2/2 ln(x) - x^2/4) = \ =
            #result($display(1/4 x^2(2 ln(x) - 1) + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) x cos(x) dif x)$]
        #solution()[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = x,
              dif v = cos(x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = dif x,
              v = limits(integral) cos(x) dif x = "sen"(x),
            )
          )$

          $display(
            limits(integral) x cos(x) dif x =
            x "sen"(x) - limits(integral) "sen"(x) dif x =
            x "sen"(x) - (-cos(x)) =
            #result($x "sen"(x) + cos(x) + C$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) e^x "sen"(x) dif x)$]
        #solution()[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = e^x,
              dif v = "sen"(x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = e^x dif x,
              v = limits(integral) "sen"(x) dif x = -"cos"(x),
            )
          )$

          $display(
            limits(integral) e^x "sen"(x) dif x =
            - e^x "cos"(x) - limits(integral) e^x (-"cos"(x)) dif x = \ =
            -e^x "cos"(x) + limits(integral) e^x cos(x) dif x
          )$

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = e^x,
              dif v = "cos"(x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = e^x dif x,
              v = limits(integral) "cos"(x) dif x = "sen"(x),
            )
          )$

          $display(-e^x "cos"(x) + limits(integral) e^x cos(x) dif x = - e^x "cos"(x) + e^x "sen(x)" - limits(integral) e^x "sen"(x) dif x)$

          Si llamamos $display(I = limits(integral) e^x "sen"(x) dif x)$ tenemos que:

          $display(
            I = - e^x "cos"(x) + e^x "sen(x)" - I => 2I = e^x ("sen(x)" - "cos"(x)) => \ =>
            I = 1/2 e^x ("sen"(x) - "cos"(x))
          )$

          Luego:

          $#result($display(limits(integral) e^x "sen"(x) dif x) = 1/2 e^x ("sen"(x) - "cos"(x)) +C$)$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) x^2 e^(-x) dif x)$]
        #solution[
          Integrando por partes:

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = x^2,
              dif v = e^(-x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = 2x dif x,
              v = limits(integral) e^(-x) dif x = -e^(-x),
            )
          )$

          $display(
            limits(integral) x^2 e^(-x) dif x =
            -e^(-x) x^2 + 2 limits(integral) x e^(-x) dif x
          )$

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = x,
              dif v = e^(-x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = dif x,
              v = limits(integral) e^(-x) dif x = -e^(-x),
            )
          )$

          $display(
            limits(integral) x^2 e^(-x) dif x =
            -e^(-x) x^2 + 2 limits(integral) x e^(-x) dif x =
            -e^(-x) x^2 - 2e^(-x)(x+1) =
            #result($-e^(-x)(x^2+2x+2)+C$)
          )$

        ]
      ],
      [
        #subquestion()[$display(limits(integral) cos^3(x) dif x)$]
        #solution()[
          *1ª Forma*
          $display(
            limits(integral) cos^3(x) dif x =
            limits(integral) cos^2(x) cos(x) dif x
          )$

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = cos^2(x),
              dif v = "cos"(x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = -2cos(x)"sen"(x) dif x,
              v = limits(integral) "cos"(x) dif x = "sen"(x),
            )
          )$

          $display(
            limits(integral) cos^2(x) cos(x) dif x =
            cos^2(x)"sen"(x) - limits(integral) -2 cos(x) "sen"^2(x) dif x = \ =
            cos^2(x)"sen"(x) + 2 limits(integral) cos(x) "sen"^2(x) dif x =
            cos^2(x)"sen"(x) + 2 ("sen"^3(x))/3 = \ =
            (1- "sen"^2(x)) "sen"(x) + 2/3 "sen"^3(x) = "sen"(x)- "sen"^3(x) + 2/3 "sen"^3(x) = \ =
            #result($display("sen"(x) - ("sen"^3(x))/3) + C$)
          )$


          *2ª Forma*

          $display(
            limits(integral) cos^3(x) dif x =
            limits(integral) cos^2(x) cos(x) dif x =
            limits(integral) (1-"sen"^2(x)) cos(x) dif x
          )$

          Hacemos el cambio de variable $t = "sen"(x) =>dif t = cos(x) dif x$

          $display(
            limits(integral) (1-"sen"^2(x)) dot cos(x) dif x =
            limits(integral) 1-t^2 dif t = t - (t^3)/3 + C
          )$

          Deshaciendo el cambio de variable

          $display(t - (t^3)/3 + C = #result($display("sen"(x) - ("sen"^3(x))/3) + C$))$

          *3ª Forma*

          $display(
            limits(integral) cos^3(x) dif x =
            limits(integral) cos(x) cos^2(x) dif x =
            limits(integral) cos(x) (1-"sen"^2(x)) dif x = \ =
            limits(integral) cos(x) - cos(x) "sen"^2(x) dif x =
            limits(integral) cos(x) dif x - limits(integral) cos(x) "sen"^2(x) dif x =
            #result($display("sen"(x) - ("sen"^3(x))/3) + C$)
          )$

        ]
      ],

      [
        #subquestion()[$display(limits(integral) e^(3x) cos(2x) dif x)$]
        #solution()[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = e^(3x),
              dif v = "cos"(2x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = 3e^(3x) dif x,
              v = display(limits(integral) cos(2x) dif x = "sen"(2x)/2),
            )
          )$

          $display(
            limits(integral) e^(3x) cos(2x) dif x =
            e^(3x) "sen"(2x)/2 - limits(integral) (3e^(3x) "sen"(2x))/2 dif x
          )$

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = e^(3x),
              dif v = "sen"(2x) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = 3e^(3x) dif x,
              v = display(limits(integral) "sen"(2x) dif x = -cos(2x)/2),
            )
          )$

          $display(
            limits(integral) e^(3x) "sen"(2x) dif x =
            -e^(3x) cos(2x)/2 + limits(integral) (3e^(3x) cos(2x))/2 dif x =
            -e^(3x) cos(2x)/2 + 3/2 limits(integral) e^(3x) cos(2x) dif x
          )$

          Si llamamos $display(I = limits(integral) e^(3x) cos(2x) dif x)$

          $display(
            I =
            e^(3x) "sen"(2x)/2 -
            3/2 (-e^(3x) cos(2x)/2 +
              3/2 I) =
            e^(3x) "sen"(2x)/2 + 3e^(3x) cos(2x)/4 -
            9/4 I =>
          )$

          $display(
            13/4 I =
            e^(3x) "sen"(2x)/2 + 3e^(3x) cos(2x)/4 =>
            I = (e^(3x) (3 cos(2x) + 2 "sen"(2x)))/13 =>
          )$

          $display(
            #result($ limits(integral) e^(3x) cos(2x) dif x =
            (e^(3x) (3 cos(2x) + 2 "sen"(2x)))/13 + C $)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) ln(x^2 + 1) dif x)$]
        #solution()[
          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = ln(x^2 + 1),
              dif v = dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = (2x)/(x^2 + 1) dif x,
              v = limits(integral) dif x = x,
            )
          )$

          $display(
            limits(integral) ln(x^2 + 1) dif x =
            x ln(x^2 + 1) - limits(integral) x · (2x)/(x^2 + 1) dif x =
            x ln(x^2 + 1) - 2 limits(integral) x^2/(x^2 + 1) dif x
          )$

          $display(
            limits(integral) x^2/(x^2 + 1) dif x =
            limits(integral) (1 - 1/(x^2 + 1)) dif x =
            x - arctan(x)
          )$

          $display(#result($ x ln(x^2 + 1) - 2x + 2 arctan(x) + C $))$
        ]
      ],

      [
        #subquestion()[$display(limits(integral) x sqrt(x + 2) dif x)$]
        #solution()[
          *Forma 1:*

          $display(
            limits(integral) x sqrt(x + 2) dif x =
            limits(integral) x (x + 2)^(1/2) dif x
          )$

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = x,
              dif v = (x + 2)^(1/2) dif x,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = dif x,
              v = limits(integral) (x + 2)^(1/2) dif x =
              2/3 (x + 2)^(3/2),
            )
          )$

          $display(
            limits(integral) x (x + 2)^(1/2) dif x =
            2/3 x (x + 2)^(3/2) -
            2/3 limits(integral) (x + 2)^(3/2) dif x
          )$

          $display(
            limits(integral) (x + 2)^(3/2) dif x =
            2/5 (x + 2)^(5/2)
          )$

          $display(
            #result($ 2/3 x (x + 2)^(3/2) -
            4/15 (x + 2)^(5/2) + C $)
          )$

          *Forma 2:*

          $display(
            limits(integral) x sqrt(x + 2) dif x =
            limits(integral) ((x + 2) - 2) sqrt(x + 2) dif x
          )$

          Hacemos el cambio de variable
          $display(
            u = x + 2 =>
            dif u = dif x
          )$

          $display(
            limits(integral) ((x + 2) - 2) sqrt(x + 2) dif x =
            limits(integral) (u - 2) sqrt(u) dif u =
            limits(integral) (u^(3/2) - 2u^(1/2)) dif u
          )$

          $display(
            limits(integral) (u^(3/2) - 2u^(1/2)) dif u =
            2/5 u^(5/2) - 4/3 u^(3/2)
          )$

          Deshaciendo el cambio de variable:

          $display(#result($ 2/5 (x + 2)^(5/2) - 4/3 (x + 2)^(3/2) + C $))$
        ]
      ],
    )
  ],
  [
    #question()[Calcula las siguientes integrales racionales:]
    #questions-columns(
      [
        #subquestion()[$display(limits(integral) 1/(x^2+4) dif x)$]
        #solution()[
          $display(
            limits(integral) 1/(x^2+4) dif x =
            limits(integral) (1/4)/((1/4)(x^2+4)) dif x =
            limits(integral) (1/4)/((x^2+4)/4) dif x =
            limits(integral) (1/4)/(((x/2)^2+4/4)) dif x =
            limits(integral) 1/2 (1/2)/(((x/2)^2+1)) dif x = \ =
            1/2 limits(integral) (1/2)/((1+(x/2)^2)) dif x =
            #result($display(1/2 arctan(x/2) + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral)(x+1)^2/(x^(-1)) dif x)$]
        #solution()[
          $display(
            limits(integral)(x+1)^2/(x^(-1)) dif x =
            limits(integral)x(x+1)^2 dif x =
            limits(integral)x(x^2+2x+1) dif x =
            limits(integral)x^3+2x^2+x dif x = \ =
            #result($display(1/4 x^4 + 2/3 x^3 + x^2/2 + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral)(x+1)^2/(x-1) dif x)$]
        #solution()[
          $display(
            limits(integral)(x+1)^2/(x-1) dif x =
            limits(integral)(x^2+2x+1)/(x-1) dif x
          )$

          Usando el algoritmo de la división:

          $display(x^2 +2x+1 = (x+3)(x-1) + 4 => (x^2 +2x+1)/(x-1) = (x+3) + 4/(x-1))$

          $display(
            limits(integral)(x^2+2x+1)/(x-1) dif x =
            limits(integral) (x+3) + 4/(x-1) dif x =
            #result($display(x^2/2 + 3x + 4 ln abs(x-1) + C)$)
          )$
        ]
      ],
      [
        // ToDo: Quitar por estar repetida.
        #subquestion()[$display(limits(integral) 1/(x^2 + 4) dif x)$]
        #solution()[
          $display(
            limits(integral) 1/(x^2 + 4) dif x =
            limits(integral) 1/(4(x^2/ 4 + 1)) dif x =
            1/4 limits(integral) 2 (1/2)/((x/2)^2 + 1) dif x =
            #result($display(1/2 arctan (x/2) + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (3x + 1)/(x^2 + x) dif x)$]
        #solution()[
          $display(
            limits(integral) (3x + 1)/(x^2 + x) dif x =
            limits(integral) (3x + 1)/(x(x + 1)) dif x
          )$

          Tenemos que poner $display((3x + 1)/(x(x + 1)) = A/x + B/(x+1))$

          $display(
            A/x + B/(x+1) = (A(x+1) + B x)/ (x(x+1)) =
            (A x + A + B x) / (x(x+1)) = ((A + B) x + A) / (x(x+1)) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              A + B = 3,
              A = 1,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              A = 1,
              B = 2,
            )
          )$

          $display(
            limits(integral) (3x + 1)/(x(x + 1)) dif x =
            limits(integral) 1/x + 2/(x+1) dif x =
            #result($display(ln abs(x) + 2 ln abs(x+1) + C)$)
          )$

          Resultado alternativo:

          $display(
            ln abs(x) + 2 ln abs(x+1) + C =
            ln abs(x) + 2 ln abs(x+1) + ln K =
            ln (K x (x+1)^2 ) =
            #result($display(ln abs(K (x^3 + 2x^2 +x)))$)
          )$

        ]
      ],
      [
        #subquestion()[$display(limits(integral) (2x)/(x^2 - 9) dif x)$]
        #solution[
          Se puede hacer de forma inmediata teniendo en cuenta que $(x^2-9)' = 2x$

          $display(
            limits(integral) (2x)/(x^2 - 9) dif x =
            #result($display(ln abs(x^2-9) + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) 1/((x-1)(x+2)) dif x)$]
        #solution()[
          Primero descomponemos en fracciones simples:

          $display(
            1/((x-1)(x+2)) =
            frac(A, x - 1) + frac(B, x + 2) =
            (A (x+2) + B (x-1))/ ((x-1)(x+2)) =
            (A x + 2A + B x - B )/((x-1)(x+2)) =
            ((A - B) x + (2A + B ))/((x-1)(x+2)) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              & &A + B &= 0,
              & &2A - B &= 1
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &A &= 1/3,
              &B &= -1/3
            )
          )$

          $display(
            integral frac(1, (x - 1)(x + 2)) dif x =
            integral frac(1/3, x - 1) - frac(1/3, x + 2) dif x = \ =
            1/3 ln|x - 1| - 1/3 ln|x + 2| + C =
            #result($display(1/3 ln abs((x - 1)/(x + 2)) + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) 1/(x^2+4x+3) dif x)$]
        #solution()[

          $display(limits(integral) 1/(x^2+4x+3) dif x = limits(integral) 1/((x+1)(x+3)) dif x)$

          Ahora descomponemos en fracciones simples:

          $display(
            1/((x+1)(x+3)) =
            frac(A, x + 1) + frac(B, x + 3) =
            (A (x+3) + B (x+1))/((x+1)(x+3)) =
            (A x + 3A + B x + B)/((x+1)(x+3)) =
            ((A+B)x + (3A+B))/((x+1)(x+3)) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &A + B &= 0,
              &3A + B &= 1
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &A &= 1/2,
              &B &= -1/2
            )
          )$

          Sustituimos los valores obtenidos:

          $display(
            integral frac(1, (x+1)(x+3)) dif x =
            integral (frac(1/2, x + 1) - frac(1/2, x + 3)) dif x =
            1/2 ln|x + 1| - 1/2 ln|x + 3| + C = \ =
            #result($display(1/2 ln abs((x + 1)/(x + 3)) + C)$)
          )$

        ]
      ],
      [
        #subquestion()[$display(limits(integral) (2x-1)/(x(x-2)) dif x)$]
        #solution()[

          $display(
            limits(integral) (2x-1)/(x^2-2x) dif x =
            limits(integral) (2x-1)/(x(x-2)) dif x
          )$

          Ahora descomponemos en fracciones simples:

          $display(
            (2x-1)/(x(x-2)) =
            frac(A, x) + frac(B, x-2) =
            (A(x-2) + B x)/(x(x-2)) =
            ((A+B)x - 2A)/(x(x-2)) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &A + B &= 2,
              &-2A &= -1
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &A &= 1/2,
              &B &= 3/2
            )
          )$

          Sustituimos los valores obtenidos:

          $display(
            integral frac(2x-1, x(x-2)) dif x =
            integral (frac(1/2, x) + frac(3/2, x-2)) dif x =
            1/2 ln|x| + 3/2 ln|x-2| + C =
            #result($display(1/2 ln abs(x) + 3/2 ln abs(x-2) + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (x^2+1)/(x-1) dif x)$]
        #solution()[
          $display(
            limits(integral) (x^2+1)/(x-1) dif x =
            limits(integral) (x^2- 1 + 2)/(x-1)dif x =
            limits(integral) (x^2- 1 )/(x-1)dif x + limits(integral) 2/(x-1)dif x =
            limits(integral) (x^2- 1 )/(x-1)dif x + limits(integral) 2/(x-1)dif x = \ =
            limits(integral) (x+1) dif x + limits(integral) 2/(x-1)dif x =
            #result($display(x^2/2 + x + 2 ln |x-1| + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (3x^2+2)/(x) dif x)$]
        #solution()[
          $display(
            limits(integral) (3x^2+2)/(x) dif x =
            limits(integral) (3x^2)/x+2/x dif x =
            limits(integral) 3x+2/x dif x = #result($display((3x^2)/2 + 2 ln|x| + C)$)
          )$
        ]
      ],
      // [
      //   #subquestion(
      //     solution: $display(= 1/2 limits(integral) (2x)/(x^2 + 1) dif x) = #result($display(1/2 ln(x^2+1)+C)$)$,
      //   )[$display(limits(integral) x/(x^2 + 1) dif x)$]
      // ],
      [
        #subquestion(solution: $display(= #result($arctan(x) + C$))$)[$display(limits(integral) 1/(x^2 + 1) dif x)$]
      ],
      [
        #subquestion[$display(limits(integral) 4/(3x^2 + 5) dif x)$]
        #solution[
          $display(
            limits(integral) frac(4, 3x^2 + 5) dif x =
            limits(integral) frac(4/5, (3x^2 + 5)/5) dif x =
            4/5 limits(integral) frac(1, (3x^2)/5 + 1) dif x =
            4/5 limits(integral) frac(1, (sqrt(3/5x))^2 + 1) dif x = \ =
            4/5 sqrt(5/3) limits(integral) frac(sqrt(3/5), (sqrt(3/5x))^2 + 1) dif x =
            #result($display(4/sqrt(15)arctan (sqrt(3/5) x) + C)$)
          )$
        ]
      ],
      [
        #subquestion[$display(limits(integral) (4x)/(3x^2 + 5) dif x)$]
        #solution[
          $display(
            limits(integral) (4x)/(3x^2 + 5) dif x =
            4/6 display(limits(integral) (6x)/(3x^2 + 5) dif x) =
            #result($display(2/3 ln |3x^2+5| + C)$)
          )$
        ]
      ],
      [
        #subquestion(
          solution: $display(=limits(integral) ((x-1)(x+1))/(x-1) dif x = limits(integral) x+1 dif x = #result($display(x^2/2 + x + C)$))$,
        )[$display(limits(integral) (x^2 - 1)/(x - 1) dif x)$]
      ],
      [
        #subquestion[$display(limits(integral)(2x+3)/((x-1)(x^2+1)) dif x)$]
        #solution[
          Tenemos que poner $display((2x+3)/((x-1)(x^2+1)) = A /(x-1) + (B x + C)/(x^2 + 1))$

          $display(
            (2x+3)/((x-1)(x^2+1)) = A /(x-1) + (B x + C)/(x^2 + 1) =
            (A(x^2 + 1) + (B x + C)(x - 1))/((x-1)(x^2+1)) = \ =
            (A x^2 + A + B x^2 - B x + C x - C)/((x-1)(x^2+1)) =
            ((A + B) x^2 + (- B + C) x + A - C)/((x-1)(x^2+1)) => \
            cases(
              reverse: #false, delim: "{", gap: #1em,
              & &A + B &= 0,
              &-&B + C &= 2,
              & &A - C &=3
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              &A &= 5/2,
              &B &= -5/2,
              &C &= -1/2
            )
          )$

          $display(
            limits(integral)(2x+3)/((x-1)(x^2+1)) dif x =
            limits(integral) 5/2 /(x-1) + (-5/2 x - 1/2)/(x^2 + 1) dif x =
            limits(integral) 5/2 /(x-1) - (5/2 x)/(x^2 + 1) - (1/2)/(x^2 + 1) dif x = \ =
            5/2 limits(integral) 1/(x-1) dif x - 5/4 limits(integral) (2x)/(x^2 + 1) dif x - 1/2 limits(integral) 1/(x^2+1) dif x = \ =
            #result($display(5/2 ln abs(x-1) - 5/4 ln abs(x^2+1) -1/2 arctan(x) +C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral)(x^3+22x^2-12x+8)/(x^4-4x^2) dif x)$]
        #solution[
          Factorizamos el denominador:

          $display((x^4-4x^2) = x^2(x^2-4) = x^2(x-2)(x+2))$

          Descomponemos la fracción:

          $display(
            frac(x^3 + 22x^2 - 12x + 8, x^4 - 4x^2) =
            frac(x^3 + 22x^2 - 12x + 8, x^2(x - 2)(x + 2)) =
            frac(A, x) + frac(B, x^2) + frac(C, x - 2) + frac(D, x + 2)
          )$

          Multiplicamos toda la igualdad por $ x^2(x - 2)(x + 2) $:

          $ x^3 + 22x^2 - 12x + 8 $

          $ = A x(x - 2)(x + 2) + B(x - 2)(x + 2) + C x^2(x + 2) + D x^2(x - 2) $

          // Desarrollamos cada término:

          // $ = A(x^3 - 4x)
          // + B(x^2 - 4)
          // + C(x^3 + 2x^2)
          // + D(x^3 - 2x^2) $

          // Agrupamos por potencias de $x$:

          // $ = (A + C + D)x^3
          // + (B + 2C - 2D)x^2
          // - 4A x
          // - 4B $

          // Igualamos coeficientes con:

          // $ x^3 + 22x^2 - 12x + 8 $

          // Sistema resultante:

          // $ A + C + D = 1 $
          // $ B + 2C - 2D = 22 $
          // $ -4A = -12 $
          // $ -4B = 8 $

          Resolviendo el sistema obtenemos:

          $ A = 3, quad B = -2, quad C = 5, quad D = -7 $

          Sustituimos en la descomposición:

          $
            frac(x^3 + 22x^2 - 12x + 8, x^4 - 4x^2)
            = frac(3, x)
            - frac(2, x^2)
            + frac(5, x - 2)
            - frac(7, x + 2)
          $

          Resolvemos la integral:

          $display(
            integral frac(x^3 + 22x^2 - 12x + 8, x^4 - 4x^2) dif x =
            integral (frac(3, x) - frac(2, x^2) + frac(5, x - 2) - frac(7, x + 2)) dif x = \ =
            #result($display(3 ln|x| + frac(2, x) + 5 ln|x - 2| - 7 ln|x + 2| + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (2x^4+6x-3)/(x-2) dif x)$]
        #solution()[
          Dividiendo y utilizando el algoritmo de la división de polinomios, podemos concluir que:

          $display(
            2x^4+6x-3 = (2x^3+4x^2+8x+22)(x-2) + 41 => \
            (2x^4+6x-3)/(x-2) = 2x^3+4x^2+8x+22 + 41/(x-2)
          )$

          $display(
            limits(integral) (2x^4+6x-3)/(x-2) dif x =
            limits(integral) (2x^3+4x^2+8x+22) + 41/(x-2) = \
            2 x^4/4 +4 x^3/3 + 8 x^2/2 + 22 x + 41 ln|x-2| =
            #result($display(1/2 x^4 + 4/3 x^3+4x^2+22x +41 ln|x-2|+C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (5x^3+6x^2-sqrt(2)x+sqrt(3))/x dif x)$]
        #solution[
          $display(
            limits(integral) (5x^3+6x^2-sqrt(2)x+sqrt(3))/x dif x =
            limits(integral) (5x^2+6x-sqrt(2)+sqrt(3)/x) dif x = \ =
            #result($display(5/3 x^3+3x^2-sqrt(2)x+sqrt(3) ln|x|+C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) (7x^4-5x^2+3x-4)/x^2 dif x)$]
        #solution()[
          $display(
            limits(integral) (7x^4-5x^2+3x-4)/x^2 dif x =
            limits(integral) (7x^4)/x^2-(5x^2)/x^2+3x/x^2-4/x^2 dif x = \ =
            limits(integral) 7x^2-5+3/x-4/x^2 dif x =
            limits(integral) 7x^2 dif x- limits(integral) 5 dif x+ limits(integral) 3/x dif x - limits(integral)4/x^2 dif x = \ =
            7/3 x^3 - 5x +3 ln|x| - 4/x =
            #result($display(7/3 x^3 - 5x- 4/x +3 ln|x| + C)$)
          )$
        ]
      ],
    )
  ],
  [
    #question()[Calcula las siguientes integrales  por cambio de variable:]
    #questions-columns(
      [
        #subquestion()[$display(limits(integral) 1/((x+1)sqrt(x)) dif x)$ #h(3mm) (haciendo $x=t^2$)]
        #solution()[
          Hace os el cambio de variable $display(x= t^2 => t = sqrt(x) => dif t = 1/(2 sqrt(x)) dif x)$

          $display(
            limits(integral) 1/((x+1)sqrt(x)) dif x =
            limits(integral) (2)/((x+1)(2sqrt(x))) dif x =
            limits(integral) (2)/(x+1) dot 1/(2sqrt(x)) dif x =
            limits(integral) (2)/(t^2+1) dif t =
            2 limits(integral) 1/(t^2+1) dif t =\ =
            2 arctan(t)
          )$

          Deshaciendo el cambio de variable:

          $display(2 arctan(t) = #result($display(2 arctan(sqrt(x)) + C)$))$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) sqrt(x)/(x+1) dif x)$ #h(3mm) (haciendo $x=t^2$)]
        #solution()[
          Hace os el cambio de variable $display(x= t^2 => t = sqrt(x) => dif t = 1/(2 sqrt(x)) dif x)$

          $display(
            limits(integral) sqrt(x)/(x+1) dif x =
            limits(integral) (sqrt(x))^2/((x+1)sqrt(x)) dif x =
            limits(integral) x/((x+1)sqrt(x)) dif x =
            limits(integral) (2x)/((x+1)(2sqrt(x))) dif x =
            limits(integral) (2x)/(x+1) dot 1/(2sqrt(x)) dif x = \ =
            limits(integral) (2t^2)/(t^2+1) dif t =
            2 limits(integral) t^2/(t^2+1) dif t =
            2 limits(integral) (t^2 +1 - 1)/(t^2+1) dif t =
            2 limits(integral) (t^2 +1)/(t^2+1) - 1/(t^2+1) dif t = \ =
            2 limits(integral) (1 - 1/(t^2+1)) dif t =
            2 (limits(integral) 1 - limits(integral) 1/(t^2+1)) dif t =
            2 (t - arctan(t)) =
          )$

          Deshaciendo el cambio de variable:

          $display(2 (t - arctan(t)) = #result($display(2 (sqrt(x) - arctan(sqrt(x))) + C)$))$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) x root(3, x+2) dif x)$ #h(3mm) (haciendo $x+2=t^3$)]
        #solution()[
          Hacemos el cambio  $x+2=t^3 => dif x = 3t^2 dif t$

          $display(
            limits(integral) x root(3, x+2) dif x =
            limits(integral) (t^3 - 2) t dot 3 dot t^2 dif t =
            limits(integral) 3 (t^6 - 2t^3) dif t =
            3 [limits(integral) t^6 dif t - limits(integral) 2t^3 dif x] = \ =
            3 (t^7/7 - (2 t^4) / 4) =
            3/7 t^7 - 3/2 t^4
          )$

          Deshacemos el cambio de variable: $t = root(3, x+2)$

          $display(3/7 t^7 - 3/2 t^4 = #result[$display(3/7 (x+2)^(7/3) - 3/2 (x+2)^(4/3))$])$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) 2/(2+e^x)) dif x$ #h(3mm) (haciendo $t=e^x$)]
        #solution()[
          Hacemos el cambio $t = e^x => dif t = e^x dif t$

          $display(
            limits(integral) 2/(2 + e^x) dif x =
            limits(integral) (2e^x)/(e^x (2 + e^x)) dif x =
            limits(integral) 2/(t (2 + t)) dif x
          )$

          Ahora tenemos una integral de una fracción algebraica, que hay que descomponer.

          $display(
            limits(integral) 2/(t (2 + t)) dif x
            = 2 limits(integral) A/t + B/ (2 + t)
          ) dif x
          )$

          Resolvemos:

          $display(2 = A(t+2) + B t => 2 = (A+B) t + 2 A => A=1 "," B= -1)$

          Luego:

          $display(
            limits(integral) 2/(t (2 + t)) dif x =
            limits(integral) 1/t + (-1)/ (2 + t) dif x =
            (ln |t| - ln |2+t| )
          )$

          Deshacemos el cambio de variable: $t = e^x$

          $display(
            ln |t| - ln |2+t| = ln |e^x| - ln |2 + e^x| =
            #result($display(x - ln (2 + e^x) + C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) e^x/(1-sqrt(e^x)) dif x)$ #h(3mm) (haciendo $e^x=t^2$)]
        #solution[

          Hacemos el cambio $e^x = t^2 => e^x dif x = 2t dif t$

          $display(
            limits(integral) e^x/(1-sqrt(e^x)) dif x =
            limits(integral) (2t)/(1-t) dif t =
            2 limits(integral) t/(1-t) dif t =
            2 limits(integral) -1 + 1/(1-t) dif t =
            -2t-2 ln|1-t|
          )$

          Deshacemos el cambio de variable: $t = sqrt(e^x)$

          $display(-2t-2 ln|1-t| = #result($display(-2 sqrt(e^x) - 2 ln |1-sqrt(e^x)| + C)$))$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) 1/(x ln(x)) dif x)$ #h(3mm) (haciendo $t=ln(x)$)]
        #solution()[
          Hacemos el cambio: $display(t = ln(x) => dif t = 1/x dif x)$

          $display(
            limits(integral) 1/(x ln(x)) dif x =
            limits(integral) 1/t dif t =
            ln |t|
          )$

          Deshaciendo el cambio: $display(t = ln(x))$

          $display(ln |t| = #result($display(ln |ln(x)| + C)$))$
        ]
      ],
      [
        // ToDo: Mover a otra categoría de integrales.
        #subquestion()[$display(limits(integral) 1/("sen"(x) cos(x)) dif x)$ (haciendo $t = "sen"(x)$]
        #solution[
          Podemos usar la identidad $"sen"^2(x)+cos^2(x)=1$:

          $display(
            limits(integral) 1/("sen"(x) cos(x)) dif x =
            limits(integral) ("sen"^2(x) + cos^2(x))/("sen"(x) cos(x)) dif x =
            limits(integral) ("sen"^2(x)) /("sen"(x) cos(x)) + ("cos"^2(x)) /("sen"(x) cos(x)) dif x = \ =
            - limits(integral) (-"sen"(x)) /cos(x) dif x + limits(integral) ("cos"(x)) /("sen"(x)) dif x =
            - ln|cos(x)| + ln abs("sen"(x)) = ln abs("sen"(x)/cos(x)) =
            #result($display(ln|tg(x)| +C)$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral) sqrt(1 - x^2) dif x)$ #h(3mm) (haciendo $x = "sen"(theta)$)]
        #solution[
          Hacemos el cambio $x = "sen"(theta) => dif x = cos(theta) dif theta$

          Y usaremos que
          - $"sin"^2(x) + cos^2(x) = 1$
          - $display("cos"(2 theta) = cos^2(theta) - "sen"^2(theta))$
          - $display("sen"(2 theta) = 2 "sen"(theta) cos(theta))$

          $display(
            integral sqrt(1 - x^2) dif x
            = integral sqrt(1 - "sen"^2(theta)) cos(theta) dif theta
            = integral cos^2(theta) dif theta
            = integral (1 + cos(2 theta)) / 2 dif theta = \
            = theta/2 + "sen"(2 theta)/4 + C
          )$

          Deshaciendo el cambio de variable:

          - $x = "sen"(theta) => theta = "arcsen" (x)$
          - $"sen"(2 theta) = 2 "sen"(theta) cos(theta) = 2 "sen"(theta) sqrt(1 - "sen"^2 (theta)) = 2 x sqrt(1-x^2)$

          $display(
            theta/2 + "sen"(2 theta)/4 + C
            = #result[$display(1/2 "arcsen"(x) + x/2 sqrt(1 - x^2) + C)$]
          )$

          *Otra forma* de resolver $display(integral cos^2(theta) dif theta)$ por partes:

          $display(
            cases(
              reverse: #false, delim: "{", gap: #1em,
              u = cos(theta),
              dif v = cos(theta) dif theta,
            ) =>
            cases(
              reverse: #false, delim: "{", gap: #1em,
              dif u = - "sen"(theta) dif theta,
              v = limits(integral) cos(theta) dif x = "sen"(theta),
            )
          )$

          $I = display(
            integral cos^2(theta) dif theta =
            cos(theta) "sen"(theta) - integral (-"sen"(theta)) dot "sen"(theta) dif theta = \
            cos(theta) "sen"(theta) + integral "sen"(theta) dot "sen"(theta) dif theta =
            cos(theta) "sen"(theta) + integral "sen"^2(theta) dif theta = \ =
            cos(theta) "sen"(theta) + integral 1 - "cos"^2(theta) dif theta =
            cos(theta) "sen"(theta) + theta - integral "cos"^2(theta) dif theta = \
            cos(theta) "sen"(theta) + theta - I =>
            I = (cos(theta) "sen"(theta) + theta)/2
          )$
        ]
      ],
    )
  ],
  [
    #question()[Calcula las siguientes integrales:]
    #questions-columns(
      [
        #subquestion()[$display(limits(integral)(2x^4 - 6x^3 + 5x)/(x+2) dif x)$]
        #solution[
          Dividiendo y utilizando el algoritmo de la división de polinomios, podemos concluir que:

          $display(
            2x^4 - 6x^3 + 5x = (2x^3-10x^2+20x-35)(x+2) + 70 => \
            =>(2x^4 - 6x^3 + 5x)/(x+2) = (2x^3-10x^2+20x-35) + 70 / (x+2)
          )$

          $display(
            limits(integral)(2x^4 - 6x^3 + 5x)/(x+2) dif x = limits(integral)(2x^3-10x^2+20x-35) + 70/(x+2) dif x = \
            = limits(integral)2x^3 dif x - limits(integral) 10x^2 dif x + limits(integral)20x dif x - limits(integral) 35 dif x + limits(integral) 70/(x+2) dif x = \
            = 2 limits(integral)x^3 dif x -10 limits(integral) x^2 dif x + 20 limits(integral)x dif x - 35 limits(integral) dif x + 70 limits(integral) 1/(x+2) dif x = \
            = 2 x^4/4 -10 x^3/3 + 20 x^2/2 -35x + 70 ln |x+2| \
            = #result($1/2 x^4 -10/3x^3 + 10x^2 -35x + 70 ln |x+2| + C$)
          )$
        ]
      ],
      [
        #subquestion()[$display(limits(integral)(root(3, x) + sqrt(5x^3))/(3x) dif x)$]
        #solution()[
          $display(
            limits(integral)(root(3, x) + sqrt(5x^3))/(3x) dif x =
            limits(integral)root(3, x)/(3x) + (sqrt(5x^3))/(3x) dif x =
            limits(integral)root(3, x)/(3x) dif x + (sqrt(5x^3))/(3x) dif x = \
            limits(integral) root(3, x)/(3x) dif x + limits(integral) sqrt(5x^3)/(3x)dif x =
            limits(integral) 1/3 x^(1/3)/x dif x + limits(integral) sqrt(5)/3 x^(3/2)/x dif x =
            1/3 limits(integral)x^(-2/3) dif x + sqrt(5)/3 limits(integral) x^(1/2) dif x = \
            1/3 x^(1/3)/(1/3) + sqrt(5)/3 x^(3/2)/(3/2) =
            root(3, x) + 2sqrt(5)/9 sqrt(x^3) =
            #result($2/9 sqrt(5x^3) + root(3, x) + C$)
          )$

          *Por cambio de variable:*

          Hacemos el cambio de variable $x = t^6 => dif x =6t^5 dif t$

          $display(
            limits(integral)(root(3, x) + sqrt(5x^3))/(3x) dif t =
            ∫ frac(root(3, t^6) + sqrt(5 (t^6)^3), 3 t^6) 6t^5 dif t =
            ∫ frac(2(t^2 + sqrt(5 t^18)), t) dif t = \ =
            2 ∫ frac((t^2 + sqrt(5) t^9), t) dif t =
            2 ∫ t^2/t + sqrt(5) t^9/t dif t =
            2 [∫ t dif x + sqrt(5) ∫ t^8 dif t] =
            2 [t^2/2 + sqrt(5) t^9/9]
          ) = \ =
          2 [root(6, x)^2/2 + sqrt(5) root(6, x)^9/9] =
          2 [root(3, x)/2 + sqrt(5) sqrt(x^3)/9] =
          #result($2/9 sqrt(5x^3) + root(3, x) + C$)$
        ]
      ],

      [
        #subquestion()[$display(limits(integral) root(3, (7x-6)^2) dif x)$]
        #solution()[
          $display(
            limits(integral) root(3, (7x-6)^2) dif x =
            limits(integral) (7x-6)^(2/3) dif x =
            1/7 limits(integral) 7 (7x-6)^(2/3) dif x = 1/7 (7x-6)^(5/3)/(5/3) = \
            =#result($display(3/35 root(3, (7x-6)^5) + C)$)
          )$
        ]
      ],
    )
  ],
)

