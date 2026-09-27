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
    number: [Derivadas],
    // content: [($X->infinity$)],
    model: [v1],
  ),

  language: "es",
  decimal-separator: ",",
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
    #question()[Calcula la derivada de las siguientes funciones:]
    #questions-columns(
      [
        #subquestion()[$display(f(x) = x^3 + 5x^2 - 2x + 7)$]
        #solution()[
          $display(f'(x) = 3x^2 + 10x - 2)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = x^3 + 5 x^2 - 3x + pi/2))$]
        #solution()[
          $display(f'(x) = 3 x^2 + 10 x - 3)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = pi x^3 + pi/2 x^2 - ln(2)x + sqrt(5))$]
        #solution()[
          $display(f'(x) = 3 pi x^2 + pi x - ln(2))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (pi^3)/2 - 4 pi^2 + ln(5))$]
        #solution()[
          $display(f'(x) = 0)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (4x-3)^2)$]
        #solution()[
          $display(f'(x) = 2(4x-3) dot 4 = 32x-24)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(x^2 + 3x + 2))$]
        #solution()[
          $display(f'(x) = (2x + 3)/(2 sqrt(x^2 + 3x + 2)))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "ln"(5x^2 + 3x + 2))$]
        #solution()[
          $display(f'(x) = 1/(5x^2 + 3x + 2) dot (10x+3) = (10x+3)/(5x^2 + 3x + 2))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = e^(2x) + ln(x))$]
        #solution()[
          $display(f'(x) = 2e^(2x) + 1/x)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = 2/(x^2+3))$]
        #solution()[
          $display(f'(x) = (0 dot (x^2 + 3) - 2 dot (2x))/(x^2+3)^2 = - (4x)/(x^2+3)^2)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (3x^2 + 2x + 1)/(x - 1))$]
        #solution()[
          $display(f'(x) = ((6x + 2)(x - 1) - (3x^2 + 2x + 1)(1))/(x - 1)^2 = ((6x^2 - 6x + 2x -2) - (3x^2 + 2x + 1))/(x-1)^2 = (3x^2 - 6x - 3)/(x - 1)^2)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(e^(3x^2+4)))$]
        #solution()[
          $display(f'(x) = 1/(2 sqrt(e^(3x^2+4))) dot e^(3x^2+4) dot 6x = (e^(3x^2+4) dot 6x)/(2 sqrt(e^(3x^2+4))) = (3x e^(3x^2+4))/( sqrt(e^(3x^2+4))))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = root(3, x^3 + x + 1))$]
        #solution()[
          $display(f'(x) = (1/3)(x^3 + x + 1)^(-2/3)(3x^2 + 1) = (3x^2 + 1)/(3 root(3, (x^3 + x + 1)^2)))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = ln(sqrt(x^2 + 1)))$]
        #solution()[
          $display(f'(x) = (1/(sqrt(x^2 + 1))) [(1/2)(x^2 + 1)^(-1/2)](2x) = x/(x^2 + 1))$
        ]
      ],

      [
        #subquestion()[$display(f(x) = ln(x^2 + 1) + e^(x^2))$]
        #solution()[
          $display(f'(x) = (1/(x^2 + 1))(2x) + e^(x^2)(2x) = 2x(e^(x^2) + 1/(x^2 + 1)))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "ln"("ln"(x)))$]
        #solution()[
          $display(f'(x) = (1/ln(x))(1/x) = 1/(x ln(x)))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = e^(ln(x^2 + 1)))$]
        #solution()[
          $display(f'(x) = e^(ln(x^2 + 1)) (1/(x^2 + 1))(2x) = (2x e^(ln(x^2 + 1)))/(x^2 + 1) = (2x (x^2 + 1))/(x^2 + 1) = 2x)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (x^2 + 1)^(3x))$]
        #solution()[
          $display("Ln"(f(x)) = "Ln"((x^2 + 1)^(3x)) => "Ln"(f(x)) = 3x dot "Ln"(x^2 + 1) =>)$

          $display(["Ln"(f(x))]' = [3x dot "Ln"(x^2 + 1)]' => (f'(x))/(f(x)) = 3 dot "Ln"(x^2 + 1) + 3x dot 1/(x^2 + 1) dot 2x =>)$

          $display((f'(x))/(f(x)) = 3 "Ln"(x^2 + 1) + (6x^2)/(x^2 + 1) => f'(x) = f(x) [3 "Ln"(x^2 + 1) + (6x^2)/(x^2 + 1)] =>)$

          $display(f'(x) = (x^2 + 1)^(3x) [3 "Ln"(x^2 + 1) + (6x^2)/(x^2 + 1)])$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "ln"(e^(2x) + x^2))$]
        #solution()[
          $display(f'(x) = 1/(e^(2x) + x^2) (e^(2x) dot 2 + 2x) = (2e^(2x) + 2x)/(e^(2x) + x^2))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = root(4, ln(x^2 + 1)))$]
        #solution()[
          $display(
            f'(x) = (1/4)(ln(x^2 + 1))^(-3/4) (1/(x^2 + 1))(2x) = (2x)/(4 (x^2 + 1) root(4, (ln(x^2 + 1))^3))=
            (x)/(2 (x^2 + 1) root(4, (ln(x^2 + 1))^3))
          )$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (e^x-e^(-x))/2)$]
        #solution()[
          $display(f'(x) = (e^x + e^(-x))/2))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt((1+x)/(1-x))))$]
        #solution()[
          $display(
            f'(x) = (1/2)((1+x)/(1-x))^(-1/2) ((1)(1-x) - (1+x)(-1))/(1-x)^2 =
            (1/2)(sqrt((1-x)/(1+x))) (2/(1-x)^2) =
            1/(1-x)^2 sqrt((1-x)/(1+x))
          )$
        ]
      ],
      [
        #subquestion()[$display(f(x) = ("ln"(x^2+x))/x^2)$]
        #solution()[
          $display(
            f'(x) = ((1/(x^2 + x))(2x + 1) dot x^2 - "ln"(x^2 + x) dot 2x)/(x^4) =
            ((2x + 1)/(x^2 + x) dot x^2 - 2x "ln"(x^2 + x))/(x^4) = \
            ((2x + 1)/(x^2 + x)) / x^2 - (2 "ln"(x^2 + x))/x^3 =
            (2x + 1) / ((x^2 + x) x^2) - (2 "ln"(x^2 + x))/x^3
          )$
        ]
      ],
      [
        #subquestion()[$display(f(x) = |x-3| + |x|)$]
        #solution()[


          $display(
            f(x) = |x-3| + |x| =
            cases(
              reverse: #false, delim: "{", gap: #1em,
              & -&x + 3 & "si" & x < 3,
              & &x - 3 & "si" & x >= 3,
            )
            + cases(
              reverse: #false, delim: "{", gap: #1em,
              & -&x & "si" & x < 0,
              & &x & "si" & x > 0,
            )
            = cases(
              reverse: #false, delim: "{", gap: #1em,
              & -&2x + &3 & "si" & x < 0,
              & & & 3 & "si" & 0 <= x < 3,
              & &2x - &3 & "si" & x >= 3,
            )
          )$

          $display(
            f'(x) =
            cases(
              reverse: #false, delim: "{", gap: #1em,
              & -&2 & "si" & x < 0,
              & &0 & "si" & 0 < x < 3,
              & &2 & "si" & x > 3,
            )
          )$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "ln"((x^2+1)/(x^2)))$]
        #solution()[
          1ª Forma:

          $display(
            f'(x) = 1/((x^2+1)/(x^2)) dot ((x^2)(2x) - (x^2+1)(2x))/(x^4) =
            (x^2/(x^2+1)) dot (2x^3 - 2x^3 - 2x)/(x^4) = \
            (x^2/(x^2+1)) dot (-2x)/(x^4) =
            (-2x^3)/(x^4(x^2+1)) =
            #result($display((-2)/(x(x^2+1)))$)
          )$

          2ª Forma:

          $display(f(x) = "ln"((x^2+1)/(x^2) ) = "ln"(x^2+1) - "ln"(x^2) = "ln"(x^2+1) - 2"ln"(x))$

          $display(f'(x) = 1/(x^2+1) (2x) - 2/x = (2x)/(x^2+1) -2/x = (2x^2 - 2(x^2+1))/(x(x^2+1)) = #result($display((-2)/(x(x^2+1)))$))$
        ]
      ],
    )
  ],
  [
    #question()[Calcula la derivada de las siguientes funciones trigonométricas:]
    #questions-columns(
      [
        #subquestion()[$display(f(x) = "sen"(x) + "cos"(x))$]
        #solution()[
          $display(f'(x) = "cos"(x) - "sen"(x))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "sen"(x^4))$]
        #solution()[
          $display(f'(x) = "cos"(x^4) dot 4x^3 = 4x^3 dot"cos"(x^4))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "sen"^4(x))$]
        #solution()[
          $display(f'(x) = 4 dot "sen"^3(x) dot "cos"(x))$
        ]
      ],

      [
        #subquestion()[$display(f(x) = e^(sin(x)))$]
        #solution()[
          $display(f'(x) = e^(sin(x)) cos(x))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = tan(x) + x^2)$]
        #solution()[
          $display(f'(x) = sec^2(x) + 2x)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arcsin"(x) + "arccos"(x))$]
        #solution()[
          $display(f'(x) = 1/sqrt(1 - x^2) - 1/sqrt(1 - x^2) = 0)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arctan"(x^2))$]
        #solution()[
          $display(f'(x) = 1/(1 + x^4)(2x) = (2x)/(1 + x^4))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "ln"(sin(x)))$]
        #solution()[
          $display(f'(x) = 1/"sen"(x) dot "cos"(x) = "cos"(x)/"sen"(x) = "cotan"(x))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = e^(tan(x)))$]
        #solution()[
          $display(f'(x) = e^(tan(x)) sec^2(x))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arcsin"(x^2))$]
        #solution()[
          $display(f'(x) = 1/sqrt(1 - x^4) dot 2x = (2x)/sqrt(1 - x^4))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arctan"(e^x))$]
        #solution()[
          $display(f'(x) = 1/(1 + e^(2x)) dot e^x = (e^x)/(1 + e^(2x)))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = e^(sin(x)) + "ln"(tan(x)))$]
        #solution()[
          $display(
            f'(x) = e^(sin(x)) cos(x) + 1/tan(x) sec^2(x) = e^(sin(x)) cos(x) + (sec^2(x))/tan(x) =
            e^(sin(x)) cos(x) + (1/(cos^2(x)))/("sen"(x) / cos(x)) = \
            e^(sin(x)) cos(x) + (cos(x) / (cos^2(x) "sen"(x))) = e^(sin(x)) cos(x) + 1/(cos(x) "sen"(x)) = \
            e^(sin(x)) cos(x) + sec(x) "cosec"(x)
          )$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arcsen"(2x sqrt(1-x^2)))$]
        #solution()[
          $display(
            f'(x) = 1/sqrt(1 - (2x sqrt(1-x^2))^2) dot (2 sqrt(1-x^2) + 2x (1/(2 sqrt(1-x^2)))(-2x)) = \
            1/sqrt(1 - 4x^2(1-x^2)) dot (2 sqrt(1-x^2) - (2x^2)/(sqrt(1-x^2))) =
            1/sqrt(1 - 4x^2 + 4x^4) dot ( (2(1-x^2) - 2x^2)/(sqrt(1-x^2)) ) = \
            1/sqrt((1-2x^2)^2) dot ( (2-4x^2)/(sqrt(1-x^2)) ) =
            (2(1-2x^2))/((1-2x^2)sqrt(1-x^2)) =
            #result($display((2)/(sqrt(1-x^2)))$)
          )$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "ln" root(3, ("sen"(x) dot cos(x))/(1-x)^2))$]
        #solution()[
          // 1ª Forma:

          // $display(
          //   f'(x) = 1/(root(3, ("sen"(x) dot cos(x))/(1-x)^2)) dot (1/3)(("sen"(x) dot cos(x))/(1-x)^2)^(-2/3)
          //   dot ((cos^2(x) - "sen"^2(x))(1-x)^2 - ("sen"(x) dot cos(x))(-2)(1-x))/(1-x)^4 = \
          //   1/(3 root(3, (("sen"(x) dot cos(x))/(1-x)^2)^2)) dot ((cos^2(x) - "sen"^2(x))(1-x)^2 + 2("sen"(x) dot cos(x))(1-x))/(1-x)^4 = \
          //   1/(3 root(3, ("sen"(x) dot cos(x))^2 (1-x)^(-4))) dot ((cos^2(x) - "sen"^2(x))(1-x) + 2("sen"(x) dot cos(x)))/(1-x)^3 = \
          //   1/(3 ("sen"(x)^(2/3) dot cos(x)^(2/3) dot (1-x)^(-4/3))) dot ((cos^2(x) - "sen"^2(x))(1-x) + 2("sen"(x) dot cos(x)))/(1-x)^3 = \
          //   ( (cos^2(x) - "sen"^2(x))(1-x) + 2("sen"(x) dot cos(x)) ) / ( 3 ("sen"(x)^(2/3) dot cos(x)^(2/3) dot (1-x)^(5/3)) )
          // )$

          // 2ª Forma:

          $display(f(x) = "ln" root(3, ("sen"(x) dot cos(x))/(1-x)^2)) = 1/3 ["ln"("sen"(x)) + "ln"(cos(x)) - 2 "ln"(1-x)])$

          $display(f'(x) = 1/3[(cos(x)/"sen"(x) + (-"sen"(x))/(cos(x)) - 2 1/(1-x) (-1))] = 1/3 [(cos^2(x) - "sen"^2(x))/("sen"(x) cos(x))+ 2/(1-x)] = 1/3[cos(2x) / (1/2 "sen"(2x)) + 2/(1-x)] = #result($display(2/3 ("cotg"(2x) + 1/(1-x)))$))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arctg"(x/(sqrt(1-x^2))))$]
      ],
      [
        #subquestion()[$display(f(x) = "arcsen"((x-1)/(x+1)))$]
      ],
    )
  ],
  [
    #question()[Calcula la derivada de las siguientes funciones en los puntos indicados:]
    #questions-columns(
      [
        #subquestion()[$display(f(x) = "sen"(x/2) cos(x/2) "en" x=pi)$]
        #solution()[
          $display(f'(x) = "cos"(x/2) cos(x/2) (1/2) + "sen"(x/2)(-sin(x/2) (1/2)) = (1/2)[ "cos"^2(x/2) - "sen"^2(x/2)])$

          $display(f'(pi) = (1/2)[ "cos"^2(pi/2) - "sen"^2(pi/2)] = 1/2(0-1) = -1/2)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = x "ln"(x) "en" x=1)$]
        #solution()[
          $display(f'(x) = 1 dot "ln"(x) + x dot (1/x) = "ln"(x) + 1)$

          $display(f'(1) = "ln"(1) + 1 = 0 + 1 = 1)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = e^(2x) "en" x=0)$]
        #solution()[
          $display(f'(x) = 2e^(2x))$

          $display(f'(0) = 2e^(0) = 2)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (x^2 + 1)/(x - 1) "en" x=2)$]
        #solution()[
          $display(f'(x) = ((2x)(x - 1) - (x^2 + 1)(1))/(x - 1)^2 = (2x^2 - 2x - x^2 - 1)/(x - 1)^2 = (x^2 - 2x - 1)/(x - 1)^2)$

          $display(f'(2) = (2^2 - 2 dot 2 - 1)/(2 - 1)^2 = (4 - 4 - 1)/1 = -1)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arctan"(x) "en" x=1)$]
        #solution()[
          $display(f'(x) = 1/(1 + x^2))$

          $display(f'(1) = 1/(1 + 1^2) = 1/2)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = sqrt(x^2 + x + 1) "en" x=0)$]
        #solution()[
          $display(f'(x) = (1/2)(x^2 + x + 1)^(-1/2)(2x + 1) = (2x + 1)/(2 sqrt(x^2 + x + 1)))$

          $display(f'(0) = (2 dot 0 + 1)/(2 sqrt(0^2 + 0 + 1)) = 1/2)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "ln"(sqrt(x + 1)) "en" x=3)$]
        #solution()[
          $display(f'(x) = 1/(sqrt(x + 1)) (1/2)(x + 1)^(-1/2) = 1/(2(x + 1)))$

          $display(f'(3) = 1/(2(3 + 1)) = 1/8)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = root(3, x^2 + 1) "en" x=1)$]
        #solution()[
          $display(f'(x) = (1/3)(x^2 + 1)^(-2/3)(2x) = (2x)/(3 root(3, (x^2 + 1)^2)))$

          $display(f'(1) = (2 dot 1)/(3 root(3, (1^2 + 1)^2)) = 2/(3 root(3, 4)) = root(3, 16)/6)$
        ]
      ],
    )
  ],
  [

  ],
  [
    #question()[Calcula la derivada de las siguientes funciones, aplicando derivación logarítmica:]
    #questions-columns(
      [
        #subquestion()[$display(f(x) = (x^2 + 1)^(x))$]
        #solution()[
          $display("Ln"(f(x)) = "Ln"((x^2+1)^x) => "Ln"(f(x)) = x dot "Ln"((x^2+1)) =>)$

          $display(["Ln"(f(x))]' = [x dot "Ln"(x^2+1)]' => (f'(x))/(f(x)) = 1 dot "Ln"(x^2+1) + x dot 1/(x^2+1) dot 2x) =>$

          $display((f'(x))/(f(x)) = "Ln"(x^2+1) + (2x^2)/(x^2+1) => f'(x) = f(x) [ "Ln"(x^2+1) + (2x^2)/(x^2+1)]) =>$

          $display(f'(x) = (x^2 + 1)^(x) [ln(x^2 + 1) + (x(2x)/(x^2 + 1))])$
        ]
      ],
      [
        #subquestion()[$display(f(x) = x^("sen"(x)))$]
        #solution()[
          $display("Ln"(f(x)) = "ln"(x^("sen"(x))) => "ln"(f(x)) = "sen"(x) dot "ln"(x) =>)$

          $display(["Ln"(f(x))]' = ["sen"(x) dot "Ln"(x)]' => (f'(x))/(f(x)) = "cos"(x) dot "Ln"(x) + "sen"(x) dot 1/x) =>$

          $display((f'(x))/(f(x)) = "cos"(x) dot "Ln"(x) + ("sen"(x))/x => f'(x) = f(x) ["cos"(x) dot "Ln"(x) + ("sen"(x))/x]) =>$

          $display(f'(x) = x^("sen"(x)) ["cos"(x) dot "Ln"(x) + ("sen"(x))/x])$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (x^2 + 1)^(sqrt(x)))$]
        #solution()[
          $display("ln"(f(x)) = "ln"((x^2+1)^(sqrt(x))) => "ln"(f(x)) = sqrt(x) dot "ln"(x^2+1) =>)$

          $display(["ln"(f(x))]' = [sqrt(x) dot "ln"(x^2+1)]' => (f'(x))/(f(x)) = (1/(2 sqrt(x))) dot "ln"(x^2+1) + sqrt(x) dot 1/(x^2+1) dot 2x) =>$

          $display((f'(x))/(f(x)) = "ln"(x^2+1)/(2 sqrt(x)) + (2x sqrt(x))/(x^2+1) => f'(x) = f(x) [ "ln"(x^2+1)/(2 sqrt(x)) + (2x sqrt(x))/(x^2+1)]) =>$

          $display(f'(x) = (x^2 + 1)^(sqrt(x)) [ "ln"(x^2+1)/(2 sqrt(x)) + (2x sqrt(x))/(x^2+1)])$
        ]
      ],
      [
        #subquestion()[$display(f(x) = ("sen"(x))^(x^2))$]
        #solution()[
          $display("ln"(f(x)) = "ln"(("sen"(x))^(x^2)) => "ln"(f(x)) = x^2 dot "ln"("sen"(x)) =>)$

          $display(["ln"(f(x))]' = [x^2 dot "ln"("sen"(x))]' => (f'(x))/(f(x)) = 2x dot "ln"("sen"(x)) + x^2 dot 1/"sen"(x) dot "cos"(x)) =>$

          $display((f'(x))/(f(x)) = 2x dot "ln"("sen"(x)) + (x^2 cos(x))/"sen"(x) => f'(x) = f(x) [ 2x "ln"("sen"(x)) + x^2 "cotg"(x)]) =>$

          $display(f'(x) = ("sen"(x))^(x^2) [ 2x "ln"("sen"(x)) + x^2 "cotg"(x) ])$
        ]
      ],
      [
        #subquestion()[$display(f(x) = e^(sqrt(x^2 + 1)))$]
        #solution()[
          $display(f'(x) = e^(sqrt(x^2 + 1)) (1/2)(x^2 + 1)^(-1/2)(2x) = (x e^(sqrt(x^2 + 1)))/(sqrt(x^2 + 1)))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = (x^3 + 1)^(root(3, x)))$]
        #solution()[
          $display("ln"(f(x)) = "ln"((x^3 + 1)^(root(3, x))) => "ln"(f(x)) = root(3, x) dot "ln"(x^3 + 1) =>)$

          $display(["ln"(f(x))]' = [root(3, x) dot "ln"(x^3 + 1)]' => (f'(x))/(f(x)) = (1/(3 x^(2/3))) dot "ln"(x^3 + 1) + root(3, x) dot 1/(x^3 + 1) dot 3x^2 =>)$

          $display((f'(x))/(f(x)) = "ln"(x^3 + 1)/(3 root(3, x^2)) + (3x^2 root(3, x))/(x^3 + 1) => f'(x) = f(x) [ "ln"(x^3 + 1)/(3 root(3, x^2)) + (3x^2 root(3, x))/(x^3 + 1)] =>)$

          $display(f'(x) = (x^3 + 1)^(root(3, x)) [ "ln"(x^3 + 1)/(3 root(3, x^2)) + (3x^2 root(3, x))/(x^3 + 1)])$
        ]
      ],
    )
  ],
)

