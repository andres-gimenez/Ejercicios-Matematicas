#import "@preview/showybox:2.0.1": *

= Teoria de conjuntos


#showybox(
   frame: (
    title-color: green.darken(40%),
    body-color: green.lighten(80%),
    footer-color: green.lighten(60%),
    border-color: green.darken(60%),
    radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt)
  ),
  title-style: (
    color: white,
    weight: "regular",
    align: left
  ),
  shadow: (
    offset: 3pt,
  ),
  title: [Definición de *Conjunto*],
  [En matemáticas, *un conjunto* es una colección de elementos considerada en sí misma como un objeto matemático. Los elementos de un conjunto, pueden ser las siguientes: personas, números, colores, letras, figuras, etc. Se dice que un elemento (o miembro) pertenece al conjunto si está definido como incluido de algún modo dentro de él.],
  [Ejemplo: \  
    El conjunto de colores del arcoiris es: \ 
    #v(1pt)
    $"AI" ={"rojo", "naranja", "amarillo", "verde", "azul", "añil", "violeta"}$
    #v(2pt)
  ],
  [Ejemplo: \  
    Un conjunto suele definirse mediante una propiedad que todos sus elementos poseen. Por ejemplo, para los números naturales, si se considera la propiedad de ser un número primo, el conjunto de los números primos es: \
    #v(1pt)
    $P = {2, 3, 5, 7, 11, 13, ...}$
    #v(2pt)
  ],

)

Se dice que un elemento (o miembro) pertenece al conjunto si está definido como incluido de algún modo dentro de él.

#pagebreak()

= Funciones 

== Correspondencia

Dados dos conjuntos: $X$ e $Y$ , se entiende como una correspondencia entre $X$ e $Y$ a una relación en la que asocia elementos de X con elemtos de $Y$.

== Función

Una función estre $X$ e $Y$ es una correspondencia en la que a cada elemento del conjunto imagen $X$ le corresponde un unico elemento del conjunto destino $Y$. \

A los elementos del conjunto $X$ se les llama variable independiente, mientras que a cada elemento del conjunto $Y$ se le llama variable dependiente.

=== Gráfica

=== Eje de coordenadas
Los *ejes de coordenadas* son dos rectas perpendicuales que dividen el plano en cuatro cuadrantes. \

El *origen de coordenadas* es el punto donde se cortan las dos rectas. \

El *eje de abcisas* es la recta horizontal, y se representa con la letra $x$.

El *eje de ordenads* es la recta vertical, y se repreenta con la letra $y$.

Las *coordenadas* de un punto son el par de valores $(x, y)$. La *abcisa* es el valor $x$ y la *ordenada* es el valor $y$.

Las coordenadas del origne son $(0, 0)$

La *grafica* de una función es la representación de los pares de valores (x, y) en los ejes de coordenadas. Permitiendo estudiar facilmente una función.


#pagebreak()

= Estadística

Un *carácter estadistico* es una propiedad que se estuia de los individuos de una población.

Puede ser:
  - *Cualitativo*:  si indica una cualidad no medible. 
  - *Cuantitativo*: si indica una cantidad, que se puede contar o medir.
    - *Discreto*: Si sus valores son el resultado de un recuento. Toma los valores $1, 2, 3, ...$
    - *Continuo*: Si sus valores son el resultado de una medida. Su valor es un número real $RR$.

== Tablas de frecuncia

Son tablas con los valores de la variable y sus frecuencias. \

La *frecuencia absoluta de un valor* es el número de indiiudos de la población para los que la variable toma ese valor. 
Se representa por $n_j$. La suma de todas las frecuencas absolutas es igual a ltotal de los individuos, y se representa por $N$.\

La *frecuencia relativa de una valor* es el cociente entre la frecuencia asboluta y el número total de individuos. 
Se representa por $f_i=n_j/N$. La suma de toas las recuencias relativas es $1$.






