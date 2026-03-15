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
  ]
)


// 10.	Halla la recta sim´etrica derespecto del plano π : x − 3y + 4z − 16 = 0.
// 11.	Comprueba si el tri´angulo de v´ertices A = (2,−1,4), B = (1,3,−4) y C = (−3,−1,3) es equil´atero, is´osceles o escaleno y halla su per´ımetro.
// 12.	Calcula la distancia del punto P al plano π:
// a)	P = (1,−2,6);	π : 2x + y − 2z + 3 = 0
// 	b));	π : −3x − y − 2z − 16 = 0
// 	c) P = (4,−1,3);	π : x + y − 2z + 3 = 0
// 13.	Calcula la distancia entre los planos paralelos:
// 	π : x − 3y − 3z − 2 = 0;	π′ : x − 3y − 3z − 17 = 0
// 14.	Calcula la distancia del punto P = (−2,3,5) a la recta r en los siguientes casos.
// 	ß 2x − y + z = 2	c)
// a)	r ≡ x + 2y + 6z = 9
// 	 x = 2 − λ	ß x = 2
// b)	r ≡ y = 2 + 2λ	d) r ≡
 
// y = −2  z = 2 + 3λ
 
// 15.	Dadas las rectas,
// 
// 
// 	;	s ≡
// 
// a)	Demuestra que se cruzan.
// x = 1 + t y = t z = t
 
// b)	Calcula la ecuaci´on del plano π que contiene a s y es paralelo a r.
// c)	Demuestra que P = (2,2,−2) es un punto de r y calcula la distancia que separa a P de
// π. ¿C´omo ser´a esta distancia con relaci´on a la distancia que separa a las rectas r y s?
// 16.	Comprueba que las rectas r y s se cruzan y calcula la distancia entre ellas.
// ß 2x + 3y + z = −2
// 	;	s ≡
// x + y = 0
// 17.	Comprueba que la recta r es paralela al plano π y calcula la distancia que los separa.
// 	 ;	π ≡ x + 2z = 4
// 18.	Comprueba que r y s se cruzan y halla su perpendicular comu´n.
//  x = 2 + 2λ
// 
// r ≡ y = −1 + λ ;
//  z = λ
// 19.	Determina si las siguientes rectas se cruzan y, en su caso, halla su perpendicular comu´n.
// ß x − y + 2z = 0 r ≡	;
// 2x + y + z = 6
// 20.	Halla el ´area del tri´angulo cuyos v´ertices son los puntos A = (−1,0,1), B = (0,1,1) y C que es el punto de corte entre el plano Y Z con la recta  .
// 21.	Calcula el plano mediador del segmento de extremos A y B.
// 	a) A = (−2,4,5); B = (−4,6,5)	b) A = (−1,2,−3); B = (−3,−4,2)
// 22.	Calcula el lugar geom´etrico de los puntos que equidistan de los puntos A = (1,0,3) y B = (−4,2,1).
// 23.	Calcula la ecuaci´on de los planos que dividen a los diedros determinados por los planos π : 2x + y − 2z = 1 y π′ : 2x + 2y + z = 5 en dos partes iguales.
// 24.	Calcula el lugar geom´etrico de los puntos del espacio que equidistan de los planos:
//  x = λ
// 
// π ≡ y = µ
//  z = λ + µ	;	π′ ≡ x − y = 0
// EvAU
// 25.	(An˜o 2020 - Extraordinaria - Opci´on A) Dados el punto P(3,3,0) y la recta   , se pide:
// a)	Escribir la ecuaci´on del plano que contiene al punto P y a la recta r.
// b)	Calcular el punto sim´etrico de P respecto de r.
// c)	Hallar dos puntos A y B de r tales que el tri´angulo ABP sea rect´angulo, tenga ´area  y el ´angulo recto en A.
// 26.	(An˜o 2022 - Modelo - Opci´on A) Una sonda planetaria se lanza desde el punto P(1, 0, 2) y sigue una trayectoria rectil´ınea que pasa por el punto Q(3,1,0) antes de impactar en una zona plana de la superficie del planeta, que tiene por ecuaci´on π ≡ 2x − y + 2z + 5 = 0. Se pide:
// a)	Calcular las coordenadas del punto de impacto y el coseno del ´angulo entre la trayectoria de la sonda y el vector normal al plano π.
// b)	Sabiendo que la alarma de proximidad se dispara antes de llegar a la superficie cuando la distancia al planeta es 1, determinar en qu´e punto estar´a la sonda al sonar la alarma.
// 27.	(An˜o 2022 - Modelo - Opci´on A) Dados los planos π1 ≡ x−2y+3z = 6 y π2 ≡ 3x−z = 2 y el punto A(1,7,1), se pide:
// a)	Comprobar que π1 y π2 son perpendiculares.
// b)	Calcular el volumen de un cubo que tenga una cara en el plano π1, otra cara en el plano π2, y un v´ertice en el punto A.
// c)	Calcular el punto sim´etrico de A respecto de π1.

 

