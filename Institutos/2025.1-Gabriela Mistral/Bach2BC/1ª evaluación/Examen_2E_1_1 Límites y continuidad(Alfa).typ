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
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  clarifications: (
    [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
    [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
    [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.]
  )
)
#set math.cases(reverse: true)

// #question()[Cálcula los siguientes límites. Desarrollando los pasos que realices.]

// #subquestion(points:2)[ $limits("lím")_(x->2) (x^2 - 3x + 2)/(x - 2) $ ]

// // #subquestion()[ $limits("lím")_(x->0) (sin(3x))/(x) $ ]

// // #subquestion()[ $limits("lím")_(x->0) (1 - cos(2x))/(x^2) $ ]

// #subquestion(points: 2)[ $limits("lím")_(x->infinity) (2x^2 - x + 1)/(x^2 + 3x - 2) $ ]

// #subquestion(points: 2)[ $limits("lím")_(x->1) (|x-1|)/(x-1) $ ]

// #question()[Una función $f(x)$ es continua en un punto $x=a$ si se cumplen las siguientes condiciones:]
// #subquestion()[ $f(a)$ está definida.]
// #subquestion()[ $limits("lím")_(x->a) f(x)$ existe.]
// #subquestion()[ $limits("lím")_(x->a) f(x) = f(a) $]
// #subquestion()[Estudia la continuidad de la función $f(x) = (x^2 - 4)/(x - 2)$ en el punto $x=2$.]
// #subquestion()[Estudia la continuidad de la función $f(x) = (|x-1|)/(x-1)$ en el punto $x=1$.]
// #subquestion()[Estudia la continuidad de la función $f(x) = (x^2 - 5x + 6)/(x - 3)$ en el punto $x=3$.]
// #subquestion()[Estudia la continuidad de la función $f(x) = (x^2 - 4)/(x - 1)$ en el punto $x=1$.]
// #subquestion()[Estudia la continuidad de la función $f(x) = (x^2 - 4)/(x - 4)$ en el punto $x=4$.]
// #subquestion()[Estudia la continuidad de la función $f(x) = (x^2 - 4)/(x - 5)$ en el punto $x=5$.]
// #subquestion()[Estudia la continuidad de la función $f(x) = (x^2 - 4)/(x - 6)$ en el punto $x=6$.]
// #subquestion()[Estudia la continuidad de la función $f(x) = (x^2 - 4)/(x - 7)$ en el punto $x=7$.]

#question()[Cálcula los siguientes límites. Desarrollando los pasos que realices.]


 
 #subquestion(points:1)[$display(limits("lím")_(x->+infinity)   ((3x^4+5x)/(3x^4+7))^(6x^3-2))$] // = e^10

 #subquestion(points:1)[$display(limits("lím")_(x->+infinity) (sqrt(x^2 + 4x + 5) - x))$] // = 2

 #subquestion(points:1)[$display(limits("lím")_(x->3) (2/(x-3) - 12/(x^2-9)))$] // = 1/3

 #subquestion(points:1)[$display(limits("lím")_(x->+infinity) (sqrt(x^4 +1)/(x-1)-x))$]

 #question(points:2)[Estudia la continuidad de la siguiente función en $x=1$ explicando todos las condiciones a cumplir por la función.

    $ f(x) = (x^2-1)/(x^3+7x-8) $

 ]