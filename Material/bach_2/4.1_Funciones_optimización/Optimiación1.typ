#import "@local/g-exam:0.4.4": *
// #import "@preview/wrap-it:0.1.0": wrap-content

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
    // academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    // number: "1ª evaluación - 1º parcial",
    content: "Problemas con funciones lineales, cuadráticas y optimización",
    // model: [Modelo $alpha$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: false,
  show-grade-table: false,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

// https://lasmatematicas.eu/docs/matematicas2bach/ejercicios/problemas_optimizacion_2.pdf
// https://www.cartagena99.com/recursos/matematicas/ejercicios/Der_EjerciciosOptimizacion3.pdf


#question()[Descomponer el número e en dos sumandos positivos de forma que la suma de los logaritmos neperianos de los sumandos sea máxima. 
    Calcular dicha suma.]

#question()[ Una empresa ha decidido mejorar su seguridad instalando 9 alarmas. 
    Un especialista en el tema señala que dada la estructura de la empresa sólo puede optar por dos tipos de alarmas, de tipo A o de tipo B; 
    además, afirma que la seguridad de la empresa se puede expresar como la décima parte del producto entre el número de alarmas de tipo A 
    instaladas y el cuadrado del número de alarmas instaladas de tipo B. 
    ¿Cuántas alarmas de cada tipo se deben instalar en la empresa para maximizar su seguridad?]

#question()[Calcula dos números que cumplan que al sumarlos resulte 10 y la resta de uno de ellos menos el inverso del otro sea mínima.]
    
#question()[Para la fabricación de un determinado producto, se necesita invertir dinero en contratar empleados y comprar máquinas. 
    El dueño de la fábrica ha estimado que si compra x máquinas y contrata “y” empleados, el número de unidades de producto que 
    podía fabricar vendría dado por la función: 
    $f(x,y) = 90 x y$ Cada máquina le supone una inversión de 2500 € y cada contrato de un nuevo empleado otro de 1500 €
    Si el empresario sólo dispone de un presupuesto de 22500 € para este fin, determine el 
    número de obreros que debe contratar y el número de máquinas que debe comprar para 
    maximizar la producción.]

#question()[
    Una esmeralda pesa 16 grs. y sabemos que su valor es proporcional al cuadrado de su peso. 
    Si partimos en dos trozos la esmeralda, halla el peso que debe tener cada uno de ellos para que su valor sea mínimo.]

#question()[
    La base menor de un trapecio isósceles mide 6 metros y la longitud de los lados no paralelos es de 2 metros. 
    Calcula cuánto debe medir la base mayor para que el área del trapecio sea máxima.]

#question()[
     Se divide un alambre de 100 m de longitud en dos segmentos de longitudes $x$ y $100-x$.
     Con el de longitud $x$ se forma un triángulo equilátero y con el otro segmento se forma un cuadrado.
     Sea $f(x)$ la suma de las áreas del triángulo y del cuadrado. 
     Indicar razonadamente para qué valor de x se obtiene que la suma de las áreas del triángulo y del cuadrado es mínima.]

#question()[
     En una carretera a través del desierto un automóvil debe de ir desde la ciudad A hasta el oasis P situado a $500"Km"$ de distancia de A. 
    Puede aprovechar para ello una carretera recta que une las ciudades A y B y que le permite ir a una velocidad de $100"Km"slash h$, 
    mientras que por el desierto la velocidad es de $60"Km"slash h$. 
    Sabiendo que la distancia más corta de P a la carretera que une las ciudades A y B es de $300"Km"$, 
    determina la ruta que deberá usar para ir de A a P en el menor tiempo posible.]

#question()[
    Sea T un triángulo de perímetro $60 "cm"$. 
    Uno de los lados del triángulo T mide $x "cm"$ y los dos lados tienen la misma longitud. 
    #subquestion()[Deducir razonadamente las expresiones de las funciones $A$ y $f$ tales que: 

        #h(2cm) $A(x) = "Área del triángulo T"$

        #h(2cm) $F(x) = A(x)^2$

        #h(0.8cm) Indicar además entre que valores puede variar x.
        ]
    #subquestion()[Obtener, razonadamente, el valor de $x$ para el que $f(x)$ alcanza el valor máximo.]
]

#question()[
        Comprueba que el rectángulo de mayor área que puede inscribirse en una 
        circunferencia de ecuación $ x^2+ y^2 = r^2$ es un cuadrado de lado $sqrt(2)r$.
]

#question()[
        Determine los puntos de la curva $y^2=4x$ que están a distancia mínima del punto $P(4, 0)$.]

#question()[
         Un rectángulo tiene por vértices los puntos de coordenadas $(0,0)$, $(a,0)$, $(0,b)$ y $(a,b)$, 
         de modo que el punto $(a,b)$ tiene coordenadas positivas y está situado en la curva de ecuación: $y=1/(x^2) + 4$.
         De todos estos rectángulos hallar razonadamente el de área mínima.]

#question()[
        Un nadador, A, se encuentra a $3 "km"$.
        De la playa enfrente de una caseta. Desea ir a B, en la misma playa, a $6 "Km"$ De la caseta. 
        Sabiendo que nada a $3 "km"slash h$ y que anda por la arena a $5 "km"slash h$, averigua a qué lugar debe dirigirse a nado para llegar a B en el menor tiempo posible.

        #image("img/Img01.png")
]

#question()[
        Determina el punto de la gráfica de la función $f(x) = -x^3 + 6x^2-7x+5$ en el que la pendiente de la recta tangente es máxima. 
        ¿Cuál es la ecuación de la recta tangente en ese punto?
]
