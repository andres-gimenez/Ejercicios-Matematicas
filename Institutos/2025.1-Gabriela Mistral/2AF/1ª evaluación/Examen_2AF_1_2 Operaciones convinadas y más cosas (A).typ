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
    number: "1ª evaluación - 1º parcial",
    content: "Operaciones combinadas y más cosas",
    model: [Modelo ◔], // ◔◓◮◤◨◨◫◢◨◫◱◵◹◾▶▨▢
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 3, day: 11),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#question()[Simplifica las siguientes fracciones, descomponiendo previamente en factores primos y cancelando posteriormente.]
#subquestion(points: 0.5)[$display(4032/3920=)$]
#v(1fr)
#subquestion(points: 0.5)[$display(1008/2520=)$]
#v(1fr)

#subquestion(points: 0.5)[$display(396/660=)$]
#v(1fr)

#question()[Resuelve las siguientes operaciones combinadas:]
#subquestion(points: 1)[$display((2/3 + 7/21)+sqrt(52/7 + 22/14))=$]
#v(1fr)

#subquestion(points: 1)[$display((5/3 + 12/15)+sqrt(52/7 -  48/14))=$]
#v(1fr)

#subquestion(points: 1)[$display(2/7 dot 7/3 + 2/11 dot 11/3 + 7/9 dot 9/3 - 2/5 dot 5/3 - 2/5 dot 5/3)=$]
#v(1fr)

#subquestion(points: 1)[$display(2/3 dot 3/5 +13/7 dot 7/5 + 7/9 dot 9/13 - 13/3 dot 3/5 - 2/4 dot 4/5)=$]
#v(1fr)

#pagebreak()

#question()[Resuelve las siguientes operaciones combinadas, indicando todos los pasos:]
#subquestion(points:1)[$display(3-4dot[9 + 5 dot (5-8) + (2-4))])=$]
#v(1fr)

#subquestion(points:1)[$display(5-2dot[4 + 7 dot (2-7) + (3-7))])=$]
#v(1fr)

#subquestion(points:1)[$display((2-5)^2 + (5+2)^2 + (2-4)^2 + (5-2)^2)=$]
#v(1fr)

#subquestion(points:1)[$display((7-2)^2 + (2+7)^2 + (5-2)^2 + (5+2)^2)=$]
#v(1fr)

#question(points:1)[Sin calcular el resultado final, expresa las siguientes expresiones como una sola potencia o una sola raíz:]
#subquestion(points:1)[$display(345^3 dot 345^9 =)$]
#v(1fr)
#subquestion(points:1)[$display(35^5 dot 4^5 =)$]
#v(1fr)

#question(points:1)[Resuelve las siguientes operaciones]
#subquestion(points:1)[$display(35^5 dot 4^5 =)$]
#v(1fr)
#subquestion(points:1)[$display(sqrt(8) dot sqrt(2) =)$]
#v(1fr)
#subquestion(points:1)[$display(sqrt(27) dot sqrt(3) =)$]
#v(1fr)



#question(points:1)[Aproxima por redondeo y truncamiento los siguientes decimales:]

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    columns: (3cm, 3cm,  3cm, 3cm),
    [],[Número], [Truncamiento], [Redondeo],
    [a la milésima],  [$"5,2236"$], [], [],
    [a la décima],    [$"26,338"$], [], [],
    [a la centésima], [$"3,366"$], [], [],
    [a la centésima], [$"15,"accent(6, \u{0311})$]
))
$accent(3, \u{0311})$

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
