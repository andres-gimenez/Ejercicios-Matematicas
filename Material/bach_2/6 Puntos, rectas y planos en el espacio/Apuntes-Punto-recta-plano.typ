// #import "lib.typ": html-export-template
// #show: html-export-template

= Punto, Recta y Plano en el Espacio

== 1. Punto en el espacio

Un punto en el espacio se representa mediante sus coordenadas:
$P(x, y, z)$

=== Vector de posición
El vector que va desde el origen al punto es:
$arrow(O P) = (x, y, z)$

=== Distancia entre dos puntos
Dados $A(x_1, y_1, z_1)$ y $B(x_2, y_2, z_2)$:

$d(A,B) = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2 + (z_2 - z_1)^2)$


== 2. Recta en el espacio

Una recta queda definida por:
- Un punto $P(x_0, y_0, z_0)$
- Un vector director $arrow(v) = (a, b, c)$

=== Ecuación vectorial
$arrow(r) = (x_0, y_0, z_0) + t(a, b, c)$

=== Ecuaciones paramétricas
$
x = x_0 + a t \
y = y_0 + b t \
z = z_0 + c t
$

=== Ecuación continua
$
(x - x_0)/a = (y - y_0)/b = (z - z_0)/c
$

=== Posición relativa de rectas
Dos rectas pueden ser:
- Secantes (se cortan)
- Paralelas
- Coincidentes
- Cruzadas (no se cortan ni son paralelas)


== 3. Plano en el espacio

Un plano queda definido por:
- Un punto $P(x_0, y_0, z_0)$
- Un vector normal $arrow(n) = (A, B, C)$

=== Ecuación general
$A x + B y + C z + D = 0$

=== Ecuación punto-normal
$A(x - x_0) + B(y - y_0) + C(z - z_0) = 0$

=== Ecuación paramétrica
Si $arrow(u)$ y $arrow(v)$ son dos vectores del plano:
$
(x, y, z) = (x_0, y_0, z_0) + s arrow(u) + t arrow(v)
$

== 4. Posiciones relativas

=== Recta y plano
- Secantes: un punto en común
- Paralelos: no se cortan
- Contenida: la recta está dentro del plano

=== Planos
- Secantes: se cortan en una recta
- Paralelos
- Coincidentes

== 5. Ángulos

=== Ángulo entre dos vectores
$
cos(theta) = (arrow(u) dot arrow(v)) / (|arrow(u)| |arrow(v)|)
$

=== Ángulo entre rectas
Se usa el ángulo entre sus vectores directores.

=== Ángulo entre planos
Se usa el ángulo entre sus vectores normales.

== 6. Distancias

=== Distancia punto-plano
Para $A x + B y + C z + D = 0$:

$d = abs(A x_0 + B y_0 + C z_0 + D) / sqrt(A^2 + B^2 + C^2)$

=== Distancia entre rectas
- Si son paralelas: distancia entre un punto y la otra recta
- Si son cruzadas: fórmula con producto mixto

== 7. Producto escalar y vectorial

=== Producto escalar
$arrow(u) dot arrow(v) = u_1 v_1 + u_2 v_2 + u_3 v_3$

=== Producto vectorial
$arrow(u) times arrow(v) = (u_2 v_3 - u_3 v_2, u_3 v_1 - u_1 v_3, u_1 v_2 - u_2 v_1)$

- Resultado: vector perpendicular

=== Producto mixto
$arrow(u) dot (arrow(v) times arrow(w))$

- Representa volumen de un paralelepípedo