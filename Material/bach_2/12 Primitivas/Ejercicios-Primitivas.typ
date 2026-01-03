#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
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
  show-solutions: true,
  // draft: true,
  question-points-position: none,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Integrales sencillas:]
    #questions-columns(
    [
      #subquestion(solution:$display(=#result($x^3-5x + C$))$)[$display(limits(integral)(3x^2 -5) dif x)$]
    ],
    [
      #subquestion(solution:$display(=#result($x^4 + 7/2 x ^2 + x +C$))$)[$display(limits(integral)(4x^3 + 7x + 1)  dif x)$]
    ],
    [
      #subquestion(solution:$display(=limits(integral)x^(1/2)  dif x = x^(1/2+1)/(1/2+1) = x^(3/2)/(3/2) = #result($(2sqrt(x^3))/3+C$))$)[$display(limits(integral)sqrt(x)  dif x)$]
    ],
    [
      #subquestion(solution:$=display(limits(integral)x^(-1/2)  dif x = x^(-1/2+1)/(-1/2+1) = x^(1/2)/(1/2) = #result($2sqrt(x)+C$))$)[$display(limits(integral) 1/sqrt(x)  dif x)$]
    ],
    [
      #subquestion(solution:$display(=limits(integral) 2e^x dif x + limits(integral) 5 dif x = 2 limits(integral) e^x dif x + 5 limits(integral) dif x) = 2e^x + 5x + C$)[$display(limits(integral) 2e^x + 5 dif x)$]
         #solution()[
        $display(limits(integral) 2e^x + 5 dif x=limits(integral) 2e^x dif x + limits(integral) 5 dif x = 2 limits(integral) e^x dif x + 5 limits(integral) dif x) = \ = (2e^x + C_1) + (5x + C_2) = #result($2e^x + 5x + C$)$
      ]
    ],
    [
     #subquestion()[$display(limits(integral) "sen"(x) + cos(x)  dif x)$]
      #solution()[
        $display(limits(integral) "sen"(x) + cos(x)  dif x=limits(integral) "sen"(x) dif x + limits(integral)cos(x)  dif x = -cos(x) + "sen"(x) = \ 
        = #result($"sen"(x) -cos(x) + C$))$
      ]
    ],
    [
      #subquestion(solution: $display(=#result($1/6 (x+1)^6 + C$))$)[$display(limits(integral) (x+1)^5 dif x)$]
    ],
     [
      #subquestion()[$display(limits(integral) 2x e^(x^2) - "sen" x  dif x)$]
      #solution()[
        $display(limits(integral) 2x e^(x^2) - "sen" x  dif x = limits(integral) 2x e^(x^2) dif x - limits(integral) "sen" x  dif x) = e^x^2 - (-cos(x)) = #result($e^x^2 + cos(x) + C$) $
      ]
    ],
     [
      #subquestion()[$display(limits(integral)(2x^4 - 6x^3 + 5x)/(x+2)  dif x)$]
      #solution()[
        Dividiendo y utilizando el algoritmo de la fivisión de polinomios, podemos concluir que:

        $display(2x^4 - 6x^3 + 5x = (2x^3-10x^2+20x-35)(x+2) + 70 => \ 
        =>(2x^4 - 6x^3 + 5x)/(x+2) = (2x^3-10x^2+20x-35) + 70 / (x+2)) $

        $display(limits(integral)(2x^4 - 6x^3 + 5x)/(x+2)  dif x = limits(integral)((2x^3-10x^2+20x-35) + 70/(x+2)) dif x = \
        = limits(integral)2x^3 dif x  - limits(integral) 10x^2 dif x + limits(integral)20x dif x - limits(integral) 35 dif x + limits(integral) 70/(x+2) dif x = \
        = 2 limits(integral)x^3 dif x  -10 limits(integral) x^2 dif x + 20 limits(integral)x dif x - 35 limits(integral)  dif x + 70 limits(integral) 1/(x+2) dif x = \
        = 2 x^4/4 -10 x^3/3 + 20 x^2/2 + 70 ln |x+2| \
        = #result($1/2 x^2 -10/3x^3 + 10x^2 + 70 ln |x+2| + C $))
        $ 
      ]
    ],
     [
      #subquestion()[$display(limits(integral)(root(3, x) + sqrt(5x^3))/(3x)  dif x)$]
      #solution()[
        $display(limits(integral)(root(3, x) + sqrt(5x^3))/(3x) dif x = 
        limits(integral)(root(3, x)/(3x) + (sqrt(5x^3))/(3x))  dif x = 
        limits(integral)root(3, x)/(3x) dif x + (sqrt(5x^3))/(3x)  dif x = \ 
        limits(integral) root(3, x)/(3x) dif x + limits(integral) sqrt(5x^3)/(3x)dif x =
        limits(integral) 1/3  x^(1/3)/x dif x + limits(integral) sqrt(5)/3 x^(3/2)/x dif x =
        1/3 limits(integral)x^(-2/3) dif x + sqrt(5)/3 limits(integral) x^(1/2) dif x = \
        1/3 x^(1/3)/(1/3) + sqrt(5)/3 x^(3/2)/(3/2) = 
        root(3,x) + 2sqrt(5)/9 sqrt(x^3) =
        #result($2/9 sqrt(5x^3) + root(3,x) + C$)
        )$ 
      ]
    ],
     [
      #subquestion()[$display(limits(integral) (2x^4+6x-3)/(x-2)  dif x)$]
      #solution()[
            Dividiendo y utilizando el algoritmo de la fivisión de polinomios, podemos concluir que:

        $display(2x^4+6x-3 = (2x^3+4x^2+8x+22)(x-2) + 41 => \
        (2x^4+6x-3)/(x-2) = 2x^3+4x^2+8x+22 + 41/(x-2))$

        $display(limits(integral) (2x^4+6x-3)/(x-2) dif x = 
        limits(integral) (2x^3+4x^2+8x+22) + 41/(x-2) = \
        2 x^4/4 +4 x^3/3 + 8 x^2/2 +  22 x + 41 ln|x-2|  = 
        #result($display(1/2 x^4 + 4/3 x^3+4x^2+22x +41 ln|x-2|+C)$) ) $
      ]
    ],
    [
      #subquestion()[$display(limits(integral) root(3, (7x-6)^2) dif x)$]
      #solution()[
        $display(limits(integral) root(3, (7x-6)^2) dif x = 
        limits(integral) (7x-6)^(2/3) dif x = 
        1/7 limits(integral) 7 (7x-6)^(2/3) dif x = 1/7 (7x-6)^(5/3)/(5/3) = \
        =#result($display(3/35 root(3,(7x-6)^5) + C)$)
        )$ 
      ]
    ],
    [
      #subquestion()[$display(limits(integral) (7x^4-5x^2+3x-4)/x^2  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) (5x^3+6x^2-sqrt(2)x+sqrt(3))/x  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) root(3,2x)/sqrt(3x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) 5 cos(x) + 3^x  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) 10^x - 5^x  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) 3/(x^2+1)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    )
  ],
  [
    #question()[Calcula las siguientes integrales inmediatas:]
    #questions-columns(
   [
      #subquestion()[$display(limits(integral) (2x+3)/sqrt(x^2 + 3x + 2)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral)(3x^2)/(x^3 + 1)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral)1/sqrt(4 - x^2)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral)cos(5x+1)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) x e^(x^2)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) 1/(2x+1)^3  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) "tan"(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) sin^3 (x) cos(x) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) (x + 3)/(x^2 + 6x + 10)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    )
  ],
  [
    #question()[Calcula las siguientes integrales por partes:]
    #questions-columns(
    [
      #subquestion()[$display(limits(integral) x e^x   dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) x ln x dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) x cos(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) e^x sin(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) x^2 e^(-x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) sec^2 (x) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) cos^3(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) sin(x) sqrt(1+cos^2 x) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) 1/(sin(x) cos(x)) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) e^(3x) cos(2x) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral)  ln(x^2 + 1) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) x/sqrt(x^2 + 4)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) e^(2x)/(1+e^(2x))  dif x)$]
      #solution()[
        $display(a)$
      ]
    // ],
    // [
    //   #subquestion()[$display(limits(integral) 1/((x+1)sqrt(x))   dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    ],
    [
      #subquestion()[$display(limits(integral) x sqrt(x + 2)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    // [
    //   #subquestion()[$display(limits(integral)()  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    // ],
    )
  ],
  [
    #question()[Calcula las siguientes integrales racionales:]
    #questions-columns(
    [
      #subquestion()[$display(limits(integral) 1/(x^2+4)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral)(x+1)^2/(x^(-1))  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral)(x+1)^2/(x-1)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) 1/(x^2 + 4) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) (3x + 1)/(x^2 + x) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) (2x)/(x^2 - 9) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) 1/((x-1)(x+2)) dif x)$]
      #solution()[
        $display(a)$
      ]
     ],[
      #subquestion()[$display(limits(integral) 1/((x+1)(x+3)) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) (2x-1)/(x(x-2)) dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) (x^2+1)/(x-1)  dif x)$]
      #solution()[
        $display(a)$
      ]
     ],[
      #subquestion()[$display(limits(integral) (3x^2+2)/(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) x/(x^2 + 1)  dif x)$]
      #solution()[
        $display(a)$
      ]
     ],[
      #subquestion()[$display(limits(integral) 1/(x^2 + 1)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral) (x^2 - 1)/(x - 1)  dif x)$]
      #solution()[
        $display(a)$
      ]
    // ],[
    //   #subquestion()[$display(limits(integral) 1/(x^2 - 4x + 5)  dif x)$]
    //   #solution()[
    //     $display(a)$
    //   ]
    ],[
      #subquestion()[$display(limits(integral)(2x+3)/((x-1)(x^2+1)))  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],[
      #subquestion()[$display(limits(integral)(x^3+22x^2-12x+8)/(x^4-4x^2) dif x)$]
      #solution()[
        $display(a)$
      ]
    ])
    ]
    ,[
    #question()[Calcula las siguientes integrales  por cambio de variable:]
    #questions-columns(
    [
      #subquestion()[$display(limits(integral) 1/((x+1)sqrt(x))  dif x)$ #h(3mm) (haciendo $x=t^2$)]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) sqrt(x)/(x+1)  dif x)$ #h(3mm) (haciendo $x=t^2$)]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) x root(3, x+2)  dif x)$ #h(3mm) (haciendo $x+2=t^3$)]
      #solution()[
        $display(a)$
      ]
    ],
    [
    #subquestion()[$display(limits(integral) 2/(2+e^x))  dif x$ #h(3mm) (haciendo $t=e^x$)]
      #solution()[
        $display(a)$
      ]
    ],
    [
    #subquestion()[$display(limits(integral) e^x/(1-sqrt(e^x))  dif x)$ #h(3mm) (haciendo $e^x=t^2$)]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) 1/(x ln(x)))  dif x)$ #h(3mm) (haciendo $t=ln(x)$)]
      #solution()[
        $display(a)$
      ]
    ],
    )
  ],
)

