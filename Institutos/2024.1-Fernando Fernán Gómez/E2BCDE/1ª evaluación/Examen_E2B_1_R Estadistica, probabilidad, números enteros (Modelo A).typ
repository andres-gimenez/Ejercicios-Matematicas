#import "@preview/g-exam:0.4.2": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../../logo-ies_fernando_fernan_gomez.png")
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

#question(points:0.5)[En una promoción de una marca de refrescos, 
se están dando premios, introduciendo una marca en el reverso del tapón. Si cada 100 botellas, hay 4 en las que se imprime la marca. ¿Comprando una botella al azar, cual es la probabilidad de que nos toque el premio?]

#clarification([Recuerda que la probabilidad se expresa con un número entre 0 y 1.])
#v(1fr)

#question(points:0.5)[Tenemos que preparar un evento y hay que decidir si lo preparamos al aire libre o en interior. Al mirar la probabilidad de que llueva el día del evento, nos dicen que hay una probabilidad de 0,4 de que lo haga. ¿Qué probabilidad hay de que no llueva el día del evento? ]

#clarification([Recuerda que la probabilidad se expresa con un número entre 0 y 1.])
#v(1fr)

#question(points:1)[En el estuche, tenemos 3 bolígrafos azules, 2 negros, 4 rojos y 1 verde. Si sacamos un bolígrafo al azar, para hacer el examen, que probabilidad hay de que:]

#clarification([Recuerda que la probabilidad se expresa con un número entre 0 y 1.])

#subquestion[El bolígrafo sea azul.]
#v(1fr)
#subquestion[Si el examen solo lo podemos hacer con bolígrafo azul o negro, ¿qué probabilidad hay de que el bolígrafo me valga para realizar el examen?.]
#v(1fr)
#subquestion[El bolígrafo sea rosa.]
#v(1fr)

#pagebreak()

#question()[En una clase se ha preguntado a los alumnos la edad a la que tuvieron su primer móvil y la respuesta ha sido:

#align(center, [13, 13, 13, 15, 15, 15, 11, 12, 14, 13, 15, 12, 11, 13, 14, 15, 12, 11, 11, 15, 14]) 
]

#subquestion(points:1)[Termina la siguiente tabla de frecuencias absoluta y relativa
// #v(0.8cm)
#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    // columns: (1.5cm, 1.5cm,  1.5cm, 1.5cm, 1.5cm, 1.5cm),
    columns: (2.5cm, 4cm,  4cm, 4cm),
    // rows: (1.2cm,)*6,
    // [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %],[$F_i$]
    [Valor ($x_i$)],[F. absoluta ($n_i$)], [F. relativa ($f_i$)],[Porcentaje ($p_i$)],
    [11], [4], [0,19], [],
    [12], [3], [0,14], [14%],
    [13], [], [], [],
    [14], [], [], [],
    [15], [6], [0,29], [],
    [Suma:], [], [1], [100%]
))
]

#subquestion(points:1)[Representa los datos en un diagrama de barras.]
#v(1fr)

#subquestion(points:1)[Calcula la media, la moda y la mediana si tienen sentido calcularla.]
#v(1fr)

#pagebreak()

#question()[Realiza las siguientes operaciones combinadas con números enteros (indicando todos los pasos):]
#subquestion(points:1)[$display(3 dot (4-3) + (3^2 - 5)^2 dot  (2-7))$=]
#v(1fr)

#subquestion(points:1)[$display(3 dot (5-9) + root(3, 5 dot (5 - 30)))$=]
#v(1fr)

#pagebreak()

#question(points:1)[Expresa como una única potencia:]
#subquestion[$display((-54)^86 dot (-54)^315)$=]
#v(1fr)
#subquestion[$display((-4)^125 dot (-5)^125)$=]
#v(1fr)
#subquestion[$display([(-432)^42]^27)$=]
#v(1fr)
#subquestion[$display((-18)^235 colon (-6)^235)$=]
#v(1fr)

#question(points:2)[Realiza la siguiente operación combinada con fracciones (indicando todos los pasos):]
\ \ 
$display(-(-5/9) dot (3/12 + 9/18))$ =
#v(6fr)