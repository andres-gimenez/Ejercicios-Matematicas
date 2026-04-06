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
  #solution()[
    Tomamos los vectores directores de cada recta, $u_r = (1, 1, -1)$ 
    
    Para obtener el vector director de la recta $s$, escribimos su ecuación en forma paramétrica (para ello despejamos la $y$  y la $z$ en función de la $x$):
    $ display(s equiv cases(delim: "{",
           x = lambda,
           y = -3 - 2 lambda,
           z = -3 + 2 lambda
        )) $

    Otra forma es tomar los verlo. Tomamos los vectores normales a los planos que definen la recta $s$ y calculamos el producto vectorial.

      $n_1 = (2, 1, 0)$ y $n_2 = (2, 0, -1)$
  
      $u_s = n_1 times n_2 = mat(delim: "|", i, j, k; 2, 1, 0; 2, 0, -1) = -i + 2 j - 2k$

    Luego podemos tomar el vector director $u_s = (-1, 2, -2)$. 
    
    Note se que los vectores $(1, -2, 2)$ y $(-1, 2, -2)$ son linealmente dependientes, con lo que marcan la misma dirección. 
    
    El ángulo entre ambas rectas se calcula mediante:
     
    $ cos(alpha) = (|v_r dot n_s|)/(|v_r||v_s|) $

    $v_r dot v_s = (1, 1, -1) dot (-1, 2, -2) = -1 + 2 + 2 = 3$

    $|v_r| = sqrt(1^2 + 1^2 + (-1)^2) = sqrt(3)$

    $|v_s| = sqrt((-1)^2 + 2^2 + (-2)^2) = sqrt(9) = 3$

    $display("cos"(alpha) = (3)/(sqrt(3) dot 3) = 1/sqrt(3) => alpha = arccos(1/sqrt(3)) approx 0","955 "rad" approx 54","7º )$
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
      [#subquestion()[$pi equiv 2x+3y-z+6=0 " y " pi' equiv 2x+3y-z+7 =0 $ ]
      
      #solution()[
        Tomamos los vectores normales a los lados dados:
        
        $n_pi = (2, 3, -1)$ y $n_(pi')= (2, 3, -1)$

        Calculamos el angulo entre los vectores normales.

        $ cos(alpha) = (|n_pi dot n_(pi')|)/(|n_pi||n_(pi')|) $ 

        $n_pi dot N_(pi') = (2, 3, -1) dot (2, 3, -1) = 4 + 9 + 1 = 14$
        
        $|n_pi| = sqrt(2^2 + 3^2 + (-1)^2) = sqrt(14)$
        
        $|n_(pi')| = sqrt(2^2 + 3^2 + (-1)^2) = sqrt(14)$

        $display("sen"(alpha) = (14)/(sqrt(14) dot sqrt(14)) = 14/14 = 1 => alpha = 0))$

        Note se, que al tener los dos planos el mismo vector normal, el angulo entre ellos es 0, es decir, son paralelos.
      ]],
      [#subquestion()[$pi equiv 2x-3y-2z-6=0 " y " pi' equiv 3x+6y+6z-1 =0 $]
      #solution()[
        Tomamos los vectores normales a los lados dados:
        
        $n_pi = (2, -3, -2)$ y $n_(pi')= (3, 6, 6)$

        Calculamos el angulo entre los vectores normales.

        $ cos(alpha) = (|n_pi dot n_(pi')|)/(|n_pi||n_(pi')|) $ 

        $n_pi dot N_(pi') = (2, -3, -2) dot (3, 6, 6) = 6 - 18 - 12 = -24$
        
        $|n_pi| = sqrt(2^2 + (-3)^2 + (-2)^2) = sqrt(17)$
        
        $|n_(pi')| = sqrt(3^2 + 6^2 + 6^2) = sqrt(81) = 9$

        $display("sen"(alpha) = (abs(-24))/(sqrt(17) dot 9) = 24/(9 dot sqrt(17)) => alpha = arccos(24/(9  sqrt(17))) approx 0","86 "rad" approx 49","7º  )$
      ]],
    )
  ],
  [#question()[Calcula el valor de $m$ para que los planos.
    $ pi equiv 2x - 3y + z = 1 " y " pi' equiv x - 2y + m z = 0 $
  ]
    #questions-columns(
      [#subquestion()[Sean perpendiculares.]
      #solution()[
        Tomamos los vectores normales a los planos dados:
        
        $n_pi = (2, -3, 1)$ y $n_(pi')= (1, -2, m)$

        Para que los planos sean perpendiculares, sus vectores normales deben ser ortogonales, es decir, su producto escalar debe ser 0.

        $n_pi dot n_(pi') = (2, -3, 1) dot (1, -2, m) = 2 + 6 + m = 0 => #result($m = -8$)$
      ]],
      [#subquestion()[Formen un ángulo de 60º.]
      #solution()[
        Tomamos los vectores normales a los planos dados:
        
        $n_pi = (2, -3, 1)$ y $n_(pi')= (1, -2, m)$

        Para que los planos formen un ángulo de 60º, el coseno del ángulo entre sus vectores normales debe ser igual a $cos(60º) = 1/2$.

        $ cos(alpha) = (|n_pi dot n_(pi')|)/(|n_pi||n_(pi')|) = 1/2 $

        $n_pi dot n_(pi') = (2, -3, 1) dot (1, -2, m) = 2 + 6 + m = 8 + m$
        
        $|n_pi| = sqrt(2^2 + (-3)^2 + 1^2) = sqrt(14)$
        
        $|n_(pi')| = sqrt(1^2 + (-2)^2 + m^2) = sqrt(5 + m^2)$

        $display((abs(8 + m))/(sqrt(14) dot sqrt(5 + m^2)) = 1/2 => abs(8 + m) = (sqrt(14) dot sqrt(5 + m^2))/2 =>  

        (8 + m)^2 = (14 dot (5 + m^2))/4 => \ 
        
        4(8 + m)^2 = 14(5 + m^2) => 4(64 + 16m + m^2) = 70 + 14m^2 => 256 + 64m + 4m^2 = 70 + 14m^2 => \
         10m^2 - 64m -186 = 0 => 
         cases(reverse: #false, delim: "{", gap: #1em,
                 #result($m = 16/5 - sqrt(721)/5$),
                 #result($m = 16/5 + sqrt(721)/5$)
                ) 
         )$
      ]
      ],
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
    #question()[Calcula la proyección ortogonal de $P = (2,-2,0)$]
    #questions-columns(
      [
        #subquestion()[Sobre el plano $π equiv y + 2z - 3 = 0$]
        #solution()[
      Para calcular la proyección ortogonal de un punto sobre un plano, necesitamos el vector normal al plano y el punto dado. 

      El vector normal al plano $pi$ es $n_pi = (0, 1, 2)$.

      Calculamos la recta que pase por P y es perpendicular al plano,  o lo que es lo mismo contiene a P y tiene como vector director el vector normal al plano:

      $ s_n equiv cases(delim: "{",
         x = 2, 
         y = -2 + lambda,
         z= 2 lambda
        )
      $

      Calculamos la intersección de $s_n$ con el plano $pi$:

      $(-2 + lambda) + 2(2 lambda) = 3 => -2 + 5 lambda = 3 => lambda = 1$

      Sustituyendo el valor de $lambda$ en la ecuación de $s_n$, obtenemos el punto de intersección, que es la proyección ortogonal de $P$ sobre el plano $pi$: 

      $#result($P' = (2, -1, 2)$)$
      ]],
      [
      #subquestion()[Sobre la recta $display(r equiv cases(delim: "{",
         3x + 4y = 8,
         x +4z = -20
        ))$] 
        #solution()[
          Para calcular la proyección ortogonal de un punto sobre una recta, necesitamos el vector director de la recta y el punto dado.

          Para obtener el vector director de la recta $r$, escribimos su ecuación en forma paramétrica (para ello despejamos la $y$  y la $z$ en función de la $x$):

          $ display(r equiv cases(delim: "{",
            x = lambda,
            y = 2 - 3/4 lambda,
            z = -5 - 1/4 lambda
            )) $

          Podemos hace un cambio de variable para obtener un vector director con coordenadas enteras:

          $ display(r equiv cases(delim: "{",
            x = 4 lambda,
            y = 2 - 3 lambda,
            z = -5 - lambda
            )) $

            Calculamos el plano que contiene a P y es perpendicular a la recta, o lo que es lo mismo contiene a P y tiene como vector normal el vector director de la recta:

          $ pi_n equiv 4 x - 3 y - z + d = 0 $
            
          Calculamos el valor de $d$ sustituyendo las coordenadas de $P$ en la ecuación del plano:

          $ 4 dot 2 - 3 dot (-2) - 0 + d = 0 => d = -14$

          Luego el plano es $ pi_n equiv 4 x - 3 y - z - 14 = 0 $

          Ahora calculamos la intersección entre $r$ y $pi_n$:

          $ 4 dot 4 lambda - 3(2 - 3 lambda) - (-4 - lambda) - 14 = 0 =>  \
          16 lambda - 6 + 9 lambda + 4 + lambda -14 = 0 => \
            26 lambda - 16 = 0 => lambda = 8/13$

          Sustituyendo el valor de $lambda$ en la ecuación de $r$, obtenemos el punto de intersección, que es la proyección ortogonal de $P$ sobre la recta $r$:

          $display(P'' = (32/13, 2 - 3/4 dot 8/13, -5 - 1/4 dot 8/13) = #result($display((32/13, 10/13, -73/52))$))$
        ] 
    ])
  ],
  [
    #question()[Halla el simétrico de $P = (1,1,−2)$]
    
    #questions-columns(
      [#subquestion()[Respecto del plano $π equiv x - 3y + 4z - 16 = 0$]],
      [#subquestion()[Respecto a la recta $display(r equiv cases(delim: "{",
         24x-36y=-7,
         2z = 1
        ))$.]
      ]
    )
  ],
  [
    #question()[Halla la recta simétrica de $display(r equiv cases(delim: "{",
         x = 2 + lambda,
         y= -2 + lambda,
         z = - lambda
        ))$] 
      Respecto al plano $π equiv x - 3y + 4z - 16 = 0$
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
