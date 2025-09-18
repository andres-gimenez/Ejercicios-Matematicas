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
    // logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    // academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    // number: "Versión 1",
    content: "Límites 1 (v1)",
    // model: [Modelo $alpha$],
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
#set math.cases(reverse: true)

// https://lasmatematicas.eu/docs/matematicas2bach/ejercicios/problemas_optimizacion_2.pdf
// https://www.cartagena99.com/recursos/matematicas/ejercicios/Der_EjerciciosOptimizacion3.pdf


#question()[Si $limits("lím")_(x->1) f(x) = 4$ y $limits("lím")_(x->1) g(x) = 2$, di el valor del límite cuando $x$ tiende a 1 de las siguientes funciones:]

#columns(2, [
  #subquestion()[$f(x)+g(x)$]
  #subquestion()[$f(x) dot g(x)$]
  #subquestion()[$f(x)/g(x)$]
  #colbreak()
  #subquestion()[f(x)^(g(x))]
  #subquestion()[sqrt(g(x)))]
  #subquestion()[4f(x)-5g(x)]
])

#question()[Si $limits("lím")_(x->2) p(x) = +infinity$, $limits("lím")_(x->2) q(x) = +infinity$, $limits("lím")_(x->2) r(x) = 3$, $limits("lím")_(x->2) s(x) = 0$, di, en los casos en que sea posible, el valor del $limits("lím")_(x->2)$ de las siguientes funcioens:

\[Recuerda que las expresiones $(+infinity)slash(+infinity)$, $(+infinity)-(+infinity)$, $(0) dot (+infinity)$, $(1)^((+infinity))$, $(0)slash(0)$ son indeterminaciones \].
]

#columns(2, [
  #subquestion()[$2p(x) + q(x)$]
  #subquestion()[$p(x)-3q(x)$]
  #subquestion()[$r(x)/p(x)$]
  #subquestion()[$p(x)/p(x)$]
  #subquestion()[$s(x) dot q(x)$]
  #subquestion()[$s(x)^(s(x))$]
  #subquestion()[$p(x)^(r(x))$]
  #colbreak()
  #subquestion()[$r(x)^(s(x))$]
  #subquestion()[$(3-r(x))/s(x)$]
  #subquestion()[$[r(x)/3]^(s(x))$]
  #subquestion()[$r(x)^(p(x))$]
  #subquestion()[$r(x)^(-q(x))$]
  #subquestion()[$(r(x)/3)^(p(x))$]
  #subquestion()[$(r(x)/3)^(-p(x))$]
])

#question()[Calcula el valor de los siguientes límites, si existieran:]


#columns(2, [
  #subquestion()[$limits("lím")_(x->1) (3x^3-9x^2+6)/(x+1)$]
  #subquestion()[$limits("lím")_(x->-2) sqrt(3x^2-8)/x+2$]
  #subquestion()[$limits("lím")_(x->+infinity) sqrt(x^2+1) + sqrt(x+1)$]
  #subquestion()[$limits("lím")_(x->-infinity) sqrt(1-x) - e^x + e^(-x)$]
  #subquestion()[$limits("lím")_(x->0)1000/x^2$]
  #subquestion()[$limits("lím")_(x->0) 1/x^3)$]
  #subquestion()[$limits("lím")_(x->0) -10/(x^2)$]
  #subquestion()[$limits("lím")_(x->0) -1/x^3$]
  #subquestion()[$limits("lím")_(x->2^+) 1/root(4, x^4-16)$]
  #subquestion()[$limits("lím")_(x->2^-) 1/root(4, x^4-16)$]
  #subquestion()[$limits("lím")_(x->2) 1/root(4, x^4-16)$]
  #colbreak()
  #subquestion()[$limits("lím")_(x->0^+) x/(ln x)$]
  #subquestion()[$limits("lím")_(x->0^-) x/(ln x)$]
  #subquestion()[$limits("lím")_(x->0) x/(ln x)$]
  #subquestion()[$limits("lím")_(x->0^+) (ln x)/x$]
  #subquestion()[$limits("lím")_(x->0^-) (ln x)/x$]
  #subquestion()[$limits("lím")_(x->0) (ln x)/x$]
  #subquestion()[$limits("lím")_(x->0) (ln x)/x$]
  #subquestion()[$limits("lím")_(x->(pi/2)^+) (1+tan(x))/cos(x)$]
  #subquestion()[$limits("lím")_(x->(pi/2)^-) (1+tan(x))/cos(x)$]
  #subquestion()[$limits("lím")_(x->pi/2) (1+tan(x))/cos(x)$]
])

#question()[Calcula los limites con indeterminación $(0)slash(0)$]
#columns(2, [
  #subquestion()[$limits("lím")_(x->-1) (x^3-2x^2+2x+5)/(x^2-6x-7)$]
  #subquestion()[$limits("lím")_(x->4) (x^3-5x+1)/(x^3+2x^2-3x)$]
  #colbreak()
  #subquestion()[$limits("lím")_(x->-3) sqrt(x^2+2x-3)/root(3, x^3+3x^2)$]
  #subquestion()[$limits("lím")_(x->1) root(4, x^3-x)/sqrt(x^2+x-2)$]
])

#question()[Calcula los limites con indeterminación $(+infinity)-(+infinity)$]

  #subquestion()[$limits("lím")_(x->0) (x^2-5x+2)/(x^2+2x) - (x^3+2x+1)/
  (x^3+x)$]

#question()[Calcula los limites con indeterminación $(1)^((+infinity))$]

  #subquestion()[$limits("lím")_(x->7) ((x^2-7x+4)/(x-3))^((x+1)/(x-7))$]
