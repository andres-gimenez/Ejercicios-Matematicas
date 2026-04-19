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
    number: [Estadística],
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
    #question()[Halla en cada caso la probabilidad indicada.]
    #questions-columns(
      [#subquestion()[$X ~ "Bin"(5, 0, 15)$, $P(X < 4)$]],
      [#subquestion()[$Y ~ "Bin"(7, 0, 65)$, $P(Y ≥ 4)$]],
    )
  ],
  [
    #question()[Se sabe que una máquina produce un 10 % de tornillos defectuosos. En un control de calidad, se seleccionan 6 tornillos al azar. Calcula la probabilidad de que:]
    #questions-columns(
      [#subquestion()[Haya uno defectuoso.]],
      [#subquestion()[Haya dos defectuosos.]],
      [#subquestion()[Al menos haya uno defectuoso.]],
    )
  ],
   [
    #question()[Se lanza cinco veces una moneda trucada de manera que la probabilidad de que salga cara es el triple que la de que salga cruz. Halla la probabilidad de que salgan más caras que cruces.]
  ],
  [
    #question()[Se lanza 9 veces un dado equilibrado. ¿Cuántas veces hay que lanzar el dado para obtener al menos un 6 con probabilidad igual o superior a 0, 9?]
  ],
  [
    #question()[La última novela de un autor ha tenido un gran éxito, hasta el punto de que el 80 % de los lectores ya la han leído. Un grupo de cuatro amigos son aficionados a la lectura.]
    #questions-columns(
      [#subquestion()[¿Cuál es la probabilidad de que en el grupo hayan leído la novela 2 personas?]],
      [#subquestion()[¿Y como máximo dos?]],
    )
  ],
  [
    #question()[Un agente de seguros vende pólizas a cinco personas de la misma edad y que disfrutan de buena salud. Según las tablas actuales, la probabilidad de que una persona en estas condiciones viva 30 años o más es $2/3$. Hállese la probabilidad de que, transcurridos 30 años, vivan:]
    #questions-columns(
      [#subquestion()[Las cinco personas.]],
      [#subquestion()[Al menos tres personas.]],
      [#subquestion()[Exactamente dos personas.]],
    )
  ],
  [
    #question()[Una encuesta reciente revela que en una ciudad el 35 % de los adultos aprueba la gestión del equipo de gobierno municipal, mientras el resto la desaprueba. Si de la población se eligen al azar 8 personas, calcula:]
    #questions-columns(
      [#subquestion()[La probabilidad de que ninguno apruebe la gestión.]],
      [#subquestion()[La probabilidad de que la aprueben exactamente 4.]],
      [#subquestion()[El número esperado de personas que la aprueba.]],
      [#subquestion()[La desviación típica del número de personas que aprueban la gestión.]],
    )
  ],
  [
    #question()[El 2 % de los artículos producidos por una fábrica son defectuosos. Se envió un cargamento de 15 artículos a unos almacenes.]
    #questions-columns(
      [#subquestion()[Calcula la probabilidad de que al menos dos artículos sean defectuosos.]],
      [#subquestion()[Halla el número esperado de artículos defectuosos, la varianza y la desviación típica.]],
      [#subquestion()[Se envía otro cargamento de 10000 artículos a otro almacén. Calcula de nuevo el número esperado de artículos defectuosos, la varianza y la desviación típica.]],
    )
  ],  [
    #question()[Halla en cada caso la probabilidad indicada.]
    #questions-columns(
      [#subquestion()[$Z ~ N(0, 1)$, $P(Z < 2, 72)$]],
      [#subquestion()[$Z ~ N(0, 1)$, $P(Z > 1, 51)$]],
      [#subquestion()[$Z ~ N(0, 1)$, $P(-2 < Z < 1, 92)$]],
      [#subquestion()[$Z ~ N(0, 1)$, $P(-0, 24 ≤ Z < 2, 71)$]],
    )
  ],  [
    #question()[Halla en cada caso la probabilidad indicada.]
    #questions-columns(
      [#subquestion()[$X ~ N(63, 5)$, $P(X > 70)$]],
      [#subquestion()[$X ~ N(176, 15)$, $P(170 < X < 180)$]],
      [#subquestion()[$X ~ N(375, 5)$, $P(X < 350)$]],
    )
  ],  [
    #question()[Un fabricante de un cierto tipo de motores asegura que la duración de su producto tiene una distribución normal de media 10 años de uso con una varianza de 4. Calcula la probabilidad de que un motor elegido al azar dure:]
    #questions-columns(
      [#subquestion()[Más de 12 años.]],
      [#subquestion()[Menos de 9 años.]],
      [#subquestion()[Entre 10 y 11 años.]],
      [#subquestion()[Si un comerciante compra un lote de 100 motores al fabricante, calcula cuántos motores puede esperarse que duren más de 7 años.]],
    )
  ],  [
    #question()[Una máquina produce tuercas cuyo diámetro tiene una distribución normal de media 5 cm y desviación típica 2 mm. No se pueden vender las tuercas que se desvíen 3 mm de la media. De un lote de 500 tuercas, ¿cuántas deben ser descartadas para la venta?]
  ],
    [
    #question()[A una prueba de acceso de una universidad se han presentado 2500 aspirantes para 300 plazas. Las calificaciones que han obtenido los aspirantes tienen una distribución normal de media 6,5 y varianza 4. Calcula la nota de corte para los admitidos.]
  ],
    [
    #question()[Un supermercado ha hecho un estudio sobre el número de productos que escanean sus cajeras, llegando a la conclusión de que dicho número, por cajera y minuto, sigue una ley normal de media 33 y desviación típica 4. Si se elige al azar una cajera, calcula la probabilidad de que escanee en un minuto:]
    #questions-columns(
      [#subquestion()[Más de 35 productos.]],
      [#subquestion()[Menos de 31 productos.]],
      [#subquestion()[Un número de productos comprendido entre 30 y 34.]],
    )
  ],
    [
    #question()[ El 40 % de las personas empadronadas en una ciudad viven en urbanizaciones alejadas del centro. De una muestra de 1500 personas, ¿cuál es la probabilidad de que menos de 580 vivan en urbanizaciones?]
  ],
    [
    #question()[En una población, el 45 % de las personas adultas se declara consumidora de café. Si de la ciudad elegimos una muestra de 250 personas adultas, calcula la probabilidad de que más de la mitad tomen café.]
    #questions-columns(
      [#subquestion()[]],
      [#subquestion()[]],
    )
  ],
  [
    #question()[El primer examen de una oposición es un test consta de una batería de 100 preguntas cada una de las cuales tiene 5 posibles respuestas de las que solo una es correcta. Si una persona responde al azar, calcula la probabilidad de que acierte al menos 25 preguntas.]
  ],
  [
    #question()[*Año 2018 - Modelo - Opción A*
    Sabiendo que el peso de los estudiantes varones de segundo de bachillerato se puede aproximar por una variable aleatoria con distribución normal, de media 74 kg y desviación típica 6 kg, se pide:]
    #questions-columns(
      [#subquestion()[Determinar el porcentaje de estudiantes varones cuyo peso está comprendido entre los 68 y 80 kg.]],
      [#subquestion()[Estimar cuántos de los 1500 estudiantes varones, que se han presentado a las pruebas de la EvAU en una cierta universidad, pesan más de 80 kg.]],
      [#subquestion()[Si se sabe que uno de estos estudiantes pesa más de 76 kg, ¿cuál es la probabilidad de que pese más de 86 kg?]],
    )
  ],
    [
    #question()[*Año 2018 - Ordinaria - Opción B* 
    En una fábrica se elaboran dos tipos de productos: A y B. El 75 % de los productos fabricados son de tipo A y el 25 % de tipo B. Los productos de tipo B salen defectuosos un 5 % de las veces, mientras que los de tipo A salen defectuosos un 2, 5 % de las veces.]
    #questions-columns(
      [#subquestion()[Si se fabrican 5000 productos en un mes, ¿cuántos de ellos se espera que sean defectuosos?]],
      [#subquestion()[Un mes, por motivos logísticos, se cambió la producción, de modo que se fabricaron exclusivamente productos de tipo A. Sabiendo que se fabricaron 6000 unidades, determinar, aproximando la distribución por una normal, la probabilidad de que haya más de 160 unidades defectuosas.]],
    )
  ],
  [
    #question()[*Año 2019 - Modelo - Opción A*
     El examen de oposición a la Administración Local de cierta ciudad consta de 300 preguntas, con respuesta verdadero o falso. Un opositor responde al azar todas las preguntas. Se considera la variable aleatoria $X$ como “número de respuestas acertadas” y se pide:]
    #questions-columns(
      [#subquestion()[Justificar que la variable $X$ se puede aproximar por una normal y obtener los parámetros correspondientes.]],
      [#subquestion()[Utilizando la aproximación por la normal, hallar la probabilidad de que el opositor acierte a lo sumo 130 preguntas y la probabilidad de que acierte exactamente 160 preguntas.]],
    )
  ],
  [
    #question()[*Año 2025 - Ordinaria - Bloque 4* 
    Entre los ciudadanos de 13 años o más de cierto país, el 20% de la población tiene entre 13 y 24 años, el 50% entre 25 y 64 y el resto más de 64 años. Según datos recogidos por el ministerio de cultura de ese país, el 74% de sus ciudadanos de entre 14y 24 años es lector habitual, mientras que el porcentaje decrece hasta el 65,8% entre los de 25 y 64 años y al 53,7% entre los mayores de 64 años. Elegido un ciudadano al azar del país en cuestión de 14 años o más, se pide:]
    #questions-columns(
      [#subquestion()[Calcular la probabilidad de que sea lector habitual.]
      #solution()[
        Tenemos los sucesos:
        - $A$: el ciudadano tiene entre 14 y 24 años.
        - $B$: el ciudadano tiene entre 25 y 64 años.
        - $C$: el ciudadano tiene más de 64 años.
        - $L$: el ciudadano es lector habitual.
      
      Con las probabilidades que nos da el problema:
      - $P(A) = 0,2$
      - $P(B) = 0,5$
      - $P(C) = 0,3$
      - $P(L | A) = 0,74$
      - $P(L | B) = 0,658$
      - $P(L | C) = 0.537$
  
      Podemos calcular la probabilidad de que un ciudadano sea lector habitual utilizando la fórmula de la probabilidad total:
      
      $P(L) = P(L | A)P(A) + P(L | B)P(B) + P(L | C)P(C) = \ 0,74 dot 0,2) + 0,658 dot 0,5 + 0,537 dot 0,3 = 0,148 + 0,329 + 0,1611 = 0,6381$
      ]
      ],
      [#subquestion()[Si no es lector habitual, calcula la probabilidad de que tenga entre 25 y 64 años.]
      #solution()[
        Nos están pidiendo calcular $P(B | overline(L))$  

        Para calcular esta probabilidad, necesitamos calcular primero la probabilidad de que un ciudadano no sea lector habitual, que es el complemento de la probabilidad de que sea lector habitual:
        
        $P(overline(L)) = 1 - P(L) = 1 - 0,6381 = 0,3619$
        
        Ahora podemos utilizar la fórmula de Bayes para calcular la probabilidad de que un ciudadano tenga entre 25 y 64 años dado que no es lector habitual:
        
        $display(P(B | overline(L)) = (P(overline(L) | B) P(B))/P(overline(L)))$
        
        Sabemos que $P(overline(L) | B) = 1 - P(L | B) = 1 - 0,658 = 0,342$. 
        
        Por lo tanto:
        
        $display(P(B | overline(L)) = (0","342 dot 0","5)/(0","3619) = (0","171)/(0","3619) approx 0","4728)$]
      ]
    )
  ]
)