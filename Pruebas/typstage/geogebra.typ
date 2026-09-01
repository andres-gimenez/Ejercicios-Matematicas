#import "@preview/typstage:0.1.0": *

#presentation(
  slide([Remote controlled], {
    geogebra(app: "classic", perspective: "G", height: 240pt, link: "https://www.geogebra.org/calculator")
    ggb-run("a=1", "f(x)=a*x^2")
    ggb-set((a: 3), at: 2)
  }),
)
