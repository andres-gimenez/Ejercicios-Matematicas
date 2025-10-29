#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.0": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo:image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas A",
    number: "3º Evaluación - Global",
    content: "Estadística, combinatoria y probabilidad",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "May 13, 2024",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // clarifications: (
  //   [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
  //   [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
  //   La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
  //   [No está permitido compartir material, durante la prueba.],
  // )
)

#set math.cases(reverse: true)
// #set text(18pt)


#g-question(point: 2)[Se sabe que: $display(P(A)=3/4)$, $display(P(B)=2/5)$ y $display(P(A cal(union) B) = 8/9)$. Calcula $P(A cal(sect) B )$. ]
#v(1fr)

#g-question(point: 1)[Un jugador de baloncesto durante el partido ha lanzado 12 tiros libres y ha anotado 9. Si en el último minuto, va a lanzar un tiro libre, ¿cuál es la probabilidad de que lo falle?]
#v(1fr)
#pagebreak()

#g-question[Si estás en una clase de 26 alumnos]
#g-subquestion(point: 1)[¿De cuantas formas puede el profesor colocar a los alumnos, si los agrupa de dos en dos?]
#v(1fr)

#g-subquestion(point: 2)[Si la colocación es aleataria y suponiendo que solo tienes un mejor amigo, ¿cuál es la probabilidad que te toque con este?]
#v(1fr)
#pagebreak()

#g-question[Una urna contiene 8 bolas rojas, 5 amarillas y 7 verdes. Se extrae una bola al azar. Calcula la probabilidad de que:]

#g-subquestion(point: 1)[Sea roja]
#v(1fr)
#g-subquestion(point: 1)[No sea roja]
#v(1fr)

#pagebreak()
#g-question[Los días que en una ciudad se han dado distintos factores climáticos han sido:]

#align(center,
  table(
    fill: (x, y) =>
      if(x == 0) { luma(230) },
  columns: (4cm,auto,auto,auto,auto,auto),
  rows:(auto, auto),
  gutter:0pt,
  [Clima], [Lluvia], [Soleado], [Nubes y claros], [Nublado], [Nieve],
  [Número de días], [7], [45], [30], [15], [2]
))

#g-subquestion(point:0.5)[¿Se trata de un carácter estadístico cualitativo o cuantitativo?]¿Por qué?
#v(1fr)
#g-subquestion(point:1.5)[Calcula, si se puede, la moda, la media y la mediana. Si no se puede, indicar el por qué.]
#v(3fr)