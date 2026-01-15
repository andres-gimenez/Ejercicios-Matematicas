#import "@preview/g-exam:0.4.4": *

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Polinomios",
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: true,
  show-grade-table: "odd-pages",
  show-solutions: false,
  // question-text-parameters: (font:"OpenDyslexic")
)

// #set math.cases(reverse: true)
#questions-pages(
  [ #question()[Resuelve los siguientes problemas:]
    #questions-columns([
     #subquestion()[Un rectángulo tiene un lado que mide $x+3$ y otro $x-1$. Expresa el área del rectángulo como un polinomio.]
    ],
    [
      #subquestion()[La suma de dos polinomios es $8x^2 - x + 7$. Si uno de ellos es $3x^2 + 2x - 1$, halla el otro:]
    ],
    [
      #subquestion()[Un triángulo tiene lados $(x+2)$, $(2x-3)$ y $(3x+1)$. Expresa su perímetro como un polinomio.]
    ],
    [
      #subquestion()[Un rectángulo tiene un lado $(2x+5)$ y el otro $(x-3)$. Expresa su área como polinomio y simplifícalo.]
    ],
    [
      #subquestion()[Una fábrica produce $3x^2 - 2x + 5$ piezas el lunes y $4x^2 + x - 3$ piezas el martes. ¿Cuántas produce en total? ¿Cuántas más el martes que el lunes?]
    ],
    [
      #subquestion()[La temperatura de un día viene dada por $T(x) = -x^2 + 4x + 6$, donde $x$ son las horas desde medianoche. Calcula la temperatura a las 2h, 4h y 6h.]
    ],
    [
      #subquestion()[ La velocidad de un coche está dada por $v(t) = 2t^2 - 3t + 4$. Calcula la velocidad en $t=1$, $t=2$ y $t=5$.]
    ],
    [
      #subquestion()[El precio por comprar $x$ cuadernos es $P(x) = 2x + 1$ euros y el precio por comprar $x$ bolígrafos es $B(x) = x^2 + 3$ euros. Expresa el precio total como un polinomio.]
    ],
    [
      #subquestion()[Los ingresos de una empresa vienen dados por $I(x) = 5x^3 - x + 7$ y los gastos por $G(x) = 3x^3 + 2x^2 - 4$. Calcula el beneficio $B(x) = I(x) - G(x)$.]
    ],
    [
      #subquestion()[El precio de la bajada de bandera un taxi son 7€, más 3€ por kilómetro recorrido. Expresa el coste del precio del taxi en función de los kilómetros recorridos. ]
    ]
    )
  ]
)