// Questions 
#let cuestions = ()


#let studentData = [
  Apellido: ______________________ Nombre: ____________________ \
  Grupo: ______________ Fecha: ______________
]

#let gradeTableHeader = [
  #align(center, 
    [#table(
      columns: (auto, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, auto),
      rows: (auto, auto, 30pt),
      inset: 5pt,
      align: (x, y) => (left, center, center, center, center, center, center, center).at(x),
      // align: (x,y) => (center, center, center).at(y),
      [Pregunta], [1], [2],[3],[4],[5],[6], [Total],
      [Puntos], [2], [2], [2], [2], [2], [2], [10], 
      [Calificación], [], [], [], [], [], [], [],
    )
    ]
  )
]


#let question(point, content) = {

  // cuestions.push(1)
  
  [
  //   // 

     #content  (#point puntos)
  ]
}



#let exam(
  title: "",
  authors: (),
  date: none,
  logo: none,
  body,
) = {
  
set page(
    paper: "a4", 
    margin: (top: 5cm, bottom:4cm),
    numbering: "1",

    header: [
      Examen Matemáticas A 4º ESO
      #h(1fr)
      1ª evaluación 2º examen \
      IES Africa
      #h(1fr)
      Proporcionalidad \
      Curso 2023/2024
    ]
  )

  set text(lang: "es")


  // // Set the document's basic properties.
  // set document(author: authors.map(a => a.name), title: title)
  // set page(numbering: "1", number-align: center)
  // set text(font: "Linux Libertine", lang: "es")
  // set heading(numbering: "1.1.")

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

  // Main body.
  set par(justify: true) 
  
  body
}