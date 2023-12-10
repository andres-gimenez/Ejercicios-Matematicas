#import "@preview/oxifmt:0.2.0": strfmt

#let question-number = counter("question-number")
#let question-point = state("question-point", 0)
#let question-point-position-state = state("question-point-position", left)
#let localization = state("localization",
  (
    point: "point",
    points: "points",
  ))

#let student-data(
  languaje: "en",
  show-line-two: true
) = {
  [Apellidos: #box(width: 2fr, repeat[.]) Nombre: #box(width:1fr, repeat[.])]
  if show-line-two {
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
            else if n == question-locations.len() + 1 [#strfmt("{0:}", calc.ceil(total-point), fmt-decimal-separator: decimal-separator)]
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

#let question-numbering = (..args) => {
  let nums = args.pos()
  if nums.len() == 1 {
    numbering("1. ", nums.last())
  }
  else if nums.len() == 2 {
    numbering("(a) ", nums.last())
  }
  else if nums.len() == 3 {
    numbering("(i) ", nums.last())
  }
}

#let paint-tab = (point: none) => {
  if point != none {
    let label-point = "puntos"
    if point == 1 {
      label-point = "punto"
    }

    [(#emph[#strfmt("{0}", point, fmt-decimal-separator: ",") #label-point])]
  }
}

#let question(point: none, body) = {
  question-number.step(level: 1) 
  question-point.update(p => point)

  locate(loc => {
    let question-point-position = question-point-position-state.final(loc)
  
    if question-point-position == left {
      [#question-number.display(question-numbering) #paint-tab(point:point) #h(0.3em)]
      [
        #body \
        <question-localization>
      ]
    }
    else{
      grid(
        columns: (1em, 0.3em, 90%, 20%),
        rows: (auto),
        [ 
          #question-number.display(question-numbering)
        ],
        [],
        [
          #body \
          <question-localization>
        ], 
        [#h(0.7em) #paint-tab(point: point)]
      )
    }
  })
}

#let part(point: none, body) = {
  question-number.step(level: 2)
  question-point.update(p => p + point)

  locate(loc => {
      let question-point-position = question-point-position-state.final(loc)
    
      if question-point-position == left {
        [ \ ]
        [#h(14pt) #question-number.display(question-numbering) #paint-tab(point: point) #h(0.3em)]
        [
          #body 
          \
        ]
      }
      else{ 
        grid(
          columns: (1.5em, 1.5em, 0.3em, 90% - 1.5em, 20%),
          rows: (auto),
          [],
          [
           #question-number.display(question-numbering)
          ],
          [],
          [
            #body \
          ],
          [#h(0.7em) #paint-tab(point: point)]
        )
      }
    }
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
  question-point-position: left,
  body,
) = {
  
  let show-watermark = (
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
      ) => {
        place(
          top + right,
          float: true,
          clearance: 0pt,
          dx:60pt,
          dy:-115pt,
          rotate(270deg,
          origin: top + right,
            {
              if author.at("watermark", default: none) != none {
                text(size:7pt, fill:gray)[#author.watermark]
                h(35pt)
              }
              if exam-info.at("model", default: none) != none {
                text(size:8pt, luma(90))[#exam-info.model]
              }
            }
          )
        )
  }

  let document-name = ""
  if exam-info.at("name", default: none) != none { document-name += " " + exam-info.name }
  if exam-info.at("content", default: none) != none { document-name += " " + exam-info.content }
  if exam-info.at("number", default: none) != none { document-name += " " + exam-info.number }
  if exam-info.at("model", default: none) != none { document-name += " " + exam-info.model }

  set document(
    title: document-name.trim(" "),
    author: author.name
  )

  set page(
    paper: "a4", 
    margin: (top: 5cm, bottom:3cm),
    numbering: "1 / 1",
    number-align: right,
    header-ascent: 20%,
    header:locate(loc => {
        let page-number = counter(page).at(loc).first()
        if (page-number==1) { 
          align(right)[#box(
            width:105%,
            grid(
              columns: (auto, auto),
              gutter:0.7em,        
              align(left + top)[
                #image(school.logo, height:2.5cm, fit: "contain")
              ],
              grid(
                rows: (auto, auto, auto),
                gutter:1em,    
                  grid(
                    columns: (auto, 1fr, auto),
                    align(left  + top)[
                      #school.name \  
                      #exam-info.academic-period \
                    ],
                    align(center + top)[
                    // #exam-info.number #exam-info.content \
                    ],
                    align(right + top)[
                      #exam-info.academic-level #exam-info.at("academic-subject", default: none)  \  
                      #exam-info.number \
                      #exam-info.content 
                    ],
                  ),
                  line(length: 100%, stroke: 1pt + gray),
                  student-data(
                    languaje: languaje,          
                  )
              )
          )
          )]
        }
        else if calc.rem-euclid(page-number, 2) == 1 {
            grid(
              columns: (auto, 1fr, auto),
              gutter:0.3em,
              align(left  + top)[
                #school.name \  
                #exam-info.academic-period \
              ], 
              align(center + top)[
                // #exam-info.number #exam-info.content \
              ],
              align(right + top)[
                #exam-info.academic-level #exam-info.at("academic-subject", default: none) \
                #exam-info.number \
                #exam-info.content 
              ]
            )
            line(length: 100%, stroke: 1pt + gray) 
            student-data(
                    languaje: languaje,       
                    show-line-two: false   
                  )
        }
        else {
           grid(
              columns: (auto, 1fr, auto),
              gutter:0.3em,
              align(left  + top)[
                #school.name \  
                #exam-info.academic-period
              ], 
              align(center + top)[
                // #exam-info.number #exam-info.content \
              ],
              align(right + top)[
                #exam-info.academic-level #exam-info.at("academic-subject", default: none) \
                #exam-info.number\
                #exam-info.content\
              ]
            )
            line(length: 100%, stroke: 1pt + gray) 
        }
      } 
    ),

    footer: {
      line(length: 100%, stroke: 1pt + gray) 
      grid(
        columns: (1fr, 1fr, 1fr),
        align(left)[#school.name],
        align(center)[#exam-info.academic-period],
        align(right)[
          Página 
          #counter(page).display({
            "1 de 1"},
            both: true,
          )
        ]
      )

      show-watermark(author: author, school: school, exam-info: exam-info)
    }
  )

  set par(justify: true) 
  set text(font: "New Computer Modern")

  question-point-position-state.update(u => question-point-position)

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
  
  // show heading.where(level: 1): it => {
  //   set block(above: 1.2em, below: 1em)
  //   set text(12pt, weight: "semibold")
  //   question(point: none)[#it.body]
  // }

  // show heading.where(level: 2): it => {
  //   set text(12pt, weight: "regular")
  //   part(point: none)[#it.body]
  // }


  set par(justify: true) 

  body
  [<end-exam>]
}


