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
    number: [Continuidad y derivabilidad],
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
    #question()[Indica los valores de $x$ donde la función $f(x)$ es derivable:
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & 0 & "si" & x < -2,
          & 1 & "si" & -2 <= x < 1,
          & x & "si" & 1 <= x < 3,
          & x^2 - 6x +12 & "si" & x >= 3,
        )
      $
    ]
    #solution()[
      La función es derivable en los intervalos abiertos $(-oo, -2)$, $(-2, 1)$, $(1, 3)$ y $(3, +oo)$.

      $f(x) = 0$ y $f(x) = 1$ son constantes, luego continuas y derivable en $forall RR$ $(-oo,-2)$ y $(-2, 1)$ respectivamente.

      $x$ y $x^2 - 6x +12$ derivable en $forall RR$, luego derivable en $(1,3)$ y $(3, +oo)$ respectivamente.

      Ahora, comprobamos la derivabilidad en los puntos críticos $x=-2$, $x=1$ y $x=3$:

      *En $x=-2$*:

      La función no es continua, luego la función no es derivable, aunque las derivadas laterales coincidan:

      $cases(
        reverse: #true, delim: "{", gap: #1em,
        display(limits("lím")_(x->-2^-) f(x) = limits("lím")_(x->-2^-) 0 = 0),
        display(limits("lím")_(x->-2^+) f(x) = limits("lím")_(x->-2^-) 1 = 1),
      )$ Luego $f(x)$ no es continua en $x=-2$.

      #stack(
        dir: ltr,
        $cases(
          reverse: #true, delim: "{", gap: #1em,
          display(f'(x^-) = 0 => f'(-2^-) = 0),
          display(f'(x^+) = 0 => f'(-2^+) = 0),
        )$,
        [#v(2mm) Aunque las derivadas laterales coincidan, \ no es derivable por no ser continua en  $x=-2$],
      )

      Por lo tanto, $f(x)$ no es derivable en x=-2.

      *En $x=1$*:

      La función es continua, pero las derivadas laterales no coinciden:

      $cases(
        reverse: #true, delim: "{", gap: #1em,
        display(limits("lím")_(x->1^-) f(x) = limits("lím")_(x->1^-) 1 = 1),
        display(limits("lím")_(x->1^+) f(x) = limits("lím")_(x->1^-) x = 1),
      )$ Existe el limite $display(limits("lím")_(x->1^+) f(x) = 1)$

      La función esta bien definida en f(1) = 1 y coincide con el limite $display(limits("lím")_(x->1^+) f(x) = f(1))$,
      luego $f(x)$ es continua en $x=1$.

      #stack(
        dir: ltr,
        $cases(
          reverse: #true, delim: "{", gap: #1em,
          display(f'(x^-) = 0 => f'(1^-) = 0),
          display(f'(x^+) = 1 => f'(1^+) = 0),
        )$,
        [#v(2mm) Las derivadas laterales son distintas, \ ergo, no es derivable en  $x=1$],
      )

      *En $x=3$*:

      La función es continua, pero las derivadas laterales son:

      $cases(
        reverse: #true, delim: "{", gap: #1em,
        display(limits("lím")_(x->3^-) f(x) = limits("lím")_(x->3^-) 3 = 3),
        display(limits("lím")_(x->3^+) f(x) = limits("lím")_(x->3^-) 3^2 - 6 dot 3 + 12 = 9 - 18 + 12 = 3),
      )$ Los limites laterales coinciden,

      luego $exists display(limits("lím")_(x->3^-) f(x) = 3)$, $f(x)$ está bien definida y coincide con el valor del limite $f(3) = 3$, luego $f(x)$ es continua en $x=3$.

      #stack(
        dir: ltr,
        $cases(
          reverse: #true, delim: "{", gap: #1em,
          display(f'(x^-) = 0 => f'(3^-) = 1),
          display(f'(x^+) = 2x - 6 => f'(3^+) = 2 dot 3 - 6 = 6),
        )$,
        [#v(2mm) Las derivadas laterales son distintas, \ luego, no es derivable en  $x=3$],
      )

      La función es continua en $display((-oo, -2) union (2,3) union (3, +oo) = RR \\ {-2, 3})$

      La función es derivable en $display(display((-oo, -2] union (-2, 1) union (1, 3) union (3, +oo)) = RR \\ {-2, 1, 3})$

      #align(center, cetz.canvas({
        import cetz.draw: *
        import cetz-plot: *
        plot.plot(
          size: (10, 5),
          x-tick-step: 1,
          y-tick-step: 1,
          axis-style: "school-book",
          {
            plot.add(
              domain: (-5, -2),
              style: (mark: (end: "o")),
              x => 0,
            )
            plot.add(
              domain: (-2, 1),
              style: (stroke: red, mark: (start: (symbol: "o", fill: red), end: "o"), fill: blue),
              x => 1,
            )
            plot.add(
              domain: (1, 3),
              style: (stroke: green, mark: (start: (symbol: "o", fill: green), end: "o")),
              x => x,
            )
            plot.add(
              domain: (3, 4),
              x => x * x - 6 * x + 12,
              style: (stroke: blue, mark: (start: (symbol: "o", fill: blue))),
            )
          },
        )
      }))
    ]
  ],
  [
    #question()[Dada la función
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & x^2 + 1 & "si" & x < 1,
          & ln(x) & "si" & x >= 1,
        )
      $
    ]
    #subquestion()[Estudia si la función es continua en $x=1$]
    #subquestion()[Estudia si la función es derivable en $x=1$]
  ],
  [
    #question()[Dada la función
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & e^(-x) - 1 & "si" & x <= 0,
          & x^2+x & "si" & x > 0,
        )
      $
    ]
    #subquestion()[Estudia si la función es continua en $x=0$]
    #subquestion()[Estudia si la función es derivable en $x=0$]
  ],
  [
    #question()[Dada la función
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & -x^2 + 2 & "si" & x < 1,
          & -2 "ln"(x) + 1 & "si" & x >= 1,
        )
      $
    ]
    #subquestion()[Estudia si la función es continua en $x=1$]
    #subquestion()[Estudia si la función es derivable en $x=1$]
  ],
  [
    #question()[Dada la función
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & x^3 - x & "si" & x < 0,
          & a x + b & "si" & x >= 0,
        )
      $ ]
    #subquestion()[Estudia para que valores de a y b la función es continua.]
    #subquestion()[Estudia para que valores de a y b la función es derivable.]
  ],
  [
    #question()[Dada la función
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & -x^2 - x + a & "si" & x <= 1,
          & 3/(b x) & "si" & x > 1,
        )
      $
    ]
    #subquestion()[Estudia para que valores de a y b la función es continua.]
    #subquestion()[Estudia para que valores de a y b la función es derivable.]
  ],
  [
    #question()[Dada la función
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & a/x & "si" & x <= -1,
          & (x^2 - b)/4 & "si" & x > -1,
        )
      $
    ]
    #subquestion()[Estudia para que valores de a y b la función es continua.]
    #subquestion()[Estudia para que valores de a y b la función es derivable.]
  ],
  // [
  //   #question()[(*EvAU - año 2022 - Modelo - Opción B*) Sea la función
  //      $ f(x) = x^3 - |x| + 2 $ ]
  //   [#subquestion()[Estudia la continuidad y derivabilidad de $f$ en $x=0$.]]
  //   [#subquestion()[Determina los extremos relativos de $f(x)$ en la recta real.]]
  // ],
  [#question()[Calcula el valor de m y n para que la función $f(x)$ sea derivable en $x=2$:
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & m x + 5 & "si" & x <= 2,
          & n x^2 + x - 1 & "si" & x > 2,
        )
      $ ]
    // #solution(color:red)[
    //   Para que la función sea derivable en $x=2$, debe ser continua en ese punto y sus derivadas laterales deben coincidir.

    //   Primero, igualamos los valores de la función en $x=1$:

    //   $display(f(x) = )$

    //   $display(m dot 1 + n = 1^2 - 1 => m + n = 0 => n = -m)$

    //   Ahora, calculamos las derivadas laterales:
    //   Derivada por la izquierda:
    //   $display(f'_-(x) = m)$

    //   Derivada por la derecha:
    //   $display(f'_+(x) = 2x => f'_+(1) = 2 dot 1 = 2)$

    //   Igualamos las derivadas laterales:
    //   $display(m = 2)$

    //   Sustituyendo en la ecuación para n:
    //   $display(n = -m => n = -2)$

    //   Por lo tanto, los valores son:
    //   $display(m = 2)$
    //   ]
  ],
  [#question()[Calcula el valor de a y b para que la función $f(x)$ sea derivable en $x=1$:
      $
        f(x) = cases(
          reverse: #false, delim: "{", gap: #1em,
          & x^2 + a/x + b dot e^(x-1) & "si" & x <= 1,
          & 2/(x+1) & "si" & x > 1,
        )
      $ ]
  ],
  // [#question()[Para la predicción de la evolución de epidemias se utiliza la función de Gompertz,
  //   $ display(f(x) = a e^(-b e^(-c x))) $
  //    donde a, b y c son constantes positivas. Calcula su derivada:]
  //   #solution()[
  //     $display(f'(x) = a dot e^(-b e^(-c x)) dot (-b) dot e^(-c x) dot (-c) = a b c e^(-c x) e^(-b e^(-c x)))$
  //   ]
  // ],
  // [#question()[La función logística, curva logística o curva en forma de S es una función matemática que aparece en diversos modelos de       crecimiento de poblaciones, propagación de enfermedades epidémicas y difusión en redes sociales.
  //   $ display(P(t) = 1/(1+e^(-t))) $
  //   Calcula la tasa de crecimiento de la población en función del tiempo:]
  //   #solution()[
  //     $display(P'(t) = (0 dot (1 + e^(-t)) - 1 dot (-e^(-t)))/(1 + e^(-t))^2 = e^(-t)/(1 + e^(-t))^2)$
  //   ]
  // ],
  [
    #question()[Calcula la derivada enésima $display(f(x) = x^n)$:]
    #solution()[
      $display(f'(x) = n x^(n-1))$

      $display(f''(x) = n(n-1) x^(n-2))$

      $display(f'''(x) = n(n-1)(n-2) x^(n-3))$

      $display(f^(4)(x) = n(n-1)(n-2)(n-3) x^(n-4))$

      Por tanto, la derivada enésima es:
      $display(f^(n)(x) = n! x^(n-n) = n!)$
    ]
  ],
  [
    #question()[Calcula la derivada enésima $display(f(x) = "ln"(x))$:]
    #solution()[
      $display(f'(x) = 1/x)$

      $display(f''(x) = -1/x^2)$

      $display(f'''(x) = 2/x^3)$

      $display(f^(4)(x) = -6/x^4)$

      $display(f^(5)(x) = 24/x^5)$

      Por tanto, la derivada enésima es:
      $display(f^(n)(x) = (-1)^(n-1) dot (n-1)!/x^n)$
    ]
  ],
  [
    #question()[Calcula la derivada enésima $display(f(x) = "sen"(x))$:]
    #solution()[
      $display(f'(x) = "cos"(x) = "sen"(x + pi/2))$

      $display(f''(x) = - "sen"(x) = "sen"(x + pi))$

      $display(f'''(x) = "cos"(x) = "sen"(x + (3pi)/2))$

      $display(f^(4)(x) = "sen"(x) = "sen"(x + 2pi))$

      Por tanto, la derivada enésima es:
      $display(f^(n)(x) = "sen"(x + n dot (pi/2)))$
    ]
  ],
)

