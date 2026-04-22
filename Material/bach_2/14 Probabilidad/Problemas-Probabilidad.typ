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
    number: [Problemas de probabilidad],
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
    #question()[Calcula la probabilidad de que al sacar una carta de una baraja española sea una espada.]
  ],
  [
    #question()[Lanzamos un dado. Calcula la probabilidad de:]
    #questions-columns(
      [#subquestion()[Sacar un número par.]],
      [#subquestion()[Sacar un 3.]],
      [#subquestion()[Sacar un número mayor que 3.]],
      [#subquestion()[Sacar un número mayor que 3 y que sea impar.]],
      [#subquestion()[Sacar un número mayor que 3 o bien que sea impar.]]
    )
  ],
  [
    #question()[En una clase hay 24 alumnos y 14 alumnas. La mitad de las alumnas y la tercera de los alumnos tienen los ojos azules. Se elige un estudiante al azar:]
    #questions-columns(
      [#subquestion()[Calcula la probabilidad de que sea chico y tenga los ojos azules. ]],
      [#subquestion()[Calcula la probabilidad de que sea chico o tenga los ojos azules.]],
    )
  ],
  [
    #question()[Antonio, Juan y Jorge tienen una prueba de natación. Antonio y Juan tienen la misma probabilidad de ganar, y doble a la de Jorge. Calcula la probabilidad de que gane Juan o Jorge.]
  ],
  [
    #question()[Un juego consiste en lanzar tres monedas al aire. Si salen tres caras o tres cruces, el jugador gana siete puntos; en caso contrario, el jugador pierde dos puntos.]
    #questions-columns(
      [#subquestion()[¿Cuál es la probabilidad de ganar en la primera tirada?]],
      [#subquestion()[¿Cuál es la probabilidad de perder las dos primeras tiradas y ganar la tercera?]],
    )
  ],
  [
    #question()[Dados los sucesos A y B asociados a un experimento aleatorio, con  
        $P(A)=0,5$, $P(B)=0,3$ y $P(A inter B)=0,2$, calcula las probabilidades de que:]
    #questions-columns(
      [#subquestion()[Al menos uno de los sucesos A y B ocurra.]],
      [#subquestion()[A o B ocurran, pero no a la vez.]],
      [#subquestion()[No ocurra ninguno de los dos sucesos.]],
    )
  ],
  [
    #question()[Un dado octaédrico está trucado de forma que la probabilidad de cada cara es proporcional al cuadrado del número que aparece en ella. Si se lanza el dado, ¿cuál es la probabilidad de que salga un divisor de 12?]
  ],
  [
    #question()[(*Paradoja del cumpleaños*) Calcula la probabilidad de que en un conjunto de 23 personas, al menos dos de ellas cumplan años el mismo día.]
    #solution()[La probabilidad de que al menos dos personas cumplan años el mismo día es igual a 1 menos la probabilidad de que todas las personas tengan cumpleaños diferentes. La probabilidad de que la primera persona tenga un cumpleaños diferente a los demás es 365/365, la segunda persona tiene 364 opciones para no coincidir con la primera, la tercera tiene 363 opciones para no coincidir con las dos anteriores, y así sucesivamente. Por lo tanto, la probabilidad de que todas las personas tengan cumpleaños diferentes es:
    
    $display(P("Todas diferentes") = 365/365 dot 364/365 dot 363/365 dot 363/365 ... 344/365 = 365!/(365^23 dot (361 - 23)!)) approx 0,49270 $
    
    Por lo tanto, la probabilidad de que al menos dos personas cumplan años el mismo día es:
    
    $P("al menos dos iguales") = 1 - P("todas diferentes")$
    
    $P("al menos dos iguales") = 1 - 0.49270 approx 0,5073$
    ]
  ],
  [
    #question()[El temario de Historia de España consta de 16 unidades. En el examen de EvAU hay dos opciones, por lo que hay dos unidades distintas que se pueden realizar. Suponiendo que una persona ha estudiado 5 temas, calcula la probabilidad de que en el examen aparezca al menos una unidad de las estudiadas.]
    #solution()[La probabilidad de que en el examen aparezca al menos una unidad de las estudiadas es igual a 1 menos la probabilidad de que no aparezca ninguna unidad de las estudiadas. La probabilidad de que no aparezca ninguna unidad de las estudiadas es igual a la probabilidad de que se elijan dos unidades distintas entre las 11 unidades no estudiadas, lo cual se puede calcular como:
    
    $display(P("Ninguna estudiada") = C(11,2)/C(16,2) = 55/120 = 0","45833) $
    
    Por lo tanto, la probabilidad de que en el examen aparezca al menos una unidad de las estudiadas es:
    
    $P("Al menos una estudiada") = 1 - P("Ninguna estudiada")$
    
    $P("Al menos una estudiada") = 1 - 0,45833 approx 0,54167$
    ]
  ],
  [
    #question()[Si A y B son dos sucesos de un mismo experimento con  
    $P(A)=0,5$, $P(B)=0,3$ y \ $P(A|B)=0,2$. Calcula la probabilidad de que:]
    #questions-columns(
      [#subquestion()[No ocurra ni A ni B.]
      #solution()[La probabilidad de que no ocurra ni A ni B se puede calcular utilizando la fórmula de la probabilidad de la unión de dos sucesos:

      $P(overline(A) inter overline(B)) = P(overline(A union B)) = 1 - P(A union B)$ 

      Para calcular $P(A union B)$, podemos usar la fórmula de la probabilidad de la unión de dos sucesos:

      $P(A union B) = P(A) + P(B) - P(A inter B)$

      Para calcular $P(A inter B)$, podemos usar la fórmula de la probabilidad condicional:

      $P(A inter B) = P(A|B) dot P(B)$

      Sustituyendo los valores dados:
      $P(A inter B) = 0,2 dot 0,3 = 0,06$

      Ahora podemos calcular $P(A union B)$:
      $P(A union B) = 0,5 + 0,3 - 0,06 = 0,74$

      Finalmente, podemos calcular $P(overline(A) inter overline(B))$:

      $P(overline(A) inter overline(B)) = 1 - P(A union B) = 1 - 0,74 = 0,26$

      ]
      ],
      [#subquestion()[Ocurra solo uno de ellos.]
      #solution()[             
        $P("Solo ocurra uno") = P(A) + P(B) - 2 dot P(A inter B) = 0,5 + 0,3 - 2 dot 0,06 = 0,68$
      ]],
      [#subquestion()[Ocurra B sabiendo que ha ocurrido A.]
       #solution()[
         $display(P(B|A) = P(A inter B)/P(A) = (0","06)/(0","5) = 0","12)$
      ]
      ]
    )
  ],
  [
    #question()[El porcentaje de pacientes que sobreviven a una determinada enfermedad cuando es tratada en su estadio inicial es del 80 % a los dos años y del 60 % a los seis años. Calcula la probabilidad de que un paciente que ha sobrevivido a los dos años sobreviva a los seis años.]
    #solution()[
          Sea:

          *$A$*: “sobrevive 2 años”

          *$B$*: “sobrevive 6 años”

          Datos:

          $P(A) = 0,8$

          $P(B) = 0,6$

          Si un paciente sobrevive 6 años necesariamente ha sobrevivido 2 años, por lo que:

          $B subset A$

          Entonces:

          $P(A ∩ B) = P(B) = 0,6$

          La probabilidad pedida es la probabilidad condicionada:

          $display(P(B | A) = (P(A ∩ B)) / P(A))$

          Sustituyendo:

          $display(P(B | A) = (0","6) / (0","8) = 0","75)$

          Por tanto,

          $P(B | A) = 0,75 = 75 \%$
    ]
  ],
  [
    #question()[Un local comercial dispone de dos sistemas de alarma A y B interconectados.  
   La probabilidad de que el sistema A funcione correctamente es 0,9.  
   Además, en la mitad de las ocasiones ha fallado B cuando también había fallado A.  
   Mientras que la probabilidad de que una vez que ha fallado B también lo haya hecho A es 0,25.

   Calcula la probabilidad de que:]
    #questions-columns(
      [#subquestion()[El sistema B no funcione.]
      #solution()[
        Sea:

        *$A$*: “el sistema A funciona”

        *$B$*: “el sistema B funciona”

        Datos:

        $P(A) = 0,9 => P(overline(A)) = 1- P(A) = 1 - 0,9 = 0,1$

        $P(overline(B)|overline(A)) = 0,5$

        $P(overline(A)|overline(B)) = 0,25$

        Nos piden calcular $P(overline(B))$. 

        $display(P(overline(B)|overline(A)) = P(overline(A) ∩ overline(B)) / P(overline(A)) => 
        P(overline(A) ∩ overline(B)) = P(overline(B)|overline(A)) dot P(overline(A)) = 0","5 dot 0","1 = 0","05)$

        $display(P(overline(A)|overline(B)) = P(overline(A) ∩ overline(B)) / P(overline(B)) =>
        P(overline(B)) = P(overline(A) ∩ overline(B)) / P(overline(A)|overline(B)) = (0","05) / (0","25) = 0","2)$

      ]
      ],
      [#subquestion()[No funcione ninguno de los sistemas.]
      #solution()[
        Para calcular la probabilidad de que no funcione ninguno de los sistemas, es decir, $P(overline(A) ∩ overline(B))$, ya la hemos calculado en el apartado anterior:

        $P(overline(A) ∩ overline(B)) = 0,05$ ]
      ],
      [#subquestion()[Funcione al menos uno de los sistemas.]
        #solution()[
          Que funcione al menos uno de los sistemas es el suceso contrario a que no funcione ninguno de los sistemas, por lo que:

          $P("Al menos uno funciona") = 1 - P(overline(A) ∩ overline(B)) = 1 - 0,05 = 0,95$
        ]
      ],
    )
  ],
  [
    #question()[En un congreso de 200 jóvenes profesionales se pasa una encuesta sobre hábitos de contratar viajes por internet. Se observa que 120 son hombres y que, de estos, 84 contratan los viajes por internet, mientras que 24 mujeres no emplean esa vía.

    Eligiendo una persona al azar del congreso, calcula la probabilidad de que:]
    #questions-columns(
      [#subquestion()[No contrate sus viajes por internet.]
        #solution()[
          Tenemos los sucesos:
          - *$H$*: “la persona es un hombre”
          - *$M$*: “la persona es una mujer”
          - *$I$*: “la persona contrata sus viajes por internet”
          Datos:

          $display(P(H) = 120/200 = 3/5)$

          $display(P(M) = 80/200 = 2/5)$

          $display(P(I|H) = 84/120 = 7/10 => P(overline(I)|H) = 1- P(I|H) = 1 - 7/10 = 3/10)$

          $display(P(overline(I)|M) = 24/80 = 3/10)$

          Nos están pidiendo calcular $P(overline(I))$, es decir, la probabilidad de que una persona elegida al azar no contrate sus viajes por internet.

          Podemos usar la formula de la probabilidad total.

          $  P(overline(I)) = P(overline(I)|H)P(H) + P(overline(I)|M)P(M) $

          $ P(overline(I)) = 3/10 dot  3/5 + 3/10 dot 2/5 = 3/10 $
        ]
      ],
      [#subquestion()[Use internet para contratar los viajes, si la persona elegida es una mujer.]
        #solution()[ 
          Para calcular la probabilidad de que una persona contrate sus viajes por internet, dado que es una mujer, es decir, $P(I|M)$, podemos usar la probabilidad complementaria, ya que conocemos $P(overline(I)|M)$:

          $ P(I|M) = 1 - P(overline(I)|M) = 1 - 3/10 = 7/10 $

        ]
      ],
      [#subquestion()[Sea hombre, sabiendo que contrata sus viajes por internet.]
        #solution()[
          Nos están pidiendo calcular $P(H|I)$, es decir, la probabilidad de que una persona sea un hombre, dado que contrata sus viajes por internet.

          Para calcular esta probabilidad, podemos usar la fórmula de Bayes:

          $ P(H|I) = (P(I|H) dot P(H))/P(I) $

          Necesitamos calcular $P(I)$, la probabilidad de que una persona contrate sus viajes por internet. 

          $display(P(I) = 1 - P(overline(I)) = 1 - 3/10 = 7/10)$

          Sustituyendo en la fórmula de Bayes:

          $ P(H|I) = (P(I|H) dot P(H))/P(I) = (7/10 dot 3/5)/(7/10) = 3/5 $
        ]
      ],
    )
  ],
  [
    #question()[Sean A y B dos sucesos de un mismo espacio muestral tales que  
    $P(A)=0,7$, $P(B)=0,6$ y $P(A union B)=0,9$.

   Calcula $P(A | overline(B))$ y $P(B | overline(A))$.]
  ],
  [
    #question()[En una población de cierta especie de cérvidos, el 43% de los adultos son machos y el 57% hembras. Se sabe que el 11% de los machos adultos y el 4% de las hembras adultas sufre alguna afección ocular. Se supone que se captura al azar un ejemplar adulto y se pide:]
    #questions-columns(
      [#subquestion()[Determina la probabilidad de que tenga alguna afección ocular.]
      #solution()[
        Sea:

        *$M$*: “el ejemplar es un macho”

        *$H$*: “el ejemplar es una hembra”

        *$A$*: “el ejemplar padece alguna afección ocular”

        Datos:

        $P(M) = 0,43$

        $P(H) = 0,57$

        $P(A|M) = 0,11$

        $P(A|H) = 0,04$

        Para calcular la probabilidad de que el ejemplar capturado padezca alguna afección ocular, podemos usar la fórmula de la probabilidad total:

        $ P(A) = P(A|M) dot P(M) + P(A|H) dot P(H) $

        $ P(A) = 0,11 dot 0,43 + 0,04 dot 0,57 = 0,0473 + 0,0228 = 0,0701 $]
      ],
      [#subquestion()[Si el ejemplar capturado padeciera una afección ocular, ¿cuál sería la probabilidad de que fuera un macho?]
      #solution()[
        Para calcular la probabilidad de que el ejemplar capturado sea un macho, dado que padece una afección ocular, es decir, $P(M|A)$, podemos usar la fórmula de Bayes:

        $ P(M|A) = (P(A|M) dot P(M))/P(A) $

        Ya hemos calculado $P(A)$ en el apartado anterior, por lo que podemos sustituir los valores:

        $ P(M|A) = (0,11 dot 0,43)/0,0701 approx 0,6762 $
      ]
      ]
    )
  ],
  [
    #question()[El 40% de los sábados Marta va al cine, el 30% va de compras y el 30% restante juega a videojuegos. Cuando va al cine, el 60% de las veces lo hace con sus compañeros de baloncesto. Lo mismo le ocurre el 20% de las veces que va de compras, y el 80% de las veces que juega a videojuegos. Se pide:]
    #questions-columns(
      [#subquestion()[Halla la probabilidad de que el próximo sábado Marta no quede con sus compañeros de baloncesto.]],
      [#subquestion()[Si se sabe que Marta ha quedado con los compañeros de baloncesto, ¿cu´al es la probabilidad de que vayan al cine?]],
    ) 
  ],
  [
    #question()[En una empresa, el 20% de los empleados son matemáticos, el 50% ingenieros y el resto no tienen carrera universitaria.
   Entre los matemáticos, el 40% ocupa un cargo directivo.  
   Entre los ingenieros ese porcentaje es la mitad.  
   Entre el resto de empleados es el 5%.
   Elegido un empleado al azar, se pide:]
   #questions-columns(
     [#subquestion()[Determina la probabilidad de que ocupe un cargo directivo.]],
     [#subquestion()[Si no ocupa un cargo directivo, ¿cuál es la probabilidad de que sea matemático?]],
   )
  ],
  [#question()[En una empresa, el 20 % de los empleados son matemáticos, el 50 % ingenieros y el resto no tienen carrera universitaria.

   Entre los matemáticos, el 40 % ocupa un cargo directivo.  
   Entre los ingenieros ese porcentaje es la mitad.  
   Entre el resto de empleados es el 5 %.]
     #questions-columns(
     [#subquestion()[Determina la probabilidad de que ocupe un cargo directivo.]],
     [#subquestion()[Si no ocupa un cargo directivo, ¿cuál es la probabilidad de que sea matemático?]],
     )
   ],
   [
    #question()[Dados dos sucesos A y B, de un experimento aleatorio, con probabilidades tales que $display(P(A)=4/9)$, $display(P(B)=1/2)$ y $display(P(A union B)=2/3)$:]
    #questions-columns(
      [#subquestion()[Comprobar si A y B son independientes o no.]],
      [#subquestion()[Calcular $P(overline(A)|B)$, donde $overline(A)$ representa el suceso contrario de A]],
    )
  ],
  [
    #question()[En una empresa se han instalado dos sistemas de seguridad, A y B, que funcionan de forma independiente. El sistema A tiene una probabilidad de fallo del 0,01 y el sistema B del 0,02. Calcular la probabilidad de que:]
    #questions-columns(
      [#subquestion()[Falle ambos sistemas.]],
      [#subquestion()[Falle al menos uno de los sistemas.]],
      [#subquestion()[Falle el sistema A pero no el B.]],
    )
  ],
  [
      #question()[Una empresa fabrica móviles de tres marcas distintas: A, N y M. El 20% de los móviles fabricados son de la marca A y el 40% de la marca N. Se decide instalar un software oculto que permita espiar a los usuarios de estos móviles. El software espía se instala en el 15% de los móviles de la marca A, en un 10% de la marca N y en un 12% de los móviles de la marca M. Se pide]
      #questions-columns(
        [#subquestion()[ Determinar la probabilidad de que una persona que compra uno de estos móviles tenga instalado el software espía]],
        [#subquestion()[ Si el móvil de una persona tiene instalado el software espía, calcular la probabilidad de que sea de la marca A.]],
      )
  ],
  [
    #question()[En una bolsa hay 10 caramelos de fresa, 15 de menta y 5 de limón.
    Se sacan dos caramelos de la bolsa, uno tras otro, sin devolver el primero. Se pide:]
    #questions-columns(
      [#subquestion()[Calcula la probabilidad de que ambos sean de fresa.]],
      [#subquestion()[Determina la probabilidad de que el segundo sea de fresa.]],
      [#subquestion()[Sabiendo que el segundo caramelo fue de fresa, calcula la probabilidad de que también lo fuera el primero.]]
    )
  ],
  [
    #question()[El 60% de las ventas en unos grandes almacenes corresponden a artículos con precios rebajados. Los clientes devuelven el 15% de los artículos que compran rebajados, porcentaje que disminuye al 8% si los artículos han sido adquiridos sin rebajas]
   #questions-columns(
     [#subquestion()[Determina el porcentaje global de artículos devueltos.]],
     [#subquestion()[¿Qué porcentaje de artículos devueltos fueron adquiridos con precios rebajados?]],
   )
  ],
  [
    #question()[*EvAU 2021 - Modelo - Opción B*
        Una prueba diagnóstica para una enfermedad da resultado negativo el 5 % de las veces que se aplica a un individuo que la padece y da resultado positivo el 10 % de las veces que se aplica a un individuo que no la padece. Las estadísticas muestran que dicha enfermedad afecta a 50 de cada diez mil personas. Si una persona elegida al azar se somete a la prueba diagnóstica, calcule la probabilidad de:]
    #questions-columns(
      [#subquestion()[Que la prueba dé positivo.]],
      [#subquestion()[Que la persona tenga la enfermedad, si el resultado es positivo.]],
      [#subquestion()[Que la persona no padezca la enfermedad, si el resultado de la prueba ha sido negativo]],
      [#subquestion()[Que el resultado de la prueba diagnóstica sea erróneo.]],
    )
  ],
  [
    #question()[*EvAU 2021 - Ordinaria - Opción B*
     Una estación de medición de calidad del aire mide
      niveles de $N O_2$ y de partículas en suspensión. La probabilidad de que en un día se mida un nivel de $N O_2$ superior al permitido es 0,16. En los días en los que se supera el nivel permitido de $N O_2$, la probabilidad de que se supere el nivel permitido de partículas es 0,33. En los días en los que no se supera el nivel de $N O_2$, la probabilidad de que se supere el nivel de partículas es 0,08.]
    #questions-columns(
      [#subquestion()[¿Cuál es la probabilidad de que en un día se superen los dos niveles permitidos?]],
      [#subquestion()[¿Cuál es la probabilidad de que se supere al menos uno de los dos?]],
      [#subquestion()[ ¿Son independientes los sucesos “en un día se supera el nivel permitido de $N O_2$” y “en un día se supera el nivel permitido de partículas”?]],
      [#subquestion()[¿Cu´al es la probabilidad de que en un día se supere el nivel permitido de $N O_2$, sabiendo que no se ha superado el nivel permitido de partículas?]]
    )
  ],
    [
    #question()[*EvAU 2022 - Modelo - Opción A*
     Una urna contiene 7 bolas blancas y 12 bolas negras.
        Se extrae al azar una bola de la urna y se sustituye por dos del otro color. A continuación, se extrae una segunda bola de la urna. Se pide:]
    #questions-columns(
      [#subquestion()[Calcular la probabilidad de que la segunda bola extraída sea blanca]],
      [#subquestion()[Calcular la probabilidad de que la segunda bola extraída sea de distinto color que la primera.]],
      [#subquestion()[ Calcular la probabilidad de que la primera bola extraída haya sido negra, sabiendo que la segunda bola fue blanca.]],
    )
  ]
)


