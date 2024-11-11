#import "@preview/g-exam:0.4.0": *

// #set text(font:"OpenDyslexic")
// #set text(font: "New Computer Modern")

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("./logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 1º examen",
    content: "Estadistica y Probabilidad",
    model: "Modelo B"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  question-text-parameters: (size: 16pt, spacing:120%, font:"OpenDyslexic")
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

#g-question[En un club deportivo juvenil admiten socios con edades entre 12 y 18 años. Al preguntar la edad de los socios, obtenemos estas respuestas.

#align(center, [12, 12, 13, 15, 15, 13, 12, 14, 14, 14, 15, 13, 13,  16, 16, 12, 12, 14, 14, 14]) 
]

#g-subquestion(point:2)[Completa la siguiente tabla de frecuencias, redondeando a dos decimales y siendo: \ 
  // - $x_i$: Valor del carácter estadístico.
  // - $n_i$: Frecuencia absoluta.
  // - $N_i$: Frecuencia absoluta acumulada.
  // - $f_i$: Frecuencia relativa.
  // - $p_i %$: Frecuencia relativa (en porcentaje).
  // // - $F_i$: Frecuencia relativa acumulada.
  
#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    // columns: (1.5cm, 1.5cm,  1.5cm, 1.5cm, 1.5cm, 1.5cm),
    columns: (2.5cm, 4cm,  4cm, 4cm),
    rows: (1.2cm,)*6,
    // [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %],[$F_i$]
    [Valor],[F. absoluta], [F. relativa],[Porcentaje],
    [12], [5], [0,25], [25%],
    [13], [4], [0,20], [20%],
    [14], [6], [0,30], [30%],
    // [15], [3], [0,15], [15%],
    // [16], [2], [0,10], [10%],
))
]
#pagebreak()

#g-subquestion(point:1)[Dibuja un diagrama de barras y de sectores (con los datos del primer apartado).]
#v(1fr)

#g-subquestion(point:2)[Calcula la moda, la media y la mediana (con los datos del primer apartado).]
#v(1fr)

#pagebreak()

#g-question(point:1.5)[Del experimento aleatorio lanzar un dado de seis caras, indica:]

#g-subquestion()[Cual es el espacio muestral.]
#v(1fr)

#g-subquestion()[Cual es el suceso contrario a $A={1,4,5}$.]
#v(1fr)

#g-subquestion()[Un suceso imposible.]
#v(1fr)

#g-subquestion()[Un suceso seguro.]
#v(1fr)

#pagebreak()
#g-question(point:2)[En una caja tenemos 3 tizas blancas, 5 azules y 7 rojas, si sacamos una tiza al azar, calcula las siguientes probabilidades.]

#g-subquestion()[Probabilidad de que la tiza sea azul.]
#v(1fr)

#g-subquestion()[Probabilidad de que la tiza no sea azul.]
#v(1fr)

#g-subquestion()[Probabilidad de que la tiza sea azul o roja.]
#v(1fr)

#pagebreak()
#g-question(point:1.5)[En las noticias nos han dicho que hay una probabilidad de que llueva mañana del $0,2$ ¿Qué probabilidad hay de que no llueva mañana?]
#v(1fr)
