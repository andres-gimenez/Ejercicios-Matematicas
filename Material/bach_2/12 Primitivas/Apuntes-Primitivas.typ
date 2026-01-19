
#import "lib.typ": html-export-template
#show: html-export-template

= Primitivas

== Primitiva de una función

Si $f(x)$ es una función definida en un intervalo, una *primitiva de $f(x)$* es ese intervalo es otra función $F(x)$ tal que $F'(x)=f(x)$ para tofo x de ese intervalo.

== Integrales indefinidas

El conjunto de todas las primitivas de una función $f(x)$ se llama *integral indefinida* de $f(x)$ y se denota por:

$∫ f(x) dif x = F(x) + C$

== Propiedades de las integrales

1.$display(∫ f(x) + g(x) dif x = ∫ f(x) dif x + ∫ g(x)  dif x)$

2.$display(∫ k f(x) dif x = k ∫ f(x) dif x)$ con $k in RR$.

== Tabla de integrales inmediatas

== Reglas de integración inmediata

=== 1. Polinomios

$ ∫ k dif x = k x + C $

$ ∫ x^n dif x = x^(n+1)/(n+1) + C $

Ejemplo:

$ ∫ 5 dif x = 5x + C $

=== 2. Potencias

$ ∫ [f(x)]^n · f'(x) dif x = [f(x)]^(n+1)/(n+1) + C $

Ejemplos 1:

$ ∫ 7(3x + 2)^5 dif x  = 7 ∫ (3x + 2)^5 dif x = 7/3 ∫ 3(3x + 2)^5 dif x = 7/3 (3x + 2)^6/6 + C $

Ejemplos 2:
$ ∫ 3x (x^2 + 6)^3 dif x = 3 ∫ x (x^2 + 6)^3 dif x = 3/2 ∫ 2x (x^2 + 6)^3 dif x = 3/2 (x^2 + 6)^4/4 + C $

=== 3. Logaritmo neperiano

