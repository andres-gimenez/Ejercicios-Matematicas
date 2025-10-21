#import "@local/g-exam:0.4.4": *
// #import "@preview/wrap-it:0.1.0": wrap-content

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: [Continuidad 2],
    content: [Teoremas de Bolzano y del Valor Medio],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 21),
  show-student-data: false,
  show-grade-table: false,
  show-solution: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

= Teorema de Bolzano (Ceros de Bolzano)

Sea $f:[a,b] -> RR$ una función *continua* en el intervalo cerrado $[a,b]$.  
Si los valores de $f$ en los extremos del intervalo tienen *signos opuestos*, es decir:
$ f(a) dot f(b)<0, $
entonces *$exists c in(a,b)$ tal que $f(c)=0$*.

== Demostración detallada

  + *Hipótesis del teorema:*
   - $f$ es *continua* en el intervalo cerrado $[a,b]$.
   - $f(a) dot f(b)<0$, es decir, $f(a)$ y $f(b)$ tienen signos contrarios.

   Sin pérdida de generalidad, podemos suponer que:
   $ f(a)<0 " y " f(b)>0. $

  + *Idea intuitiva:*
   Si $f$ es continua, la gráfica de la función puede dibujarse *sin levantar el lápiz*.  
   Si empieza siendo negativa en $x=a$ y termina siendo positiva en $x=b$,  
   debe *cruzar el eje $x$* en algún punto intermedio.

  + *Construcción formal:*
   Definimos el conjunto
   $S = \{x in [a,b] | f(x) < 0\}$.
   - Como $f(a) < 0$, se cumple que $a in S$ y por tanto $S$ *no está vacío*.
   - Además, $S$ está *acotado superiormente* por $b$, ya que todos sus elementos están en $[a,b]$.

  + *Existencia del supremo:*
   Como $S$ está no vacío y acotado superiormente,  
   por el *axioma del supremo* existe un número real $ c = sup S$
   Se cumple que $a < c < b$.

  + *Propiedad del punto $c$:*
   - Dado que $c$ es el supremo de $S$, para todo $epsilon > 0$ existe $x in S$ tal que
    $c - epsilon < x < c.$
     En consecuencia, $f(x) < 0$.
   - Por otro lado, como $c$ es el menor de los cotas superiores, para todo $epsilon > 0$ existe $y in [a,b]$ tal que
    $ c < y < c + epsilon $  y, necesariamente, $y in.not S$, por lo que $f(y) > 0$.

  + *Continuidad en $c$:*
    De las dos propiedades anteriores se deduce que:
    - Hay puntos arbitrariamente cercanos a $c$ por la izquierda donde $f(x) < 0$.
    - Hay puntos arbitrariamente cercanos a $c$ por la derecha donde $f(x) > 0$.

    Como $f$ es **continua en $c$**, los límites laterales existen y coinciden con $f(c)$:
    // \[
    // \lim_{x\to c^-} f(x) = \lim_{x\to c^+} f(x) = f(c).
    // \]

    Pero dado que los valores de $f$ son negativos a la izquierda y positivos a la derecha,
    el único valor coherente con la continuidad es
    // \[
    // f(c) = 0.
    // \]

  + *Conclusión:*
   Existe un punto $c in(a,b)$ tal que $f(c)=0$.  
   Por tanto, se cumple el *Teorema de Bolzano*.

  == Observaciones

  - El teorema garantiza *la existencia* de una raíz, pero *no su unicidad*.  
    Puede haber más de una raíz dentro del intervalo.
  - La *continuidad* de la función es esencial.  
    Si $f$ no es continua, el resultado puede dejar de cumplirse.
  - Este teorema es una consecuencia directa del *Teorema del Valor Intermedio*,  
    y constituye la base teórica de *métodos numéricos* como el de *bisección*.


= Teorema de Weierstrass

== Enunciado
Si una función $f:[a,b] -> RR$ es *continua* en un intervalo cerrado y acotado $[a,b]$,  
entonces $f$ alcanza en dicho intervalo *su valor máximo y su valor mínimo*.  

Es decir, $exists c y d in [a,b]$ tales que
$forall x in [a,b], f(a) < f(x) < f(b) $
, donde $f(c)$ es el valor mínimo y $f(d)$ es el valor máximo de $f$ en $[a,b]$.

