#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
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
  show-solutions: false,
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
    // #solution()[
      
    // ],
  ],[
     #question()[Una lata cilíndrica debe contener 500 cm³ de líquido.
        ¿Cuáles deben ser el radio y la altura del cilindro para minimizar el área de material usado en su fabricación?]
    // #solution()[
      
    // ]
    ],
    [
      #question()[Un punto $P(4,0)$ está fuera de la recta 
      $r : y = 2 x + 3$. Halla el punto de la recta cuya distancia a P P sea mínima.]
    ],
    [
      #question()[Un jardín rectangular está bordeado por un camino de $1 m$ de ancho.
        El área interior del jardín es de $120 m^2$.
        Halla las dimensiones del rectángulo exterior para que el perímetro exterior sea mínimo.]
    ],[
    #question()[Se quiere diseñar una caja abierta con base cuadrada y volumen $32 "cm"^3$.
      ¿Cuáles deben ser las dimensiones de la caja para que la superficie total sea mínima?]
    ],
    [
      #question()[Queremos fabricar una pirámide de base cuadrada sin tapa usando una lámina de cartón cuadrada de lado L.
      En cada esquina recortamos un cuadrado de lado $x$ y plegamos.
      Expresa el volumen en función de $x$ y halla qué valor de  $x$ maximiza el volumen.]
    ],
    [
      #question()[El coste de fabricar $x$ unidades de un producto viene dado por
        $ C(x) = 0,01 x^2 + 2 x + 100 € $ y los ingresos por la venta de
        $x$ unidades de un producto viene dado por $ I(x) = -0,05 x^2 + 15 x € $.
        ¿Cuántas unidades se deben fabricar para maximizar el beneficio?]
    ],
    [
      #question()[El coste de fabricar $x$ unidades de un producto viene dado por $C(x)=x^3 - 12 x^2 + 60 x + 100$

      ¿Cuántas unidades deben producirse para que el coste medio, $C_m(x)=C(x)/x$, sea mínimo?
      ]
    ],
    [#question()[Una empresa tiene que transportar un producto desde un punto $A$ hasta un punto $B$.
      El punto $A$ está a $3 "km"$ de la orilla de un río y el punto $B$ está a $4 "km"$ del mismo lado del río y a $6 "km"$ de $A$.
      El coste de transportar el producto es de $1 € / "km"$ por tierra y de $0,5 € / "km"$ por el río.
      ¿Dónde debe llegar el transporte al río para que el coste total sea mínimo?]
    ],
    [
      #question()[Desde un punto $P$ situado a $100 m$ de una carretera recta se quiere construir un camino hasta un punto $Q$ situado en la carretera, a $200 m$ de un punto $R$ que está frente a $P$.
        ¿Dónde debe llegar el camino a la carretera para que la longitud total del camino $P Q$ sea mínima?]
    ],
    [
      #question()[En la parábola $y = 9-x^2$ se inscribe un rectángulo cuya base está sobre el eje $x$.
      Halla las dimensiones del rectángulo de máxima área.
    ],
      #question()[En una carrera a trabes del desierto un automóvil debe recorrer $500 "km"$ de distancia.
      Puede aprovechar una carretera recta que atraviesa el desierto durante los primeros $300 "km"$ a una velocidad de $100 "km"/h$, pero después debe abandonar la carretera y continuar en línea recta hasta el destino a una velocidad de $60 "km"/h$. Si la distancia más corta del oasis a la carretera es de $300 "km"$, determina la ruta que deberá seguir para ir de A a O en el menor tiempo posible.]
    ],
      [
      #question()[Una fabrica elabora un producto de dos calidades. $x$ toneladas de baja calidad y $y$ toneladas de alta calidad. Relacionándose ambas producciones mediante la función $y=(18-5x)/(10-x)$.
      Hallar las cantidades que ha de producir para obtener ingresos máximos si el precio por tonelada de baja calidad es $1/2$ que el de alta calidad.
      ],
    [
      #question()[Una estatua tiene una altura h y está sobre un pedestal de altura H. ¿A que distancia de la base del pedestal debe situarse un observador para que el ángulo de visión de la estatua sea máximo?]
    ],
    // [
    //   // Para examen.
    //   #question()[Tenemos un espejo rectangular de $80 x 90 "cm"$ que se rompe por una esquina en forma de triangular, cuyos catetos miden $2 " y " 3 "cm"$ correspondientes al lado mayor y menos respectivamente. 
    //   ¿Cual el área del mayor espejo que se podría recortar si queremos que sea rectangular]
    // ]
  ])
)

