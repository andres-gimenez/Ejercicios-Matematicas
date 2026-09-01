#import "@preview/typstage:0.1.0": *

#show: presentation.with(
  title: [Punto, Recta y Plano en el Espacio],
  author: [Andrés Jorge Giménez Muñoz],
  transition: "slide",
  theme: themes.lesson + (accent: blue),
  width: 800pt,
  height: 600pt,
  speaker-view: (
    clock: false, // no class clock
    pen: (colors: (red, green, blue)), // your own pen colours
  ),
  handout: 3,
  // pen: (colors: (red, green, blue)),
  // clock:false
  // palette: palettes.light,
)

#for element in ("Water", "Air", "Earth") [
  == #element
  Something about #element.
]


== What we see
#stagger[
  - The sun stands equally high for both.
  - So the angle is the same.
  - So the triangles are similar.
]

#callout[
  In similar triangles corresponding sides stand in the same ratio.
]

#align(center, morph(<tower>, $ h / 21 = 1.2 / 0.9 $))

==== Solved for h

#align(center, morph(<tower>, $ h = 21 dot 1.2 / 0.9 $))

$ h = 33 $

#statement[$ h = 28 "m" $]

== notas

#speaker-note[
  Let them work it out first, then show it. Anyone saying 28 has rounded --
  28.0 is more precise than the measurement allows.
]
