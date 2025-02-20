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
  // question-text-parameters: (size: 14pt, spacing:150%)
  question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#question()[Resuelve las siguientes operaciones con fracciones:]

#subquestion(points:2)[$(5/2 + 7/5) dot (7/3 - 5 / 7)=$]
#v(1fr)
#subquestion(points:2)[$(5/21 - 6/35) colon 4 / 15=$]
#v(1fr)

#pagebreak()

#question(points:1.75)[¿Si unas zapatillas cuestan 30€ más IVA, cuanto tengo que pagar por ellas?]
#v(1fr)

// #question(points:0.75)[¿Si un televisor que costaba 800€, ahora lo venden por 600€, ¿qué descuento le han hecho?]
// #v(1fr)

#pagebreak()

#question(points:1.75)[Una fotocopiadora imprime 200 páginas en 10 minutos. ¿Cuántas páginas imprimirá en 25 minutos?]
#v(1fr)

// #question(points:0.75)[Un equipo de 6 pintores tarda 12 días en pintar una casa. ¿Cuántos días tardará un equipo de 9 pintores si trabajan al mismo ritmo?]
// #v(1fr)

#pagebreak()

#question(points:2)[En un cumpleaños se reparten caramelos. 
A Carla le dieron 1/3 de los caramelos, a Luis 1/4 del total y a
María 1/6.]

#subquestion()[¿Qué fracción de los caramelos han recibido entre los tres?]
#v(1fr)

// #subquestion()[¿Qué fracción de caramelos queda sin repartir?]
// #v(1fr)

#subquestion()[Si había 30 caramelos, ¿cuántos recibió María?]
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

