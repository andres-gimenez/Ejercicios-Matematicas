#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.0": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo: image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "3º Evaluación - 1º Examen",
    content: "Expresiones algebraicas y ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // clarifications: (
  //   [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
  //   [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
  //   La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
  //   [No está permitido compartir material, durante la prueba.],
  // )
)

#set math.cases(reverse: true)

#g-question(point:1)[(similar a Pág 234 - Eje 25)]

#g-question(point: 2)[Calcula la ecuación de la recta que para por los puntos $P(1,1)$ y $Q(2,2)$]

#g-question(point: 2)[Proporcionalidad inversa - Poner tabla, calcular la K y ]

#g-question(point: 2)[Si el IVA aplicado es del 21%. Escribe la ecuación que da el IVA en función del precio, representala y calcula la pendiente]

  #cetz.canvas(length: 1.4cm, {
                cetz.plot.plot(
                  // axes: ("x", "y"),
                  size: (10, 10),
                  axis-style: "school-book",
                  fill: "o" ,
                  fill-below: true,
                  // horizontal:false,
                  x-domain: (-10, 10),
                  y-domain: (-10, 10),
                  x-max: 10,
                  x-min: -10,
                  y-max: 10,
                  y-min: -10,
                  x-grid: "both",
                  y-grid: "both",
                  // x-tick-step: none,
                  x-tick-step: 1,
                  // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
                  y-tick-step: 1,
                  // x-minor-tick-step: 0.2,
                  // y-minor-tick-step: 0.2,
                  // y-minor-tick-color:
                    {
                      cetz.plot.add(((0,0),), mark-size: 0,)
                    }
                  )
                }
              )