
#let studentData(
  languaje: "en",
) = [
  Apellido:  #box(width:2fr, repeat[.]) Nombre: #box(width:1fr, repeat[.]) \
  #v(1pt)
  #align(right, [Grupo: #box(width:2.5cm, repeat[.]) Fecha: #box(width:3cm, repeat[.])])
]

#let gradeTableHeader2(
  languaje: "en"
)= [
  #align(center, 
    [#figure(
      table(
        columns: (auto, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, auto),
        rows: (auto, auto, 30pt),
        inset: 5pt,
        align: (x, y) => (left, center, center, center, center, center, center, center).at(x),
        // align: (x,y) => (center, center, center).at(y),
        [Pregunta], [1], [2],[3],[4],[5],[6], [Total],
        [Puntos], [2], [2], [2], [2], [2], [2], [10], 
        [Calificación], [], [], [], [], [], [], [],
      )
    )
    ]
  )
]

#let gradeTableHeader(
  questions: (),
  languaje: "en"
) = {  
  let columnsNumber = range(0, questions.len() + 2)
  
  let questionRow = columnsNumber.map(n => 
    {
      if n == 0 [Pregunta]
      else if n == questions.len() + 1 [Total]
      else [ #n ]
    }
  )

  let totalPoint = questions.map(q => q.points).sum()

  let pointRow = columnsNumber.map(n => {
      if n == 0 [Puntos]
      else if n == questions.len() + 1 [#totalPoint]
      else {
        let question = questions.at(n - 1)
        [ #question.points ]
      }
    }
  )

  let calificationRow = columnsNumber.map(n => 
    {
      if n == 0 [Calificación]
    }
  )

  align(center, table(
    columns: columnsNumber.map( n => 
    {
      if n == 0 {auto}
      else if n == questions.len() + 1 {auto}
      else {30pt}
    }),
    rows: (auto, auto, 30pt),
    ..questionRow.map(n => n),
    ..pointRow.map(n => n),
    ..calificationRow.map(n => n),
  )
  )
}

// #let question(point, content) = {

//   //  numberQuestion = numberQuestion + 1 
//   // let question2 = question
//   let numberQuestion = questions.len()
//   // question2.insert(18, "cc")
//   // question2.insert(numberQuestion+1, "cc")
//   // questions.push(
//   //   number: questions.len()+1, 
//   //   point: point, 
//   //   content: content
//   // )
  
//   [
//   //   // 
//     #grid(
//       columns:(auto, 1fr, auto),
//       [#numberQuestion. #h(4pt)],
//       [#content],
//       [#h(6pt) (#point puntos)]
//     )
//   ]
// }

#let exam(
  title: "",
  authors: (),
  // date: none auto datetime,
  date: none,
  logo: none,
  show-studen-data: true,
  show-grade-table: true,
  languaje: "en",
  questions: (),
  body,
) = {
  
  set document(
    title: title,
    // author: authors.first(),
    // date: date
  )

  set page(
    paper: "a4", 
    margin: (top: 5cm, bottom:3cm),
    numbering: "1 / 1",
    number-align: right,

    // background:rotate(24deg,
    //   text(18pt, fill: rgb("FFCBC4"))[
    //     BORRADOR
    //   ]),

    header: [
      // #align(left,
        // figure(
          #image("logo.png", height:3cm)
        // ))
      Examen Matemáticas A 4º ESO
      #h(1fr)
      1ª evaluación 2º examen \
      IES Africa
      #h(1fr)
      Proporcionalidad \
      Curso 2023/2024 \
      // #line(length: 100%, stroke: 1pt + gray) 
    ],

    footer: [
      // #line(length: 100%, stroke: 1pt + gray) 
      #set align(right)
      #set text(9pt)
      #counter(page).display({
        "- 1 de 1 -"},
        both: true,
      )
    ]
  )

  set text(lang:languaje)

  // // Title page.
  // // The page can contain a logo if you pass one with `logo: "logo.png"`.
  // v(0.6fr)
  // if logo != none {
  //   align(right, image(logo, width: 26%))
  // }
  // v(9.6fr)

  // text(1.1em, date)
  // v(1.2em, weak: true)
  // text(2em, weight: 700, title)

  // Author information.
  // pad(
  //   top: 0.7em,
  //   right: 20%,
  //   grid(
  //     columns: (1fr,) * calc.min(3, authors.len()),
  //     gutter: 1em,
  //     ..authors.map(author => align(start)[
  //       *#author.name* \
  //       #author.email \
  //       #author.affiliation
  //     ]),
  //   ),
  // )

  if show-studen-data == true {
    studentData(
      languaje: languaje,
    )
    v(10pt)
  }

// #gradeTableHeader2()
// #v(10pt)

  if show-grade-table == true {
    gradeTableHeader(
      languaje: languaje,
      questions: questions,
    )
    v(10pt)
  }

  let numberQuestion = 0
  for question in questions {
    numberQuestion+=1

    grid(
      columns:(auto, 1fr, auto),
      [#numberQuestion. #h(4pt)],
      [#question.content],
      [#h(6pt) (#question.points puntos)]
    )
    // figure(
    //   // placement:bottom,
    //   placement:auto,
    //   [(#question.points puntos)]
    // )
    [#v(1fr)]
  }

  // Main body.
  set par(justify: true) 
  
  body
}