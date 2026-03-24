#let inline-math-count = counter("inline-math-count")
#let shift-inline-math(body) = context {
  // Allocate a new state for each call to this function
  let y-shift = state("y-shift" + str(inline-math-count.get().first()), 0pt)
  inline-math-count.step()
  let begin-loc = here()
  // The wrapper ensures that the viewbox of rendered SVG math matches its bounding box.
  let wrapper = text.with(top-edge: "bounds", bottom-edge: "bounds")
  // For debugging: draw red box around the wrapper
  // let wrapper = it => box(wrapper(it), stroke: red)
  html.elem(
    "span",
    html.frame(wrapper(
      // Add invisible elements below the math body to measure its bottom position.
      math.attach(math.limits(body.body), b: pad([#none<_math_bot>], -1em))
        + sym.wj
        + math.attach(math.limits([#none]), b: pad([#none<_math_ref_bot>], -1em)),
    )),
    attrs: (
      // Rendered SVG defines its width & height in "em" units,
      // so we also convert y-shift relative to text size in "em" units.
      style: "vertical-align: -" + str(calc.round(y-shift.final() / text.size, digits: 2)) + "em;",
      class: "typst-inline-math",
    ),
  )
  context {
    let end-loc = here()
    let math-bot = query(
      selector(<_math_bot>).after(begin-loc).before(end-loc),
    )
    let math-ref-bot = query(
      selector(<_math_ref_bot>).after(begin-loc).before(end-loc),
    )
    if math-ref-bot.len() >= 1 {
      let y1 = math-bot.at(0).location().position().y
      let y2 = math-ref-bot.at(0).location().position().y
      let new-y-shift = y1 - y2
      if new-y-shift > y-shift.get() + 0.1pt {
        y-shift.update(old => new-y-shift)
      }
    }
  }
}

#let html-export-template(doc) = context {
  if target() != "html" {
    return doc
  }
  show math.equation.where(block: false): it => {
    // The target() function can be used to apply html.frame selectively only
    // when the export target is HTML.
    // When html.frame is applied to a figure, the target() for all the elements
    // inside will be set to "paged" instead.
    // https://github.com/typst/typst/issues/721#issuecomment-3064895139
    if target() == "html" {
      shift-inline-math(it)
    } else {
      it
    }
  }
  show math.equation.where(block: true): it => {
    html.elem(
      "div",
      html.frame(it),
      attrs: (class: "typst-display-math"),
    )
  }
  // Wrap code blocks in a div for styling
  show raw.where(block: true): it => {
    html.elem(
      "div",
      it,
      attrs: (class: "typst-code-block"),
    )
  }
  doc
}