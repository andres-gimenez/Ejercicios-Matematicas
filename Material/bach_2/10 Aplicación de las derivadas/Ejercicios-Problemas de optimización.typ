#import "@local/g-exam:0.4.4": *
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
    number: [Problemas de optimización],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Se quiere construir un recinto rectangular pegado a una pared, así que solo hay que vallar tres lados. Disponemos de 60 metros de valla.
      ¿Cuáles deben ser las dimensiones del recinto para que el área sea máxima?]
      #solution()[
        Sea $x$ la longitud del lado perpendicular a la pared e $y$ la longitud del lado paralelo a la pared.
        La valla disponible nos da la restricción
        
        $ 2 x + y = 60 => y = 60 - 2 x $

        El área del recinto es
        
        $ A(x) = x dot y = x (60 - 2 x) = 60 x - 2 x^2 $
        
        Derivando e igualando a cero para buscar los puntos críticos:
        
        $ A'(x) = 60 - 4 x = 0 => x = 15 $
        
        Comprobamos que es un máximo con la segunda derivada:
        
        $ A''(x) = -4 < 0 $

        Por tanto, el valor de $x$ que maximiza el área es $x=15$ m. Calculamos $y$:
        
        $ y = 60 - 2 dot 15 = 30 $
        
        Por tanto, las dimensiones del recinto son $15 m$ de lado perpendicular a la pared y $30 m$ de lado paralelo a la pared.
      ]
  ],[
     #question()[Una lata cilíndrica debe contener 500 cm³ de líquido.
        ¿Cuáles deben ser el radio y la altura del cilindro para minimizar el área de material usado en su fabricación?]
      #solution()[
        Sea $r$ el radio de la base del cilindro y $h$ su altura.
        El volumen del cilindro nos da la restricción
        
        $ V = pi r^2 h = 500 => h = 500 / (pi r^2) $
        
        El área del cilindro es
        
        $ A(r) = 2 pi r^2 + 2 pi r h = 2 pi r^2 + 2 pi r (500 / (pi r^2)) = 2 pi r^2 + 1000 / r $
        
        Derivando e igualando a cero para buscar los puntos críticos:
        
        $ A'(r) = 4 pi r - 1000 / r^2 = 0 => 4 pi r^3 = 1000 => r^3 = 250 / pi => r = (250 / pi)^(1/3) $
        
        Comprobamos que es un mínimo con la segunda derivada:
        
        $ A''(r) = 4 pi + 2000 / r^3 > 0 $

        Por tanto, el valor de $r$ que minimiza el área es $r = (250 / pi)^(1/3)$ cm. Calculamos $h$:
        
        $ h = 500 / (pi ((250 / pi)^(1/3))^2) = 500 / (pi (250 / pi)^(2/3)) = 500 / (250^(2/3) pi^(1/3)) $
        
        Por tanto, las dimensiones del cilindro son $ r = (250 / pi)^(1/3) "cm" approx "4,3 cm" "y h" = 500 / (250^(2/3) pi^(1/3)) "cm" approx "8,6 cm" $
      ]
    ],
    [
      #question()[Un punto $P(4,0)$ está fuera de la recta 
      $r : y = 2 x + 3$. Halla el punto de la recta cuya distancia a P sea mínima.]
      #solution()[
        La distancia entre dos puntos P($x_1$, $y_1$) y R($x_2$, $y_2$) viene dada por $ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $.

        La distancia entre el punto $P(4,0)$ y un punto cualquiera de la recta $r:y = 2 x + $ viene dada por
        
        $ d(x) = sqrt((x - 4)^2 + (2 x + 3 - 0)^2) = sqrt((x - 4)^2 + (2 x + 3)^2) $
        
        Para minimizar la distancia, minimizamos su cuadrado:
        
        $ d^2(x) = (x - 4)^2 + (2 x + 3)^2 = x^2 - 8 x + 16 + 4 x^2 + 12 x + 9 = 5 x^2 + 4 x + 25 $
        
        Derivando e igualando a cero para buscar los puntos críticos:
        
        $ (d^2)'(x) = 10 x + 4 = 0 => x = -2/5 $
        
        Comprobamos que es un mínimo con la segunda derivada:
        
        $ (d^2)''(x) = 10 > 0 $

        Por tanto, el valor de $x$ que minimiza la distancia es $x = -2/5$. Calculamos $y$:
        
        $ y = 2 (-2/5) + 3 = 11/5 $
        
        Por tanto, el punto de la recta cuya distancia a $P$ es mínima es $(-2/5, 11/5)$.
      ]
    ],
    [
      #question()[Un jardín rectangular está bordeado por un camino de $1 m$ de ancho.
        El área interior del jardín es de $120 m^2$.
        Halla las dimensiones del rectángulo exterior para que el perímetro exterior sea mínimo.]
      #solution()[
        Sea $x$ la longitud del lado mayor del jardín e $y$ la longitud del lado menor.
        El área del jardín nos da la restricción
        $ x dot y = 120 => y = 120 / x $ 
        El perímetro exterior del jardín es
        $ P(x) = 2 (x + 2) + 2 (y + 2) = 2 x + 4 + 2 (120 / x) + 4 = 2 x + 2 (120 / x) + 8 $
        Derivando e igualando a cero para buscar los puntos críticos:
        $ P'(x) = 2 - 240 / x^2 = 0 => 2 x^2 = 240 => x^2 = 120 => x = sqrt(120) $
        Comprobamos que es un mínimo con la segunda derivada:
        $ P''(x) = 480 / x^3 > 0 $
        Por tanto, el valor de $x$ que minimiza el perímetro es $x = sqrt(120)$. Calculamos $y$:
        $ y = 120 / sqrt(120) = sqrt(120) $
        Por tanto, las dimensiones del rectángulo exterior son $(sqrt(120) + 2) m approx "12,95 m"$ de lado mayor y $(sqrt(120) + 2) m  approx "12,95 m" $ de lado menor, es decir, un cuadrado. 
      ]
    ],[
    #question()[Se quiere diseñar una caja abierta con base cuadrada y volumen $32 "cm"^3$.
      ¿Cuáles deben ser las dimensiones de la caja para que la superficie total sea mínima?]
    #solution()[
      Sea $x$ la longitud del lado de la base cuadrada y $h$ la altura de la caja.
      El volumen de la caja nos da la restricción 
      $ V = x^2 h = 32 => h = 32 / x^2 $
      La superficie total de la caja es
      $ S(x) = x^2 + 4 x h = x^2 + 4 x (32 / x^2) = x^2 + 128 / x $ 
      Derivando e igualando a cero para buscar los puntos críticos:
      $ S'(x) = 2 x - 128 / x^2 = 0 => 2 x^3 = 128 => x^3 = 64 => x = 4 $
      Comprobamos que es un mínimo con la segunda derivada:
      $ S''(x) = 2 + 256 / x^3 > 0 $
      Por tanto, el valor de $x$ que minimiza la superficie es $x = 4$. Calculamos $h$:
      $ h = 32 / 4^2 = 2 $
      Por tanto, las dimensiones de la caja son $4 "cm"$ de lado de la base y $2 "cm"$ de altura. 
      ]
    ],
    [
      #question()[Queremos fabricar una caja de base cuadrada sin tapa usando una lámina de cartón cuadrada de lado L.
      En cada esquina recortamos un cuadrado de lado $x$ y plegamos.
      Expresa el volumen en función de $x$ y halla qué valor de  $x$ maximiza el volumen.]
      #solution()[
        Sea $x$ la longitud del lado del cuadrado que recortamos en cada esquina.
        La longitud del lado de la base de la caja es $ (L - 2 x) $ y la altura es $ x $.
        El volumen de la caja es
        $ V(x) = (L - 2 x)^2 x = (L^2 - 4 L x + 4 x^2) x = (L^2 x - 4 L x^2 + 4 x^3) $
        Derivando e igualando a cero para buscar los puntos críticos:
        $ V'(x) = L^2 - 8 L x + 12 x^2 = 0 => L^2 - 8 L x + 12 x^2 = 0 $
        Resolviendo la ecuación cuadrática:
        $ x = (8 L ± sqrt((8 L)^2 - 4 dot 12 dot L^2)) / (2 dot 12) = (8 L ± sqrt(64 L^2 - 48 L^2)) / 24 = (8 L ± sqrt(16 L^2)) / 24 = (8 L ± 4 L) / 24 $
        $ x_1 = (12 L) / 24 = L / 2 $
        $ x_2 = (4 L) / 24 = L / 6 $
        Comprobamos cuál de los dos valores es un máximo con la segunda derivada:
        
        $display(V''(x) = -8 L + 24 x)$
        
        $display(V''(L / 2) = -8 L + 24 (L / 2) = -8 L + 12 L = 4 L > 0)$ (no es máximo)
        
        $display(V''(L / 6) = -8 L + 24 (L / 6) = -8 L + 4 L = -4 L < 0)$ (es máximo)
        
        Por tanto, el valor de $x$ que maximiza el volumen es $x = L / 6$.
      ] 
    ],
    [
      #question()[El coste de fabricar $x$ unidades de un producto viene dado por
        $ C(x) = 0,01 x^2 + 2 x + 100 € $ y los ingresos por la venta de
        $x$ unidades de un producto viene dado por $ I(x) = -0,05 x^2 + 15 x € $.
        ¿Cuántas unidades se deben fabricar para maximizar el beneficio?]
        #solution()[
          El beneficio viene dado por $ B(x) = I(x) - C(x) = (-0,05 x^2 + 15 x) - (0,01 x^2 + 2 x + 100) = -0,06 x^2 + 13 x - 100 € $
          
          Derivando e igualando a cero para buscar los puntos críticos:
          
          $ B'(x) = -0,12 x + 13 = 0 => -0,12 x = -13 => x = 108,33 $
          
          Comprobamos que es un máximo con la segunda derivada:
          
          $ B''(x) = -0,12 < 0 $

          Por tanto, el valor de $x$ que maximiza el beneficio es $x = 108,33$. Como no se pueden fabricar fracciones de unidades, se deben fabricar $108$ o $109$ unidades.
        ]
    ],
    [
      #question()[El coste de fabricar $x$ unidades de un producto viene dado por $C(x)=x^3 - 12 x^2 + 60 x + 98$

      ¿Cuántas unidades deben producirse para que el coste medio, $C_m (x)=C(x)/x$, sea mínimo?
      ]
      #solution()[ 
        El coste medio viene dado por $ C_m (x) = C(x) / x = (x^3 - 12 x^2 + 60 x + 98) / x = x^2 - 12 x + 60 + 98 / x $
        
        Derivando e igualando a cero para buscar los puntos críticos:
        
        $ C'_m (x) = 2 x - 12 - 98 / x^2 = 0 => 2 x^3 - 12 x^2 - 98 = 0 $
        
        Resolviendo la ecuación cúbica (se puede resolver por Rouffini) :
        
        $ x = 7 $
        
        Comprobamos que es un mínimo con la segunda derivada:
        
        $ C''_m (x) = 2 + 196 / x^3 > 0 $

        Por tanto, el valor de $x$ que minimiza el coste medio es $x = 7$ unidades.
      ]
    ],
    [#question()[Una empresa tiene que transportar un producto desde un punto $A$ hasta un punto $B$.
      El punto $A$ está a $3 "km"$ de la orilla de un río y el punto $B$ está en el rio, $6 "km"$ rio abajo, desde el punto del rio más cercano a $A$.
      El coste de transportar el producto es de $1 frac("€", "km", style: "horizontal")$ por tierra y de $0,5 frac("€", "km", style: "horizontal")$ por el río.
      ¿Dónde debe llegar el transporte al río para que el coste total sea mínimo?]
      #solution(show-solution: false)[

        #cetz.canvas(length: 1cm, {
          import cetz.draw: *
          
          fill(black)
          circle((0, 0), radius: 0.1, name: "O")
          circle((6, 0), radius: 0.1, name: "B")
          circle((0, 3), radius: 0.1, name: "A")

          // content(("A"), box(fill: white, $ A $))
          // content("A.north", anchor: "1.5", box(fill: white, $ A $))
      
          content((name: "A", anchor: 1.5), $ #h(0.6cm) A $)
          content((name: "B", anchor: 90deg), $ #h(0.6cm) B $)

          line((0, 3), (0, 0), name: "AO")
          line((0, 0), (6, 0), name: "OB")
          content((name: "AO", anchor: 1.5), box(fill: white, $ 3"km" $))
          content((name: "OB", anchor: 3.5), box(fill: white, $ 6"km" $))

          // line((0, 0), (6, 0))
          line((0, 3), (2, 0), stroke: blue)
        })

        Sea $x$ la distancia desde el punto más cercano a $A$ hasta el punto donde el transporte llega al río.
        La distancia recorrida por tierra es $ sqrt(3^2 + x^2) = sqrt(9 + x^2) $ y la distancia recorrida por el río es $ 6 - x $.
        El coste total del transporte es
        $ C(x) = 1 dot sqrt(9 + x^2) + 0,5 dot (6 - x) = sqrt(9 + x^2) + 3 - 0,5 x $
        Derivando e igualando a cero para buscar los puntos críticos:
        $ C'(x) = (1/2) (9 + x^2)^(-1/2) dot 2 x - 0,5 = x / sqrt(9 + x^2) - 0,5 = 0 => x / sqrt(9 + x^2) = 0,5 => x = 0,5 sqrt(9 + x^2) $
        Elevando al cuadrado ambos lados:
        $ x^2 = 0,25 (9 + x^2) => x^2 - 0,25 x^2 = 2,25 => 0,75 x^2 = 2,25 => x^2 = 3 => x = sqrt(3) $
        Comprobamos que es un mínimo con la segunda derivada:
        $ C''(x) = (9 + x^2)^(-3/2) dot 9 > 0 $
        Por tanto, el valor de $x$ que minimiza el coste total es $x = sqrt(3) "km" approx "1,73" "km"$.
      ]
    ],
    [
      #question()[Desde un punto $P$ situado a $100 m$ de una carretera recta se quiere construir un camino hasta un punto $Q$ situado en la carretera, a $200 m$ de un punto $R$ que está frente a $P$.
        ¿Dónde debe llegar el camino a la carretera para que la longitud total del camino $P Q$ sea mínima?]

        // #solution(color: red)[
        // Sea $x$ la distancia desde el punto $R$ hasta el punto donde el camino llega a la carretera.
        // La distancia recorrida desde $P$ hasta la carretera es $ sqrt(100^2 + x^2) = sqrt(10000 + x^2) $ y la distancia desde la carretera hasta $Q$ es $ 200 - x $.
        // La longitud total del camino es

        // $ L(x) = sqrt(10000 + x^2) + (200 - x) $

        // Derivando e igualando a cero para buscar los puntos críticos:

        // $ L'(x) = (1/2) (10000 + x^2)^(-1/2) dot 2 x - 1 = x / sqrt(10000 + x^2) - 1 = 0 =>  \
        // x / sqrt(10000 + x^2) = 1 => x = sqrt(10000 + x^2) $
        
        // Elevando al cuadrado ambos lados:
        // $ x^2 = 10000 + x^2 => 0 = 10000 $
        // Lo que es imposible, por lo que no hay puntos críticos. Estudiamos el comportamiento en los extremos del intervalo $[0, 200]$:
        // $ L(0) = sqrt(10000 + 0^2) + (200 - 0) = 100 + 200 = 300 $
        // $ L(200) = sqrt(10000 + 200^2) + (200 - 200) = sqrt(10000 + 40000) + 0 = sqrt(50000) approx "223,61" $
        // ]
    ],
    [
      #question()[En la parábola $y = 9-x^2$ se inscribe un rectángulo cuya base está sobre el eje $x$.
      Halla las dimensiones del rectángulo de máxima área.]
      // #solution(color: red)[
      //   Sea $x$ la mitad de la longitud de la base del rectángulo e $y$ la altura del rectángulo.
      //   La altura del rectángulo viene dada por la ecuación de la parábola:
      //   $ y = 9 - x^2 $
      //   El área del rectángulo es
      //   $ A(x) = 2 x dot y = 2 x (9 - x^2) = 18 x - 2 x^3 $
      //   Derivando e igualando a cero para buscar los puntos críticos:
      //   $ A'(x) = 18 - 6 x^2 = 0 => 6 x^2 = 18 => x^2 = 3 => x = sqrt(3) $
      //   Comprobamos que es un máximo con la segunda derivada:
      //   $ A''(x) = -12 x $
      //   $ A''(sqrt(3)) = -12 sqrt(3) < 0 $
      //   Por tanto, el valor de $x$ que maximiza el área es $x = sqrt(3)$. Calculamos $y$:
      //   $ y = 9 - (sqrt(3))^2 = 9 - 3 = 6 $
      //   Por tanto, las dimensiones del rectángulo son $2 sqrt(3) "unidades"$ de base y $6 "unidades"$ de altura.
      // ]
    ],
    [
      #question()[En una carrera a trabes del desierto un automóvil debe recorrer $500 "km"$ de distancia.
       Puede aprovechar una carretera recta que atraviesa el desierto durante los primeros $300 "km"$ a una velocidad de $100 frac("km", "h", style: "horizontal")$,
       pero después debe abandonar la carretera y continuar en línea recta hasta el destino a una velocidad de $60 frac("km", "h", style: "horizontal")$. 
       Si la distancia más corta del oasis a la carretera es de $300 "km"$, determina la ruta que deberá seguir para ir de A a O en el menor tiempo posible.]
      // #solution(color: red)[
      //   Sea $x$ la distancia desde el punto donde el automóvil abandona la carretera hasta el punto directamente enfrente del oasis.
      //   La distancia recorrida por carretera es $ 300 + x $ y la distancia recorrida por el desierto es $ sqrt(300^2 + (500 - x)^2) = sqrt(90000 + (500 - x)^2) $.
      //   El tiempo total del recorrido es
      //   $ T(x) = (300 + x) / 100 + sqrt(90000 + (500 - x)^2) / 60 $
      //   Derivando e igualando a cero para buscar los puntos críticos:
      //   $ T'(x) = 1 / 100 + (1/2) (90000 + (500 - x)^2)^(-1/2) dot 2 (500 - x) dot (-1) / 60 = 0 => 1 / 100 - (500 - x) / (60 sqrt(90000 + (500 - x)^2)) = 0 \ 
        
      //   => (500 - x) / (60 sqrt(90000 + (500 - x)^2)) = 1 / 100 => 100 (500 - x) = 60 sqrt(90000 + (500 - x)^2) $

      //   Elevando al cuadrado ambos lados:

      //   $ 10000 (500 - x)^2 = 3600 (90000 + (500 - x)^2) => 10000 (500 - x)^2 - 3600 (500 - x)^2 = 324000000 => \ 
      //   6400 (500 - x)^2 = 324000000 => (500 - x)^2 = 50625 => 500 - x = 225 => x = 275 $
      //   Comprobamos que es un mínimo con la segunda derivada:
      //   $ T''(x) = ... > 0 $
      //   Por tanto, el valor de $x$ que minimiza el tiempo total es $x = 275 "km"$.
      // ]
    ],
    [
      #question()[Una fábrica elabora un producto de dos calidades. $x$ toneladas de baja calidad y $y$ toneladas de alta calidad. Relacionándose ambas producciones mediante la función $display(y=(18-5x)/(10-x))$.

      Hallar las cantidades que ha de producir para obtener ingresos máximos si el precio por tonelada de baja calidad es $display(1/2)$ que el de alta calidad.]
      // #solution(color: red)[
      //   Sea $x$ la cantidad de toneladas de baja calidad e $y$ la cantidad de toneladas de alta calidad.
      //   La relación entre ambas producciones viene dada por la función
      //   $ y = (18 - 5 x) / (10 - x) $
      //   El ingreso total viene dado por
      //   $ I(x) = p_b x + p_a y = (1/2) p_a x + p_a ((18 - 5 x) / (10 - x)) = p_a ((1/2) x + (18 - 5 x) / (10 - x)) $
      //   Derivando e igualando a cero para buscar los puntos críticos:
      //   $ I'(x) = p_a ((1/2) + ((10 - x)(-5) - (18 - 5 x)(-1)) / (10 - x)^2) = 0 => (1/2) + ((-50 + 5 x + 18 - 5 x) / (10 - x)^2) = 0 \ 
        
      //   => (1/2) + (-32 / (10 - x)^2) = 0 => (1/2) = 32 / (10 - x)^2 => (10 - x)^2 = 64 => 10 - x = 8 => x = 2 $
        
      //   Comprobamos que es un máximo con la segunda derivada:
      //   $ I''(x) = ... < 0 $
        
      //   Por tanto, el valor de $x$ que maximiza el ingreso total es $x = 2$. Calculamos $y$:
        
      //   $ y = (18 - 5 dot 2) / (10 - 2) = (18 - 10) / 8 = 8 / 8 = 1 $
        
      //   Por tanto, las cantidades que ha de producir son $2$ toneladas de baja calidad y $1$ tonelada de alta calidad.
      // ]
    ],
    [
      #question()[Una estatua tiene una altura h y está sobre un pedestal de altura H. ¿A que distancia de la base del pedestal debe situarse un observador para que el ángulo de visión de la estatua sea máximo?]
      #solution(color: red)[
        Sea $d$ la distancia desde la base del pedestal hasta el observador.
        El ángulo de visión de la estatua viene dado por
        $ theta(d) = "arctan"((H + h) / d) - "arctan"(H / d) $
        Derivando e igualando a cero para buscar los puntos críticos:
        $ theta'(d) = - (H + h) / (d^2 + (H + h)^2) + H / (d^2 + H^2) = 0 => H / (d^2 + H^2) = (H + h) / (d^2 + (H + h)^2) $
        
        $ H (d^2 + (H + h)^2) = (H + h) (d^2 + H^2) => H d^2 + H (H + h)^2 = (H + h) d^2 + (H + h) H^2 \ 
        
        => H d^2 - (H + h) d^2 = (H + h) H^2 - H (H + h)^2 => -h d^2 = (H + h) H^2 - H (H^2 + 2 H h + h^2) \ 
        
        => -h d^2 = (H + h) H^2 - H^3 - 2 H^2 h - H h^2 => -h d^2 = H^3 + H^2 h - H^3 - 2 H^2 h - H h^2 \ 
        
        => -h d^2 = - H^2 h - H h^2 => d^2 = H^2 + H h => d = sqrt(H^2 + H h) $
        
        Comprobamos que es un máximo con la segunda derivada:
        $ theta''(d) = ... < 0 $
        
        Por tanto, el valor de $d$ que maximiza el ángulo de visión es $d = sqrt(H^2 + H h)$.
      ]
    ],
    [
    //   // Para examen.
    //   #question()[Tenemos un espejo rectangular de $80 x 90 "cm"$ que se rompe por una esquina en forma de triangular, cuyos catetos miden $2 " y " 3 "cm"$ correspondientes al lado mayor y menos respectivamente. 
    //   ¿Cual el área del mayor espejo que se podría recortar si queremos que sea rectangular]
    
  ]
)

