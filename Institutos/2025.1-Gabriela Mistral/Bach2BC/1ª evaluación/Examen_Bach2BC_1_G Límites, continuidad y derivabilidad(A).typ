#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - Global",
    content: "Límites, continuidad y derivabilidad",
    model: [Modelo $A$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 9),
  // show-student-data: "odd-pages",
  show-student-data: false,
  // show-grade-table: true,
  show-solutions: true,
  // draft: true,
  // question-points-position: right,
  question-points-position: none,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  // clarifications: (
  //   [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
  //   [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
  //   [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
  //   [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.],
  //   [Se penalizara el no dar un valor exacto, por ejemplo $sqrt(2)$ es un valor exacto $1,41421$ no lo es.]
  // )
)
// #set math.cases(reverse: true)

#questions-pages(
  [
    #question(points:2.5)[Calcula el límite de la función:
      $ limits("lím")_(x->0) ((x-"sen"(x))/(ln(1+x)-x+x^2/2)) $
    ]
    #solution()[
      $display(limits("lím")_(x->0) (x-"sen"(x))/(ln(1+x)-x+x^2/2) = (0-"sen"(0))/(ln(1+0) - 0 + (0^2)/2) = 0/(0-0+0) = 0/0 )$ (Indeterminación $0/0$) 

      $display(limits("lím")_(x->0) (x-"sen"(x))/(ln(1+x)-x+x^2/2) stretch(=)^"L'H" limits("lím")_(x->0) (1-cos(x)) /(1/(1+x)-1+(2x)/2) = limits("lím")_(x->0) (1-cos(x)) /(1/(1+x)-1+x) = (1-cos(0))/(1/(1+0)-1+0) = (1-1)/(1-1+0) = 0/0)$ (Indeterminación $0/0$) 

      $display(limits("lím")_(x->0) (1-cos(x)) /(1/(1+x)-1+x) stretch(=)^"L'H" limits("lím")_(x->0) (-(-"sen"(x))) /(((1)'(1+x) - 1(1+x)')/(1+x)^2 - 0 +1) = limits("lím")_(x->0) ("sen"(x)) /(((0(1+x) - 1 dot 1))/(1+x)^2 - 0 +1) = limits("lím")_(x->0) ("sen"(x)) /((-1)/(1+x)^2 +1) = ("sen"(0))/(((-1)/(1+0)^2 + 1 ))) = 0/(-1+1) = 0/0 $ (Indeterminación $0/0$) 

      $display(limits("lím")_(x->0) ("sen"(x)) /((-1)/(1+x)^2 +1) stretch(=)^"L'H" limits("lím")_(x->0) (cos(x)/ (2/(1+x)^3)) = cos(0)/(2/(1+0)^3)) = 1/(2/1) = #result($1/2$)$ 

    ]
  ],
  [
    #question(points:2.5)[Calcula la derivada de la función:

      #clarification()[Intenta simplificar la función antes de derivar]

      #clarification()[En $e^x^2$ lo que está elevado al cuadrado es la x, no $e^x$;#h(5mm) ($e^x^2 != (e^x)^2$) ]

      $ f(x) = ln(((2x^2+"cos"(x)) e^x^2)/sqrt(x-1)) $
    ]
    #solution()[
      $display(f(x) = ln(((2x^2+"cos"(x)) e^x^2)/sqrt(x-1)) = 
      ln(2x^2 + "cos"(x)) + ln(e^x^2) - ln(sqrt(x-1)) = \ 
      ln(2x^2 + "cos"(x)) + x^2 - (1/2) ln(x-1))$

      $display(f'(x) = (1/(2x^2 + "cos"(x))) (4x - "sen"(x)) + 2x - (1/2)(1/(x-1)))$

      $display(f'(x) = (4x - "sen"(x))/(2x^2 + "cos"(x)) + 2x - 1/(2(x-1)))$
    ]
  ],
  [
    #question(points:2.5)[
      Calcula para que valores de $a$ y $b$ la siguiente función es continua y derivable en $RR$, dando la solución en función de $pi$ (sin decimales).

       $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & a x^2 + b x + (pi/2)^2 &"si" & x <= pi /2,
                & "sen"(x) - 1 &"si" & x > pi/2,
              ) $ 

        // a = 1, b= -pi
    ]
    #solution()[
        Para que la función sea continua en $x = pi/2$ se ha de cumplir que:

        $display(limits("lím")_(x->(pi/2)^-) f(x) = limits("lím")_(x->(pi/2)^+) f(x))$

        $display(limits("lím")_(x->(pi/2)^-) (a x^2 + b x + (pi/2)^2) = limits("lím")_(x->(pi/2)^+) ("sen"(x) - 1))$

        $display(a (pi/2)^2 + b (pi/2) + (pi/2)^2 = "sen"(pi/2) - 1 =>
        a (pi^2/4) + b (pi/2) + (pi^2/4) = 1 - 1 => \
        a (pi^2/4) + b (pi/2) + (pi^2/4) = 0 => 
        a (pi^2/4) + b (pi/2) = - (pi^2/4) =>
        a(pi/2)^2 + b (pi/2) = -(pi/2)^2 => \
        (pi/2) a + b = -pi/2 )$

        Para que la función sea derivable en $x = pi/2$ han de coincidir las derivadas laterales:

         $display(f'(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & 2a x + b  &"si" & x <= pi /2,
                & "cos"(x) &"si" & x > pi/2,
              )) $ 
        
        $display(f'((pi/2)^(-)) = 2a (pi/2) + b = pi a + b)$
        
        $display(f'((pi/2)^+)) = "cos"(pi/2) = 0)$

        Luego

        $display(pi a + b = 0)$

        Nos queda el sistema de ecuaciones

        $display(f'(x) = cases(reverse: #false, delim: "{", gap: #1em,
                pi/2 a + b = -pi/2,
                pi a + b = 0,
              )) $ 

        Resolvemos el sistema:

        $display(pi a + b = 0 => b = - pi a \
        pi/2 a + b = -pi/2 => pi/2 a - pi a = -pi/2 => -pi/2 a = -pi/2 => a = 1 \
        b = -pi a => b = -pi)$

        #result($display(a = 1 \ b = -pi)$)

        La función se quedaría como: 

        $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & x^2 - pi x + (pi/2)^2 &"si" & x <= pi /2,
                & "sen"(x) - 1 &"si" & x > pi/2,
              ) $ 

        #align(center, 
        cetz.canvas({
          import cetz.draw: *
          import cetz-plot: *
          plot.plot(
            size: (8,8),
            // x-min: 0, x-max: 15,
            // y-min: -5, y-max: 15,
            x-tick-step:1,
            y-tick-step:1,
            aspect-ratio:1,
            axis-style: "school-book",
            {
              plot.add(((3.14/2, 0),), mark-size: 0.2, mark: "o")
             
              plot.add(
                domain: (-1, 3.14/2),
                  x=>x * x - 3.15 * x + (3.1416/2) * (3.1416/2), 
              )
              plot.add(
              domain: (3.14/2, 3.14 * 3),
                  x=>calc.sin(x) - 1, 
              )
            }
          )      
        }))
    ]
  ],
  [
    #question(points:2.5)[
      Calcula las rectas tangente y normal a la curva $display(y = (x^3-2x+1)/(x+1))$ en $x=1$.
    ]
    #solution()[
      Calculamos la derivada de la función:

      $display(f(x) = (x^3-2x+1)/(x+1)) $

      $display(f'(x) = ((x+1)(3x^2-2) - (x^3-2x+1)(1))/(x+1)^2 = ((3x^3 -2x +3x^2 -2)-(x^3-2x+1))/(x+1)^2 = (2x^3 +3x^2-3)/(x+1)^2) $

      Para calcular el valor de la pendiente en $x=1$, evaluamos la derivada en $x=1$.

      $display(f'(1) = (2 dot 1^3 +3 dot 1^2-3)/(1+1)^2) = 2/4 = 1/2 $

      Luego la pendiente de la recta sera $m=1/2$

      Calculamos el valor de la función en $x=1$ para obtener el punto de tangencia:

      $display(f(1) = (1^3 - 2 dot 1 + 1)/(1+1)) = 0/2 = 0$

      Luego el punto de tangencia es $(1,0)$

      La ecuación de la recta tangente es: 
      
      $display(y - y_0 = m (x - x_0) => y - 0 = (1/2)(x - 1) => #result($y = 1/2x - 1/2$))$

 #align(center, 
        cetz.canvas({
          import cetz.draw: *
          import cetz-plot: *
          plot.plot(
            size: (8,8),
            // x-min: 0, x-max: 15,
            // y-min: -5, y-max: 15,
            x-tick-step:1,
            y-tick-step:1,
            aspect-ratio:1,
            axis-style: "school-book",
            {
              plot.add(((1, 0),), mark-size: 0.2, mark: "o")
             
              plot.add(
                domain: (-0.5, 3),
                  x=> (x * x * x - 2 * x + 1) / (x + 1), 
              )
              plot.add(
              domain: (-0.5, 3),
                  x=> x/2 - 1/2, 
              )
            }
          )      
        }))
    
    ]
  ]
)
  



