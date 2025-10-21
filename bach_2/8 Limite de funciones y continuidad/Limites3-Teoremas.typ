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
    number: [Teoremas],
    // content: [($X->infinity$)],
    model: [v3],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: false,
  show-grade-table: false,
  show-solution: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
[
  #question()[
    Demuestra que el polinomio $P(x) = x^3-4x+1$ tiene *al menos una raíz real* en el intervalo $[0, 2]$.]

  #solution()[
  + *Definimos la función:*

    $ f(x) = x^3 - 4x + 1 $

  + *Comprobamos que es continua* en $[0, 2]$.

    Es un polinomio, y todos los polinomios son continuos en $RR$.

  + *Evaluamos los extremos del intervalo:*

    $ f(0) = 0^3 - 4·0 + 1 = 1 $

    $ f(2) = 2^3 - 4·2 + 1 = 8 - 8 + 1 = 1 $

    No hay cambio de signo entre $0$ y $2$, así que probamos en un punto intermedio:

    $ f(1) = 1 - 4 + 1 = -2 $

  + *Buscamos un cambio de signo:*

    $ f(0) = 1 > 0 $  
    $ f(1) = -2 < 0 $

    Hay cambio de signo entre $x = 0$ y $x = 1$.

  + *Aplicamos el Teorema de Bolzano:*

    Como $f$ es continua en $[0, 1]$ y $f(0)·f(1) < 0$,  
    existe al menos un número $c ∈ (0, 1)$ tal que $ f(c) = 0 $.

  == Conclusión

  La ecuación $ x^3 - 4x + 1 = 0 $ tiene al menos una raíz real en el intervalo 
  ]
])
