#import "@preview/g-exam:0.4.3": *
// #import "@preview/wrap-it:0.1.0": wrap-content

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz",
    email: "agimenezmunoz@educa.madrid.com",
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo: image("../../logo-ies_gabriela_mistral.png"),
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - Glocal (2ª parte)",
    content: "Operaciones combinadas y más cosas",
    model: [Modelo ◔], // ◔◓◮◤◨◨◫◢◨◫◱◵◹◾▶▨▢
    clarification: (
      [Escribe con *bolígrafo azul o negro*. Las respuestas *a lápiz no serán puntuadas*.],
      [Todas las respuestas deben estar *debidamente justificadas* para obtener la puntuación máxima.]
    )
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 1, day: 3),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#question(points: 1)[Resuelve las siguientes operaciones combinadas:]

  #subquestion()[$display(8 + 13 -(- 7)dot  2=)$
  #v(1fr)

  #subquestion()[$display(3^3 + (3^2 + sqrt(64) : 4) - 2^2=)$]
  #v(1fr)


  #subquestion()[$display((33","7 dot 4","5 + 7","2) : 0","05 = )$]
  #v(1fr)
]

#question(points: 0.75)[Simplifica utilizando propiedades de potencias y calcula el resultado:]

  #subquestion()[$display((10^5 dot 10^3) : 10^4 : 5^4= )$]
  #v(1fr)

  #subquestion()[$display((12^2 dot 4^2)^2 dot 3^2= )$]
  #v(1fr)

#pagebreak()

#question(points: 1.5)[En el almacén tenemos 100 cartones de zumo, 60 piezas de fruta y 40 bocadillos. Queremos guardarlos en cajas que tengan el mismo número de objetos. ¿Cuántos artículos habrá en cada caja? ¿Cuántas cajas harán falta?:]
#v(1fr)


#question(points: 0.75)[Disponemos de 126,92€ y queremos comprar un libro que cuesta 25,60€ y todos los tebeos que podamos adquirir. Si cada tebeo cuesta 5,96€, ¿cuántos tebeos podremos comprar?]
#v(1fr)

#pagebreak()

#question(points: 1.5)[Realiza las siguientes operaciones con fracciones:]

#subquestion()[$display(7 / 6 dot.op (- 2) - 1 - 1 / 4 dot.op (2 - 1 / 3) =)$]
#v(1fr)

#subquestion()[$display(3 / 4 dot.op (2 / 5 - 3 / 15) + 2 : 4 / 3 - 1 / 2 =)$]
#v(1fr)

#pagebreak()

#question(points: 1.25)[Un vendedor tiene un puesto de golosinas. Por la mañana vende la mitad de los caramelos que tiene en una cesta. Por la tarde vende la mitad de los que quedaron por la mañana y ve que le quedan aún 50 caramelos sin vender. ¿Cuántos caramelos tenía la cesta? Si cada caramelo tiene 5 gr. de azúcar, ¿cuántos gr. de azúcar tenían en total todos los caramelos?]
#v(1fr)

// #question(points: 1.25)[Por 5 días de trabajo he ganado 390€. ¿Cuánto ganaré por 18 días? ¿y por 3 días de trabajo?]
// #v(1fr)

#question(points: 1.25)[Marcos, Juan y Lucía trabajan en un bar, y deciden repartir las propinas que han recibido en función de las horas que han trabajado. Marcos ha trabajado 8 horas, Juan 6 horas y Lucía 4 horas. Si entre los tres han recibido 360€ de propinas, ¿cuánto le corresponde a cada uno?]
#v(1fr)