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
    number: [Propiedades métricas],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  // show-solutions: false,
  question-points-position: none,
)
#set math.cases(reverse: false)

#questions-pages(
  [#question()[Calcula el ángulo que forman las siguientes rectas.
    $ r equiv cases(delim: "{",
           x = &2 &+ lambda,
           y = -&2 &+lambda,
           z = & &- lambda
        )
        #h(1cm)  
        s equiv cases(delim: "{",
           2x + y = -3,
           2x - z = 3
        )
        $
  ]
  ],
  [#question()[Halla los vectores directores de las rectas y el ángulo que forman ambas rectas.
      $ r equiv cases(delim: "{",
         2x-4y+z = -5,
         -x+y-4z=3
        )
        #h(1cm)  
        s equiv cases(delim: "{",
           2x + z = 1,
           -2x+3y=-4
        )
        $
  ]
  ],
  [#question()[Calcula el ángulo formado por los planos:]
    #questions-columns(
      [#subquestion()[$pi equiv 2x+3y-z+6=0 " y " pi' equiv 2x+3y-z+6 =0 $ ]],
      [#subquestion()[$pi equiv 2x-3y-2z-6=0 " y " pi' equiv 3x+6y+6z-1 =0 $]]
    )
  ],
  [#question()[Calcula el valor de &m& para que los planos.
    $ pi equiv 2x - 3y + z = 1 " y " pi' equiv x - 2y + m z = 0 $
  ]
    #questions-columns(
      [#subquestion()[Sean perpendiculares.]],
      [#subquestion()[Formen un ángulo de 60º.]],
    )
  ],
  [#question()[Calcula el ángulo formado por $r$ y $pi$ en los siguientes casos.]
    #questions-columns(
      [#subquestion()[$display(r equiv = (x-1)/1 = y/1 = (z-10)/(-2) " y " pi equiv 2x-y = 0)$ ]],
      [#subquestion()[$display(r equiv = (x-1) = (y+2)/sqrt(2) = (z-10)/(-2) " y " pi equiv 2z-3 = 0)$]],
      [#subquestion()[$display(r equiv cases(delim: "{",
           x=2+ lambda,
           y = -2 + lambda,
           z = - lambda
        ) " y " pi equiv x - 1/2 y + z = 0)$]]
    )
  ],
  [#question()[Calcula el ángulo formado por la recta $r$ y el plano $pi$.
      $ r equiv cases(delim: "{",
         2x - 4y +z = -5,
         -x + y -4z = 3
        )
        #h(1cm)  
        pi equiv x + y -2z = 3
        $
  ]
  ],
  [
    #question()[Calcula el valor de $m$, si es que existe, para que la recta y el plano siguientes,
        $ r equiv cases(delim: "{",
         x = 2 + m z,
         y = 1 + z
        )
        #h(1cm)  
        pi equiv x - 3y -2 = 0
        $
    ]
     #questions-columns(
      [#subquestion()[Sean paralelos.]],
      [#subquestion()[Formen perpendiculares.]],
    )
  ],
  [
    #question()[Calcula la proyección ortogonal de $P = (2,-2,0)$ sobre el plano $π equiv y + 2z - 3 = 0$ y sobre la recta 
    $display(r equiv cases(delim: "{",
         3x + 4y = 8,
         x +4z = -20
        ))$]
  ],
  [
    #question()[Halla el simétrico de $P = (1,1,−2)$ respecto del plano $π equiv x - 3y + 4z − 16 = 0$ y respecto a la recta $display(r equiv cases(delim: "{",
         24x-36y=-7,
         2z = 1
        ))$.]
  ],
  [
    #question()[Halla la recta simétrica de $display(r equiv cases(delim: "{",
         x = 2 + lambda,
         y= -2 + lambda,
         z = - lambda
        ))$ respecto al plano $π equiv x - 3y + 4z - 16 = 0$ y respecto a la recta .]
  ],
  [
    #question()[Comprueba si el triángulo de vértices $A = (2,-1,4)$, $B = (1,3,-4)$ y $C = (-3,-1,3)$ es equilátero, isósceles o escaleno y halla su perímetro.]
  ],
  [
    #question()[Calcula la distancia del punto P al plano π:]
    #questions-columns(
      [#subquestion()[$P = (1, -2,6)$; #h(1cm) $π : 2x + y - 2z + 3 = 0$ ]],
      [#subquestion()[$P = (1/2, -1,-2/3)$; #h(1cm) $π : -3x - y - 2z - 16 = 0$]],
      [#subquestion()[$P = (4,-1,3)$; #h(1cm) $π : x + y - 2z + 3 = 0$]]
    )
  ],
  [
    #question()[Calcula la distancia entre los planos paralelos:

      $π : x - 3y - 3z - 2 = 0$; #h(1cm)	$π′ : x - 3y - 3z - 17 = 0$
    ]
  ],
  [
    #question()[Calcula la distancia del punto $P = (-2,3,5)$ a la recta r en los siguientes casos.]
    #questions-columns(
      [#subquestion()[$display(r equiv cases(delim: "{",
         2x - y + z = 2,
         x + 2y + 6z = 9,
        ))$]],
      [#subquestion()[$display(r equiv cases(delim: "{",
         x = 2 - lambda,
         y = 2 + 2 lambda,
         z = 2 + 3 lambda
        ))$]],
      [#subquestion()[$display(r (x-2)/3 = y/4 = (z-1)/(-3))$]],
      [#subquestion()[$display(r equiv cases(delim: "{",
         x = 2,
         y= -2,
        ))$]],
    )
  ],
  [
    #question()[Dadas las rectas,
    
    $ r equiv x/2= y/1 = z/-1 ";  "  display(s equiv cases(delim: "{",
         x = 1 + t,
         y= t,
         z = t
        )) $
    ]
     #questions-columns(
      [#subquestion()[Demuestra que se cruzan.]],
      [#subquestion()[Calcula la ecuación del plano $pi$ que contiene a $s$ y es paralelo a $r$.]],
      [#subquestion()[Demuestra que $P=(2, 2, -2)$ es un punto de $r$ y calcula la distancia
      que separa a $P$ de $pi$. 
      ¿Cómo será esta distancia con relación a la distancia que separa a la rectas $r$ y $s$?]],
    )
  ],
  [
    #question()[Comprueba que las rectas $r$ y $s$ se cruzan y calcula la distancia entre ellas.

       $ r equiv (x-1)/2= (y-1)/(-1) = (z-1)/1 ";  "  s equiv cases(delim: "{",
         2x + 3y + z = -2,
         x+y=0,
        ) $
      ]
  ],
  [
    #question()[Comprueba que la recta $r$ es paralela al plano $π$ y calcula la distancia que los separa.
    
       $ r equiv (x-3)/(-4)= (y+2)/(-1) = (z+1)/2 ";  "  pi equiv x + 2z = 4 $

    ]
  ],
  [
    #question()[Comprueba que $r$ y $s$ se cruzan y halla su perpendicular común.
    
      $ r equiv cases(delim: "{",
         x = 2 + 2 lambda,
         y = -1 + lambda,
         z = lambda
        ) ";    " s equiv (x-1)/2= (y+1)/(-1) = z/2  $ 
    ]
  ],
  [
    #question()[Determina si las siguientes rectas se cruzan y, en su caso, halla su perpendicular común.
      $ r equiv cases(delim: "{",
         x - y +2z = 0,
         2x + y + z = 6,
        ) ";    " s equiv x = y = (z-1)/(-1)  $ 
    ]
  ],
  [
    #question()[Halla el área del triángulo cuyos vértices son los puntos $A = (-1,0,1)$, $B = (0,1,1)$ y $C$ que es el punto de corte entre el plano $Y Z$ con la recta.
    $display(r equiv (x+2)/2=y -2 = (z+2)/(-1))$
    ]
  ],
  [
    #question()[Calcula el plano mediador del segmento de extremos $A$ y $B$.]
    #questions-columns(
      [#subquestion()[$A=(-2, 4, 5)$; $B=(-4, 6, 5)$]],
      [#subquestion()[$A=(-1, 2, -3); B=(-3, -4, 2)$]],
    )
  ],
  [
    #question()[Calcula el lugar geométrico de los puntos que equidistan de los puntos $A = (1,0,3)$ y $B = (-4,2,1)$.]
  ],
  [
    #question()[Calcula la ecuación de los planos que dividen a los diedros determinados por los planos $display(pi equiv 2x+y-2z=1)$ y $pi' equiv 2x+2y+z=5$ en dos partes iguales.]
  ],
  [
    #question()[Calcula el lugar geométrico de los puntos del espacio que equidistan de los planos:
    
      $ pi equiv cases(delim: "{",
         x = lambda,
         y = mu,
         z = lambda + mu
        ) ";    " pi' equiv x - y = 0 $ 
    ]
  ],
  [
    #question()[*(EvAU, 2020 - Extraordinaria - Opción A)*

    Dados el punto $P(3,3,0)$ y la recta, $display(r equiv (x-2)/(-1) = y/1 = (z+1)/0)$ se pide: ]
    #questions-columns(
      [#subquestion()[Escribir la ecuación del plano que contiene al punto $P$ y a la recta $r$.]],
      [#subquestion()[Calcular el punto simétrico de $P$ respecto de $r$.]],
      [#subquestion()[Hallar dos puntos $A$ y $B$ de r tales que el triángulo ABP sea rectángulo, tenga área $3/sqrt(2)$ y el ángulo recto en $A$.]],
    )
  ],
  [
    #question()[*(Año 2022 - Modelo - Opción A)*
    
    Una sonda planetaria se lanza desde el punto $P(1, 0, 2)$ y sigue una trayectoria rectilínea que pasa por el punto $Q(3,1,0)$ antes de impactar en una zona plana de la superficie del planeta, que tiene por ecuación $display(pi equiv 2x-y+2z+5=0)$. 
    Se pide:]
    #questions-columns(
      [#subquestion()[Calcular las coordenadas del punto de impacta y el coseno del ángulo entre la trayectoria de la sonda y el vector normal al plano $pi$.]],
      [#subquestion()[Sabiendo que la alarma de proximidad se dispara antes de llegar a la superficie cuando la distancia al planeta es $1$, determinar en qué punto estará la sonda al sonar la alarma.]],
    )
  ],
  [
    #question()[*(Año 2022 - Modelo - Opción A)*
    
    Dados los planos $π_1 equiv x-2y+3z = 6 y π_2 ≡ 3x-z = 2$ y el punto $A(1,7,1)$, se pide: ]
    #questions-columns(
      [#subquestion()[Comprobar que $π_1$ y $π_2$ son perpendiculares.]],
      [#subquestion()[Calcular el volumen de un cubo que tenga una cara en el plano $π_1$, otra cara en el plano $π_2$, y un vértice en el punto $A$.]],
      [#subquestion()[Calcular el punto simétrico de $A$ respecto de $π_1$.]],
    )
  ]
)
