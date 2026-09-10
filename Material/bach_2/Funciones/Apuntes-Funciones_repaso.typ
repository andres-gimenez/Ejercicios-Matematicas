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


= Repaso de funciones

#definition[Función][
  Una función es una relación entre dos conjuntos en la que a cada
  elemento del conjunto origen le corresponde un solo elemento del
  conjunto imagen.

  $ f: RR -> RR $
]

#definition[Composición de dos funciones][
  La composición de dos funciones $f$ y $g$ es una función que se obtiene
  aplicando primero $g$ y después $f$.

  $ (f compose g)(x) = f(g(x)) $
]

#example[

  $ f(x) = x^2 $

  $ g(x) = x + 1 $

  Primero aplicamos $g$:
  $ g(3) = 3 + 1 = 4 $

  Después aplicamos $f$:
  $ f(4) = 16 $

  Por tanto:

  $ (f compose g)(3) = f(g(3)) = 16 $

  Y en general:

  $ (f compose g)(x) = f(x + 1) = (x + 1)^2 = x^2 + 2x + 1 $
]

#property[De la composición de funciones][
  - En general, $f compose g != g compose f$.
  - El dominio de $f compose g$ está formado por todos los valores $x$ que
    pertenecen al dominio de $g$ y para los que $g(x)$ pertenecen al
    dominio de $f$.
]

#definition[Función inversa][
  La función inversa de una función $f$ es otra función, llamada $f^(-1)$,
  que deshace la acción de $f$.

  $ f^(-1)(f(x)) = x $

  y

  $ f(f^(-1)(x)) = x $

  para cada $x$ del dominio correspondiente.
]

#example[
  $ f(x) = 2x + 3 $

  Ponemos la función en notación  y = 2x+3 y despejamos la x => x = (y-3)/2, cambiando las variables, obtenemos la función inversa.

  $ f^(-1)(x) = (x - 3) / 2 $
]

= Dominio y continuidad de funciones elementales

Una función se dice continua en un intervalo (finito o infinito) de
$RR$ si es continua en cada punto del intervalo.

#important-block[
  - *Polinomios*: están definidos en ${forall x in RR}$ y es continuos en todo su dominio.
  - *$display(sqrt(x))$*: El dominio son los puntos ${forall x in RR | x >= 0}$ y es continua en todo su dominio.
  - *$display(e^x)$*: Su dominio es ${forall RR}$.
  - *$ln(x)$*: El dominio es ${forall x in RR | x> 0}$ y es continua todo su dominio.
  - $display(P(x) / Q(x))$: El dominio es ${forall x in RR | Q(x) != 0}$ y es continua en todo su dominio.
  - $sin(x)$ y $cos(x)$: El dominio es ${forall x in RR | Q(x) != 0}$ y continua en todo su dominio.
  - $tan(x)$: El dominio es dominio es $RR in {pi/2 + k pi : k in ZZ}$ y continua en todo su dominio.
]

#example[Función de Dirichlet][

  Como curiosidad, la función de Dirichlet es una función no continua en ningún punto:
  $
    f(x) = cases(
      0 "si" x in QQ,
      1 "si" x in.not QQ
    )
  $
]
