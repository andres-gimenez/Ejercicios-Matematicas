#import "@preview/theorion:0.6.0": *
// #import cosmos.simple: *
#import cosmos.fancy: *
// #import cosmos.rainbow: *
// #import cosmos.clouds: *
#show: show-theorion

#set page(height: auto)
#set heading(numbering: "1.1")
#set text(lang: "en")
#set par(first-line-indent: 1em, justify: true)

== Repaso de funciones

#definition[
  Una *función* es una relación entre dos conjuntos en la que a cada
  elemento del conjunto origen le corresponde un solo elemento del
  conjunto imagen.

  $ f: RR -> RR $
]

#definition[
  La *composición de dos funciones* $f$ y $g$ es una función que se obtiene
  aplicando primero $g$ y después $f$.

  $ (f compose g)(x) = f(g(x)) $
]

*Ejemplo:*

$ f(x) = x^2 $

$ g(x) = x + 1 $

1. Primero aplicamos $g$:
  $ g(3) = 3 + 1 = 4 $

1. Después aplicamos $f$:
  $ f(4) = 16 $

Por tanto:

$ (f compose g)(3) = f(g(3)) = 16 $

Y en general:

$ (f compose g)(x) = f(x + 1) = (x + 1)^2 = x^2 + 2x + 1 $

- En general, $f compose g != g compose f$.
- El dominio de $f compose g$ está formado por todos los valores $x$ que
  pertenecen al dominio de $g$ y para los que $g(x)$ pertenecen al
  dominio de $f$.


=== Función inversa

La función inversa de una función $f$ es otra función, llamada $f^(-1)$,
que deshace la acción de $f$.

$ f^(-1)(f(x)) = x $

y

$ f(f^(-1)(x)) = x $

para cada $x$ del dominio correspondiente.

*Ejemplo:*

$ f(x) = 2x + 3 $

$ f^(-1)(x) = (x - 3) / 2 $


=== Continuidad en un intervalo

Una función se dice continua en un intervalo (finito o infinito) de
$RR$ si es continua en cada punto del intervalo.

- Polinomios: continuos en todo $RR$.
- $sqrt(x)$: continua en $x >= 0$.
- $e^x$: continua en $RR$.
- $ln(x)$: continua en $x > 0$.
- $display(P(x) / Q(x))$: continua si $Q(x) != 0$.
- $sin(x)$ y $cos(x)$: continuas en $RR$.
- $tan(x)$: continua en
  $RR in {pi/2 + k pi : k in ZZ}$.

==== Función de Dirichlet

La función de Dirichlet es una función no continua en ningún punto:

$
  f(x) = cases(
    0 "si" x in QQ,
    1 "si" x in.not QQ
  )
$
