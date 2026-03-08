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
    number: [Vectores],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  show-solutions: false,
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Calcula el módulo de los siguientes vectores:]
    #questions-columns(
    [#subquestion()[$(3, 0, 0)$]],
    [#subquestion()[$(-3, -3, 3)$]],
    [#subquestion()[$(1, -2, 0)$]],
    [#subquestion()[$(2, 2, -3)$]],
    )
  ],
  [
    #question()[Dado los vectores $arrow(u)=(1, 2, 3)$, $arrow(v)=(-1, -2, -3)$ y $arrow(w)=(4, -5, 1)$, calcula el módulo de cada uno:]
    #questions-columns(
    [#subquestion()[$2 arrow(u) - 3 arrow(w)$ = ]],
    [#subquestion()[$-6 arrow(u) + 2 arrow(v) -4 arrow(w) =$]],
    [#subquestion()[$arrow(u) dot arrow(v) = $]],
    [#subquestion()[$arrow(u) times arrow(v) = $]],
    [#subquestion()[$arrow(u) times arrow(v) dot arrow(w) = $]],
    [#subquestion()[$mat(delim: "|", arrow(u); arrow(v); arrow(w)) = $]],
    [#subquestion()[$arrow(u) dot ( arrow(v) times arrow(w)) = $]],
    // [#subquestion()[$arrow(w) times arrow(u) times arrow(v) = $]],
    [#subquestion()[$arrow(w) times arrow(w) = $]],
    [#subquestion()[$arrow(u) dot arrow(u) = $]],
    )
  ],
  [
    #question()[Calcula en cada caso el valor de $x$, para que $arrow(u)$ y $arrow(v)$ sean perpendiculares:]
    #questions-columns(
    [#subquestion()[$u = (2x, -1, 5)$, $v = (x, x + 1, -1)$ ]],
    [#subquestion()[$u = (2x + 1, -3, x - 1)$, $v = (1, x, x)$ ]],
    [#subquestion()[$u = (2x, -x, x + 2)$, $v = (x + 3, 1, -4x)$ ]],
    [#subquestion()[$u = (3x, -1, 4x + 2)$, $v = (x - 3, 3, -3x)$  ]],
    )
  ],
  [
    #question()[Calcula el ángulo que forman $u = (-sqrt(2), sqrt(2), 0)$ y $v = (sqrt(2), sqrt(2), -1)$.]
  ],
  [
    #question()[Dados los vectores $arrow(u) = (3, 1, -2)$, $arrow(v) = (-3, alpha, 2)$, calcula:]
      #questions-columns(
      [#subquestion()[Calcula el valor de $alpha$ para que $arrow(u)$ y $arrow(v)$ sean paralelos.]],
      [#subquestion()[Calcula el valor de $alpha$ para que $arrow(u)$ y $arrow(v)$ sean perpendiculares.]],
      )
  ],
  [
    #question()[Calcula el valor de $k$ para que los vectores $arrow(u) = (k, -k, 0)$ y $arrow(v) = (k, -k, sqrt(2))$ formen un angulo de $45º$:]
  ],
  [
    #question()[Calcula el valor de $k$ para que los vectores $arrow(u) = (k, 1, 1)$ y $arrow(v) = (-1, sqrt(2), k)$ formen un angulo de $45º$:]
  ],
  [
    #question()[Comprueba que no existe ningún valor de $k$ para el cual 
    $u = (k, 1, 1)$ y $v = (-1, sqrt(2), k)$ formen un ángulo de $45°$.]
  ],
  [
    #question()[Haya la proyección del vector $arrow(u) = (3, 1, 2)$ sobre el vector $arrow(v) = (1, -1, 2)$.]
  ],
  [
    #question()[¿Son los vectores $arrow(u) = (1, 2, 3)$ y $arrow(v) = (2, -2, 1)$ ortogonales? Si no lo son, calcula el ángulo que forman.]
  ],
  [
    #question()[Dados los vectores $arrow(u) = (2, -1, 1)$ y  $arrow(v) = (-1, 3, 2)$, comprueba que $arrow(u) times arrow(v)$ y $arrow(v) times arrow(u)$ son opuestos y halla su módulo.]
  ],
  [
    #question()[Halla un vector ortogonal a 
    $arrow(u) = (2, 3, 1)$ y $arrow(v) = (-1, 3, 0)$ y que sea unitario.]
  ],
  [
    #question()[Halla un vector ortogonal a 
    $arrow(u) = (1, -1, 0)$ y $arrow(v) = (2, 0, 1)$ cuyo módulo sea $sqrt(24)$.]
  ],
  [
    #question()[Halla el área del paralelogramo formado por 
    $arrow(u) = (7, -1, 2)$ y $arrow(v) = (1, 4, -2)$.]  
  ],
  [
    #question()[Calcula el valor o valores de $x$ para que  
    $arrow(u) = (1, x, 1)$ y $arrow(v) = (2, 1, 1)$ 
    formen un paralelogramo de área $sqrt(2)$.]
  ],
  [
    #question()[Calcula el volumen del paralelepípedo determinado por  
    $arrow(u) = (2, -3, 7)$, $arrow(v) = (-12, 0, 5)$, $arrow(w) = (13, -2, -7)$.]
  ],
  [
    #question()[Calcula los valores de $k$ para que  
    $arrow(u) = (1, k, -3)$, $arrow(v) = (k, 1, 4)$, $arrow(w) = (-3, 0, 2)$:]
    #questions-columns(
    [#subquestion()[Determinen un paralelepípedo de volumen 11 unidades cúbicas.]],
    [#subquestion()[Determinen un tetraedro de volumen $display(13/2)$ unidades cúbicas.]],
    )
  ],
  [
    #question()[Comprueba, en cada caso, si los vectores $arrow(u)$, $arrow(v)$ y $arrow(w)$ forman una base:]
     #questions-columns(
      [#subquestion()[$arrow(u)=(-3, 4, 2)$, $arrow(v)=(2, 1, -3)$, $arrow(w)=(0, -3, 0)$]],
      [#subquestion()[$arrow(u)=(1, 3, -2)$, $arrow(v)=(2, -2, 2)$, $arrow(w)=(-5, 17, -14)$)]],
      [#subquestion()[$arrow(u)=(4, 8, -8)$, $arrow(v)=(3, 0, -10)$, $arrow(w)=(-3, 0, -3)$)]],
      [#subquestion()[$arrow(u)=(1, 1, -1)$, $arrow(v)=(2, 0, -3)$, $arrow(w)=(4, -5, 1)$)]],
     )  ],
  [
    #question()[Expresa, si es posible, $arrow(u) = (-5, -1, -22)$ como combinación lineal de los vectores $arrow(v) = (0, 1, -3)$ y $arrow(w) = (1, 1, 2)$.]
  ],
  [
    #question()[Calcula las coordenadas de $arrow(a) = (-7, -13, 8)$ en la base:  

        $ BB = { (2, -4, 4), (0, 0, -2), (-9, -9, 6) \} $]
  ],
  [
    #question()[Calcula las coordenadas de la base canónica en la base:  
        $ BB = { (2, -4, 4), (0, 0, -2), (-9, -9, 6) \} $]
  ],
  [
    #question()[Calcula el valor o valores de $a$, si es que existen, para que los vectores $arrow(u)$, $arrow(u)$ y $arrow(u)$ sean linealmente independientes;
    
    $ arrow(u) = (2, a, 3) "," arrow(v) = (1, 2, a) ","  arrow(w) = (5, -2, 4) $ 
]
  ],
  [
    #question()[Calcula dos vectores linealmente independientes y perpendiculares a $display(arrow(u) = (2/3, 1/5, -2))$.]
  ],
  [
    #question()[*EvAU (Año 2000 — Modelo — Opción A)*

    Dados $arrow(u) = (a, 1 + a, 2a)$, $arrow(v) = (a, 1, a)$, $arrow(w) = (1, a, 1)$:
    ]
     #questions-columns(
      [#subquestion()[Determinar los valores de $a$ para que los vectores $arrow(u)$, $arrow(v)$ y $arrow(w)$ sean linealmente dependientes.]
       #solution()[
        Calculamos el determinante:

        $display(mat(delim: "|", &a, &a, &1; 1 &+ a, &1, &a; &2a, &a, &1) =
        a (a^2 -1) = 0 => a = 0 "o" a = ± 1 
        )$

        Si $a != 0$ y $a != ± 1 =>$, $arrow(u)$, $arrow(v)$ y $arrow(w)$ son linealmente independientes.

        Si $a = 0$ o $a = ± 1 => $  $arrow(u)$, $arrow(v)$ y $arrow(w)$ son linealmente dependientes.
       
      ]
      ],
      [#subquestion()[Estudiar si $arrow(c) = (3, 3, 0)$ depende linealmente de $arrow(u)$, $arrow(v)$ y $arrow(w)$ para el caso $a = 2$. Justifica la respuesta.]
      #solution()[
        Para $a = 2$ los tres vectores son linealmente independientes y, por tanto, forman una base.
        Luego el vector $arrow(c)=(3, 3, 0)$ es combinación lineal de $arrow(u)$, $arrow(v)$ y $arrow(w)$ si el determinante de la matriz formada por $arrow(u)$, $arrow(v)$, $arrow(w)$ y $arrow(c)$ es cero. Veamos de que combinación lineal se trata, tenemos:

        #set math.cases(reverse: false)
        $ display(cases(delim: "{",
          arrow(u) = (2, 3, 4),
          arrow(v) = (2, 1, 2),
          arrow(w) = (1, 2, 1)
        )) $

        $ (3, 3, 0) = a (2, 3, 4) + b (2, 1, 2) + c (1, 2, 1) => $

        $ display(cases(delim: "{",
          2a + 2&b +  &c &= 3,
          3a +  &b + 2&c &= 3,
          4a + 2&b +  &c &= 0
        )) => 
        display(cases(delim: "{",
          a = -3/2,
          b = 3/2,
          c = 3
        )) $

        $ arrow(c) = -3/2 arrow(u) + 3/2 arrow(v) + 3 arrow(w) $

      ]
      
      ],
      [#subquestion()[Justificar razonadamente si para $a = 0$ se cumple la igualdad 
      $ arrow(u) dot (arrow(v) times arrow(w)) = 0 $.
      #solution()[
        Si $a = 0$, tenemos:

        $ display(cases(delim: "{",
          arrow(u) = (0, 1, 0),
          arrow(v) = (0, 1, 0),
          arrow(w) = (1, 0, 1)
        )) $

        sabemos que $[arrow(u), arrow(v), arrow(w))] = arrow(u) dot (arrow(v) times arrow(w))$. Pero 

        $ [arrow(u), arrow(v), arrow(w)] = mat(delim: "|", 0, 1, 0; 0, 1, 0; 1, 0, 1) = 0 $

        Luego $[arrow(u) dot (arrow(v) times arrow(w))] = 0 $

      ]
      ]
      ]
     )  
  ],
  [
    #question()[*EvAU(Año 2012 — Ordinaria/Coincidente — Opción A)*

    Una de las cara del paralelepípedo $H$ tiene vértices en los puntos  
    $A(4, 2, 8)$, $B(6, 4, 12)$, $C(6, 0, 10)$ y $D(8, 2, 14)$.

    Si el punto $E(6, 8, 28)$ es otro vértice, hallar el volumen de $H$.]

    #solution()[
      $arrow(A B) = arrow(C D) = (2, 2, 4)$

      $arrow(A C) = arrow(B D) = (2, -2, 2) $

      $arrow(A E) = (2, 6, 20) $

      $ V = |arrow(A B) dot (arrow(A C) times arrow(A E))| = mat(delim: "|", &2, &2, &4; &2, -&2, &2; &2, &6, 2&0) = 112 u^2 $ 
    ]
  ],
  [
    #question()[*EvAU(Año 2013 — Extraordinaria — Opción A)*

    Dados los puntos $A(2, -2, 1)$, $B(0, 1, -2)$, $C(-2, 0, -4)$, $D(2, -6, 2)$, se pide:

    #questions-columns(
      [#subquestion()[Probar que $A B C D$ es un trapecio (tiene los lados paralelos) y hallar la distancia entre los lados paralelos.]
       #solution()[
        $arrow(A B) = (-2, 3, -3) "," arrow(B C) = (-2, -1, -2) "y" arrow(C D) = (-4, -6, 6) = -2(-2, 3, -3)$

        Los vectores $arrow(A B)$ y $arrow(C D)$ son paralelos, luego $A B C D$ es un trapecio.

         La distancia será la de A sobre el vector $arrow(C D)$. Construimos el vector $arrow(C A) = (4, -2, 5)$:

      $ S =  | arrow(C D) times arrow(C A) | = | mat(delim: "|", &arrow(i), &arrow(j), &arrow(k); &4, -&6, &6; &4, -&2, &5) | = |(-18, 4, 16)| = 2 sqrt(149) u^2 $ 

      $ |arrow(C D) | = 2 sqrt(22)) $

      $ S = | arrow(C D) | dot h => h = (2 sqrt(149)) / (2 sqrt(22) ) = sqrt(149/22) $
      ]
      ],
      
      [#subquestion()[Hallar el área del triángulo $A B C$.
      #solution()[
      
      $ arrow(A B) = (-2, 3, -3) "," arrow(A C) = (-4, -2, -5) $

      $ S_T = 1/2 | arrow(A B) times arrow(A C) | = | mat(delim: "|", &arrow(i), &arrow(j), &arrow(k); -&2, &3, -&3; -&4, -&2, -&5) | = 1/2 |(-9, 2, 8)| = sqrt(149)/2 u^2 $ 

      ]
      ]
      ],
     )  
  ]
  ]
)

