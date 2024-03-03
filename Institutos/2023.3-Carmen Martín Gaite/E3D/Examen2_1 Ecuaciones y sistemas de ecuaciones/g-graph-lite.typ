#import "@preview/cetz:0.2.1"

#let g-plot-axes(
      size: (5, 5),
      x-max: 5,
      x-min:-5,
      y-max: 5,
      y-min:-5,
      x-tick-step:1,
      y-tick-step:1,
) = {
  cetz.canvas(length: 0.7cm, {
      cetz.plot.plot(
        // axes: ("x", "y"),
        size: size,
        axis-style: "school-book",
        fill: "o" ,
        fill-below: true,
        // horizontal:false,
        x-domain: (-10, 10),
        y-domain: (-10, 10),
        x-max: x-max,
        x-min: x-min,
        y-max: y-max,
        y-min: y-min,
        // grid: (stroke:(paint: gray.lighten(20%))
        x-grid: "both",
        y-grid: "both",
        // x-tick-step: none,
        x-tick-step: x-tick-step,
        // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
        y-tick-step: y-tick-step,
        // x-minor-tick-step: 0.2,
        // y-minor-tick-step: 0.2,
        // y-minor-tick-color:
        // plot-style:(stroke: blue + 2pt),
        // mark-tyle:(stroke: blue + 2pt),
          {
            cetz.plot.add(((0,0),), mark-size: 0,)
          }
        )
      }
    )
}

