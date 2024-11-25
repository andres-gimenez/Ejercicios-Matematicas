#import "@preview/g-exam:0.4.1": *

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
    number: "Recuperación 1º evaluación",
    content: "Estadística, probabilidad, números enteros y fracciones.",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2024, month:11, day:21),
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // question-text-parameters: (size: 16pt, spacing:120%, font:"OpenDyslexic"),
  clarifications: 
  (
    [Han de aparecer todas las operaciones en la resolución de los ejercicios para que estos se consideren correctos.],
    [Se puede utilizar calculadoras],
    [No se puede utilizar ni móvil ni la calculadora del móvil.],
    [El hablar en clase sin causa justificada llevara la disminución de la nota del examen.]
  )
)

// #set math.cases(reverse: true)

#question(points:0.5)[En cierta marca de bombillas, la probabilidad de fabricar una bombilla defectuosa es de 0,04. 
¿Si escogemos una bombilla al azar, que probabilidad hay de que esta bombilla funcione?]
#v(1fr)

#question(points:0.5)[Al preguntar al entrenador del equipo local sobre la probabilidad de ganar el próximo partido, 
este nos dice que tienen una probabilidad de 1,1 de ganar el partido. ¿Qué podemos afirmar sobre lo que ha dicho?]
#v(1fr)

#question(points:1)[En el estuche, tenemos 3 rotuladores rojos, 2 azules, 4 verdes y 1 negro. Si sacamos un rotulador al azar que probabilidad hay de que:]

#subquestion[El rotulador sea azul.]
#v(1fr)
#subquestion[El rotulador no sea negro ni verde.]
#v(1fr)
#subquestion[El rotulador sea amarillo.]
#v(1fr)

#pagebreak()

#question()[Tras 25 días de proceso de envasado, el control de calidad de una empresa ha detectado diariamente el siguiente número de botes defectuosos:
#align(center,
  table(
    fill: (x, y) =>
      if(x == 0) { luma(230) },
    // columns: (1.5cm, 1.5cm,  1.5cm, 1.5cm, 1.5cm, 1.5cm),
    columns: (3cm, 1cm,  1cm, 1cm, 1cm,  1cm, 1cm),
    // rows: (1.2cm,)*6,
    // [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %],[$F_i$]
    [Nº de botes],[0], [1], [2], [3], [4], [5],
    [Nº de días], [1], [3], [8], [10], [2], [1],
))
]

#subquestion(points:1)[Clasifica el carácter estadístico estudiado y termina la siguiente tabla de frecuencias absoluta y relativa
#v(0.8cm)
#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    // columns: (1.5cm, 1.5cm,  1.5cm, 1.5cm, 1.5cm, 1.5cm),
    columns: (2.5cm, 4cm,  4cm, 4cm),
    // rows: (1.2cm,)*6,
    // [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %],[$F_i$]
    [Valor],[F. absoluta], [F. relativa],[Porcentaje],
    [0], [1], [0,04], [],
    [1], [3], [0,12], [],
    [2], [8], [0,32], [32%],
    [3], [10], [], [40%],
    [4], [], [], [],
    [5], [], [], [],
))
]

#subquestion(points:1)[Representa los datos en un diagrama de barras.]
#v(1fr)

#subquestion(points:1)[Calcula la media, la moda y la mediana si tienen sentido calcularla.]
#v(1fr)

#pagebreak()

#question(points:1)[Expresa como una única potencia:]
#subquestion[$display((-54)^86 dot (-54)^15)$=]
#v(1fr)
#subquestion[$display((-2)^125 dot (-3)^125)$=]
#v(1fr)
#subquestion[$display([(-432)^32]^54)$=]
#v(1fr)
#subquestion[$display((-2)^125 colon (-3)^125)$=]
#v(1fr)

#question(points:2)[Realiza la siguiente operación combinada con números enteros (indicando todos los pasos):]
\ \
$display(3 dot (4-1) + (2^2 - 5)^2 dot  (1-7) - root(3, 5 dot (5 - 30)))$=

#v(3fr)

#pagebreak()

#question(points:2)[Realiza la siguiente operación combinada con fracciones (indicando todos los pasos):]
\ \ 
$display(2/5 - (5/4 - 2) colon (3/4 - 7/6) + 3/2)$ =