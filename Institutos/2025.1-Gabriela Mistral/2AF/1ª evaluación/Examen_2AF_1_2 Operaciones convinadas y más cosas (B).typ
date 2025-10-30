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
    number: "1ª evaluación - 2º parcial",
    content: "Operaciones combinadas y más cosas",
    model: [Modelo ◔], // ◔◓◮◤◨◨◫◢◨◫◱◵◹◾▶▨▢
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 3),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#question(points: 1.5)[Simplifica la siguiente fracción, descomponiendo previamente en factores primos y cancelando posteriormente.

$display(1008/2520=)$]


#v(1fr)

// #subquestion(points: 0.5)[$display(396/660=)$]
// #v(1fr)

#question(points:1.5)[Resuelve la siguiente operación combinada:]
#v(2mm)
$display(5/6 - 7/6 dot (2/5 + 5/2) - (7/10 + 3/5)) =$
#v(2fr)

#pagebreak()

#question()[Resuelve las siguientes operaciones combinadas:]
#subquestion(points: 1.5)[$display((2/3 + 7/21)+sqrt(52/7 + 22/14))=$]
#v(1fr)

#subquestion(points: 0.5)[$display(2/7 dot 7/3 + 2/11 dot 11/3 + 7/9 dot 9/3 - 2/5 dot 5/3 - 4/9 dot 9/3)=$]
#v(1fr)

#question()[Resuelve las siguientes operaciones combinadas, indicando todos los pasos:]
#subquestion(points:1)[$display(5-2dot[4 + 7 dot (2-7) + (3-7))])=$]
#v(1fr)

#subquestion(points:1)[$display((7-2)^2 + (2+7)^2 + (5-2)^2 + (5+2)^2)=$]
#v(1fr)

#pagebreak()

#question(points:0.5)[Aproxima por redondeo y truncamiento los siguientes decimales:]

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    columns: (3cm, 3cm,  3cm, 3cm),
    [],[Número], [Truncamiento], [Redondeo],
    [a la milésima],  [$"2,2528"$], [], [],
    [a la décima],    [$"63,237"$], [], [],
    [a la centésima], [$"5,386"$], [], [],
    [a la centésima], [$"23,"accent(7, \u{0311})$]
))

#question(points:1)[Sin calcular el resultado final, expresa las siguientes expresiones como una sola potencia o una sola raíz:]
#subquestion()[$display(345^3 dot 345^9 =)$]
#v(1fr)
#subquestion()[$display(35^5 dot 4^5 =)$]
#v(1fr)

#subquestion()[$display(sqrt(8) dot sqrt(2) =)$]
#v(1fr)


// #question(points:1)[Resuelve las siguientes operaciones]
// #subquestion(points:1)[$display(35^5 dot 4^5 =)$]
// #v(1fr)
// #subquestion(points:1)[$display(sqrt(8) dot sqrt(2) =)$]
// #v(1fr)
// #subquestion(points:1)[$display(sqrt(27) dot sqrt(3) =)$]
// #v(1fr)



#pagebreak()

#question(points:1.5)[Una tren de mercancías ha recorrido $187 "km"$ a $55 "km/h"$. ¿Cuánto tiempo ha invertido en el trayecto?]
#v(1fr)
