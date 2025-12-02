#import "@preview/cetz:0.2.0"

 #align(center+horizon, 
      cetz.canvas(length: 1.5cm, {
        cetz.plot.plot(
          // axes: ("x", "y"),
          size: (12, 11),
          axis-style: "school-book",
          fill: "o" ,
          fill-below: true,
          // horizontal:false,
          x-domain: (-10, 10),
          y-domain: (-10, 10),
          x-max: 10,
          x-min:-10,
          y-max: 10,
          y-min:-10,
          x-grid: "both",
          y-grid: "both",
          // x-tick-step: none,
          x-tick-step: 1,
          // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
          y-tick-step: 1,
          x-minor-tick-step: 1,
          y-minor-tick-step: 1,
            {
              cetz.plot.add(((0,0),), mark-size: 0,)
            }
          )
        }
      )
    )