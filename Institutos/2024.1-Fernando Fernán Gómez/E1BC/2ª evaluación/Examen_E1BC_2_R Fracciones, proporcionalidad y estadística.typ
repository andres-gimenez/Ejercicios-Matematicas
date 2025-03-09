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
    // model: [Modelo $alpha$]
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 2, day: 18),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#question()[Resuelve las siguientes operaciones con fracciones:]

#subquestion(points:2)[$(15/3 + 7/6) dot (5/2 - 6 / 8)=$]
#v(1fr)
#subquestion(points:2)[$(3/15 - 5/20) colon 2 / 5=$]
#v(1fr)

#pagebreak()

#question(points:1)[¿Si unas zapatillas cuestan 20€ más IVA, cuanto tengo que pagar por ellas?]
#v(1fr)

// #question(points:0.75)[¿Si un televisor que costaba 800€, ahora lo venden por 600€, ¿qué descuento le han hecho?]
// #v(1fr)

// #pagebreak()

#question(points:1)[Un coche recorre 240 km en 4 horas a velocidad constante. ¿Cuántos kilómetros recorrerá en 7 horas a la misma velocidad?]
#v(1fr)

#question(points:1)[6 obreros tardan 12 días en construir un muro. ¿Cuántos días tardará 9 obreros en hacer el mismo trabajo, si trabajan al mismo ritmo?]
#v(1fr)

#pagebreak()

#question(points:1.5)[En un cumpleaños se reparten caramelos. 
A Carla le dieron 1/3 de los caramelos, a Luis 1/4 del total y a
María 1/6.]

#subquestion()[¿Qué fracción de los caramelos han recibido entre los tres?]
#v(1fr)

#subquestion()[¿Qué fracción de caramelos queda sin repartir?]
#v(1fr)

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
  [Tipo de música favorita (rock, pop, reguetón...)], [],
  [Edad de los alumnos (12, 13, 14 años...)], [],
  [Número de hermanos (0, 1, 2, 3...)], [],
  [Estado del tiempo (soleado, nublado, lluvioso...)], [],	
  [Nota en matemáticas (5, 6, 7, 8...)], [],
))
]

#question(points:1)[En un partido de balonmano cada uno de los jugadores de un equipo han anotado el siguiente número de goles:]

#align(center,
  table(
  columns: 9,
  rows:(auto),

  [0], [0], [0], [0], [2], [2], [3], [4], [5] 
))

#subquestion()[Calcula la media aritmética.]
#subquestion()[Encuentra la moda.]
#subquestion()[Determina la mediana.]

