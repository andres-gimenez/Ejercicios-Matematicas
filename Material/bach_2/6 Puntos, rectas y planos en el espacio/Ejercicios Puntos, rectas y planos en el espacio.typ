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
    number: [Puntos, rectas y planos en el espacio],
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
  [
    #question()[Representa los puntos del espacio de tres dimensiones $A = (2, 2, 3)$ y $B = (-1, 2, 1)$ tomando
    como referencia ${ P = (1, 1, 1); arrow(u) = (1, 1, -1), arrow(v) = (1, 0, -1), arrow(w) = (0, -1, 0) }$]
  ],[
    #question()[Dados los puntos $A = (3, -1, -2)$ y $B = (0, -2, -3)$, calcula:]
    #questions-columns(
    [#subquestion()[El punto medio de $A$ y $B$]],
    [#subquestion()[El punto simétrico de B con respecto a A]],
    )
  ],[
    #question()[Calcula las coordenadas de los puntos medios de los lados del triángulo de vértices $A = (2, 2, -1)$, $B = (-1, 3, 2)$ y $C = (0, -2, 4)$:]
  ],[
    #question()[Dado el segmento $arrow(A B)$, donde $A=(-5, 4, -2)$ y $B=(-2, 1, -2)$:]
    #questions-columns(
    [#subquestion()[Calcula las coordenadas del punto $M$ tal que $arrow(A M) = 4/3 arrow(A B)$]],
    [#subquestion()[Calcula las coordenadas del punto $N$ tal que $arrow(A N) = 2/3 arrow(A B)$]],
    )
  ], [
    #question()[Comprueba si los puntos $A=(-3, 1, 3)$, $B=(3, 1, 5)$ y $C=(1, -1, 2)$ pertenecen o no a la recta que pasa por $P=(-1, 1, -1)$ y tiene como vector director $arrow(v) = (-2, 0, -3)$. Calcula dos puntos más de esta recta.]
  ], [
    #question()[Considera la recta que pasa por el punto $S= (1, -2,5)$ y lleva la dirección del vector $arrow(v) = (-2, 2, 0)$:]
    #questions-columns(
    [#subquestion()[Calcula su ecuación vectorial.]],
    [#subquestion()[Indica sus ecuaciones paramétricas.]],
    )
  ], [
    #question()[Calcula en cada caso, unas ecuaciones implícitas de la recta que cumple las siguientes condiciones:]
    #questions-columns(
    [#subquestion()[Pasa por $A=(-1, -2, 3)$ y lleva la dirección de $arrow(u) = (-1, -2, 4)$.]],
    [#subquestion()[Pasa por los puntos $A=(1,1,3)$ y $B=(-3, 1, 5)$.]],
    [#subquestion()[Pasa por el punto $A=(-1, -2, 0)$ y es paralela al segmento de extremos $B=(0, -3, 1)$ y $B'=(1, 1, 0)$.]],
    [#subquestion()[Pasa por el punto $A=(2, -2, -3)$ y es paralela al eje $Y$.]],
    )
  ], [
    #question()[Para cada una de las siguientes rectas, calcula dos puntos y halla unas ecuaciones paramétricas:]
    #questions-columns(
    [#subquestion()[ 
      $display( r equiv cases(delim: "{",
           &x &+ &y & & &= 0,
          2&x &- &y &+ &z &= 0
        ))$ 
    ]],
    [#subquestion()[
      $display(s equiv cases(delim: "{",
          3&x &+ 2&y &- &z &= 0,
           &x &+  &y &+ &z -3 &= 0
        ))$
    ]],
    )
  ],
  [
    #question()[Halla unas ecuaciones implícitas para cada una de las rectas sobre las que descansan los tres lados del triángulo de vértices $A = (1, -1, 1)$, $B = (0, 1, 2)$ y $C = (1, 2, -3)$.]
  ],
  [
    #question()[Dada la recta 
      $ r equiv cases(delim: "{",
           x = y,
           x + z = 0
        ) $ 
    ]
    #questions-columns(
      [#subquestion()[calcula dos puntos de ella y los simétricos de ellos respecto del origen de coordenadas.]],
      [#subquestion()[Calcula la recta simétrica de $r$ respecto del origen de coordenadas.]],
    )
  ],
  [
    #question()[Comprueba si los puntos $A=(1, 2, 0)$, $B=(2, 3, 4)$ y $C=(3, 4, -4)$ pertenecen o no al plano que pasa por el punto $P=(1, 1, 1)$ y tiene como vectores directores $arrow(u) = (1, 0, -1)$ y $arrow(v) = (0, 1, -1)$. Calcula dos puntos más de este plano.]
  ],
  [
    #question()[Comprueba si los puntos $A=(3, -2, -2)$, $B=(1, 0, 1)$ y $C=(2, 1, -1)$ pertenecen de ecuaciones paramétricas:
      $ pi equiv cases(delim: "{",
           x = 1 - lambda + mu,
           y = lambda - mu,
           z = 2 - lambda + mu
        ) $
    ]
  ],
  [
    #question()[Calcula las ecuaciones paramétricas y la ecuación implícita del plano que pasa por el punto $A=(2, 2, 2)$ y tiene como vectores de dirección $arrow(u) = (-3, -2, 1)$ y $arrow(A B)$ donde $B=(1, 2, -1)$.]
  ],
  [ 
    #question()[Calcula unas ecuaciones paramétricas del plano $x + y + z = 3$ e indica uno de sus puntos y vectores de dirección independientes.]
  ],
  [
    #question()[Comprueba que las siguientes ecuaciones paramétricas representan el mismo plano. Para ello, obtén tres puntos no alineados del primero y comprueba que pertenecen al segundo plano.
    
      $ pi equiv cases(delim: "{",
           x = 2 + lambda + mu,
           y = - mu,
           z = 2 - lambda + mu
        )
        #h(1cm)  
        pi' equiv cases(delim: "{",
           x = s,
           y = t - s,
           z = 4 - 2t + s
        )
      $
    ]
    #solution[
        Calculamos tres puntos no alineados del plano $pi$ y comprobamos que pertenecen al plano $pi'$:

        - Si $lambda = 0 "y" mu = 0$, entonces $P_1 = (2, 0, 2)$  
        - Si $lambda = 1 "y" mu = 0$, entonces $P_2 = (3, 0, 1)$  
        - Si $lambda = 0 "y" mu = 1$, entonces $P_3 = (3, -1, 3)$

        Ahora comprobamos que los puntos $P_1$, $P_2$ y $P_3$ pertenecen al plano $pi'$:

        - Para $P_1$, $s = 2$ y $t = 2$ cumplen las ecuaciones paramétricas de $pi'$. Por tanto, $P_1$ pertenece a $pi'$.
        - Para $P_2$, $s = 3$ y $t = 3$ cumplen las ecuaciones paramétricas de $pi'$. Por tanto, $P_2$ pertenece a $pi'$.
        - Para $P_3$, $s = 3$ y $t = 2$ cumplen las ecuaciones paramétricas de $pi'$. Por tanto, $P_3$ pertenece a $pi'$.
    ]
  ],
  [
    #question()[Halla la ecuación del plano que pasa por los puntos $A=(2, -2, 1)$, $B=(1, -2, -1)$ y $C=(0, -1, 2)$.]
  ],
  [
    #question()[Halla la ecuación de los siguientes planos:]
    #questions-columns(
      [#subquestion()[Paralelo a $X Y$ y que pasa por el punto $A=(-1, 2, -2)$.]],
      [#subquestion()[Paralelo a $X Z$ y que pasa por el punto $B=(3, -2, 0)$.]],
      [#subquestion()[Paralelo a $Y Z$ y que pasa por el punto $C=(0, -2, -2)$.]],
    )
  ],
  [
    #question()[Indica un vector director y otro normal a $pi equiv -2x + 2y +z = 0$]
  ],
  [
    #question()[En la figura aparece un tetraedro de vértices los punto $O , A, B "y" C$. Calcula las ecuaciones de los planos que contienen a las cuatro caras del tetraedro.
    #align(center, image("Figura01.png", width: 20%))
    ]
  ],
  [#question()[Halla un vector director y otro normal del plano que pasa por los punto $display(A =(-1, 2, 1/3))$, $display(B=(1/2, -1, 0))$ y el origen de coordenadas].
  ],
  [
    #question()[Un plano tiene como vector normal $arrow(n) = (2, -3, 2)$ y pasa por el punto $A=(-1, 2, -5)$. Escribe su ecuación normal, su ecuación implícita y sus ecuaciones paramétricas.]
  ],
  [
    #question()[Halla la recta perpendicular al plano $x+z = 2$ y que pasa por el punto $A=(1, 2, 0)$.]
  ],
  [
    #question()[Halla el plano perpendicular a la recta $display(x/2=y =z)$ y que pase por origen de coordenadas].
  ],
  [
    #question()[Estudia la posición relativa de los planos $pi$ y $pi'$ en los siguientes casos:]
    
    #questions-columns(
      [#subquestion()[$pi equiv 2x-y-z =0$ #h(5mm) $pi' equiv -6x + 3y +3z-3=0$]],
      [#subquestion()[$pi equiv 2x-y-z =0$ #h(5mm) $pi' equiv 2x + y -z-3=0$]],
    )
  ],
  [#question()[Estudia la posición relativa de los siguientes planos:]
    #questions-columns(
      [#subquestion()[$pi equiv x-3y-2z =2$ #h(5mm) $pi' equiv -2x+6y+4z=-4$ #h(5mm) $pi'' equiv 3x-9y-6z=6$]],
      [#subquestion()[$pi equiv x-y-3z = 1$ #h(5mm) $pi' equiv -2x+2y+6z=-2$ #h(5mm) $pi'' equiv x+y+z=0$]],
      [#subquestion()[$pi equiv x-y-2z = 1 $ #h(5mm) $pi' equiv 2x-3y+z=15$ #h(5mm) $pi'' equiv x+z=-4$]],
    )
  ],
  [
    #question()[Estudia la posición relativa de la recta $r$ y el plano $pi$ en los siguientes casos:]

    #questions-columns(
      [#subquestion()[
        $display(r equiv cases(delim: "{",
           x = 2 + 3 lambda,
           y = 2 lambda,
           z = -2 + lambda
        )
        #h(1cm)  
        pi equiv 3x - y +2z +1 = 0)
        $
      ]],
      [#subquestion()[
        $display(r equiv cases(delim: "{",
           x = 3 + 2 lambda,
           y = -1 + lambda,
           z = 2 + lambda
        )
        #h(1cm)  
        pi equiv x - 3y + z - 8 = 0)
        $
      ]],
    )
  ],
  [
    #question()[Estudia la posición relativa de la rectas:]

    #questions-columns(max-columns:1,
      [#subquestion()[
        $ r equiv cases(delim: "{",
           x = 1 + lambda,
           y = -2 + lambda,
           z = 3 lambda
        )
        #h(1cm)  
        s equiv cases(delim: "{",
           x = -2 + 2 mu,
           y = -1 + mu,
           z = 1 - 3 mu
        )
        $
      ]],
      [#subquestion()[
        $ r equiv cases(delim: "{",
           x = 1 + lambda,
           y = 2 lambda,
           z = 2 + 3 lambda
        ) 
        #h(1cm)  
        s equiv cases(delim: "{",
           x = 3 mu,
           y = -2 + 4 mu,
           z = -1
        )
        $
      ]],
    )
  ],
