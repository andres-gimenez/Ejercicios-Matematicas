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
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  show-solutions: false,
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Halla en cada caso la probabilidad indicada.]
    #questions-columns(
      [#subquestion()[$X ~ "Bin"(5; 0,15)$, $P(X < 4)$]
      #solution()[
        La variable aleatoria $X$ que representa el número de éxitos sigue una distribución binomial con parámetros $n = 5$ y $p = 0,15$ $~ B(5; "0,15")$.

        La probabilidad de que $X < 4$ es la suma de las probabilidades de que $X$ tome los valores 0, 1, 2 o 3:

        $display(P(X < 4) = P(X = 0) + P(X = 1) + P(X = 2) + P(X = 3))$

        Calculamos cada una de estas probabilidades utilizando la fórmula de la distribución binomial:

        $display(P(X = 0) = binom(5, 0) ("0,15")^0 (1-"0,15")^5 =binom(5, 0) dot ("0,15")^0 dot ("0,85")^5 = 5!/(0! dot 5!) dot "1" dot "0,4437053125" = "0,4437053125")$

        $display(P(X = 1) = binom(5, 1) ("0,15")^1 (1-"0,15")^4 =binom(5, 1) dot ("0,15")^1 dot ("0,85")^4 = 5!/(1! dot 4!) dot "0,15" dot "0,52200625" = "0,3915046875")$

        $display(P(X = 2) = binom(5, 2) ("0,15")^2 (1-"0,15")^3 =binom(5, 2) dot ("0,0225") dot ("0,85")^3 = 5!/(2! dot 3!) dot "0,0225" dot "0,614125" = "0,1157628125")$

        $display(P(X = 3) = binom(5, 3) ("0,15")^3 (1-"0,15")^2 =binom(5, 3) dot ("0,003375") dot ("0,7225") = 5!/(3! dot 2!) dot "0,003375" dot "0,7225" = "0,028125")$
      ] 
      ],
      [#subquestion()[$Y ~ "Bin"(7; 0",65")$, $P(Y ≥ 4)$]
      #solution()[
        La variable aleatoria $Y$ que representa el número de éxitos sigue una distribución binomial con parámetros $n = 7$ y $p = 0,65$ $~ B(7; 0,65)$.

        La probabilidad de que $Y ≥ 4$ es la suma de las probabilidades de que $Y$ tome los valores 4, 5, 6 o 7:

        $display(P(Y ≥ 4) = P(Y = 4) + P(Y = 5) + P(Y = 6) + P(Y = 7))$

        Calculamos cada una de estas probabilidades utilizando la fórmula de la distribución binomial:

        $display(P(Y = 4) = binom(7, 4) (0,65)^4 (1-0,65)^3 =binom(7, 4) dot (0,17850625) dot (0,042875) = \ = 7!/(4! dot 3!) dot (0,17850625) dot (0,042875) = "0,311169")$

        $display(P(Y = 5) = binom(7, 5) (0,65)^5 (1-0,65)^2 =binom(7, 5) dot (0,1160290625) dot (0,1225) = \ = 7!/(5! dot 2!) dot (0,1160290625) dot (0,1225) = "0,290303")$

        $display(P(Y = 6) = binom(7, 6) (0,65)^6 (1-0,65)^1 =binom(7, 6) dot (0,075418890625) dot (0,35) = \ = 7!/(6! dot 1!) dot (0,075418890625) dot (0,35) = "0,161061")$

        $display(P(Y = 7) = binom(7, 7) (0,65)^7 (1-0,65)^0 =binom(7, 7) dot (0,04902227890625) dot (1) = \ =7!/(7! dot 0!) dot (0,04902227890625) dot (1) = "0,049022")$  ]
       ],
    )
  ],
  [
    #question()[Se sabe que una máquina produce un 10% de tornillos defectuosos. En un control de calidad, se seleccionan 6 tornillos al azar. Calcula la probabilidad de que:]
    #questions-columns(
      [#subquestion()[Haya uno defectuoso.]
      #solution()[
        Si tomamos encontrar un tornillo defectuoso como un éxito, entonces la variable aleatoria $X$ que representa el número de tornillos defectuosos sigue una distribución binomial con parámetros $n = 6$ y $p = 0,1$ $~ B(6; "0,1")$.

        La probabilidad de que haya exactamente un tornillo defectuoso es:

        $display(P(X = 1) = binom(6, 1) ("0,1")^1 (1-"0,1")^5 =binom(6, 1) dot (0,1)^1 dot (0,9)^5 = 6!/(1! dot 5!) dot "0,1" dot "0,59049" = "0,354294")$
      ]
      ],
      [#subquestion()[Haya dos defectuosos.]
      #solution()[
        La probabilidad de que haya exactamente dos tornillos defectuosos es:

        $display(P(X = 2) = binom(6, 2) ("0,1")^2 (1-"0,1")^4 =binom(6, 2) dot (0,1)^2 dot (0,9)^4 = 6!/(2! dot 4!) dot "0,01" dot "0,6561" = "0,098415")$]
      ],
      [#subquestion()[Al menos haya uno defectuoso.]
      #solution()[
        La probabilidad de que haya al menos un tornillo defectuoso es el complemento de la probabilidad de que no haya ningún tornillo defectuoso:

        $display(P(X ≥ 1) = 1 - P(X = 0) = 1 - binom(6, 0) ("0,1")^0 (1-"0,1")^6 = 1 - binom(6, 0) dot (0,1)^0 dot (0,9)^6 = \ =
        1 - "0,531441" = "0,468559")$]
      ],
    )
  ],
  [
    #question()[Se lanza cinco veces una moneda trucada de manera que la probabilidad de que salga cara es el triple que la de que salga cruz. Halla la probabilidad de que salgan más caras que cruces.]
    #solution()[
      Si la probabilidad de que salga cruz es $p$, entonces la probabilidad de que salga cara es $3p$. Como la suma de las probabilidades debe ser 1, tenemos:

      $display(p + 3p = 1)$

      $display(4p = 1)$

      $display(p = "0,25")$

      Por lo tanto, la probabilidad de que salga cara es $3p = "0,75"$.

      La variable aleatoria $X$ que representa el número de caras sigue una distribución binomial con parámetros $n = 5$ y $p = "0,75"$ $~ B(5; "0,75")$.

      La probabilidad de que salgan más caras que cruces es la probabilidad de que salgan al menos 3 caras:

      $display(P(X ≥ 3) = P(X = 3) + P(X = 4) + P(X = 5))$

      Calculamos cada una de estas probabilidades utilizando la fórmula de la distribución binomial:

      $display(P(X = 3) = binom(5, 3) ("0,75")^3 (1-"0,75")^2 =binom(5, 3) dot (0,75)^3 dot (0,25)^2 = 5!/(3! dot 2!) dot "0,421875" dot "0,0625" = "0,263672")$

      $display(P(X = 4) = binom(5, 4) ("0,75")^4 (1-"0,75")^1 =binom(5, 4) dot (0,75)^4 dot (0,25)^1 = 5!/(4! dot 1!) dot "0,31640625" dot "0,25" = "0,395508")$

      $display(P(X = 5) = binom(5, 5) ("0,75")^5 (1-"0,75")^0 =binom(5, 5) dot (0,75)^5 dot (0,25)^0 = 5!/(5! dot 0!) dot "0,2373046875" dot "1" = "0,237305")$

      Por lo tanto:

      $display(P(X ≥ 3) = "0,263672" + "0,395508" + "0,237305" = "0,896485")$ 
    ]
  ],
  [
    #question()[Se lanza 9 veces un dado equilibrado. ¿Cuántas veces hay que lanzar el dado para obtener al menos un 6 con probabilidad igual o superior a 0, 9?]
    #solution()[
      La probabilidad de obtener al menos un 6 en $n$ lanzamientos de un dado es el complemento de la probabilidad de no obtener ningún 6:

      $display(P(X ≥ 1) = 1 - P(X = 0) = 1 - binom(n, 0) (1/6)^0 (5/6)^n = 1 - (5/6)^n)$

      Queremos que esta probabilidad sea igual o superior a 0,9:

      $display(1 - (5/6)^n ≥ "0,9")$

      $display((5/6)^n ≤ "0,1")$

      Tomamos logaritmos en ambos lados para despejar $n$:

      $display(n log(5/6) ≤ log("0,1"))$

      $display(n ≥ log("0,1")/log(5/6))$

      Calculando el valor numérico:

      $display(n ≥ log("0,1")/log(5/6) ≈ "13,51")$

      Por lo tanto, hay que lanzar el dado al menos 14 veces para obtener al menos un 6 con una probabilidad igual o superior a 0,9.
    ]
  ],
  [
    #question()[La última novela de un autor ha tenido un gran éxito, hasta el punto de que el 80% de los lectores ya la han leído. Un grupo de cuatro amigos son aficionados a la lectura.]
    #questions-columns(
      [#subquestion()[¿Cuál es la probabilidad de que en el grupo hayan leído la novela 2 personas?]
      #solution()[
        La variable aleatoria $X$ que representa el número de personas que han leído la novela sigue una distribución binomial con parámetros $n = 4$ y $p = 0,8$ $~ B(4; "0,8")$.

        La probabilidad de que exactamente 2 personas hayan leído la novela es:

        $display(P(X = 2) = binom(4, 2) ("0,8")^2 (1-"0,8")^2 =binom(4, 2) dot ("0,8")^2 dot ("0,2")^2 = 4!/(2! dot 2!) dot "0,64" dot "0,04" = "0,1536")$]
      ],
      [#subquestion()[¿Y como máximo dos?]
      #solution()[
        La probabilidad de que como máximo 2 personas hayan leído la novela es la suma de las probabilidades de que hayan leído exactamente 0, 1 o 2 personas:

        $display(P(X ≤ 2) = P(X = 0) + P(X = 1) + P(X = 2))$

        Calculamos cada una de estas probabilidades utilizando la fórmula de la distribución binomial:

        $display(P(X = 0) = binom(4, 0) ("0,8")^0 (1-"0,8")^4 =binom(4, 0) dot ("0,8")^0 dot ("0,2")^4 = 4!/(0! dot 4!) dot "1" dot "0,0016" = "0,0016")$

        $display(P(X = 1) = binom(4, 1) ("0,8")^1 (1-"0,8")^3 =binom(4, 1) dot ("0,8")^1 dot ("0,2")^3 = 4!/(1! dot 3!) dot "0,8" dot "0,008" = "0,0256")$

        Ya hemos calculado $P(X = 2)$ en el subapartado anterior y es igual a "0,1536".

        Por lo tanto:

        $display(P(X ≤ 2) = "0,0016" + "0,0256" + "0,1536" = "0,1808")$ ]
      ],
    )
  ],
  [
    #question()[Un agente de seguros vende pólizas a cinco personas de la misma edad y que disfrutan de buena salud. Según las tablas actuales, la probabilidad de que una persona en estas condiciones viva 30 años o más es $frac(2, 3, style:"horizontal")$. Hállese la probabilidad de que, transcurridos 30 años, vivan:]
    #questions-columns(
      [#subquestion()[Las cinco personas.]
      #solution()[
        La variable aleatoria $X$ que representa el número de personas que viven 30 años o más sigue una distribución binomial con parámetros $n = 5$ y $display(p = frac(2, 3)~ B(5; frac(2, 3)))$.

        La probabilidad de que las cinco personas vivan 30 años o más es:

        $display(P(X = 5) = binom(5, 5) (frac(2, 3))^5 (1-frac(2, 3))^0 =binom(5, 5) dot (frac(2, 3))^5 dot (frac(1, 3))^0 = 5!/(5! dot 0!) dot (frac(32, 243)) dot "1" = frac(32, 243) approx "0,1317")$]
      ],
      [#subquestion()[Al menos tres personas.]
      #solution()[
        La probabilidad de que al menos tres personas vivan 30 años o más es la suma de las probabilidades de que vivan exactamente 3, 4 o 5 personas:

        $display(P(X ≥ 3) = P(X = 3) + P(X = 4) + P(X = 5))$

        Calculamos cada una de estas probabilidades utilizando la fórmula de la distribución binomial:

        $display(P(X = 3) = binom(5, 3) (frac(2, 3))^3 (1-frac(2, 3))^2 =binom(5, 3) dot (frac(8, 27)) dot (frac(1, 9)) = 5!/(3! dot 2!) dot (frac(8, 27)) dot (frac(1, 9)) = frac(40, 729) approx "0,0548")$

        $display(P(X = 4) = binom(5, 4) (frac(2, 3))^4 (1-frac(2, 3))^1 =binom(5, 4) dot (frac(16, 81)) dot (frac(1, 3)) = 5!/(4! dot 1!) dot (frac(16, 81)) dot (frac(1, 3)) = frac(80, 729) approx "0,1097")$

        Ya hemos calculado $P(X = 5)$ en el subapartado anterior y es igual a frac(32,243).

        Por lo tanto:

        $display(P(X ≥ 3) = frac(40,729) + frac(80,729) + frac(32,243) approx "0,2962")$

      ]
      ],
      [#subquestion()[Exactamente dos personas.]
      #solution()[
        La probabilidad de que exactamente dos personas vivan 30 años o más es:

        $display(P(X = 2) = binom(5, 2) (frac(2, 3))^2 (1-frac(2, 3))^3 =binom(5, 2) dot (frac(4, 9)) dot (frac(1, 27)) = 5!/(2! dot 3!) dot (frac(4, 9)) dot (frac(1, 27)) = frac(80, 729) approx "0,1097")$]
      ],
    )
  ],
  [
    #question()[Una encuesta reciente revela que en una ciudad el 35% de los adultos aprueba la gestión del equipo de gobierno municipal, mientras el resto la desaprueba. Si de la población se eligen al azar 8 personas, calcula:]
    #questions-columns(
      [#subquestion()[La probabilidad de que ninguno apruebe la gestión.]],
      [#subquestion()[La probabilidad de que la aprueben exactamente 4.]],
      [#subquestion()[El número esperado de personas que la aprueba.]],
      [#subquestion()[La desviación típica del número de personas que aprueban la gestión.]],
    )
  ],
  [
    #question()[El 2% de los artículos producidos por una fábrica son defectuosos. Se envió un cargamento de 15 artículos a unos almacenes.]
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
      [#subquestion()[$X ~ N(63, 5)$, $P(X > 70)$]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(X > 70) = P (Z < (70- 63)/(5)) = P(z < 1,4) = Phi(1,4) = "0,91924" )$
      ] 
      ],
      [#subquestion()[$X ~ N(176, 15)$, $P(170 < X < 180)$]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(170 < X < 180) = P ((170- 176)/(15) < Z < (180- 176)/(15)) = P(-0,4 < Z < 0,27) = \ =
        Phi(0,27) - Phi(-0,4) = Phi(0,27) - (1 - Phi(0,4)) = 
        Phi(0,27) - 1 + Phi(0,4) = Phi(0,27) + Phi(0,4) - 1 = \ =
        0.60642 + 0.65542 - 1 = 0.26184)$]
      ],
      [#subquestion()[$X ~ N(375, 5)$, $P(X < 350)$]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(X < 350) = P (Z < (350- 375)/(5)) = P(Z < -5) = Phi(-5) = 1 -Phi(5) approx 1- 1 = "0")$
      ]
      ]
    )
  ],  [
    #question()[Un fabricante de un cierto tipo de motores asegura que la duración de su producto tiene una distribución normal de media 10 años de uso con una varianza de 4. Calcula la probabilidad de que un motor elegido al azar dure:]
    #questions-columns(
      [#subquestion()[Más de 12 años.]
      #solution()[
        Se trata de una variable aleatoria $X$ que sigue una distribución normal con media $mu = 10$ y desviación típica $sigma = 2 ~ N(10, 2)$.

        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(X > 12) = P (Z > (12- 10)/(2)) = P(Z > 1) = 1 - Phi(1) = 1 - "0,84134" = "0,15866")$]
      ],
      [#subquestion()[Menos de 9 años.]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(X < 9) = P (Z < (9- 10)/(2)) = P(Z < -0,5) = Phi(-0,5) = 1 -Phi(0,5) = 1- "0,69146" = "0,30854")$]
      ],
      [#subquestion()[Entre 10 y 11 años.]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(10 < X < 11) = P ((10- 10)/(2) < Z < (11- 10)/(2)) = P(0 < Z < 0,5) = \ =
        Phi(0,5) - Phi(0) = "0,69146" - "0,5" = "0,19146")$]
      ],
      [#subquestion()[Si un comerciante compra un lote de 100 motores al fabricante, calcula cuántos motores puede esperarse que duren más de 7 años.]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(X > 7) = P (Z > (7- 10)/(2)) = P(Z > -1,5) = Phi(1,5) = "0,9332")$

        Por tanto, el número esperado de motores que duren más de 7 años es:

        $display(E(X) = n dot P(X > 7) = 100 dot "0,9332" = "93,32")$
      ]
      ]
    )
  ],  [
    #question()[Una máquina produce tuercas cuyo diámetro tiene una distribución normal de media $5 "cm"$ y desviación típica $2 "mm"$. No se pueden vender las tuercas que se desvíen $3 "mm"$ de la media. De un lote de 500 tuercas, ¿cuántas deben ser descartadas para la venta?]
    #solution()[
      Se trata de una variable aleatoria $X$ que representa el diámetro de las tuercas y que sigue una distribución normal con media $mu = 5 "cm"$ y desviación típica $sigma = 2 "mm" = 0,2" cm"$ $~ N(5; "0,04")$.

      Primero tipificamos la variable aleatoria $X$ que representa el diámetro de las tuercas para poder utilizar la tabla de la distribución binomial:

      $display(Z = (X - mu)/sigma)$

      La probabilidad de que una tuerca sea descartada es la probabilidad de que su diámetro se desvíe más de 3 mm de la media, es decir, que sea menor que $"4,7" "cm"$ o mayor que $"5,3" "cm"$:

      $display(P(X < 4,7) + P(X > 5,3) = P(Z < (4,7- 5)/(0,2)) + P(Z > (5,3- 5)/(0,2)))$

      $display(P(Z < -1,5) + P(Z > 1,5) = Phi(-1,5) + (1 - Phi(1,5)) = (1 - Phi(1,5)) + (1 - Phi(1,5)) = 2 dot (1 - Phi(1,5)) = 2 dot (1 - "0,9332") = "0,1336")$

      Por tanto, el número esperado de tuercas que deben ser descartadas para la venta es:

      $display(E(X) = n dot P(X "es descartada") = 500 dot "0,1336" = "66,8")$

      Por lo tanto, se deben descartar aproximadamente 67 tuercas para la venta.]
    ],
    [
    #question()[A una prueba de acceso de una universidad se han presentado 2500 aspirantes para 300 plazas. Las calificaciones que han obtenido los aspirantes tienen una distribución normal de media 6,5 y varianza 4. Calcula la nota de corte para los admitidos.]
    #solution()[
      Se trata de una variable aleatoria $X$ que representa las calificaciones de los aspirantes y que sigue una distribución normal con media $mu = 6,5$ y varianza $sigma^2 = 4$ $~ N(6,5; 2)$.

      Para calcular la nota de corte para los admitidos, necesitamos encontrar el valor de $x$ tal que el 300 aspirantes con las calificaciones más altas tengan una calificación mayor o igual a $x$. Si hay 300 plazas, significa que hay 2200 aspirantes que no serán admitidos, por lo que el percentil que corresponde a la nota de corte es el percentil 88 (ya que el 88% de los aspirantes tendrán una calificación menor que la nota de corte).

      Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

      $display(Z = (X - mu)/sigma)$

      Buscamos en la tabla de la distribución normal el valor de $Z$ correspondiente al percentil $88$ (el valor más cercano a $0,88$), que es aproximadamente $Z = 1,175$.

      Lo que significa que $P(Z < 1,175) = 0,88$

      Ahora despejamos $x$ utilizando la fórmula de tipificación:

      $display("1,175" = (x - "6,5")/2)$

      $display(x - "6,5" = "1,175" dot "2")$

      $display(x = "6,5" + "2,35")$

      $display(x = "8,85")$

      Por lo tanto, la nota de corte para los admitidos es aproximadamente *8,85*.]
    ],
    [
    #question()[Un supermercado ha hecho un estudio sobre el número de productos que escanean sus cajeras, llegando a la conclusión de que dicho número, por cajera y minuto, sigue una ley normal de media 33 y desviación típica 4. Si se elige al azar una cajera, calcula la probabilidad de que escanee en un minuto:]
    #questions-columns(
      [#subquestion()[Más de 35 productos.]
      #solution()[
        Se trata de una variable aleatoria $X$ que representa el número de productos que escanean las cajeras por minuto y que sigue una distribución normal con media $mu = 33$ y desviación típica $sigma = 4$ $~ N(33; 4)$.

        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(X > 35) = P (Z > (35- 33)/(4)) = P(Z > 0,5) = 1 - Phi(0,5) = 1 - "0,69146" = "0,30854")$]
      ],
      [#subquestion()[Menos de 31 productos.]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(X < 31) = P (Z < (31- 33)/(4)) = P(Z < -0,5) = Phi(-0,5) = 1 -Phi(0,5) = \ =1- "0,69146" = "0,30854")$]
      ],
      [#subquestion()[Un número de productos comprendido entre 30 y 34.]
      #solution()[
        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución binomial:

        $display(Z = (X - mu)/sigma)$

        $display(P(30 < X < 34) = P ((30- 33)/(4) < Z < (34- 33)/(4)) = P(-0,75 < Z < 0,25) = \ = Phi(0,25) - Phi(-0,75) = "0,59871" - "0,22663" = "0,37208")$]
      ],
    )
  ],
    [
    #question()[ El 40% de las personas empadronadas en una ciudad viven en urbanizaciones alejadas del centro. De una muestra de 1500 personas, ¿cuál es la probabilidad de que menos de 580 vivan en urbanizaciones?]
    #solution()[
      La variable aleatoria $X$ que representa el número de personas que viven en urbanizaciones sigue una distribución binomial con parámetros $n = 1500$ y $p = 0,4$ $~ B(1500; 0,4)$.

      Para calcular la probabilidad de que menos de 580 personas vivan en urbanizaciones, podemos utilizar la aproximación por la normal a la distribución binomial, ya que $n$ es grande y $p$ no es cercano a 0 ni a 1.

      Primero calculamos la media y la desviación típica de la distribución binomial:

      $display(mu = n dot p = 1500 dot "0,4" = 600)$

      $display(sigma = sqrt(n dot p dot (1-p)) = sqrt(1500 dot "0,4" dot "0,6") = sqrt(360) ≈ "18,97")$

      Ahora tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución normal:

      $display(Z = (X - mu)/sigma)$

      Queremos calcular $P(X < 580)$, por lo que tipificamos el valor de 580:

      $display(P(X < 580) = P(Z < (580 - 600)/"18,97") = P(Z < -1,05) = 1 - P(Z > 1,05) = 1 - (1 - Phi(1,05)) = Phi(1,05) = "0,85314")$
     ]
  ],
    [
    #question()[En una población, el 45% de las personas adultas se declara consumidora de café. Si de la ciudad elegimos una muestra de 250 personas adultas, calcula la probabilidad de que más de la mitad tomen café.]
    #solution()[
      La variable aleatoria $X$ que representa el número de personas adultas que toman café sigue una distribución binomial con parámetros $n = 250$ y $p = 0,45$ $~ B(250; "0,45")$.

      Para calcular la probabilidad de que más de la mitad tomen café, es decir, que más de 125 personas tomen café, podemos utilizar la aproximación por la normal a la distribución binomial, ya que $n$ es grande y $p$ no es cercano a 0 ni a 1.

      Primero calculamos la media y la desviación típica de la distribución binomial:

      $display(mu = n dot p = 250 dot "0,45" = "112,5")$

      $display(sigma = sqrt(n dot p dot (1-p)) = sqrt(250 dot "0,45" dot "0,55") = sqrt("61,875") ≈ "7,87")$

      Podemos aproximar la distribución binomial por la normal $N("112,5"; "7,87")$



      Queremos calcular $P(X > 125)$, por lo que tipificamos el valor de 125:

      $display(P(X > 125) = P(Z > (125 - "112,5")/"7,87") = P(Z > 1,59) = 1 - Phi(1,59) ≈ 1 - "0,9441" = "0,0559")$
     ]
  ],
  [
    #question()[El primer examen de una oposición es un test consta de una batería de 100 preguntas cada una de las cuales tiene 5 posibles respuestas de las que solo una es correcta. Si una persona responde al azar, calcula la probabilidad de que acierte al menos 25 preguntas.]
    #solution()[
      La variable aleatoria $X$ que representa el número de respuestas acertadas sigue una distribución binomial con parámetros $n = 100$ y $p = 0,2$ $~ B(100; "0,2")$.

      Para calcular la probabilidad de que acierte al menos 25 preguntas, es decir, que acierte 25 o más preguntas, podemos utilizar la aproximación por la normal a la distribución binomial, ya que $n$ es grande y $p$ no es cercano a 0 ni a 1.

      Primero calculamos la media y la desviación típica de la distribución binomial:

      $display(mu = n dot p = 100 dot "0,2" = 20)$

      $display(sigma = sqrt(n dot p dot (1-p)) = sqrt(100 dot "0,2" dot "0,8") = sqrt(16) = 4)$

      Ahora tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución normal:

      $display(Z = (X - mu)/sigma)$

      Queremos calcular $P(X ≥ 25)$, por lo que tipificamos el valor de 25:

      $display(P(X ≥ 25) = P(Z > (25 - 20)/4) = P(Z > 1,25) = 1 - Phi(1,25) ≈ 1 - "0,89435" = "0,10565")$
     ]
  ],
  [
    #question()[*Año 2018 - Modelo - Opción A*
    Sabiendo que el peso de los estudiantes varones de segundo de bachillerato se puede aproximar por una variable aleatoria con distribución normal, de media 74 kg y desviación típica 6 kg, se pide:]
    #questions-columns(
      [#subquestion()[Determinar el porcentaje de estudiantes varones cuyo peso está comprendido entre los 68 y 80 kg.]
      #solution()[
        Se trata de una variable aleatoria $X$ que representa el peso de los estudiantes varones de segundo de bachillerato y que sigue una distribución normal con media $mu = 74$ kg y desviación típica $sigma = 6$ kg $~ N(74; 6)$.

        Primero tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución normal:

        $display(Z = (X - mu)/sigma)$

        Queremos calcular el porcentaje de estudiantes varones cuyo peso está comprendido entre los 68 y 80 kg, es decir, queremos calcular $P(68 < X < 80)$:

        $display(P(68 < X < 80) = P((68 - 74)/6 < Z < (80 - 74)/6) = P(-1 < Z < 1) = Phi(1) - Phi(-1) = "0,84134" - "0,15866" = "0,68268")$

        Por lo tanto, el porcentaje de estudiantes varones cuyo peso está comprendido entre los 68 y 80 kg es aproximadamente *68,27%*.]
      ],
      [#subquestion()[Estimar cuántos de los 1500 estudiantes varones, que se han presentado a las pruebas de la EvAU en una cierta universidad, pesan más de 80 kg.]
      #solution()[
        Para estimar cuántos de los 1500 estudiantes varones pesan más de 80 kg, primero calculamos la probabilidad de que un estudiante pese más de 80 kg:

        $display(P(X > 80) = P(Z > (80 - 74)/6) = P(Z > 1) = 1 - Phi(1) = 1 - "0,84134" = "0,15866")$

        Ahora multiplicamos esta probabilidad por el número total de estudiantes para obtener el número esperado de estudiantes que pesan más de 80 kg:

        $display(E(X) = n dot P(X > 80) = 1500 dot "0,15866" = "237,99")$

        Por lo tanto, se estima que aproximadamente *238* estudiantes varones pesan más de 80 kg.]
      ],
      [#subquestion()[Si se sabe que uno de estos estudiantes pesa más de 76 kg, ¿cuál es la probabilidad de que pese más de 86 kg?]
      #solution()[
        Para calcular la probabilidad de que un estudiante pese más de 86 kg dado que pesa más de 76 kg, necesitamos calcular la probabilidad condicional $P(X > 86 | X > 76)$.

        Primero calculamos la probabilidad de que un estudiante pese más de 76 kg:

        $display(P(X > 76) = P(Z > (76 - 74)/6) = P(Z > 0,33) = 1 - Phi(0,33) ≈ 1 - "0,6293" = "0,3707")$

        Luego calculamos la probabilidad de que un estudiante pese más de 86 kg:

        $display(P(X > 86) = P(Z > (86 - 74)/6) = P(Z > 2) = 1 - Phi(2) = 1 - "0,97725" = "0,02275")$

        Ahora podemos calcular la probabilidad condicional utilizando la fórmula:

        $display(P(X > 86 | X > 76) =  frac(P({X > 86} inter {X > 76}), P(X > 76)) = frac(P(X > 86), P(X > 76)) = frac("0,02275", "0,3707") ≈ "0,0614")$

        Por lo tanto, la probabilidad de que un estudiante pese más de 86 kg dado que pesa más de 76 kg es aproximadamente *6,14%*.]
      ],
    )
  ],
    [
    #question()[*Año 2018 - Ordinaria - Opción B* 
    En una fábrica se elaboran dos tipos de productos: A y B. El 75% de los productos fabricados son de tipo A y el 25% de tipo B. Los productos de tipo B salen defectuosos un 5% de las veces, mientras que los de tipo A salen defectuosos un 2,5% de las veces.]
    #questions-columns(
      [#subquestion()[Si se fabrican 5000 productos en un mes, ¿cuántos de ellos se espera que sean defectuosos?]
      #solution()[
        Podemos utilizar la fórmula de la probabilidad total para calcular la probabilidad de que un producto sea defectuoso:

        $display(P(D) = P(D | A)P(A) + P(D | B)P(B))$

        $display(P(D) = "0,025" dot "0,75" + "0,05" dot "0,25" = "0,01875" + "0,0125" = "0,03125")$

         Luego, para calcular el número esperado de productos defectuosos, multiplicamos la probabilidad de que un producto sea defectuoso por el número total de productos fabricados:

        $display(E("defectuosos") = n dot P(D) = 5000 dot "0,03125" = "156,25")$  

          Por lo tanto, se espera que aproximadamente *157* productos sean defectuosos en un mes.]
      ],
      [#subquestion()[Un mes, por motivos logísticos, se cambió la producción, de modo que se fabricaron exclusivamente productos de tipo A. Sabiendo que se fabricaron 6000 unidades, determinar, aproximando la distribución por una normal, la probabilidad de que haya más de 160 unidades defectuosas.]
      #solution()[
        En este caso, la variable aleatoria $X$ que representa el número de productos defectuosos sigue una distribución binomial con parámetros $n = 6000$ y $p = 0,025$ $~ B(6000; "0,025")$.

        Para calcular la probabilidad de que haya más de 160 unidades defectuosas, es decir, que $X > 160$, podemos utilizar la aproximación por la normal a la distribución binomial, ya que $n$ es grande y $p$ no es cercano a 0 ni a 1.

        Primero calculamos la media y la desviación típica de la distribución binomial:

        $display(mu = n dot p = 6000 dot "0,025" = "150")$

        $display(sigma = sqrt(n dot p dot (1-p)) = sqrt(6000 dot "0,025" dot "0,975") = sqrt("146,25") ≈ "12,09")$

        Podemos aproximar la distribución binomial por la normal $N("150"; "12,09")$.

        Ahora tipificamos la variable aleatoria $X$ para poder utilizar la tabla de la distribución normal:

        $display(Z = (X - mu)/sigma)$

        Queremos calcular $P(X > 160)$, por lo que tipificamos el valor de 160:

        $display(P(X > 160) = P(Z > (160 - "150")/"12,09") = P(Z > 0,83) = 1 - Phi(0,83) ≈ 1 - "0,7967" = "0,2033")$]
      ],
    )
  ],
  [
    #question()[*Año 2019 - Modelo - Opción A*
     El examen de oposición a la Administración Local de cierta ciudad consta de 300 preguntas, con respuesta verdadero o falso. Un opositor responde al azar todas las preguntas. Se considera la variable aleatoria $X$ como “número de respuestas acertadas” y se pide:]
    #questions-columns(
      [#subquestion()[Justificar que la variable $X$ se puede aproximar por una normal y obtener los parámetros correspondientes.]
      #solution()[
        La variable aleatoria $X$ que representa el número de respuestas acertadas sigue una distribución binomial con parámetros $n = 300$ y $p = 0,5$ $~ B(300; "0,5")$.

        Para justificar que la variable $X$ se puede aproximar por una normal, debemos verificar que se cumplen las condiciones para la aproximación por la normal a la distribución binomial:

        1. $n$ es grande: En este caso, $n = 300$, lo cual es suficientemente grande para aplicar la aproximación por la normal.
        2. $p$ no es cercano a 0 ni a 1: En este caso, $p = 0,5$, lo cual no es cercano a 0 ni a 1.

        Por lo tanto, podemos aproximar la distribución binomial por una normal.

        Ahora calculamos los parámetros de la distribución normal que se aproxima a la distribución binomial:

        - La media de la distribución normal es igual a la media de la distribución binomial:

          $display(mu = n dot p = 300 dot "0,5" = "150")$

        - La desviación típica de la distribución normal es igual a la desviación típica de la distribución binomial:

          $display(sigma = sqrt(n dot p dot (1-p)) = sqrt(300 dot "0,5" dot "0,5") = sqrt("75") ≈ "8,66")$

        Por lo tanto, podemos aproximar la variable aleatoria $X$ por una variable aleatoria con distribución normal de media *150* y desviación típica aproximadamente *8,66*, es decir, $X ~ N(150; "8,66")$.]
      ],
      [#subquestion()[Utilizando la aproximación por la normal, hallar la probabilidad de que el opositor acierte a lo sumo 130 preguntas y la probabilidad de que acierte exactamente 160 preguntas.]
      #solution()[
        Para calcular la probabilidad de que el opositor acierte a lo sumo 130 preguntas, es decir, que $X ≤ 130$, tipificamos el valor de 130:

        $display(P(X ≤ 130) = P(Z < (130 - "150")/"8,66") = P(Z < -2,31) = Phi(-2,31) ≈ "0,0104")$

        Para calcular la probabilidad de que el opositor acierte exactamente 160 preguntas, es decir, que \ $X = 160$, utilizamos la aproximación por la normal con corrección de continuidad. Tipificamos el valor de 160 con corrección de continuidad:

        $display(P(X = 160) ≈ P(159,5 < X < 160,5))$

        Tipificamos los valores de 159,5 y 160,5:

        $display(P(159,5 < X < 160,5) = P((159,5 - "150")/"8,66" < Z < (160,5 - "150")/"8,66"))$

        $display(P(1,09 < Z < 1,22) = Phi(1,22) - Phi(1,09) ≈ "0,8888" - "0,8621" = "0,0267")$

        Por lo tanto:
        - La probabilidad de que el opositor acierte a lo sumo 130 preguntas es aproximadamente *0,0104*.
        - La probabilidad de que acierte exactamente 160 preguntas es aproximadamente *0,0267*.
      ]
      ],
    )
  ],
  [
    #question()[*Año 2025 - Ordinaria - Bloque 4* 
    Entre los ciudadanos de 13 años o más de cierto país, el 20% de la población tiene entre 13 y 24 años, el 50% entre 25 y 64 y el resto más de 64 años. Según datos recogidos por el ministerio de cultura de ese país, el 74% de sus ciudadanos de entre 14 y 24 años es lector habitual, mientras que el porcentaje decrece hasta el 65,8% entre los de 25 y 64 años y al 53,7% entre los mayores de 64 años. Elegido un ciudadano al azar del país en cuestión de 14 años o más, se pide:]
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