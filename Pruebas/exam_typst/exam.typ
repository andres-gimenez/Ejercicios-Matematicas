#import "@preview/oxifmt:0.2.0": strfmt

#let question-number = counter("question-number")
#let question-point = state("question-point", 0)

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

  locate(loc => {
    
    locate(loc => {
      let question-locations = query(<question-localization>, loc)
      for question-location in question-locations {
        let q-number = question-number.at(question-location.location())
        [
          Number ->
          #q-number.first() 
          \
        ]  

        let q-point = question-point.at(question-location.location())
        [ 
          Point ->
          #q-point
          \
        ]
      }

    })
  })

  

  let columnsNumber = range(0, questions.len() + 2)
  
  let questionRow = columnsNumber.map(n => 
    {
      if n == 0 {align(left + horizon)[Pregunta]}
      else if n == questions.len() + 1 {align(left + horizon)[Total]}
      else [ #n ]
    }
  )

  let totalPoint = 0
  if questions.len() > 0 { 
    let totalPoint = questions.map(q => q.points).sum()
  }

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

#let exam(
  author: (
    name: none,
    email: none,
    watermark: none
  ),
  school: (
    name: none,
    logo: none,
  ),
  exam-info: (
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
  languaje: "en",
 
  show-studen-data: true,
  show-grade-table: true,
  decimal-separator: ".",
  // questions: (),
  body,
) = {
  
  set par(justify: true) 

  set document(
    title: school.name + " " + exam-info.content,
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
        image(school.logo, height:1.5cm, fit: "contain"),
        align(left  + top)[
          #school.name \  
          #exam-info.academic-period \
        ], 
        align(center + top)[
          // #exam-info.number #exam-info.content \
        ],
        align(right + top)[
          #exam-info.academic-level #exam-info.academic-subject \
          #exam-info.number \
          #exam-info.content 
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
            if exam-info.model != none {
              text(size:8pt, luma(90))[#exam-info.model]
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
      // questions: questions,
    )
    v(10pt)
  }

  // let numberQuestion = 0
  // for question in questions {
  //   numberQuestion+=1
  //   // grid(
  //   //   columns:(auto, 1fr, auto),
  //     [#numberQuestion. #h(4pt) (#strfmt("{0}", question.points, fmt-decimal-separator: decimal-separator) puntos) #h(4pt)]
  //     [#question.content]
  //     // [#h(6pt) (#question.points puntos)]
  //   // )
  //   // grid(
  //   //   columns:(auto, 1fr, auto),
  //   //   [#numberQuestion. #h(4pt)],
  //   //   [#question.content],
  //   //   [#h(6pt) (#question.points puntos)]
  //   // )
  //   // figure(
  //   //   // placement:bottom,
  //   //   placement:auto,
  //   //   [(#question.points puntos)]
  //   // )
  //   // [#v(1fr)]
  // }

  // Main body.
  set par(justify: true) 
  
  // pagebreak(weak:true)
  body
  [<endexam>]
}

#let question(body, point : 1,answer : []) = {
  (body : body, point : point, answer : answer)
}

#let question2(body, point : 1, answer : []) = {
  // [#numberQuestion. #h(4pt) (#strfmt("{0}", point, fmt-decimal-separator: decimal-separator) puntos) #h(4pt)]
  question-number.step() 
  question-point.update(p => point)
  [#question-number.display(). #h(4pt) (#strfmt("{0}", point, fmt-decimal-separator: ",") puntos) #h(4pt)]
  [
    #body \
    <question-localization>
  ]
}

// #let questions(
//   show-answer:false,
//   decimal-separator: ".",
//   ..questions,
// ) = {
//   let numberQuestion = 0

//   // for question in questionss.pos().map(i => i) {
//   for question in questions.pos() {
//     numberQuestion+=1
//     [#numberQuestion. #h(4pt) (#strfmt("{0}", question.point, fmt-decimal-separator: decimal-separator) puntos) #h(4pt)]
//     [
//       #question.body \
//     ]

//   }

//   // questionshow.join([a])

// }