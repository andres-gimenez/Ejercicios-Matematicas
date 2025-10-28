// #import "@local/g-exam:0.4.4": *
#import "@preview/g-exam:0.4.3": *
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
    model: [Modelo $gamma$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  clarifications: (
    [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
    [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
    [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.]
  )
)
#set math.cases(reverse: true)

#question()[Calcula los siguientes límites. Desarrollando los pasos que realices.]

 #subquestion(points:1)[$display(limits("lím")_(x->+infinity) ((x^2+1)/(x^2+x))^(3x-2))$] // =e^(-3)
 
 #subquestion(points:1)[$display(limits("lím")_(x->+oo) (5x - sqrt(25x^2 - 2x + 3)))$] // =1/5

 #subquestion(points:1)[$display(limits("lím")_(x->5) (3/(x-5) - 30/(x^2-25)))$] //= 3/8

 #subquestion(points:1)[$display(limits("lím")_(x->+infinity) (sqrt(x^4 -5) /(8-x)+x))$] //= -8

#question(points:2)[*Estudia la continuidad* de la siguiente función en $x=1$ explicando todos las condiciones a cumplir por la función. Y indica de que *tipo de discontinuidad* se trata.

    $ f(x) = (x^2-1)/(x^3 + 5 x^2 - 4 x - 2) $

 ]

#pagebreak()
 #question()[Estudia la continuidad de las siguientes funciones en todo $Re$.]

 #subquestion(points:2)[$display(f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & x^2 - 2x - 3 &"si" & x < 2,
                & sqrt(x-1)  &"si" &  2 <= x < 10,
                & 3x-27  &"si" & x >= 10,
                ))$]

#subquestion(points:2)[$display(f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & |x - 1| &"si" & x < 5,
                & x-5  &"si" & x >= 5,
                ))$]