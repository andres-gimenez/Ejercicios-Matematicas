#let project(
  title: "",
  authors: (),
  date: none,
  logo: none,
  body,
) = {
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

  // // Author information.
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

  // v(2.4fr)
  // pagebreak()


  // // Table of contents.
  // outline(depth: 3, indent: true)
  // pagebreak()

  // table(
  //   columns: (1fr, auto, auto),
  //   inset: 10pt,
  //   align: horizon,
  //   [], [*Area*], [*Parameters*],
  //   image("cylinder.svg"),
  //   $ pi h (D^2 - d^2) / 4 $,
  //   [
  //     $h$: height \
  //     $D$: outer radius \
  //     $d$: inner radius
  //   ],
  //   image("tetrahedron.svg"),
  //   $ sqrt(2) / 12 a^3 $,
  //   [$a$: edge length]
  // )


  // Main body.
  set par(justify: true) 
  
  body
}