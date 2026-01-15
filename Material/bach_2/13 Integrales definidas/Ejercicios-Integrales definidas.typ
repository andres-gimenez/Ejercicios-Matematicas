#import "@preview/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: config.at("author").at("name"),
    email: config.at("author").at("email"),
    watermark: config.at("author").at("watermark"),
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Integrales definidas],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Calcula el valor de las siguientes integrales definidas:]
    #questions-columns(
    [
      #subquestion()[$display(∫_0^2 (3x^2 - 4x + 1) dif x)$]
    ],
    [
      #subquestion()[$display(∫_(-1)^1 (x^3 + x) dif x)$]
    ],
    [
      #subquestion()[$display(∫_1^3 1/x dif x)$]
    ],
    [
      #subquestion()[$display(∫_1^2 (2x + 3) dif x)$]
    ],
    [
      #subquestion()[$display(∫_(-2)^2 (x^5 - 3x^3) dif x)$]
    ],
    )
  ],
  [
    #question()[Si $display(∫_1^4 f(x) dif x = 6)$ y $display(∫_4^6 f(x) dif x = -2)$, calcula:]
    #questions-columns(
    
    [
      #subquestion()[$display(∫_1^6 f(x) dif x)$]
    ],
    [
      #subquestion()[$display(∫_6^1 f(x) dif x)$]
    ],
    )
  ],
  [
    #question()[Calcula el valor de las siguientes integrales de la función:
      
      $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & x^2 & "si" & x < 2,
                & 2x  & "si" & 0 <= x < 2,
                & 10-3x  & "si" & 0 <= x < 2,
              ) $
    ]
    #questions-columns(
    [
      #subquestion()[$display(∫_(-2)^1 f(x) dif x)$]
    ], [
      #subquestion()[$display(∫_(1)^4 f(x) dif x)$]
    ], [
      #subquestion()[$display(∫_(-2)^4 f(x) dif x)$]
    ],
    )
  ],
  [
    #question()[Calcula las derivadas de las siguientes funciones utilizando el *teorema fundamental del calculo*:
    \ #clarification()[La (d) es muy fácil]]
    #questions-columns(
    [
      #subquestion()[$display(F(x) = ∫_0^x cos(t) dif t)$.]
    ], [
      #subquestion()[$display(F(x) = ∫_3^x (t^2+1)^4 dif t)$.]
    ], [
      #subquestion()[$display(F(x) = ∫_0^x e^(-t)^2 dif t)$.]
    ], [
      #subquestion()[$display(F(x) = ∫_3^5 (t^2+1)^4 dif t)$. ]
    ],)
  ],
  [
    #question()[Área entre dos curvas:]
    #questions-columns(
    [
      #subquestion()[Área comprendida entre $y = x^2$ y $y = 2x + 3$.]
    ],
    [
      #subquestion()[Área limitada por $y = √x$ y $y = x$.]
    ],
    [
      #subquestion()[Área encerrada entre $y = x^2$ y $y = 4 - x^2$.]
    ],
    [
      #subquestion()[Área limitada por $y = |x|$ y $y = 5$.]
    ],
    [
      #subquestion()[Área entre $y = x^2 - 4$ y el eje $x$.]
    ],
    [
      #subquestion()[Área comprendida entre $y = sin(x)$ y el eje $x$ en $[-π, π]$.]
    ],
    [
      #subquestion()[Área comprendida entre $y = |sin(x)|$ y el eje $x$ en $[0, 2π]$.]
    ],
    [
      #subquestion()[Región limitada por $y = x^2$, $y = 4$ y el eje $y$.]
    ],
    )
  ],
  [
    #question()[Calcula los siguientes áreas:]
    #subquestion()[Área entre la curva f(x) = x^2, su perpendicular en x=2 y el eje de abscisas.]
    #subquestion()[Área entre la curva f(x) = x^2, su tangente en x=2 y el eje de abscisas.]
  ],
  [
    #question()[Calcula el volumen generado por las siguientes funciones al girar sobre el eje x:]
    #subquestion()[f(x) = x^2, entre $x=0$ y $x=5$.]
    
    #subquestion()[$f(x) = sqrt(r^2-x^2)$, entre $x=-r$ y $x=r$.]
  ],
  [
    #question()[Sabemos que $display(∫_0^x f(t) dif t = x^2(1+x))$, siendo continua en $RR$. Calcula $f(2)$.]
    #solution()[
        Tenemos:
        $ F(x)= ∫_0^x f(t) dif t = x^2(1+x) = x^2 + x^3 $

        Como f es continua en R, aplicamos el Teorema Fundamental del Cálculo:
        $ F'(x) = ∫_0^x f(t) dif t = f(x) $

        Derivamos el segundo miembro:
        $ (x^2 + x^3)' = 2x + 3x^2 $

        Por tanto:
        $ f(x) = 2x + 3x^2 $

        Evaluamos en x = 2:
        $ f(2) = 2·2 + 3·2^2 = 4 + 12 = 16 $

        Con lo que: 
        
        $ #result($f(2) = 16$) $
    ]
  ]
)
