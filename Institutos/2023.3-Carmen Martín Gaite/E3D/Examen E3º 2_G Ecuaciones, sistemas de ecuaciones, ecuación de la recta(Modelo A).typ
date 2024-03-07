#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion, g-explanation
#import "./g-graph-lite.typ": g-plot-axes

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
    number: "2º Evaluación Examen parcial",
    content: "Ecuaciones y sistemas de ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "Marth 3, 2024",
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

#set math.cases(reverse: true)

#g-question(point:2)[Obtén la ecuación de la recta que pasa por los puntos $A(4,5)$ y $B(2,6)$ expresándola en su forma
general y explicita]
#v(1fr)

#pagebreak()


// #g-question[Obtén la ecuación de la recta que pasa por los puntos $A(5,4)$ y $B(6,2)$ expresándola en su forma
// general y explicita]

#g-question(point:2)[Calcula la ecuación de la recta paralela a $x - 2y - 2 = 0$ y que pase por el punto $P(1,2)$. 
    Representa las dos rectas.]
#v(1fr)
// #g-question[Calcula la ecuación de la recta paralela a $2x - y - 2 = 0$ y que pase por el punto $P(1,3)$. 
//     Representa las dos rectas.]

      #align(center,
        g-plot-axes(
          size: (10, 10),
          x-max: 10, x-min: -10, y-max: 10, y-min: -10,
          x-tick-step:2, y-tick-step:2,)
      )
#pagebreak()

//  #g-question[Indica cuál de los siguientes puntos $A(-4, 3)$, $B(7, 2)$, $C(6, -3)$, $D(2/3, 1/5)$ 
//     pertenecen a la recta $3x + 5y - 3 = 0$, 
//     mostrando todos los cálculos que has realizado para obtener la respuesta.]

//  #g-question[Indica cuál de los siguientes puntos $A(3, -4)$, $B(2, 7)$, $C(-3, 6)$, $D(1/5, 2/3)$ 
//     pertenecen a la recta $3x + 5y - 3 = 0$, 
//     mostrando todos los cálculos que has realizado para obtener la respuesta.]

// #g-question[Calcula y representa la recta que pasa por los puntos $P(-2, -4)$ y $Q(-1, 2)$]

#g-question(point:2)[Dada la parábola $y=x^2+x-6$ calcula su vértice, punto de corte con los ejes de coordenadas, 
    indica si el vértice es un máximo o un mínimo y represéntala.]
#v(1fr)
      #align(center,
        g-plot-axes(
          size: (15, 15),
          x-max: 10, x-min: -10, y-max: 10, y-min: -10,
          x-tick-step:2, y-tick-step:2,)
      )

// #g-question[Dada la parábola $y=-x^2 + x + 6$ calcula su vértice, punto de corte con los ejes de coordenadas, 
//             indica si el vértice es un máximo o un mínimo y represeétala.]


// #g-question[Dada la parábola $y=x^2 - 4x + 3$ calcula su vértice, punto de corte con los ejes de coordenadas, 
//             indica si el vértice es un máximo o un mínimo y represeétala.]

// #g-question[Dada la recta $3x - 2y + 3 = 0$ indica cuál es su pendiente y el punto de corte con los ejes.]

// #g-question[Dada la recta $2x - 3y + 3 = 0$ indica cuál es su pendiente y el punto de corte con los ejes.]

// #g-question[Dada la parábola $y = -x^2 + x + 6$ calcula su vértice, punto de corte con los ejes de coordenadas e
// indica si el vértice es un máximo o un mínimo.
// ]

// #g-question[Dada la parábola $y = x^2 + x - 6$ calcula su vértice, punto de corte con los ejes de coordenadas e
// indica si el vértice es un máximo o un mínimo.
// ]


// #g-question[Manuel trabaja como repartidor los fines de semana y recibe una cantidad fija de 40€ mensuales,
//             más 4€ por cada paquete que reparte.]

//   #g-subquestion(point: 1)[Escribe la función que relaciona el número de paquetes repartidos con el dinero recibido al mes y representa la gráfica.]
//   #v(1fr)

//    #align(center, 
//     g-plot-axes(
//       size: (14, 10),
//       x-max: 60, x-min: 0, y-max: 400, y-min: 0,
//       x-tick-step:5, y-tick-step:40,)
//    )

//   #g-subquestion(point: 1)[Utiliza la ecuación del apartado anterior para calcular cuántos paquetes tiene que repartir Manuel para cobrar en un mes 152€]

// #g-question[Manuel trabaja como repartidor los fines de semana y recibe una cantidad fija de 80€ mensuales,
//             más 4€ por cada paquete que reparte.]

//   #g-subquestion(point: 1)[Escribe la función que relaciona el número de paquetes repartidos con el dinero recibido al mes y representa la gráfica.]
//   #v(1fr)

//    #align(center, 
//     g-plot-axes(
//       size: (14, 10),
//       x-max: 60, x-min: 0, y-max: 400, y-min: 0,
//       x-tick-step:5, y-tick-step:40,)
//    )

//   #g-subquestion(point: 1)[Utiliza la ecuación del apartado anterior para calcular cuántos paquetes tiene que repartir Manuel para cobrar en un mes 1736€]