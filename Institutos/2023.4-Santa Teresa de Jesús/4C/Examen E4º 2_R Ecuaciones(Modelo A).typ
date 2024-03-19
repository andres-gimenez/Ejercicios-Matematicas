#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo: read("./logo-ies_santa_teresa.jpeg", encoding: none)
    // logo:image("./logo-ies_santa_teresa.jpeg", alt: "IES Santa Teresa de Jesús")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas A",
    number: "2º Evaluación Recuperación",
    content: "Ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
    [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
    [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
    La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
    [No está permitido compartir material, durante la prueba.],
  )
)

#set math.cases(reverse: true)
// #set text(18pt)

#g-question(point:2)[Resuelve las siguientes ecuaciones]

  #g-subquestion[
    $x^2 -x -2 = 0$
  ]
  #v(1fr)

  #g-subquestion[
    $display((x^2-x)/2=2x-3)$
  ]
  #v(1fr)

#pagebreak()

#g-question[Resuelve los siguiente sistemas de ecuaciones]

  #g-subquestion(point:1)[
    $display(cases( delim: "{",
              2&x - 3&y  &= -&1 ,
              3&x + 2&y  &= &5
            ))$
  ]
  #v(1fr)

  #g-subquestion(point:1)[
    $display(cases( delim: "{",
             -3&x &- 4&y &= &5 ,
              -2&x &+ 3&y &= &9
            ))$
  ]
  #v(1fr)

#pagebreak()
// #g-question(point:1)[Indica la pendiente y la ordenada en el origen de la siguiente función]
// $ f(x)=3x-5 $
// #v(1fr)
#g-question(point:2)[En un tramo de carretera de 3Km se sube de la cota 620m a la cota 680m. 
¿Cúal es la pendiente de dicho tramo de carretera?]
#align(left, image("./imagenes/PendienteMedia.jpeg", width: 80%))
#v(1fr)

#pagebreak()

#g-question(point:2)[Se mezcla café de tipo A que cuesta a 6€/Kg con café de tipo B que cuesta 4€/Kg. 
Si tenemos 120kg de mezcla que sale a 4,5€/kg, ¿cuántos kilogramos de café de cada clase se han mezclamo? ]
#v(2fr)

#g-question(point:2)[Tres kilos de manzanas y dos kilos de naranjas cuestan 9€. Dos kilos de manzans y dos kilos de naranjas cuestan 7€. 
¿Cuánto vale el kilo de manzanas y el kilo de naranjas?]
#v(2fr)