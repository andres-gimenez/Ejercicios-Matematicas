#import "@preview/g-exam:0.4.2": *
#import "@preview/wrap-it:0.1.0": wrap-content

#show: exam.with(
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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2ª evaluación - Examen global",
    content: "Fracciones, proporcionalidad y estadística",
    model: "Modelo (Adaptación)"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 2, day: 18),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  // question-text-parameters: (size: 30pt, spacing:150%)
  question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#question(points:2)[Resuelve las siguientes operaciones con fracciones:]

#subquestion()[$(5/4 + 7/4) + (72/4 - 2 / 4)=$]
#v(1fr)
#subquestion()[$17/8 - 2/8 + (13/8 - 1/8)=$]
#v(1fr)
#subquestion()[$(17/21 - 2/21) + 4 / 21=$]
#v(1fr)
#subquestion()[$56/30 - (2/30 + 13 / 30)=$]
#v(1fr)

#pagebreak()

#question(points:2)[Compara las siguientes fracciones y di si es "<", "> ó "=".]
#subquestion()[$display(6/7)$ #h(1cm) $display(14/7)$]
#v(1fr)
#subquestion()[$display(25/10)$ #h(1cm) $display(25/38)$]
#v(1fr)
#subquestion()[$display(13/8)$ #h(1cm) $display(36/8)$]
#v(1fr)
#subquestion()[$display(24/16)$ #h(1cm) $display(24/16)$]
#v(1fr)
#subquestion()[$display(5/9)$ #h(1cm) $display(5/25)$]
#v(1fr)
#subquestion()[$display(9/2)$ #h(1cm) $display(9/2)$]
#v(1fr)
#subquestion()[$display(17/32)$ #h(1cm) $display(17/25)$]
#v(1fr)
#subquestion()[$display(17/6)$ #h(1cm) $display(17/25)$]
#v(1fr)

#pagebreak()
#question(points:2)[Completa con fracciones equivalentes a partir de la fracción dada.]
#subquestion()[$display(6/8)=$]
#v(1fr)
#subquestion()[$display(8/7)=$]
#v(1fr)
#subquestion()[$display(12/3)=$]
#v(1fr)
#subquestion()[$display(15/5)=$]
#v(1fr)
#subquestion()[$display(7/9)=$]
#v(1fr)
#subquestion()[$display(5/20)=$]
#v(1fr)
#subquestion()[$display(24/14)=$]
#v(1fr)
#subquestion()[$display(13/26)=$]
#v(1fr)
// #question(points:1.75)[¿Si unas zapatillas cuestan 30€ más IVA, cuanto tengo que pagar por ellas?]
// #v(1fr)

// #question(points:0.75)[¿Si un televisor que costaba 800€, ahora lo venden por 600€, ¿qué descuento le han hecho?]
// #v(1fr)

// #pagebreak()

// #question(points:1.75)[Una fotocopiadora imprime 200 páginas en 10 minutos. ¿Cuántas páginas imprimirá en 25 minutos?]
// #v(1fr)

// #question(points:0.75)[Un equipo de 6 pintores tarda 12 días en pintar una casa. ¿Cuántos días tardará un equipo de 9 pintores si trabajan al mismo ritmo?]
// #v(1fr)

#pagebreak()

#question(points:2)[En un cumpleaños se reparten caramelos. 
A Carla le dieron 1/9 de los caramelos, a Luis 2/9 del total y a
María 5/9.]

#subquestion()[¿Qué fracción de los caramelos han recibido entre los 3?]
#v(1fr)

// #subquestion()[¿Qué fracción de caramelos queda sin repartir?]
// #v(1fr)

#subquestion()[Si había 9 caramelos, ¿cuántos recibió María?]
#v(1fr)

#pagebreak()

#question(points:0.5)[De la siguientes variables estadísticas, indica si son cualitativas o cuantitativas:

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
  columns: (10cm, 7cm),
  rows:(auto, auto),
  [Variable], [Cualitativa / Cuantitativa],
  [El color de los ojos de una persona], [],
  [La altura de los alumnos en metros	], [],
  [La cantidad de libros en una estantería], [],
  [El tipo de música favorita	], [],	
  [La temperatura en grados centígrados], [],
))
]

#pagebreak()
#question(points:1.5)[Calcula la media de los siguientes valores y haz una tabla para organizar los datos.]

#subquestion()[
#align(center,
  table(
  columns: 6,
  rows:(auto),
  [8], [4], [6], [2], [4], [6] 
))
]
#v(1fr)

#subquestion()[
#align(center,
  table(
  columns: 6,
  rows:(auto),
  [16], [2], [5], [4], [4], [5] 
))
]
#v(1fr)

// #question(points:1)[En un partido de baloncesto cada uno de los jugadores de un equipo han anotado los siguientes puntos:

// #align(center,
//   table(
//   columns: 9,
//   rows:(auto),

//   [0], [5], [5], [6], [6], [7], [7], [7], [15] 
// ))
// ]
// #subquestion()[Calcula la media aritmética.]
// #subquestion()[Encuentra la moda.]
// #subquestion()[Determina la mediana.]