$ ∫ (f'(x))/f(x) dif x = ln(|f(x)|) + C $

Ejemplo 1:

$ ∫ 6/(5x - 3) dif x = 6 ∫ 1/(5x - 3) dif x = 6/5 ∫ 5/(5x - 3) dif x = 6/5 ln(|5x - 3|) + C $

Ejemplo 2:

$ ∫ (-2)/(3x + 7) dif x = -2 ∫ 1/(3x + 7) dif x = -2/3 ∫ 3/(3x + 7) dif x = -2/3 ln(|3x + 7|) + C $

== 4. Exponenciales con base e

$ ∫ e^(f(x)) · f'(x) dif x = e^(f(x)) + C $

Ejemplo:

$ ∫ 5e^(2x) dif x = 5 ∫ e^(2x) dif x = 5/2 ∫ 2e^(2x) dif x = 5/2 e^(2x) + C $

== 5. Exponenciales con base a

$ ∫ a^f(x) · f'(x) dif x = a^(f(x))/(ln(a)) + C $

Ejemplo 1:

$ ∫ 3x · 2^(x^2) dif x = 3 ∫ x · 2^(x^2) dif x = 3/2 ∫ 2x · 2^(x^2) dif x = 3/2 · 2^(x^2/(ln(2)) + C $

Ejemplo 2:

$ ∫ 5x^2 · 7/(x^3) dif x = 5 ∫ x^2 · 7/(x^3) dif x = 5/3 ∫ 3x^2 · 7/(x^3) dif x = 5/3 · 7x^3/(ln(7)) + C $

== Integrales racionales

$ ∫ D(x) / d(x) dif x $ 

- *Caso 1*: el grado del numerador es $>=$ que el del denominador.  

- *Caso 2*: el grado del denominador es mayor que el del numerador.  

   - *2.1*: el denominador tiene raíces reales simples (no se repiten).     
   - *2.2*: el denominador tiene alguna raíz real múltiple (se repiten).
   - *2.3*: el denominador tiene raíces complejas.

=== Caso 1: Grado del numerador $>=$ grado del denominador.

Hacemos la división:

$ D(x) = d(x) · C(x) + R(x) => D(x)/d(x) = C(x) + R(x)/d(x) $

Entonces:

$ ∫ (D(x))/(d(x)) dif x
= ∫ C(x) dif x + ∫ (R(x))/d(x)) dif x $

Ejemplo:

$ ∫ (x + 2)/(x - 2) dif x = ∫ 1 dif x + ∫ 4/(x - 2) dif x = x + 4 ∫ 1/(x - 2) dif x = x + 4 ln(|x - 2|) + C $

== Caso 2.1 grado del numerador $<$ grado del denominador.

=== Paso 1

Igualamos a 0 el denominador y resolvemos la ecuación:

$ d(x) = 0 → x = x_1, x = x_2, …, x = x_n $

=== Paso 2

Expresamos el integrando como una suma de fracciones de la siguiente forma:

$ D(x) / d(x) = D(x) / ((x - x_1) · (x - x_2) · … · (x - x_n)) 

= A / (x - x_1) + B / (x - x_2) + … + N / (x - x_n) $

=== Paso 3

Despejamos y calculamos $A, B, …, N$.

Sacamos mínimo común múltiplo de la suma de fracciones  
y las expresamos como una sola:

$ D(x)/((x - x_1) · (x - x_2) · … · (x - x_n))  = 
   (A(x - x_2)(x - x_n) + B(x - x_1)(x - x_n) + … + N(x - x_1)(x - x_2))/((x - x_1)(x - x_2)…(x - x_n)) $

Eliminamos denominadores a ambos lados de la igualdad:

// $ D(x) 
// = A(x - x_2)(x - x_n)
// + B(x - x_1)(x - x_n)
// + …
// + N(x - x_1)(x - x_2) $

Despejamos y calculamos $A, B, …, N$ asignando valores a x. El truco es el siguiente:

=== Despejar A

Asignamos a x el valor de la raíz x_1.

$ D(x_1) = A(x_1 - x_2)(x_1 - x_n) + B(x_1 - x_1)(x_1 - x_n) + … + N(x_1 - x_1)(x_1 - x_2) $

Se anulan todos los términos salvo el de A:

$ D(x_1) = A(x_1 - x_2)(x_1 - x_n) $

Por tanto:

$ A = D(x_1) / ((x_1 - x_2)(x_1 - x_n)) $

=== Despejar B

Asignamos a x el valor de la raíz x_2.

$ D(x_2) = A(x_2 - x_2)(x_2 - x_n) + B(x_2 - x_1)(x_2 - x_n) + … + N(x_2 - x_2)(x_2 - x_1) $

Se anulan todos los términos salvo el de B:

$ D(x_2) = B(x_2 - x_1)(x_2 - x_n) $

Por tanto:

$ B = D(x_2) / ((x_2 - x_1)(x_2 - x_n)) $

=== Despejar N

Asignamos a x el valor de la raíz x_n.

$ D(x_n) = A(x_n - x_2)(x_n - x_n) + B(x_n - x_1)(x_n - x_n) + … + N(x_n - x_1)(x_n - x_2) $

Se anulan todos los términos salvo el de N:

$ D(x_n) = N(x_n - x_1)(x_n - x_2) $

Por tanto:

$ N = D(x_n) / ((x_n - x_1)(x_n - x_2)) $

=== Paso 4

Sustituimos los valores de A, B, …, N  
y calculamos las integrales inmediatas logarítmicas:

$ ∫ D(x) / d(x) dif x = ∫ A / (x - x_1) dif x + ∫ B / (x - x_2) dif x + …+ ∫ N / (x - x_n) dif x $

Resultado final:

$ ∫ D(x) / d(x) dif x
= A ln(|x - x_1|)
+ B ln(|x - x_2|)
+ …
+ N ln(|x - x_n|)
+ C $

== Caso 2.2 : Denominador con *raíces múltiples*.

$ D(x) / d(x) = A / (x - x_1) + B / (x - x_2) + … + N_1 / (x - x_n) + N_2 / (x - x_n)^2 + … + N_k / (x - x_n)^k $

Las raíces simples aparecen una sola vez  y las raíces múltiples se repiten k veces.

=== Ejemplo

$ ∫ (2x + 3) / (x^2 - 2x + 1) dif x $

=== Paso 1. 

Igualamos el denominador a 0

$ x^2 - 2x + 1 = 0 $

Aplicamos la fórmula:

$ x = (2 ± sqrt(4 - 4)) / 2 $

$ x = 1 $

Raíz doble:

$ (x - 1)(x - 1) = (x - 1)^2 $

=== Paso 2. 
Expresamos el integrando

$ (2x + 3) / (x^2 - 2x + 1)
= (2x + 3) / ((x - 1)(x - 1)) 
= (2x + 3) / (x - 1)^2 $

Descomponemos en fracciones simples:

$ (2x + 3) / (x - 1)^2
= A / (x - 1) + B / (x - 1)^2 $

=== Paso 3. 
Despejamos y calculamos A y B

$ (2x + 3) / cancel((x - 1)^2) = A / (x - 1) + B / cancel((x - 1)^2) => 2x +3 = A(x-1) + B $

=== Paso 3. 

Despejamos A y B

Partimos de:

$ (2x + 3) / (x - 1)^2
= (A(x - 1) + B) / (x - 1)^2 $

Por tanto:

$ 2x + 3 = A(x - 1) + B $

==== Despejar B

Asignamos x = 1:

$ 2·1 + 3 = A(1 - 1) + B => 5 = B $

==== Despejar A

Asignamos x = 0:

$ 2·0 + 3 = A(0 - 1) + B => 3 = -A + B $

Sustituimos B = 5:

$ 3 = -A + 5 => A = 2 $

=== Paso 4. 
Calculamos la integral

$ ∫ (2x + 3) / (x^2 - 2x + 1) dif x 
= ∫ 2 / (x - 1) dif x + ∫ 5 / (x - 1)^2 dif x 
= 2 ∫ 1 / (x - 1) dif + 5 ∫ (x - 1)^(-2) dif x $

Resultado final:

$ 2 ln(|x - 1|) - 5 / (x - 1) + C $

= Integrales por partes

Cuando nos encontramos con la integral de un producto de funciones,
la tenemos que resolver con el método de integración por partes.

== Tipos de integrales por partes

*Tipo 1*

$ ∫ "polinomio" · "seno" o "coseno" dif x $

*Tipo 2*

$ ∫ "polinomio" · "exponencial" dif x $

*Tipo 3*

$ ∫ "polinomio" · "logaritmo" dif x $

*Tipo 4*

$ ∫ "polinomio" · arccos dif x $

*Tipo 5*

$ ∫ "exponencial" · "seno" o "coseno" dif x $

Estas integrales son *cíclicas*.

== Fórmula de integración por partes

Para resolver estas integrales de producto de funciones,
usaremos la siguiente fórmula:

$ ∫ u · dif v = u · v - ∫ v · dif u $

== Regla mnemotécnica

_un día vi una vaca vestida de uniforme_

== Aplicación de la fórmula de integración por partes

Para aplicar la fórmula, necesitamos:

=== 1. Identificar quién va a ser u y quién va a ser dv

Elegimos como u a la función que aparezca primero
en el siguiente orden:

Arcos → Logaritmos → Polinomios → Exponenciales  
→ Senos, cosenos

La función que aparezca después en dicho orden
será dv.

=== 2. Determinamos du y v

→ Determinamos $dif u$ calculando la derivada de $u$.  
→ Determinamos $v$ calculando la integral de $dif v$.

=== Ejemplo

$ ∫ (x + 2) · cos x dif x $

Elegimos:

$ u = x + 2 $
$ dif v = cos x dif x $

Calculamos:

$ dif u = 1 dif x $
$ v = "sen" x $

Aplicamos la fórmula:

$ ∫ u · dif v = u · v - ∫ v · dif u $

Entonces:

$ ∫ (x + 2) · cos x dif x
= (x + 2) · "sen" x - ∫ "sen" x · 1 dif x $

Resultado final:

$ (x + 2) · "sen" x + cos x + C $

= Integrales por cambio de variable

Si en el integrando aparece un cambio de variable sugerido.

- Raíces cuadradas  
$ t = sqrt("polinomio") $

- Raíces no cuadradas  
$ t = root(m, "polinomio") $

siendo m el mínimo común múltiplo de los índices de las raíces.

- Funciones exponenciales  
$ t = e^(n dot x) $

n es el menor índice de los exponentes del integrando.

- Funciones logarítmicas  
$ t = ln x $

== Pasos

1. Elegimos el cambio de variable adecuado (t).  
2. Despejamos x en la ecuación.  
3. Derivamos a ambos lados de la igualdad anterior.  
4. Sustituimos los términos obtenidos (t), (x) y (dt)
   en la integral original y los ordenamos.  
5. Resolvemos la integral con los métodos ya aprendidos.  
6. La integral final debe quedar en función de x,
   por lo que debemos deshacer el cambio de variable.

== Ejemplo

$ ∫ x · sqrt(x + 3) dif x $

Cambio de variable sugerido:

$ t = sqrt(x + 3) $

=== Paso 1

$ t = sqrt(x + 3) $

=== Paso 2

$ t^2 = x + 3 $

$ x = t^2 - 3 $

=== Paso 3

Derivamos:

$ dif x = 2t dif t $

=== Paso 4

Sustituimos en la integral:

$ ∫ x · sqrt(x + 3) dif x
= ∫ (t^2 - 3) · t · 2t dif t
= ∫ 2(t^4 - 3t^2) dif t $

=== Paso 5

$ 2 ∫ (t^4 - 3t^2) dif t 
= 2(t^5 / 5 - t^3) + C 
= 2t^5 / 5 - 2t^3 + C $

=== Paso 6

Deshacemos el cambio de variable:

$ ∫ x · sqrt(x + 3) dif x
= 2(sqrt(x + 3))^5 / 5
- 2(sqrt(x + 3))^3
+ C $

= Primitiva de una función

F(x) es la primitiva de una función f(x),
resultado de integrar dicha función.

$ F(x) = ∫ f(x) dif x $

Si:

$ F(x) = ∫ f(x) dif x $

entonces:

$ F'(x) = f(x) $

La derivada de la primitiva es la función original.

$ f(x) = ∫ f'(x) dif x $

$ f'(x) = ∫ f''(x) dif x $

== Ejemplo

$ f(x) = (x + 2) ln x "con" x > 0 ", pasando por el punto" P(1, 0) $.

=== Cálculo de la primitiva

$ F(x) = ∫ f(x) dif x $

$ F(x) = ∫ (x + 2) ln x dif x $

Resultado:

$ F(x)
= (x^2 / 2 + 2x) ln x
- x^2 / 4
- 2x
+ C $

=== Paso 2. Calculamos la constante C

Usamos el punto $P(1, 0)$, por lo que:

$ F(1) = 0 $

Sabemos que:

$ F(x)
= (x^2 / 2 + 2x) ln x
- x^2 / 4
- 2x
+ C $

Sustituimos $x = 1$:

$ F(1)
= (1^2 / 2 + 2·1) ln(1)
- 1^2 / 4
- 2·1
+ C $

Como $ln(1) = 0$:

$ F(1) = -1 / 4 - 2 + C $

Imponemos la condición:

$ -1 / 4 - 2 + C = 0 $

Despejamos:

$ C = 1 / 4 + 2 $

$ C = 9 / 4 $

== Primitiva final

$ F(x) = (x^2 / 2 + 2x) ln x - x^2 / 4 - 2x + 9 / 4 $
