#set page(
  paper: "a4",
  margin: 2cm,
)

#set text(
  font: "Liberation Serif",
  size: 12pt,
)

#align(center)[
  #text(size: 20pt, weight: "bold")[
    Alumnos presentados a examen
  ]
]

#v(1cm)

*Fecha:* ................................

#v(1cm)

#let fila() = (
  table.cell(inset: (x: 6pt, y: 17pt))[],
  table.cell(inset: (x: 6pt, y: 17pt))[],
  table.cell(inset: (x: 6pt, y: 17pt))[],
)

#table(
  columns: (6fr, 2fr, 3fr),
  stroke: 0.9pt,

  [*Nombre del alumno*], [*Grupo*], [*Firma*],

  ..for _ in range(17) {
    (
      fila()
    )
  }
)

#pagebreak()

#table(
  columns: (6fr, 2fr, 3fr),
  stroke: 0.9pt,

  [*Nombre del alumno*], [*Grupo*], [*Firma*],

  ..for _ in range(21) {
    (
      fila()
    )
  }
)