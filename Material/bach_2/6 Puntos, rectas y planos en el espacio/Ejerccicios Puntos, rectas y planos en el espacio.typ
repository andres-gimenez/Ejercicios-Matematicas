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
    #question()[Comprueba si los puntos $A=(-3, 1, 3)$, $B=(3, 1, 5)$ y $C=(1, -1, 2)$ pertenecen o no a la recta que pasa $P=(-1, 1, -1)$ y tiene como vector director $arrow(v) = (-2, 0, -3)$. Calcula dos puntos más de esta recta.]
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
    [#subquestion()[Pasa por el punto $A=(-1, -2, 0)$ y es paralela al segmento de extremos $B=(0, -3, 1)$ y $B=(1, 1, 0)$.]],
    [#subquestion()[Pasa por el punto $A=(2, -2, -3)$ y es paralela al eje $Y$.]],
    )
  ], [
    #question()[Para cada una de las siguientes rectas, calcula dos puntos y halla unas ecuaciones paramétricas:]
    #questions-columns(
    [#subquestion()[ 
      $ r equiv display(cases(delim: "{",
           &x &+ &y & & &= 0,
          2&x &- &y &+ &z &= 0
        )) $ 
    ]],
    [#subquestion()[
      $ s equiv display(cases(delim: "{",
          3&x &+ 2&y &- &z &= 0,
           &x &+  &y &+ &z -3 &= 0
        )) $
    ]],
    )
  ],
  [
    #question()[Halla unas ecuaciones implícitas para cada una de las rectas sobre las que descansan los tres lados del triángulo de vértices $A = (1, -1, 1)$, $B = (0, 1, 2)$ y $C = (1, 2, -3)$.]
  ],
  [
    #question()[Dada la recta 
      $ r equiv display(cases(delim: "{",
           x = y,
           x + z = 0
        )) $ 
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
      $ pi equiv display(cases(delim: "{",
           x = 1 - lambda + mu,
           y = lambda - mu,
           z = 2 - lambda + mu
        )) $
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
    
      $ pi equiv display(cases(delim: "{",
           x = 2 + lambda + mu,
           y = - mu,
           z = 2 - lambda + mu
        )) 
        #h(1cm)  
        pi' equiv display(cases(delim: "{",
           x = s,
           y = t - s,
           z = 4 - 2t + s
        ))         
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
    #question()[En la figura aparece un tetraedro de vértices los punto $O , A, B "y" C$. Calcula las ecuaciones de los planos que contienen a las cuatro caras del tetraedro.
    #align(center, image("Figura01.png", width: 20%))
    ]
  ],
  [
    #question()[Halla la ecuación del plano que pasa por los puntos $A=(2, -2, 1)$, $B=(1, -2, -1)$ y $C=(0, -1, 2)$.]
  ],
)
 

