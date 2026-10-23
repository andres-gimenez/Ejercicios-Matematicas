#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4"

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    size: (14, 2),
    axis-style: "school-book",
    x-tick-step: none,
    y-tick-step: none,
    x-ticks: ((1, []), (2, []), (3, [])),
    x-label: [time],
    y-label: none,
    x-min: 0,
    x-max: 3,
    y-min: -1,
    y-max: 1,
    axes: (
      stroke: black,
      tick: (stroke: black),
    ),
    name: "plot",
    {
      plot.add(((0, 0), (3, 0)), style: (stroke: black))
      plot.add-anchor("production", (1.1, 0))
      plot.add-anchor("sales", (1.9, 0))

      plot.add-anchor("beginning-inventory", (1, -0.25))
      plot.add-anchor("ending-inventory", (2, -0.25))

      plot.annotate({
        content((0.5, -0.5), [day $t - 1$])
      })

      plot.annotate({
        content((1.5, -0.5), [day $t$])
      })
      plot.annotate({
        content((2.5, -0.5), [day $t + 1$])
      })
    },
  )
  line("plot.production", ((), "|-", (0, 1.5)), mark: (start: ">", fill: black), name: "productionline")
  content("productionline.end", [production], anchor: "south", padding: .1)

  line("plot.sales", ((), "|-", (0, 1.5)), mark: (start: ">", fill: black), name: "salesline")
  content("salesline.end", [sales], anchor: "south", padding: .1)

  line(
    "plot.beginning-inventory",
    ((), "|-", (0, 0.1)),
    mark: (start: ">", fill: black),
    name: "beginning-inventoryline",
  )
  content("beginning-inventoryline.end", [beginning\ inventory], anchor: "north", padding: 0.1)

  line("plot.ending-inventory", ((), "|-", (0, 0.1)), mark: (start: ">", fill: black), name: "ending-inventoryline")
  content("ending-inventoryline.end", [beginning\ inventory], anchor: "north", padding: 0.1)
})
