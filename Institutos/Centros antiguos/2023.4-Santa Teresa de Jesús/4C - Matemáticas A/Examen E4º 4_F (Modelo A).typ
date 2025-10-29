#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.0": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo:image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas A",
    number: "Examen final",
    content: "",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "May 13, 2024",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // clarifications: (
  //   [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
  //   [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
  //   La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
  //   [No está permitido compartir material, durante la prueba.],
  // )
)

// #set math.cases(reverse: true)
// #set text(18pt)

#g-question[Resuleve las siguientes ecuaciones]

#g-subquestion(point:1.5)[$display(x^2-4x+4=0)$]
#v(1fr)

#g-subquestion(point:1.5)[$display((x^2-x)/2 = 2x - 3)$]
#v(1fr)
#pagebreak()

#g-question(point:2)[Resuleve las siguientes ecuaciones]
    #g-subquestion[
          $display(cases( delim: "{",
              5x - y = 8,
              2x - 3y = 11
            ))$
        #v(1fr)
    ]
    #v(1fr)
#pagebreak()

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

#g-subquestion(point:1.5)[Completa la siguiente tabla de frecuencias, redondeando a dos decimales y siendo: \ 
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

#g-subquestion(point:1.5)[Calcula la moda, la media y la mediana.]
#v(1fr)

#pagebreak()

#g-question(point:2)[En el estuche tengo 3 bolígrafos negros, 6 azules, 2 rojos y 1 verdes. Si el examen solo lo puedo hacer con bolígrafo azul o negro y saco uno sin mirar, ¿cuál es la probabilidad de sacar un bolígrafo que me sirva para realizar el examen?] 