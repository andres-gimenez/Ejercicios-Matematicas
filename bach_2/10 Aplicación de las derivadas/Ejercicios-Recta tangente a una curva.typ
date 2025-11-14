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
    logo:image("../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Recta tangente a una curva],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 22),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Calcula las ecuaciones de las rectas tangente y normal de la función $f(x) =x^2 + 2x -3$ en $x=2$.]
    #solution()[
      *Recta tangente*
      
      La ecuación de la recta tangente a una curva en $x=x_0$ es $y-f(x_0) = f'(x_0)(x-x_0)$

      Calculamos la derivada $f'(x)=2x+2$

      Calculamos $f(2) = 2^2 + 2 dot 2 - 3 =5$

      Calculamos $f'(2) = 2dot 2 + 2 = 6$

      Aplicamos la ecuación de la recta tangente 

      $ y-f(2) = f'(2)(x-2) => y - 5 = 6 (x - 2) => y = 6x - 12 + 5 => #result($y = 6x -7$)$

      *Recta normal*

      La ecuación de la recta normal a una curva en $x=x_0$ es $y-f(x_0) = (- 1)/(f'(x_0))(x-x_0)$

      Aplicamos la ecuación de la recta normal 

      $ y-f(2) = (-1)/(f'(2))(x-2) => y - 5 = -1/6 (x - 2) => y = -1/6x + 2/6 + 5 => #result($y = -1/6x -16/3$)$

       #align(center, 
        cetz.canvas({
          import cetz.draw: *
          import cetz-plot: *
          plot.plot(
            size: (8,8),
            x-min: -5, x-max: 15,
            y-min: -5, y-max: 15,
            x-tick-step:30,
            y-tick-step:30,
            aspect-ratio:1,
            axis-style: "school-book",
            {
              plot.add(((2,5),), mark-size: 0.2, mark: "o")
              plot.add-anchor("pt", (2,5))
              plot.add(
                domain: (-5, 15),
                  x=>x * x + 2 * x - 3, 
              )
              plot.add(
              domain: (-5, 15),
                  x=>6 * x - 7, 
              )
              plot.add(
              domain: (-5, 15),
                  x=>-1/6 * x + 16 / 3, 
              )
            }
          )      
        }))
    ]
  ],[
    #question()[Se ha trazado una recta tangente a la curva $y=x^3$, cuya pendiente es 3 y pasa por el punto $(0, -2)$. Halla el punto de tangencia.]
    #solution()[      
    ]
  ],[
    #question()[Halla la recta tangente a $y = "sen"(x)$ para $x in [-pi, pi]$ paralelas a la recta $x+2y=0$:]
    #solution()[
      Para calcular la pendiente de la recta escribimos la ecuación de dicha recta en su forma explícita.

      $ y = -1/2 x $

      Luego la pendiente de la recta es $display(-1/2)$.

      Calculamos la derivada de $f(x)$

      $ f'(x) = cos(x) $

      Buscamos cuando $ f'(x) = -1/2$

      $ cos(x) = -1/2 => x = arccos(-1/2) => x = plus.minus (2pi)/3 $

      Si $display(x = -(2pi)/3)$
      
      $ f(-(2pi)/3) = "sen"(-(2pi)/3) = -sqrt(3)/2 -> (-(2pi)/3, -sqrt(3)/2) $

      $ y-f(x_0) = f'(x_0)(x-x_0) => y - (-sqrt(3)/2) = -1/2 (x - (-(2pi)/3)) => #result($y = -1/2 x - pi/3 - sqrt(3)/2$) $

      Si $display(x = (2pi)/3)$
      
      $ f((2pi)/3) = "sen"((2pi)/3) = sqrt(3)/2 -> ((2pi)/3, sqrt(3)/2) $

      $ y-f(x_0) = f'(x_0)(x-x_0) => y - sqrt(3)/2 = -1/2 (x - (2pi)/3) => #result($y = -1/2 x + pi/3 + sqrt(3)/2$)  $
    ]
  ],[
    #question()[Halla la recta tangente a $y = x^2-5x+3$ que pasa por $P(2, -7)$ ]
    #solution()[
      Primero comprobamos que P no pertenece a la curva:
      
      $ -7 != 2^2 - 5 dot 2 + 3 => -7 != 4-10+3 => -7 != -3 $

      Calculamos la derivada de la curva:

      $ f'(x) = 2x -5 $

      Sea $(c, f(c))$ el punto de tangencia a la curva. Con lo que tenemos que buscar una recta que pase por $(c, f(c))$ por $(2, -7)$ y tenga pendiente $f'(c)$.

      Sustituyendo en la ecuación $y-f(x_0) = f'(x_0)(x-x_0)$

      $ c^2-5c+3 - (-7) = (2c - 5) (c - 2) => \ c^2 -5c + 10 = 2c^2-4c -5c + 10 => \
       -c^2 + 4c = 0 => c^2 - 4c = 0 => (c - 4)c = 0 =>  \ 
       c_1 = 0 " y " c_2 = 4 $

      Para $c_1 = 0$ calculamos la recta:

      $display(f(c_1) = f(0) =  3)$
      
      $display(f'(c_1) = f'(0) = - 5 )$

      $ y - 3 = -5 (x + 0) => #result($y=-5x + 3$) $

      Para $c_2 = 4$

      $display(f(c_2) = f(4) = 4 ^2 - 5 dot 4 + 3 = -1)$
      
      $display(f'(c_2) = f'(4) = 2 dot 4 - 5 = 3 )$

      $ y - (-1) = 3 (x - 4)) => y + 1 = 3x - 12 => #result($y= 3x - 13 $) $



    ]
  ],[
    #question()[Dada la función $f(x)=x^2$, halla los puntos en los que la recta tangente es paralela a la bisectriz del primer cuadrante $f(x)=x$. Encuentra la ecuación de la recta tangente y la normal en dichos puntos.]
  ],
)

