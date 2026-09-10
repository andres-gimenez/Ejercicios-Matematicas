#import "@preview/theorion:0.6.0": *
// #import cosmos.simple: *
#import cosmos.fancy: *
// #import cosmos.rainbow: *
// #import cosmos.clouds: *
#show: show-theorion

#set page(height: auto)
#set heading(numbering: "1.1")
#set text(lang: "es")
#set par(first-line-indent: 1em, justify: true)

#set-inherited-levels(1)
#set-zero-fill(true)
#set-leading-zero(true)
#set-theorion-numbering("1.1")

= Límites

#definition[Límite][
  $
    limits("lím")_(x -> a) f(x) = L <=>
    forall epsilon > 0, exists delta(epsilon) > 0
    |
    forall x,
    0 < |x-a| < delta => |f(x)-L| < epsilon
  $
]

#proposition[El límite es único][
  Si $display(limits("lím")_(x -> a) f(x) = l)$ y $display(limits("lím")_(x -> a) f(x) = m)$
  $=>$ $l = m$
]

#definition[Límite igual a $+oo$][
  $
    limits("lím")_(x->a) f(x) = +infinity
    quad <=> quad
    forall N > 0, exists delta(N) > 0 |
    0 < |x-a| < delta => f(x) > N
  $
]

#definition[Límite igual a $-oo$][
  $
    limits("lím")_(x -> a) f(x) = -infinity
    quad <=> quad
    forall N < 0, exists delta(N) > 0 |
    0 < |x-a| < delta => f(x) < N
  $
]

#definition[Límite cuando $x->oo$][
  $
    limits("lím")_(x -> infinity) f(x) = L
    quad <=> quad
    forall epsilon > 0, exists M(epsilon) > 0
    |
    |x| > M => |f(x)-L| < epsilon
  $
]

#definition[Límite cuando $x->oo$ y es igual a $+oo$][
  $
    limits("lím")_(x -> infinity) f(x) = infinity
    quad <=> quad
    forall N > 0, exists M(N) > 0
    |
    x > M => f(x) > N
  $
]

#pagebreak()

== Operaciones con límites

#proposition[
  Si $display(limits("lím")_(x -> a) f(x) = a)$ y $display(limits("lím")_(x -> a) g(x) = b)$

  entonces:

  - $limits("lím")_(x -> a) [f(x) + g(x)]
    =
    limits("lím")_(x -> a) f(x) + limits("lím")_(x -> a) g(x)
    =
    a + b$

  - $limits("lím")_(x -> a) [f(x) - g(x)]
    =
    limits("lím")_(x -> a) f(x) - limits("lím")_(x -> a) g(x)
    =
    a - b$

  - $limits("lím")_(x -> a) [f(x) dot g(x)]
    =
    limits("lím")_(x -> a) f(x) dot limits("lím")_(x -> a) g(x)
    =
    a dot b$

  - $display(
      "Si" b != 0 => limits("lím")_(x -> a) frac(f(x), g(x))
      =
      frac(limits("lím")_(x -> a) f(x), limits("lím")_(x -> a) g(x))
      =
      frac(a, b)
    )$

  - $display(
      "Si" f(x) > 0 =>
      limits("lím")_(x -> a) f(x)^(g(x))
      =
      [limits("lím")_(x -> a) f(x)]^[limits("lím")_(x -> a) g(x)]
      =
      a^b
    )$

  - $display(
      "Si" n "es" "impar" =>
      limits("lím")_(x -> a) root(n, f(x))
      =
      root(n, limits("lím")_(x -> a) f(x))
      =
      root(n, a)
    )$

  - $display(
      "Si" n "es" "par" "," f(x) > 0 =>
      limits("lím")_(x -> a) root(n, f(x))
      =
      root(n, limits("lím")_(x -> a) f(x))
      =
      root(n, a)
    )$

  - $"Si"
    alpha > 0,
    quad alpha != 1,
    quad f(x) > 0
    =>
    limits("lím")_(x -> a) [log_alpha f(x)]
    =
    log_alpha [limits("lím")_(x -> a) f(x)]
    =
    log_alpha a$
]
