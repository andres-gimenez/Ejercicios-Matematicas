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
    logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 1º parcial",
    content: "Límites y continuidad",
    model: [Modelo $alpha$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  // show-student-data: "odd-pages",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
  // question-points-position: none,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  // clarifications: (
  //   [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
  //   [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
  //   [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
  //   [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.]
  // )
)
#set math.cases(reverse: true)

#question()[Calcula los siguientes límites. Desarrollando los pasos que realices.]

 #subquestion(points:1)[$display(limits("lím")_(x->+oo) ((3x^4+5x)/(3x^4+7))^(6x^3-2))$] // = e^10
 #solution()[
    $display(limits("lím")_(x->+oo) ((3x^4+5x)/(3x^4+7))^(6x^3-2) -> ((3 oo^4+5oo)/(3oo^4+7))^(6oo^3-2) -> (oo/oo) ^oo)$ (Indeterminación $oo/oo$)

    // Resolvermos $#cases(reverse: #false, delim: "{", gap: #1em, display(limits("lím")_(x->+oo) (3x^4+5x)/(3x^4+7) = limits("lím")_(x->+oo) ((3x^4)/(x^4)+(5x)/(x^4))/((3x^4)/(x^4)+(7)/(x^4)) = limits("lím")_(x->+oo) (3+5/(x^3))/(3+7/(x^4)) -> (3+ 1/oo)/ (3 + 1/oo) -> (3+0)/(3+0) -> 3/3 = 1) ,)$

    Resolvemos $display(cases(reverse: #false, delim: "{", gap: #1em,
                limits("lím")_(x->+oo) (3x^4+5x)/(3x^4+7) = limits("lím")_(x->+oo) ((3x^4)/(x^4)+(5x)/(x^4))/((3x^4)/(x^4)+(7)/(x^4)) = limits("lím")_(x->+oo) (3+5/(x^3))/(3+7/(x^4)) -> (3+ 1/oo)/ (3 + 1/oo) -> (3+0)/(3+0) -> 3/3 = 1,
                limits("lím")_(x->+oo) 6x^3-2 -> 6oo^3 -2 -> oo
                ))$

    Aplicamos $display(limits("lím")_(x->+oo) f(x) = 1)$ y $display(limits("lím")_(x->+oo) g(x) = oo) => display(limits("lím")_(x->+oo) f(x)^g(x)) = display(e^(limits("lím")_(x->+oo)[f(x) -1] dot g(x)))$

    $display(limits("lím")_(x->+oo) ((3x^4+5x)/(3x^4+7))^(6x^3-2) = 
        e^(limits("lím")_(x->+oo)[(3x^4+5x)/(3x^4+7) -1] dot (6x^3-2)) = 
        e^(limits("lím")_(x->+oo)[(3x^4+5x)/(3x^4+7) - (3x^4+7) / (3x^4+7)] dot (6x^3-2)) =  
        e^(limits("lím")_(x->+oo)((3x^4+5x)- (3x^4+7))/(3x^4+7) dot (6x^3-2))) = 
        e^(limits("lím")_(x->+oo)(cancel(3x^4)+5x cancel(-3x^4)-7)/(3x^4+7) dot (6x^3-2))) = 
        e^(limits("lím")_(x->+oo)(5x-7)/(3x^4+7) dot (6x^3-2))) = 
        e^(limits("lím")_(x->+oo)((5x-7)(6x^3-2))/(3x^4+7)) = 
        e^(limits("lím")_(x->+oo)(30x^4-42x^3-10x+14)/(3x^4+7)) ->
        e^((30 oo^4-42 oo^3-10 oo+14)/(3 oo^4+7)) -> e=(oo/oo)$ (indeterminación $oo/oo$)

    $display(e^(limits("lím")_(x->+oo)(30x^4-42x^3-10x+14)/(3x^4+7)) = 
      e^(limits("lím")_(x->+oo)((30x^4)/(x^4)-(42x^3)/(x^4)-(10x)/(x^4)+(14)/(x^4))/((3x^4)/(x^4)+(7)/(x^4))) =
      e^(limits("lím")_(x->+oo)(30-(42)/(x)-(1)/(x^3)+(14)/(x^4))/(3+(7)/(x^4))) ->
      e^((30-(42)/(oo)-(1)/(oo^3)+(14)/(oo^4))/(3+(7)/(oo^4))) ->
      e^((30-0-0+0)/(3+0)) = e^(30/3) = result(e^10))$
 ]

 #subquestion(points:1)[$display(limits("lím")_(x->+infinity) (sqrt(x^2 + 4x + 5) - x))$] // = 2
 #solution()[

 ]

 #subquestion(points:1)[$display(limits("lím")_(x->3) (2/(x-3) - 12/(x^2-9)))$] // = 1/3
 #solution()[

 ]

 #subquestion(points:1)[$display(limits("lím")_(x->+infinity) (sqrt(x^4 +1)/(x-1)-x))$] //= 1
 #solution()[
  $display(limits("lím")_(x->+infinity) (sqrt(x^4 +1)/(x-1)-x) = (sqrt(oo^4 +1)/(oo-1)-oo) = (sqrt(oo) / (oo))-oo = oo/oo - oo )$  (indeterminado)

  $display(limits("lím")_(x->+infinity) (sqrt(x^4 +1)/(x-1)-x) = limits("lím")_(x->+infinity) (sqrt(x^4 +1) - x (x-1))/(x-1) = 
  limits("lím")_(x->+infinity) (sqrt(x^4 +1) - (x^2 -x))/(x-1) = limits("lím")_(x->+infinity) ((sqrt(x^4 +1) - (x^2 -x))(sqrt(x^4 +1) + (x^2 -x)))/((x-1)(sqrt(x^4 +1) + (x^2 -x))) = limits("lím")_(x->+infinity) ((sqrt(x^4 +1))^2 - (x^2 -x)^2)/((x-1)(sqrt(x^4 +1) + (x^2 -x))) = 
  limits("lím")_(x->+infinity) ((cancel(x^4) +1) - (cancel(x^4) - 2x^3 +x^2))/((x-1)(sqrt(x^4 +1) + (x^2 -x))) = 
  limits("lím")_(x->+infinity) (2x^3 - x^2 + 1)/((x-1)(sqrt(x^4 +1) + (x^2 -x))) = 
  limits("lím")_(x->+infinity) ((2x^3 - x^2 + 1)/x^3)/(((x-1)(sqrt(x^4 +1) + (x^2 -x)))/(x^3)) = 
  limits("lím")_(x->+infinity) (((2x^3)/x^3 - x^2/x^3 + 1/x^3))/((x-1)/x (sqrt(x^4 +1) + (x^2 -x))/(x^2)) =
  limits("lím")_(x->+infinity) (((2x^3)/x^3 - x^2/x^3 + 1/x^3))/((x/x-1/x) (sqrt((x^4 +1)/x^4) + (x^2 -x)/x^2)) =
  limits("lím")_(x->+infinity) ((2 - 1/x + 1/x^3))/((1-1/x) (sqrt((1 +1/x^4)) + (1 - 1/x))) =
  ((2 - 1/oo + 1/oo^3))/((1-1/oo) (sqrt((1 +1/oo^4)) + (1 - 1/oo))) = ((2 - 0 + 0))/((1-0) (sqrt((1 + 0)) + (1 - 0))) = 
  (2)/(1 (sqrt(1) + 1)) = 2/2 = result(1))$
 ]

 #question(points:2)[*Estudia la continuidad* de la siguiente función en $x=1$ explicando todos las condiciones a cumplir por la función. Y indica de que *tipo de discontinuidad* se trata.

    $ f(x) = (x^2-1)/(x^3+7x-8) $

 ]
  #solution()[
  
  ]

#pagebreak()
 #question()[Estudia la continuidad de las siguientes funciones en todo $Re$.]

 #subquestion(points:2)[$display(f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & x^2 - 1 &"si" & x < 0,
                & sqrt(x+1)  &"si" & 0 <= x < 3,
                & 2x-4  &"si" & x >= 3,
                ))$]
  #solution()[]

#subquestion(points:2)[$display(f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & |x + 1| &"si" & x < 2,
                & x-2  &"si" & x >= 2,
                ))$]

#solution()[

]