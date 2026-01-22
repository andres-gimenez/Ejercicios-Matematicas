#import "@preview/g-exam:0.4.4": *

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Ecuaciones de 2º grado",
  ),
  
  language: "es",  
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: "odd-pages",
  show-solutions: false,
  clarifications: 
    (
    [Realiza los ejercicios que te indique el profesor en tu cuaderno y envíalas al aula virtual],
    [El fin de realizar estos ejercicios está destinado a tu aprendizaje, si te ayudan a hacerlos, entera té lo que estás poniendo. Si te los hacen o utilizas alguna herramienta que los haga, estás perdiendo el tiempo en un trabajo improductivo.]
    ) 
)

#questions-pages(
    question()[Resuelve las siguientes ecuaciones:
      #questions-columns(
        [#subquestion()[$display(3x^2 - 5x - 2 = 0)$]
        #solution()[$display(x = -1/2)$ y $display(x=1/3)$]],  

        [#subquestion()[$display(6x^2 + x - 1 = 0)$]  
        #solution()[$display(x = -1/2)$ y $display(x=1/3)$]],  

        [#subquestion()[$display(7x^2 - 4x + 1 = 0)$]],    
        
        [#subquestion(solution: [$x= 1/3$])[$display(9x^2 - 6x + 1 = 0)$]],
        [#subquestion(solution: [$x= 0$])[$display(4x^2 - 12x + 9 = 0)$]],
        [#subquestion()[$display(2x^2 + 3x - 7 = 0)$]
        #solution()[[$display(x=-3/4 - sqrt(65)/4)$ y $display(x = -3/4 + sqrt(65)/4)$]]
        ]
      )
      ]
    , 
      question()[Resuelve las siguientes ecuaciones incompletas:
        #questions-columns(
          [#subquestion()[$display(x^2 - 9 = 0)$]],
          [#subquestion()[$display(x^2 - 25 = 0)$]],
          [#subquestion()[$display(x^2 + 9 = 0)$]],
          [#subquestion()[$display(3x^2 + 6x = 0)$]],
          [#subquestion()[$display(5x^2 +3x = 0)$]],
          [#subquestion()[$display(3x^2 + 3x = 0)$]],
        )
      ],
      question()[Resuelve las siguientes ecuaciones inmediatas:
        #questions-columns(
          [#subquestion()[$display((x+3)(x-2) = 0)$]],
          [#subquestion()[$display((2x-4)(x+5) = 0)$]],
          [#subquestion()[$display(5(x+5)(x-7) = 0)$]],
          [#subquestion()[$display((x+5)^2 = 0)$]],
          [#subquestion()[$display(2(x-7)^2 = 0)$]],
          [#subquestion()[$display((x+7)(x-3)(x+5)(x-7) = 0)$]],
        )
      ],
      question()[Resuelve las siguientes ecuaciones:
        #questions-columns(
          [#subquestion()[$display(2(x - 3)^2 = 18)$]],
          [#subquestion()[$display(8x^2/2 - 3x = 0)$]],
          [#subquestion()[$display((x - 1)^2 - (x + 2)^2 = 0)$]],
          [#subquestion()[$display(x(x +2)/2 = 4)$]],
          [#subquestion()[$display((2x - 3)^2 - (x + 1)(x - 5) = 0)$]],
          [#subquestion()[$display((x - 2)^2 - 3(x + 1)^2 = 4)$]],
          [#subquestion()[$display((2x + 1)(x - 4) = (x - 3)^2)$]],
        )
      ],
      question()[Resuelve las siguientes ecuaciones bicuadradas:
        #questions-columns(
          [#subquestion()[$display(x^4 - 5x^2 + 4 = 0)$]],
          [#subquestion()[$display(2x^4 - 7x^2 - 4 = 0)$]],
          [#subquestion()[$display((x^2 - 3)^2 = 16)$]],
          [#subquestion()[$display(x^4 - 10x^2 + 9 = 0)$]],
          [#subquestion()[$display((2x^2 - 1)(x^2 - 3) = 0)$]],
        )
      ],
      question()[Resuelve las siguientes ecuaciones bicuadradas:
        #questions-columns(
          [#subquestion()[$display((2x - 3)^2 - (x - 1)(x - 5) = 4)$]],
          [#subquestion()[$display((x+3)(x-3)=5x-15)$]],
          [#subquestion()[$display((x+5)^2 -35 = 7x)$]],
          [#subquestion()[$display((x + 5)^2 - 3(x - 2)(x + 1) = 0)$]],
          [#subquestion()[$display((x - 2)^4 - 25(x - 2)^2 = 0)$]],
          [#subquestion()[$display(x^2 = 3 + 4/(x^2))$]],
          [#subquestion()[$display((x^2-1)/(x+1)+2 = x)$]],
          [#subquestion()[$display((x - 1)^2 + (x - 3)^2 = 10)$]],
          [#subquestion()[$display(1/x + 1/(x-2) = 1)$]],
        )
      ],
      question()[La suma de un número y su inverso es $5$. Halla el número.],
      question()[El área de un rectángulo es $60$ y su base mide $x + 2$ y su altura $x - 1$. Halla $x$.],
      question()[Escribe una ecuación de segundo grado que tenga como soluciones $3$ y $-2$.],
      question()[El área de un cuadrado es igual al área de un rectángulo de lados $x$ y $x + 6$.  
   Si el lado del cuadrado mide $x + 1$, halla el valor de $x$.],
      question()[Un rectángulo tiene base $2x$ y altura $x - 3$.  
   Si su área es $70$, halla $x$.],
      question()[ Un jardín rectangular tiene largo $x + 5$ y ancho $x - 2$.  
   En su interior hay un camino cuadrado de lado $2$.  
   Si el área útil del jardín es $60$, halla $x$.],
      question()[Un marco rectangular rodea un cuadro cuadrado de lado $x$.  
    El marco tiene anchura $1$ por todos los lados.  
    Si el área del marco es $44$, halla $x$.],
      question()[],
)