[
    #question()[Estudia la posición relativa de los siguientes pares de rectas.Halla el punto de corte si se da el caso:]

    #questions-columns(max-columns:1,
      [#subquestion()[
        $display(r equiv cases(delim: "{",
           2&x +  &y - &z &= 1,
            &x - 2&y   &  &= 0
          )
        #h(1cm)  
        s equiv cases(delim: "{",
           x = -2 + 2 lambda,
           y = -1 + lambda,
           z = 1 + 5 lambda
        ))
        $
      ]],
      [#subquestion()[
        $display(r equiv cases(delim: "{",
          &x + &y &-&z &= 2,
          2&x  &  &-&z &= 3
        )
        #h(1cm)  
        s equiv cases(delim: "{",
          &x  -2&y &-2&z &= 3,
          2&x -3&y  && &= 0
        ))
        $
      ]],
      [#subquestion()[
        $display(r equiv cases(delim: "{",
          &x + &y &-&z &= -4,
          2&x  &  &-&z &= -5
        )
        #h(1cm)  
        s equiv cases(delim: "{",
          x = -2 + 2 lambda,
          y = -1 + lambda,
          z = 1 + 5 lambda
        ))
        $
      ]],
    )
  ],
  [
    #question()[Calcula la ecuación de la recta perpendicular al plano $pi equiv x -y - 3z = 6$ y que pasa por el punto $A=(-2, 3, 4)$.]
  ],
  [
    #question()[Calcula la ecuación del plano perpendicular a $pi equiv x-y+3z=4$ y que contiene a la recta de ecuaciones paramétricas.

    $ r equiv cases(delim: "{",
          x = 1 + lambda,
          y = 2 - lambda,
          z = 3 + 2 lambda
        ) $
    ]
  ],
  [#question()[Verifica si los puntos $A$, $B$, $C$ y $D$ son o no complanarios:]
    #questions-columns(
      [#subquestion()[
        $A = (2, -2, 1), B = (1, -2, -1), C = (0, -1, 2) "y" D = (1, 2, 0)$
      ]],
      [#subquestion()[
        $A = (1, 1,1 ), B = (2, 2, -1), C = (-1, 2, 2) "y" D = (2, 1, 2)$
      ]],
    )
  ],
  [#question()[Calcula la ecuación del plano que contiene al punto $A = (2, 2, -2)$ y la recta 
    $ r equiv cases(delim: "{",
          x - 2y + 3z = 6,
          x = z
        ) $
  ]],
  [
    #question()[Calcula todos los valores de $m$ que hacen que los puntos del espacio $A=(0, 2, 2)$,  $B=(1, 1, m^2-1)$ y $C=(2, 0, 2m)$ pertenezcan a una misma recta. Escribe unas ecuaciones implícitas para esa recta]
  ],
  [
    #question()[Dadas las rectas 
    $ r equiv cases(delim: "{",
          x + 2z = 1,
          y + z = 2
        )  " y "
     s equiv cases(delim: "{",
          x = -3 + 2 lambda,
          y = 2 - lambda,
          z = 1 + lambda
        ) $
     se pide:]
     #questions-columns(max-columns:1,
       [#subquestion()[Determina la posición relativa de $r$ y $s$.]
       #solution()[Para determinar la posición relativa de las rectas $r$ y $s$, primero obtenemos sus vectores directores.
       La recta $r$ se puede escribir en forma paramétrica como:
        $
        r equiv cases(delim: "{",
        x = 1 - 2 lambda,
        y = 2 - lambda,
        z = lambda
        )
        $
      lo que implica que su vector director es $arrow(v_r) = (-2, -1, 1)$. 

        La recta $s$ ya está dada en forma paramétrica, por lo que su vector director es $arrow(v_s) = (2, -1, 1)$. 

    //   Calculamos el producto escalar de los vectores directores:

    // $arrow(v_r) dot arrow(v_s) = (-2)(2) + (-1)( -1) + (1)(1) = -4 + 1 + 1 = -2 != 0$

    // Dado que el producto escalar no es cero, las rectas no son ortogonales. 
    Calculamos el producto vectorial de los vectores directores:
    
      $ arrow(v_r) times arrow(v_s) =
      mat(delim: "|", &i, &j, &k; -&2, -&1, &1; &2, -&1, &1) = 0 i - (-4) j + 0 k = (0, 4, 0) $
      
      Dado que el producto vectorial no es el vector nulo, las rectas no son ni paralelas, ni coincidentes.

    Calculamos el punto de corte de las rectas $r$ y $s$:

    Tenemos: 

     $
        r equiv cases(delim: "{",
        x = 1 - 2 lambda,
        y = 2 - lambda,
        z = lambda
        )
      #h(2cm)
        s equiv cases(delim: "{",
          x = -3 + 2 lambda,
          y = 2 - lambda,
          z = 1 + lambda
        )
        $

        Igualamos coordenadas (con cuidado ya que los paramtetros de distintas rectas no tienen porque coincidir, por lo que usamos $lambda$ para $r$ y $mu$ para $s$):

      $
        cases(delim: "{",
        1 - 2 lambda = -3 + 2 mu,
         2 - lambda = 2 - mu,
         lambda = 1 + mu
        )
       $

        De la 2º ecuación podemos deducir que $lambda = mu$, pero se ve claramente que no cumple la 3º ecuación, por lo que las rectas no se cortan.

        *Luego las rectas se cruzan.*
       ]],
       [#subquestion()[Escribe la ecuación del plano que contiene a la recta $r$ y al vector perpendicular a $r$ y $s$.]
       #solution()[El vector perpendicular a $r$ y $s$ es el producto vectorial de sus vectores directores, que ya hemos calculado en el partido anterior: $arrow(n) = (0, 4, 0)$.

      Para escribir la ecuación del plano que contiene a la recta $r$ y al vector perpendicular a $r$ y $s$, necesitamos un punto que contenga  el plano. Podemos tomar cualquier punto de la recta $r$, por ejemplo, el punto que obtenemos al tomar $lambda = 0$: $P = (1, 2, 0)$.       
       
      La ecuación del plano que tiene como vector normal $arrow(n)$ es:
    
      // $0(x - 1) + 4(y - 2) + 0(z - 0) = 0 => y = 2$, lo que implica que el plano buscado es el plano paralelo al eje $X Z$ que pasa por el punto $P_0$.

      $0 x + 4 y + 0 z + d = 0 ) => 4y +d = 0$

      Si tiene que contener a  $P = (1, 2, 0)$

      $4 dot 2 + d = 0 => d = -8$, lo que implica que la ecuación del plano buscado es $4y - 8 = 0$ o simplemente $y = 2$.
       ]
    ]
    )
  ],
  [
    #question()[Dada las rectas 
    $ r equiv cases(delim: "{",
          x = -3 + a lambda,
          y = 2 - lambda,
          z = 1 + lambda
        ) " y "
     s equiv cases(delim: "{",
          x = -5 - 4 mu,
          y = 2 + 2 mu,
          z = 1 - 2 mu
        ) $
     se pide:]
     #questions-columns(max-columns:1,
       [
        #subquestion()[Calcular el valor de $a$ para que las rectas sean ortogonales.]
        #solution()[Para que sean ortogonales, el producto escalar de sus vectores directores debe ser cero. El vector director de $r$ es $arrow(v_r) = (a, -1, 1)$ y el vector director de $s$ es $arrow(v_s) = (-4, +2, -2)$. Calculamos el producto escalar:
        
        $arrow(v_r) dot arrow(v_s) = a(-4) + (-1)(+2) + 1(-2) = -4a - 2 - 2 = -4a - 4 $. Para que el producto escalar sea cero, debe cumplirse que $-4a - 4 = 0 => a = -1$, lo que implica que para $a = -1$ las rectas son ortogonales.
        ]
       ],
       [
        #subquestion()[Calcular el valor de $a$ para que las rectas sean paralelas.]
        #solution()[Para que las rectas sean paralelas, sus vectores directores deben ser proporcionales. 
        El vector director de $r$ es $arrow(v_r) = (a, -1, 1)$ y el vector director de $s$ es $arrow(v_s) = (-4, 2, -2)$. 
        Para que sean proporcionales, debe existir un escalar $k$ tal que:
        $arrow(v_r) = k arrow(v_s)$, lo que implica que:
        - $a = -4k$
        - $-1 = 2k$
        - $1 = -2k$ 
        De la segunda ecuación, obtenemos que $k = -1/2$. 
        Sustituyendo este valor en la primera ecuación, obtenemos que $a = -4(-1/2) = 2$.
        Comprobamos que en la tercera ecuación también se cumple con $k = -1/2$: $1 = -2(-1/2) = 1$, lo que confirma que para $a = 2$ las rectas son paralelas. 

        $arrow(v_r) = -1/2 arrow(v_s)$ si $a = 2$, lo que implica que para $a = 2$ las rectas son paralelas.
        ]    
       ]
     )
  ],
  [#question()[*(EvAU Año 2014 - Modelo - Opción A)*

  Dado el punto $P(1, 1, 1)$ y los planos, 

  $ pi_1 equiv 3x + a y + z = 0";" pi_2 equiv a x - y + z = 0";" pi_3 equiv x + y - z = 0 $

  se pide:]
    #questions-columns(
      [#subquestion()[Calcular los valores de $a$ para los que los planos se cortan en una recta.]],
      [#subquestion()[Para $a=2$, hallar la ecuación del plano que pasa por el punto $P$ y es perpendicular a la recta intersección de los planos $pi_1$ y $pi_2$.]]
    )
  ],
  [#question()[*(EvAU Año 2014 - Modelo - Opción B)*
    Dadas las rectas:
      $ r equiv cases(delim: "{",
          x = -2 + lambda,
          y = -6 + 2 lambda,
          z = 1 + lambda
          ) 
      "   "
      s equiv cases(delim: "{",
            x + y -4 = 0,
            2x +z -6 = 0
          ) $
    ]
  #questions-columns(
      [#subquestion()[
        Determinar si se puede construir un triángulo que tenga dos de sus lados sobre las rectas.]],
      [#subquestion()[Encontrar la ecuación de la recta perpendicular común a las dos rectas anteriores.]]
    )
  ],
  [#question()[*(EvAU Año 2017 - Modelo - Opción B)*
  
  Dados los puntos $A(2, 1, 1)$, $B=(0, 0, -3)$ y $P=(1, 1, 1)$, se pide:]
    #questions-columns(
      [#subquestion()[Hallar la ecuación del plano que contiene a los tres puntos.]],
      [#subquestion()[Hallar el área del triángulo formado por $A$, $B$ y $P$.]],
      [#subquestion()[Hallar la distancia del punto $P$ a la recta que pasa por $A$ y $B$.]]
    )
  ]
 
)
 

