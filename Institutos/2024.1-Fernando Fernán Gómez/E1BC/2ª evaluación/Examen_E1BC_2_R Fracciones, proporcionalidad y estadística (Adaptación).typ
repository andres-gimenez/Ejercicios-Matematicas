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
    number: "2ª evaluación - Examen recuperación",
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

#subquestion()[$(2/5 + 6/5) + (68/5 - 7 / 5)=$]
#v(1fr)
#subquestion()[$15/7 - 5/7 + (6/7 - 2/7)=$]
#v(1fr)
#subquestion()[$(27/37 - 5/37) + 28 / 37=$]
#v(1fr)
#subquestion()[$26/22 - (5/22 + 8 / 22)=$]
#v(1fr)

#pagebreak()

#question(points:2)[Compara las siguientes fracciones y di si es "<", "> ó "=".]
#subquestion()[$display(5/3)$ #h(1cm) $display(15/3)$]
#v(1fr)
#subquestion()[$display(32/12)$ #h(1cm) $display(32/18)$]
#v(1fr)
#subquestion()[$display(15/7)$ #h(1cm) $display(27/7)$]
#v(1fr)
#subquestion()[$display(18/14)$ #h(1cm) $display(52/14)$]
#v(1fr)
#subquestion()[$display(9/5)$ #h(1cm) $display(9/23)$]
#v(1fr)
// #subquestion()[$display(9/2)$ #h(1cm) $display(9/2)$]
// #v(1fr)
// #subquestion()[$display(17/32)$ #h(1cm) $display(17/25)$]
// #v(1fr)
// #subquestion()[$display(17/6)$ #h(1cm) $display(17/25)$]
#v(1fr)

#pagebreak()
#question(points:2)[Completa con fracciones equivalentes a partir de la fracción dada.]
#subquestion()[$display(6/8)=$]
#v(1fr)
#subquestion()[$display(5/4)=$]
#v(1fr)
#subquestion()[$display(3/12)=$]
#v(1fr)
#subquestion()[$display(14/7)=$]
#v(1fr)
#subquestion()[$display(9/7)=$]
#v(1fr)
// #subquestion()[$display(5/20)=$]
// #v(1fr)
// #subquestion()[$display(24/14)=$]
// #v(1fr)
// #subquestion()[$display(13/26)=$]
// #v(1fr)
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

#question(points:2)[En un cumpleaños se reparten chocolatinas. 
A Carmen le dieron 1/7 de las chocolatinas, a Marcos 2/7 del total y a
Irene 3/7.]

#subquestion()[¿Qué fracción de los caramelos han recibido entre los 3?]
#v(1fr)

// #subquestion()[¿Qué fracción de caramelos queda sin repartir?]
// #v(1fr)

#subquestion()[Si había 7 caramelos, ¿cuántos recibió Irene?]
#v(1fr)

#pagebreak()

#question(points:0.5)[De las siguientes variables estadísticas, indica si son cualitativas o cuantitativas:

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
  columns: (10cm, 7cm),
  rows:(auto, auto),
  [Variable], [Cualitativa / Cuantitativa],
  [Color de ojos (azul, verde, marrón)], [],
  [Número de hijos en una familia (0, 1, 2, 3...)], [],
  [Temperatura de un día: 23.5°C, 30.1°C, 15.8°C], [],
  [Tipo de mascota: (Perro, Gato, Ave, Pez)	], [],	
  [Número de goles marcados en un partido de fútbol (0, 2, 4, 5, ...)], [],
))
]

#pagebreak()
#question(points:1.5)[En un partido de baloncesto cada uno de los jugadores de un equipo han anotado los siguientes puntos:

#align(center,
  table(
  columns: 6,
  rows:(auto),
  [0], [0], [2], [5], [6], [10] 
))
Calcula la media de los puntos anotados por los jugadores.
]
#v(1fr)
