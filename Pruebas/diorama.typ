#import "@preview/cetz:0.5.2"
#import "@preview/diorama:0.1.0": *

#cetz.canvas(length: 1cm, {
  import cetz.draw: *

  scene-sky(-1, 12, 7, bottom: 0)
  scene-ground(-1, 12, y: 0, depth: 1)

  scene-mountain((1, 0), (9, 0), (5, 6), snow: true)
  scene-person((0.5, 0), height: 0.55, variant: "pointing")
  scene-person((11, 0), height: 0.55)

  scene-sight-line((0.5, 0.48), (5, 6))
  scene-sight-line((11, 0.48), (5, 6))
  scene-dimension-arrow((0.5, 0), (11, 0), [550 m], offset: -0.9)
})
