#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - Global",
    content: "Límites, continuidad y derivabilidad",
    model: [Modelo $A$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 9),
  show-student-data: "odd-pages",
  // show-student-data: true,
  show-grade-table: true,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
  // question-points-position: none,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  clarifications: (
    [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
    [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
    [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.],
    [Se penalizara el no dar un valor exacto, por ejemplo $sqrt(2)$ es un valor exacto $1,41421$ no lo es.]
  )
)
// #set math.cases(reverse: true)

#questions-pages(
  [
    #question(points:2.5)[Calcula el límite de la función:
      $ limits("lím")_(x->0) (x-"sen"(x))/(ln(1+x)-x+x^2/2) $
    ]
    #solution()[
      $display(limits("lím")_(x->0) (x-"sen"(x))/(ln(1+x)-x+x^2/2) = (0-"sen"(0))/(ln(1+0) - 0 + (0^2)/2) = 0/(0-0+0) = 0/0 )$ (Indeterminación $0/0$) 

      $display(limits("lím")_(x->0) (x-"sen"(x))/(ln(1+x)-x+x^2/2) stretch(=)^"L'H" limits("lím")_(x->0) (1-cos(x)) /(1/(1+x)-1+(2x)/2) = limits("lím")_(x->0) (1-cos(x)) /(1/(1+x)-1+x) = (1-cos(0))/(1/(1+0)-1+0) = (1-1)/(1-1+0) = 0/0)$ (Indeterminación $0/0$) 

      $display(limits("lím")_(x->0) (1-cos(x)) /(1/(1+x)-1+x) stretch(=)^"L'H" limits("lím")_(x->0) (-(-"sen"(x))) /(((1)'(1+x) - 1(1+x)')/(1+x)^2 - 0 +1) = limits("lím")_(x->0) ("sen"(x)) /(((0(1+x) - 1 dot 1))/(1+x)^2 - 0 +1) = limits("lím")_(x->0) ("sen"(x)) /((-1)/(1+x)^2 +1) = ("sen"(0))/(((-1)/(1+0)^2 + 1 ))) = 0/(-1+1) = 0/0 $ (Indeterminación $0/0$) 

      $display(limits("lím")_(x->0) ("sen"(x)) /((-1)/(1+x)^2 +1) stretch(=)^"L'H" limits("lím")_(x->0) (cos(x)/ (2/(1+x)^3)) = cos(0)/(2/(1+0)^3)) = 1/(2/1) = #result($1/2$)$ 

    ]
  ],
  [
    #question(points:2.5)[Calcula la derivada de la función:

      #clarification()[Intenta simplificar la función antes de derivar]

      $ f(x) = ln(((2x^2+"cos"(x)) e^x^2)/sqrt(x-1)) $

    ]
  ],
  [
    #question(points:2.5)[
      Calcula para que valores de $a$ y $b$ la siguiente función es continua y derivable en $RR$, dando la solución en función de $pi$ (sin decimales).

       $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & a x^2 + b x + (pi/2)^2 &"si" & x <= pi /2,
                & "sen"(x) - 1 &"si" & x > pi/2,
              ) $ 

        // a = 1, b= -pi
    ]
  ],
  [
    #question(points:2.5)[
      Calcula la recta tangente a la curva ... que pase por el punto.
    ]
  ]
)
  



