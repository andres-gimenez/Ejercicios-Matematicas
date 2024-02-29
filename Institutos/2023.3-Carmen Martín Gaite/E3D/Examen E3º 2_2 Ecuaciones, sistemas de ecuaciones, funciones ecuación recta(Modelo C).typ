#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Carmen Martín Gaite",
    logo: read("./logo-ies_carmen.jpeg", encoding: none)
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación Examen Global",
    content: "Ecuaciones, sistemas de ecuaciones, funciones y ecuación de la recta y parábola",
    model: "Modelo C"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "Febrero 29, 2024",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
 [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
    [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
    La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
    [No está permitido compartir material, durante la prueba.],
  )
)


#g-question(point: 2)[Obtén la ecuación de la recta que pasa por los puntos $A(5,4)$ y $B(6,2)$
    expresándola en su forma general y explicita.]
#v(1fr)

#g-question(point: 2)[Indica cuál de los siguientes puntos $A(-4, 3)$, $B(7, 2)$, $C(6, -3)$, $D(2/3, 1/5)$ 
    pertenecen a la recta $3x + 5y - 3 = 0$, 
    indicando los cálculos que has realizado para obtener la respuesta.]
#v(1fr)

#pagebreak()

#g-question(point: 2)[Calcula la ecuación de la recta paralela (tiene la misma pendiente) a $y=5x+2$ y que pase por el punto $(0, 5)$.] \
#g-explanation[Explica el resultado.]
#v(1fr)

#g-question(point: 2)[Dada la parábola $y=-x^2 + x + 6$ calcula su vértice, punto de corte con los ejes de coordenadas e indica si el vértice es un máximo o un mínimo.]
#v(1fr)

#pagebreak()

#g-question(point: 2)[Manuel trabaja como repartidor los fines de semana y recibe una cantidad fija de 40€ mensuales, 
    más 8€ por cada paquete que reparte.

    #g-subquestion[Escribe la función que relaciona el número de paquetes repartidos con el dinero recibido al mes
        y representa la gráfica.
        #v(4cm)
              #align(center, 
              cetz.canvas(length: 0.7cm, {
                cetz.plot.plot(
                  // axes: ("x", "y"),
                  size: (20, 10),
                  axis-style: "school-book",
                  fill: "o" ,
                  fill-below: true,
                  // horizontal:false,
                  x-domain: (0, 60),
                  y-domain: (0, 400),
                  x-max: 60,
                  x-min: 0,
                  y-max: 400,
                  y-min: 0,
                  x-grid: "both",
                  y-grid: "both",
                  // x-tick-step: none,
                  x-tick-step: 5,
                  // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
                  y-tick-step: 40,
                  // x-minor-tick-step: 0.2,
                  // y-minor-tick-step: 0.2,
                  // y-minor-tick-color:
                    {
                      cetz.plot.add(((0,0),), mark-size: 0,)
                    }
                  )
                }
              )
            )
        ]

    #g-subquestion[¿Cuántos paquetes tiene que repartir Manuel para cobrar en un mes 176€?]
  ]
