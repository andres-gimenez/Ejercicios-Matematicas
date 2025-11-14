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
          - $f''(x) > 0$ en $(-oo, 0)$ $=>f(x)$ es convexa.
          - $f''(x) < 0$ en $(0, oo)$ $=>f(x)$ es cóncava.
          - $f''(x) = 0 => x = 0$ es un punto de inflexión

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
          - $f''(x) > 0$ en $RR$ es convexa.

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
        
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^x e^-x)$]
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

