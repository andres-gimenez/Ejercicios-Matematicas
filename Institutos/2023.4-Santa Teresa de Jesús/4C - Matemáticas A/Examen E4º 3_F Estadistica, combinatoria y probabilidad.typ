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
    logo:image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas A",
    number: "3º Evaluación - Global",
    content: "Estadística, combinatoria y probabilidad",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "May 13, 2024",
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
// #set text(18pt)

#g-question[En un club deportivo juvenil admiten socios con edades entre 12 y 18 años. La distribución de las
edades es:]

#align(center,
  table(
    fill: (x, y) =>
      if(x == 0) { luma(230) },
  columns: (4cm,auto,auto,auto,auto,auto,auto,auto),
  rows:(auto, auto),
  gutter:0pt,
  [Edad], [12], [13],[14],[15],[16],[17],[18],
  [Número de socios], [5], [7], [11], [15], [17], [6], [3]
))

#g-subquestion(point:3)[Completa la siguiente tabla de frecuencias, redondeando a dos decimales y siendo: \ 
  - $x_i$: Valor del carácter estadístico.
  - $n_i$: Frecuencia absoluta.
  - $N_i$: Frecuencia absoluta acumulada.
  - $f_i$: Frecuencia relativa.
  - $f_i %$: Frecuencia relativa (en porcentaje).
  - $F_i$: Frecuencia relativa acumulada.
  ]

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    columns: (1.5cm, 1.5cm,  1.5cm, 1.5cm, 1.5cm, 1.5cm),
    rows: (0.7cm,)*8,
    [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %],[$F_i$]
))

#g-subquestion(point:1)[Calcula la moda, la media y la mediana.]
#v(1fr)
#pagebreak()

#g-question[En una fábrica de bombillas se estudia la vida de un tipo de bombilla. Se ha tomado una muestra
de 200 lámparas con los siguientes resultados:]

#align(center,
  table(
    fill: (x, y) =>
      if(x == 0) { luma(230) },
  columns: (4cm,auto,auto,auto,auto,auto),
  rows:(auto, auto),
  gutter:0pt,
  [Vida en horas], [$[100, 300)$], [$[300, 500)$], [$[500, 700)$], [$[700, 900)$], [$[900, 1100)$],
  [Número de bombillas], [12], [15], [70], [45], [10]
))

#g-subquestion(point:0.5)[¿Se trata de un carácter estadístico cualitativo o cuantitativo?]¿Por qué?
#v(1fr)
#g-subquestion(point:0.5)[¿Se trata de un carácter estadístico continuo o discreto? ¿Por qué?]
#v(1fr)
#g-subquestion(point:1)[Calcula la moda, la media y la mediana.]
#v(3fr)

#g-subquestion(point:1)[Dibuja el histograma, lo más preciso posible.]
#align(center, 
  grid(
    columns: (25pt, auto),
    rows: (auto, 25pt),
    align(center + horizon)[#rotate(-90deg, reflow: true)[Número de bombillas]],
    cetz.canvas(length: 0.8cm, {
        cetz.plot.plot(
          // axes: ("x", "y"),
          size: (13, 8),
          axis-style: "left",
          fill: "o" ,
          fill-below: true,
          // horizontal:false,
          x-domain: (0, 1200),
          y-domain: (0, 80),
          x-min: 0, x-max: 1200, 
          y-min: 0, y-max: 80, 
          x-grid: "both",
          y-grid: "both",
          // x-tick-step: none,
          x-tick-step: 100,
          // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
          y-tick-step: 10,
          // x-minor-tick-step: 0.2,
          // y-minor-tick-step: 0.2,
          // y-minor-tick-color:
            {
              cetz.plot.add(((0,0),), mark-size: 0,)
            }
          )
        }
      ),
      [],
      [\ Vida en horas]
    )
  )

#pagebreak()
#g-question[En un instituto, tras realizar un estudio estadístico, sobre la nota final de los alumnos de 3º de la ESO, 
se publican los siguientes datos de media y desviación típica.] \ 
#g-clarification[Los datos son inventados, así que no hace falta que preguntes si se refiere a tu instituto.]

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
  columns: (2cm,2cm,2cm),
  rows:(auto),
  gutter:0pt,
  [Grupo], [$accent(x, macron)$], [#sym.sigma],
  [3º A], [5,2], [1,2],  
  [3º B], [5,7], [0,8], 
  [3º C], [5,1], [7,9], 
  [3º D], [6,2], [0,8], 
  [3º E], [6,3], [0,2], 
  [3º F], [5,1], [1,1], 
))

#g-subquestion(point:1)[Calcula el coeficiente de variación para cada grupo.]
#v(1fr)

#g-subquestion(point:2)[Responde a la pregunta *¿En qué grupo está la mejor nota del instituto?* dando una respuesta argumenta desde el punto de vista matemático, utilizando tus conocimientos sobre que significa la media y la desviación típica. ] \
#v(2fr)