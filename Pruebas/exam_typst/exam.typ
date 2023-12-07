#import "@preview/oxifmt:0.2.0": strfmt

#let studentData(
  languaje: "en",
  show-two-lines: true
) = {
  [Appelido #box(width: 2fr, repeat[.]) Nombre: #box(width:1fr, repeat[.])]
  if show-two-lines {
    v(1pt)
    align(right, [Grupo: #box(width:2.5cm, repeat[.]) Fecha: #box(width:3cm, repeat[.])])
  }
}

#let gradeTableHeader(
  questions: (),
  decimal-separator: ".",
  languaje: "en"
) = {  
  let columnsNumber = range(0, questions.len() + 2)
  
  let questionRow = columnsNumber.map(n => 
    {
      if n == 0 {align(left + horizon)[Pregunta]}
      else if n == questions.len() + 1 {align(left + horizon)[Total]}
      else [ #n ]
    }
  )

  let totalPoint = questions.map(q => q.points).sum()

  let pointRow = columnsNumber.map(n => {
      if n == 0 {align(left + horizon)[Puntos]}
      else if n == questions.len() + 1 [#strfmt("{0}", totalPoint, fmt-decimal-separator: decimal-separator)]
      else {
        let question = questions.at(n - 1)
        [ #strfmt("{0}", question.points, fmt-decimal-separator: decimal-separator) ]
      }
    }
  )

  let calificationRow = columnsNumber.map(n => 
    {
      if n == 0 {align(left + horizon)[Calificación]}
    }
  )

  align(center, table(
    stroke: 0.8pt + luma(80),
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
  author: (
    name: none,
    email: none,
    watermark: none
  ),
  data: (
    school: none,
    academic-period: none,
    academic-level: none,
    academic-subject: none,
    number: none,
    content: none,
    model: none
  ),
  // date: none auto datetime,
  date: none,
  keywords: none,
  logo: none,
  languaje: "en",
  show-studen-data: true,
  show-grade-table: true,
  decimal-separator: ".",
  questions: (),
  body,
) = {
  
  set par(justify: true) 

  set document(
    title: data.school,
    author: author.name,
    // date: date,
    // keywords: keywords
  )

  set page(
    paper: "a4", 
    margin: (top: 6cm, bottom:3cm),
    numbering: "1 / 1",
    number-align: right,

    // background:rotate(24deg,
    //   text(18pt, fill: rgb("FFCBC4"))[
    //     BORRADOR
    //   ]),
    
    header-ascent: 
    {
      if show-studen-data == true {
        6%
      }
      else {
        30%
      }
    },
    header: {
      grid(
        columns: (auto, auto, 1fr, auto),
        gutter:12pt,
        image(logo, height:1.5cm, fit: "contain"),
        [IES África \  
        Curso 2023/2024 \
        1ª evaluación 2º examen
        ],        
        [],
        align(right)[
        4º ESO\
        Matemáticas A\
        Proporcionalidad \
        ]
      )
      line(length: 100%, stroke: 1pt + gray)
      if show-studen-data == true {
        v(10pt)
        studentData(
          languaje: languaje,          
        )
      }
    },

    footer: {
      line(length: 100%, stroke: 1pt + gray) 
      set align(right)
      set text(9pt)
      counter(page).display({
        "1 de 1"},
        both: true,
      )

      place(
        top + right,
        float: true,
        clearance: 0pt,
        dx:30pt,
        dy:-115pt,
        rotate(270deg,
        origin: top + right,
          {
            if author.watermark != none {
              text(size:7pt, fill:gray)[#author.watermark]
              h(35pt)
            }
            if data.model != none {
              text(size:8pt, luma(90))[#data.model]
            }
          }
        )
      )
    }
  )

  set text(lang:languaje)

  if show-grade-table == true {
      if show-studen-data == true {
        v(20pt)
      }
    gradeTableHeader(
      decimal-separator: decimal-separator,
      languaje: languaje,
      questions: questions,
    )
    v(10pt)
  }

  let numberQuestion = 0
  for question in questions {
    numberQuestion+=1
    // grid(
    //   columns:(auto, 1fr, auto),
      [#numberQuestion. #h(4pt) (#strfmt("{0}", question.points, fmt-decimal-separator: decimal-separator) puntos) #h(4pt)]
      [#question.content]
      // [#h(6pt) (#question.points puntos)]
    // )
    // grid(
    //   columns:(auto, 1fr, auto),
    //   [#numberQuestion. #h(4pt)],
    //   [#question.content],
    //   [#h(6pt) (#question.points puntos)]
    // )
    // figure(
    //   // placement:bottom,
    //   placement:auto,
    //   [(#question.points puntos)]
    // )
    // [#v(1fr)]
  }

  // Main body.
  set par(justify: true) 
  
  // pagebreak(weak:true)
  body
}