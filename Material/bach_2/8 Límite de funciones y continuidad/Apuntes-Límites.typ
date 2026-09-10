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

#image("Apuntes-Limites_1.png")

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

== Operaciones con límites (finitos)

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

== Operaciones con límites (infinitos)

#proposition[
  Si $display(limits("lím")_(x -> a) f(x) = +infinity)$ y $display(limits("lím")_(x -> a) g(x) = +infinity)$

  - $limits("lím")_(x -> a) [f(x) + g(x)] = (+infinity) + (+infinity)$
]

#proposition[Sumas][

  $
    (+infinity) + l = (+infinity)
  $

  $
    (+infinity) + (+infinity) = (+infinity)
  $

  $
    (-infinity) + l = (-infinity)
  $

  $
    (-infinity) + (-infinity) = (-infinity)
  $

  $
    -(-infinity) = (+infinity)
  $
]

#proposition[Productos][

  $
    (+infinity) dot (+infinity) = (+infinity)
  $

  $
    (+infinity) dot (-infinity) = (-infinity)
  $

  $
    "Si" l > 0:
    cases(
      (+infinity) dot l = (+infinity),
      (-infinity) dot l = (-infinity)
    )
  $

  $
    "Si" l < 0:
    cases(
      (+infinity) dot l = (-infinity),
      (-infinity) dot l = (+infinity)
    )
  $
]

#proposition[Cocientes][
  $
    frac(l, (+infinity)) = 0
  $

  $
    frac(l, 0) = cases(
      (+infinity) & "si" l > 0,
      (-infinity) & "si" l < 0
    )
  $

  $
    frac(0, (+infinity)) = 0
  $
]

#proposition[Potencias][

  $
    (+infinity)^(+oo) = (+infinity)
  $

  $
    (+infinity)^(-oo) = 0
  $

  $ "Si" l > 0: (+infinity)^l = (+infinity) $

  $ "Si" l < 0: (+infinity)^l = 0 $

  $ "Si" l != 0: l^0 = 1 $

  $
    limits("lím")_(x -> 0^+) x^x = 1
  $

  $
    limits("lím")_(x -> 0^+) 0^x = 0
  $

  $
    "Si" l > 1:
    cases(
      l^(+infinity) = (+infinity),
      l^(-infinity) = 0
    )
  $

  $
    "Si" 0 < l < 1:
    cases(
      l^(+infinity) = 0,
      l^(-infinity) = (+infinity)
    )
  $
]

#proposition[Indeterminaciones][
  $
    frac(plus.minus infinity, plus.minus infinity)
  $

  $
    frac(0, 0)
  $

  $
    (plus.minus infinity) dot 0
  $

  $
    (plus.minus infinity) - (plus.minus infinity)
  $

  $
    (plus.minus infinity)^0
  $

  $
    0^0
  $

  $
    1^(plus.minus infinity)
  $
]
