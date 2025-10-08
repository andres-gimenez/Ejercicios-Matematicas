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
    logo:image("../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    // academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    // number: "Versión 1",
    content: "Continuidad",
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: false,
  show-grade-table: false,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#question()[.) Indica si las siguientes afirmaciones son verdaderas o falsas, justificando brevemente:]
#subquestion()[Si una función es continua en un punto, entonces tiene límite en ese punto.]
#subquestion()[Si una función tiene límite en un punto, entonces es continua en ese punto.]
#subquestion()[Si $limits("lím")_(x->a^-) f(x) = limits("lím")_(x->a^+) f(x)$ existen y son iguales, entonces $limits("lím")_(x->a) f(x)$ existe.]
#subquestion()[Si $limits("lím")_(x->a^-) f(x) = limits("lím")_(x->a^+) f(x) = L $ existen $f(a) = L$.]
#subquestion()[Toda función polinómica es continua en todo $RR$.]

#question()[Estudia la continuidad de la función $display(f(x) = (x^2 - 5x + 6)/(x - 3))$ en el punto $x=3$.]

#question()[Estudia la continuidad de la función $display(f(x) = (|x-1|)/(x-1))$ en el punto $x=1$. (Estudia primero los límites laterales en $x=1$).]

#question()[Estudia la continuidad de la siguiente función en todo su dominio:
    $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & x^2 -1 &"si" & x < 2,
                & 3x-4 &"si" & x >= 2,
              ) $ 
]

#question()[Determina el valor de $k$ para que la siguiente función sea continua en todo $RR$.
    $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & 2x+1 &"si" & x < 1,
                & k x^2 &"si" & x >= 1,
              ) $ 
]

