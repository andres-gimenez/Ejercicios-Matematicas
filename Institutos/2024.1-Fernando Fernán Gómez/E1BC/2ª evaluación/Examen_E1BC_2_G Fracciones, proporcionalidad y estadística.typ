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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2ª evaluación - Examen global",
    content: "Fracciones, proporcionalidad y estadística",
    model: "Modelo  A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2024, month: 12, day: 17),
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#set text(size: 14pt, spacing:200%)
#set math.cases(reverse: true)

#question()[Resuelve las siguientes operaciones con fracciones:]

#subquestion(points:2)[$(5/2 + 7/5) dot (7/3 - 5 / 7)$ =]
#v(1fr)
#subquestion(points:2)[$(5/21 - 6/35) colon 4 / 15  $ =]
#v(1fr)

// #pagebreak()
// #question(points:2)[Ana tiene 12 chocolatinas y quiere repartirlas entre sus amigos de la siguiente manera. Primero, le da 
// $1/4$ de las chocolatinas a su amiga Laura. Luego, le da $1/3$ de las chocolatinas a su amigo Javier.]

// #subquestion()[¿Cuántas chocolatinas recibe cada uno?]
// #v(1fr)

// #subquestion()[¿Qué fracción de chocolatinas le quedan a Ana?]
// #v(1fr)

// #subquestion()[Ordenando las fracciones que le queda a cada uno ¿Qué fracción es mayor?]
// #v(1fr)

// #pagebreak()
// #question(points:1)[Marta ha visto unos zapatos que cuestan 52€ más IVA. ¿Cuánto tiene que pagar por ellos si ha de pagar el 21% de IVA?]
// #v(21fr)

// #question(points:1)[Una receta de trufas para seis personas lleva 200 gramos de chocolate. ¿Cuántos gramos de chocolate se necesitan para hacer trufas para 130 personas?]
// #v(21fr)

// #pagebreak()
// #question(points:2)[Un coche recorre 150 kilómetros en 3 horas.]

// #subquestion()[¿Cuántos kilómetros recorrerá en 5 horas si mantiene la misma velocidad?]
// #v(1fr)

// #subquestion()[Si el coche debe recorrer 300 kilómetros, ¿cuánto tiempo tardará?]
// #v(1fr)

#pagebreak()

// #question()[Los estudiantes de un instituto han obtenido las siguientes calificaciones en un examen:]
// 5, 7, 7, 8, 6, 5, 10, 6, 6, 7

// #subquestion()[Calcula la media aritmética.]
// #subquestion()[Encuentra la moda.]
// #subquestion()[Determina la mediana.]

#question()[De la siguientes variables estadísticas, indica si son cualitativas o cuantitativas:]

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
  columns: (9cm, 5cm),
  rows:(auto, auto),
  // gutter:0pt,
  // [Edad], [12], [13],[14],[15],[16],[17],[18],
  // [Número de socios], [6], [8], [12], [17], [15], [7], [5]
  [Variable], [Cualitativa / Cuantitativa],
  [El color de los ojos de una persona], [],
  [La altura de los alumnos en metros	], [],
  [La cantidad de libros en una estantería], [],
  [El tipo de música favorita	], [],	
  [La temperatura en grados centígrados], [],
))

#question()[En un partido de baloncesto cada uno de los jugadores de un equipo han anotado los siguientes puntos:]

#align(center,
  table(
    // fill: (x, y) =>
    //   if(y == 0) { luma(230) },
  columns: 9,
  rows:(auto),
  // gutter:0pt,
  // [Edad], [12], [13],[14],[15],[16],[17],[18],
  // [Número de socios], [6], [8], [12], [17], [15], [7], [5]

  [0], [5], [5], [6], [6], [7], [7], [7], [15] 
))


#subquestion()[Calcula la media aritmética.]
#subquestion()[Encuentra la moda.]
#subquestion()[Determina la mediana.]

