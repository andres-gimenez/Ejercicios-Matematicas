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
  date: datetime(year: 2025, month: 12, day: 08),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: false,
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
      #subquestion()[$display(limits(integral)3x^2 -5  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral)4x^3 + 7x + 1  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral)sqrt(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) 1/sqrt(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) 2e^x + 5 dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) "sen"(x) + cos(x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) (x+1)^5 dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) 2x e^(x^2) - "sen" x  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral)(2x^4 - 6x^3 + 5x)/(x+2)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral)(root(3, x) + sqrt(5x^3))/(3x)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
     [
      #subquestion()[$display(limits(integral) (2x^4+6x-3)/(x-2)  dif x)$]
      #solution()[
        $display(a)$
      ]
    ],
    [
      #subquestion()[$display(limits(integral) root(3, (7x-6)^2) dif x)$]
      #solution()[
        $display(a)$
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
    )
  ],
)

