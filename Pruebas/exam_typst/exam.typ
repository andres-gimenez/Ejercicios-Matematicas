#import "@preview/oxifmt:0.2.0": strfmt

#let question-number = counter("question-number")
#let part-number = counter("part-number")
#let question-point = state("question-point", 0)

#let student-data(
  languaje: "en",
  show-two-lines: true
) = {
  [Appelido #box(width: 2fr, repeat[.]) Nombre: #box(width:1fr, repeat[.])]
  if show-two-lines {
    v(1pt)
    align(right, [Grupo: #box(width:2.5cm, repeat[.]) Fecha: #box(width:3cm, repeat[.])])
  }
}

#let grade-table-header(
  decimal-separator: ".",
  languaje: "en"
) = {
      locate(loc => {
        let question-locations = query(<question-localization>, loc)
        let columnsNumber = range(0, question-locations.len() + 2)
      
        let questionRow = columnsNumber.map(n => 
          {
            if n == 0 {align(left + horizon)[Pregunta]}
            else if n == question-locations.len() + 1 {align(left + horizon)[Total]}
            else [ #n ]
          }
        )

        let total-point = 0
        if question-locations.len() > 0 { 
          total-point = question-locations.map(ql => question-point.at(ql.location())).sum() 
        }

        let points = ()
        if question-locations.len() > 0 {
          points =  question-locations.map(ql => question-point.at(ql.location()))
        }
      
        let pointRow = columnsNumber.map(n => {
            if n == 0 {align(left + horizon)[Puntos]}
            else if n == question-locations.len() + 1 [#strfmt("{0:*>2}", calc.ceil(total-point), fmt-decimal-separator: decimal-separator)]
            else {
              let point = points.at(n - 1)
              [ #strfmt("{0}", point, fmt-decimal-separator: decimal-separator) ]
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
            else if n == question-locations.len() + 1 {auto}
            else {30pt}
          }),
          rows: (auto, auto, 30pt),
          ..questionRow.map(n => n),
          ..pointRow.map(n => n),
          ..calificationRow.map(n => n),
        )
      )
    }
  )
}

#let show-watermark(
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
) = {
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
        student-data(
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

      show-watermark(author: author, school: school, exam-info: exam-info)
    }
  )

  set text(lang:languaje)

  if show-grade-table == true {
      if show-studen-data == true {
        v(20pt)
      }
    grade-table-header(
      decimal-separator: decimal-separator,
      languaje: languaje,
      // questions: questions,
    )
    v(10pt)
  }

  set par(justify: true) 
  
  body
  [<end-exam>]
}

#let paint-tab(point: 0) = {
  [(#strfmt("{0}", point, fmt-decimal-separator: ",") puntos)]
}

#let question(point: 0, body) = {
  question-number.step() 
  question-point.update(p => point)
  

  locate(loc => {
      // let location = loc.position()
      // My location: \
      // [#loc.position()]
      // [#loc.position().y]
      [ \ ]
      [#question-number.display(). #h(4pt) #paint-tab(point: point) #h(4pt)]
      [
        #body \
        <question-localization>
      ]
      let pos = loc.position()
      place(
        top + right,
        float: true,
        clearance: 0pt,
        dx: pos.x - 30pt,
        dy: pos.y - 177pt,
        paint-tab(point: point)
      )
    })

  // [#question-number.display(). #h(4pt) (#strfmt("{0}", point, fmt-decimal-separator: ",") puntos) #h(4pt)]
  // [
  //   #body \
  //   <question-localization>
  // ]

  part-number.update(0)
}

#let part(point: 0, body) = {
  // question-number.step(level: 2) 
  part-number.step()
  question-point.update(p => p + point)

  [ \ ]
  [#h(14pt) (#part-number.display("a")) #h(4pt) #paint-tab(point: point) #h(4pt)]
  [
    #body 
    \
  ]
}
