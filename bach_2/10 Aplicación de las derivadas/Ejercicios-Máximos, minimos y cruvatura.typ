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
    number: [Crecimiento, decrecimiento, curvatura ],
    content: [máximos, mínimos y curvatura],
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
    #question()[Estudia el crecimiento, decrecimiento y curvatura y encuentra los máximos, mínimos y puntos de inflexión de las siguientes funciones:]
    #questions-columns(
    [
      #subquestion()[$display(f(x) = x^3 -3x)$]
      #solution()[
        - Derivada: $f'(x)=3x^2-3=3(x^2-1)$.
          - Puntos críticos: $f'(x)=0 => x=0 " y " x= plus.minus 1$.
          
          En $x = 0 " y " x = plus.minus  1$ tenemos máximo, mínimo o punto de inflexión. 

        - Segunda derivada: $f''(x)=6x$.
          - Puntos críticos $f''(x)=0 => x = 0 $
            - $f''(-1)=-6<0 =>$ máximo local en $x=-1$.
            - $f''(1)=6>0 =>$ mínimo local en $x=1$.
        
        - Signo de $f'(x)$:
          - $f'(x) > 0$ en $(-oo,-1)$ $ => f(x)$ es creciente, 
          - $f'(x) < 0$ en $(-1,1)$ $ => f(x)$ es decreciente, 
          - $f'(x) > 0$ en $(1,oo)$ $ => f(x)$ es creciente.
        
        - Signo de $f''(x)$
          - $f''(x) < 0$ en $(-oo, 0)$ $=>f(x)$ es convexa. $inter.big$ 
          - $f''(x) > 0$ en $(0, oo)$ $=>f(x)$ es cóncava. $union.big$ 
          - $f''(x) = 0 => x = 0$ es un punto de inflexión. 

        *Conclusión*: 

        - Es creciente $forall x in (-oo,-1) union (1,oo)$ porque $f'(x) > 0$
        - Es decreciente $forall x in (-1,1)$ porque $f'(x) < 0$
        - Máximo local en $x=-1 => P(-1, 2)$ porque $f'(-1) = 0 " y " f''(-1) < 0$
        - Mínimo local en $x=1 => P(1, -2)$ porque $f'(1) = 0 " y " f''(1) > 0$.
        - Es cóncava en $forall x in (0, oo)$ porque $f''(x) > 0$
        - Es convexa en $forall x in (-oo, 0)$ porque $f''(x) < 0$
        - Hay un punto de inflexión en $x = 0 => P(0, 0)$ porque $f'(0) = 0$

        Para  dibujar la función puede ser util calcular los puntos de corte con los ejes.

        $f(x) = 0 => x ={-sqrt(3), 0, sqrt(3)}$ 

        #align(center, 
        cetz.canvas({

          import cetz.draw: *
          import cetz-plot: *
          plot.plot(
            size: (10,5),
            x-tick-step:1,
            y-tick-step:1,
            axis-style: "school-book",
            {
              plot.add(
                domain: (-2, 2),
                  x=>x * x * x - 3 * x, 
                  // style: (stroke:blue, mark:(start:(symbol:"o", fill:blue))),
              )
            }
          )      
        }))
      ]
    ],
    [
      #subquestion()[$display(f(x) = x^2-4x +1)$]
      #solution()[
       - Derivada: $f'(x)=2x-4$.
          - Punto crítico: $f'(x)=0 => x= 2$.
          
          En $x = 1$ tenemos máximo, mínimo o punto de inflexión. 

        - Segunda derivada: $f''(x)=2$.
          - No hay puntos de inflexión porque $f''(x)!=0 forall x in RR$
        
        - Signo de $f'(x)$:
          - $f'(x) < 0$ en $(-oo,2)$ $ => f(x)$ es decreciente, 
          - $f'(x) > 0$ en $(2,oo)$ $ => f(x)$ es creciente.
        
        - Signo de $f''(x)$
          - $f''(x) > 0$ en $RR$ es cóncaba. $union.big$

        *Conclusión*: 

        - Es creciente $forall x in (-oo,2)$ porque $f'(x) > 0$
        - Es decreciente $forall x in (2,oo)$ porque $f'(x) < 0$
        - Mínimo local en $x=2 => P(2, -3)$ porque $f'(2) = 0 " y " f''(2) > 0$.
        - Es cóncava en $forall x in (0, oo)$ porque $f''(x) > 0$

        Para  dibujar la función puede ser util calcular los puntos de corte con los ejes.

        $f(x) = 0 => x ={2-sqrt(3), 2+sqrt(3)}$ 

        #align(center, 
        cetz.canvas({

          import cetz.draw: *
          import cetz-plot: *
          plot.plot(
            size: (10,5),
            x-tick-step:1,
            y-tick-step:10,
            axis-style: "school-book",
            {
              plot.add(
                domain: (-3, 7),
                  x=>x * x - 4 * x + 1, 
                  // style: (stroke:blue, mark:(start:(symbol:"o", fill:blue))),
              )
            }
          )      
        }))
        ]
    ],
    [
      #subquestion()[$display(f(x) = (x+1)/(x-2))$]
      #solution()[
// $f(x)=\dfrac{x+1}{x-2},\; x\neq2$.


// - $f'(x)=\dfrac{(1)(x-2)-(x+1)(1)}{(x-2)^{2}}=\dfrac{-3}{(x-2)^{2}}<0$ para todo $x\neq2$.


// **Conclusión**: La función es estrictamente decreciente en $(-\infty,2)$ y en $(2,\infty)$. No hay extremos locales (derivada nunca es cero en el dominio).
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = sqrt(x)(4-x))$]
      #solution()[
        $f(x)$ solo está definida para valores de $x>0$, solo la tenemos que estudiar en su dominio.

        Derivada:
        
        $ f'(x) = 1/(2 sqrt(x)) (4-x) + sqrt(x) (-1) = 
          (4-x)/(2 sqrt(x)) - sqrt(x) =
          (4-x)/(2 sqrt(x)) - (sqrt(x) dot (2sqrt(x)))/(2sqrt(x)) =  \
          (4-x)/(2 sqrt(x)) - (2x) / (2sqrt(x)) = 
          (4-x-2x)/(2 sqrt(x))  = (4-3x)/(2sqrt(x))
          $

        - Puntos críticos: $display(f'(x)=0 => (4-3x)/(2sqrt(x)) = 0 => 4-3x = 0 => x=4/3)$.
          
        En $x = 4/3$ tenemos un máximo, mínimo o punto de inflexión. 

        - Segunda derivada: 
        
        $ f''(x)= (-3(2sqrt(x))-(4-3x)(2/(2sqrt(x))))/((2sqrt(x))^2)= (-6sqrt(x) +(3x-4) (1/sqrt(x)) )/(4x) =
         (-6sqrt(x) /sqrt(x) + (3x-4)/sqrt(x) )/(4x) = \
         ((-6sqrt(x) sqrt(x))/sqrt(x) + ((3x-4) )/sqrt(x) )/(4x) = 
         ((-6x) + (3x-4) )/(4x sqrt(x)) = (-3x-4)/(4x sqrt(x))
          $

        -
          - Puntos críticos $display(f''(x)=0 => (-3x-4)/(4x sqrt(x)) = 0 => -3x-4 = 0 => x = -4/3)$ pero como está fuera del dominio, no lo tenemos en cuenta.
        
        - Signo de $f'(x)$:
        
        Para estudiar el signo de $f'(x)$, estudiamos el signo del numerador y denominador.

          #set table(
              align: left,
              inset: 5pt,
              stroke: (x, y) => {
                if x == 0 or x == 1{
                  (bottom: 0.7pt + gray, right: 0.7pt + gray)
                }
                else {
                  (bottom: 0.7pt + gray)
                }
            }
          )

          #align(left)[
            #table(
              columns: (auto, auto, auto),
              table.header([], [$x< 4/3$], [$x > 4/3$]),
              [$4 - 3x$], align(center+horizon)[$+$], align(center+horizon)[$-$],
              [$4x sqrt(x)$], align(center+horizon)[$+$], align(center+horizon)[$+$],
              [$display((4-3x)/(2sqrt(x)))$], align(center+horizon )[$+$], align(center+horizon)[$-$],
            )
          ]

        -
          - $f'(x) > 0$ en $(0,4/3)$ $ => f(x)$ es creciente en $(0, 4/3)$.
          - $f'(x) < 0$ en $(4/3, +oo)$ $ => f(x)$ es decreciente en $(4/3, +oo)$.
        
        - Signo de $f''(x)$
          - $f''(x) < 0 forall RR =>f(x)$ es convexa. $inter.big$

        *Conclusión*: 

        - Es creciente $forall x in (0,4/3)$ porque $f'(x) > 0$
        - Es decreciente $forall x in (4/3,+oo)$ porque $f'(x) < 0$
        - Máximo local en $x=4/3 => P(4/3, (16sqrt(3))/9)$ porque $f'(4/3) = 0$
        - Es convexa en $forall x in (0, +oo)$ porque $f''(x) < 0$

        Para  dibujar la función puede ser util calcular los puntos de corte con los ejes.

        $f(x) = 0 => sqrt(x)(4-x)) = 0 => x = 4$ 

        #align(center, 
        cetz.canvas({

          import cetz.draw: *
          import cetz-plot: *
          plot.plot(
            size: (10,5),
            x-tick-step:1,
            y-tick-step:1,
            axis-style: "school-book",
            {
              plot.add(
                domain: (0, 6),
                  x=> calc.sqrt(x) * (4-x),
                  // style: (stroke:blue, mark:(start:(symbol:"o", fill:blue))),
              )
              plot.add(((4/3,3.0792),), mark-size: 0.2, mark: "o")
              plot.add(((4,0),), mark-size: 0.2, mark: "o")
            }
          )      
        }))
      ]
    ],
    [
      #subquestion()[$display(f(x) = x^2 e^(-x))$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = ln(x^2+1))$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = (x^2)/(x^2+4))$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = x sqrt(9-x^2))$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = ln(x+3)-x^3)$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = x^4-4x^3+6x-2)$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) =(x^3)/(x-1)^2)$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) =x^2 ln x #h(5mm)  (x>0))$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^(-x^2)(x^2-1))$]
      #solution()[
        $f(x)$ esta definida en $RR$

        Derivada:
        
        $ f'(x) =  e^(-x^2) (-2 x) (x^2-1) + e^(-x^2) (2x) = e^(-x^2)(-2x^3+2x + 2x) = e^(-x^2) (-2x^3+4x) $

        - Puntos críticos: $display(f'(x)=0 => e^(-x^2) (-2x^3+4x) = 0 => -2 e^(-x^2) x (x^2+2) = 0)$.
          -  $e^(-x^2) != 0 forall x$
          -  $x = 0$
          -  $x = plus.minus sqrt(2)$
          
         En $x = 0 "y" x= plus.minus sqrt(2)$ tenemos un máximo, mínimo o punto de inflexión. 

      - Segunda derivada: 
        
      $ f''(x)= (-2) e^(-x^2)  (-2x^3+4x) + e^(-x^2) (-6x^2+4) = e^(-x^2) (2x^4-7x^4-7x^2+2) $

      - Puntos críticos $display(f''(x)=0 => e^(-x^2) (2x^4-7x^4-7x^2+2) = 0)$.
        - $e^(-x^2) != 0 forall x$
        - $(2x^4-7x^4-7x^2+2) = 0 => cases(reverse: #false, delim: "{", gap: #1em,
                & x = a_1 = -1/2 sqrt(7-sqrt(33)) approx -0.560232,
                & x = a_2 = sqrt(7-sqrt(33))/2 approx 0.560232,
                & x = a_3 = 1/2 sqrt(7+sqrt(33)) approx -1.78498,
                & x = a_4 = sqrt(7+sqrt(33))/2 approx 1.78498,
              ) $  
        
      - Signo de $f'(x)$:
        
      Estudiamos el signo de $f'(x)$
         #set table(
              align: left,
              inset: 5pt,
              stroke: (x, y) => {
                if x == 0 or x == 1 or x == 2 or x == 3  or x == 4 {
                  (bottom: 0.7pt + gray, right: 0.7pt + gray)
                }
                else {
                  (bottom: 0.7pt + gray)
                }
            }
          )

          #align(left)[
            #table(
              columns: (auto, auto, auto, auto, auto),
              table.header([], [$x< -sqrt(2)$], [$ -sqrt(2) < x < 0$], [$ 0 < x < sqrt(2)$], [$ x > sqrt(2) $] ),
              [$f'(x)$], align(center+horizon)[$+$], align(center+horizon)[$-$] ,align(center+horizon)[$+$], align(center+horizon)[$-$], 
          )
          ]

      - Signo de $f''(x)$:
        
      Estudiamos el signo de $f''(x)$

        #align(left)[
            #table(
              columns: (auto, auto, auto, auto, auto, auto),
              table.header([], [$x< a_1$], [$ a_1 < x < a_2$], [$ a_2 < x < a_3$], [$ a_3 < x < a_4$],  [$ x > a_4$] ),
              [$f''(x)$], align(center+horizon)[$+$], align(center+horizon)[$-$] ,align(center+horizon)[$+$], align(center+horizon)[$-$],  align(center+horizon)[$+$]
          )
        ]
         -
           - $f'(x) > 0$ en $(-sqrt(2), 0) union (+sqrt(2), +oo) => f(x)$ es creciente.
           - $f'(x) < 0$ en $(-oo, -sqrt(2)) union (0, +sqrt(2)) => f(x)$ es decreciente.
        
           - $f''(x) < 0$ en $(a_1, a_2) union (a_3, a_4)$ es convexa. $inter.big$
           - $f''(x) > 0$ en $(-oo, a_1) union (a_2, a_3) union (a_4, oo)$ es cóncava. $union.big$

        *Conclusión*: 

        - Es creciente $forall x in (-sqrt(2), 0) union (+sqrt(2), +oo) => f(x)$ porque $f'(x) > 0$
        - Es decreciente $forall x in (-oo, -sqrt(2)) union (0, +sqrt(2)) => f(x)$ porque $f'(x) < 0$
        - Máximo local en $x=-sqrt(2) "y" x=sqrt(2) => $ porque $f'(-sqrt(2)) = 0$ y $f'(sqrt(2)) = 0$
        - Es convexa en $forall x in (a_1, a_2) union (a_3, a_4)$ porque $f''(x) < 0$
        - Es cóncava en $forall x in (-oo, a_1) union (a_2, a_3) union (a_4, oo)$ porque $f''(x) > 0$

      Para  dibujar la función puede ser util calcular los puntos de corte con los ejes.

      $f(x) = 0 => e^(-x^2)(x^2-1)) = 0 => (plus.minus 1, 0)$ 

      $f(0) = e^(-0^2)(0^2-1)) = -1 => (0, -1) $ 

      #align(center, 
        cetz.canvas({

          import cetz.draw: *
          import cetz-plot: *
          plot.plot(
            size: (10,5),
            x-tick-step:1,
            y-tick-step:1,
            axis-style: "school-book",
            {
              plot.add(
                domain: (-3, 3),
                  x=> calc.exp(-(x * x)) * (x * x - 1),
                  // style: (stroke:blue, mark:(start:(symbol:"o", fill:blue))),
              )
              plot.add(((0,-1),), mark-size: 0.2, mark: "o")
              plot.add(((-1 * calc.sqrt(2),0.13),), mark-size: 0.2, mark: "o")
              plot.add(((calc.sqrt(2),0.13),), mark-size: 0.2, mark: "o")
                              
              plot.add(((-1.78498,0.09),), mark-size: 0.2, mark: "o")
              plot.add(((-0.560232,-0.5),), mark-size: 0.2, mark: "o")
              plot.add(((0.560232,-0.5),), mark-size: 0.2, mark: "o")
              plot.add(((1.78498,0.09),), mark-size: 0.2, mark: "o")

              plot.add(((-1,0),), mark-size: 0.2, mark: "o")
              plot.add(((1,0),), mark-size: 0.2, mark: "o")
            }
          )      
        }))

      ]
    ],
    [
      #subquestion()[$display(f(x) =(x+1)ln(x^2+2))$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = x^3 - 3x + 2ln(x+2))$]
      #solution()[
        
      ]
    ],
    [
      #subquestion()[$display(f(x) =(x-2)^2/sqrt(x+1) #h(5mm)  (x>-1))$]
      #solution()[
        
      ]
    ],


    )
  ],
)

