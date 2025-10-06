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
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: [Límites 1  (v2)],
    content: [($X->infinity$)] 
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


#question()[Si $limits("lím")_(x->1) f(x) = 4$ y $limits("lím")_(x->1) g(x) = 2$, di el valor del límite cuando $x$ tiende a 1 de las siguientes funciones:]

#columns(2, [
  #subquestion()[$display(f(x)+g(x))$]
  #subquestion()[$display(f(x) dot g(x))$]
  #subquestion()[$display(f(x)/g(x))$]
  #colbreak()
  #subquestion()[$display(f(x)^g(x))$]
  #subquestion()[$display(sqrt(g(x)))$]
  #subquestion()[$display(4f(x)-5g(x))$]
])

#question()[Si $limits("lím")_(x->2) p(x) = +infinity$, $limits("lím")_(x->2) q(x) = +infinity$, $limits("lím")_(x->2) r(x) = 3$, $limits("lím")_(x->2) s(x) = 0$, di, en los casos en que sea posible, el valor del $limits("lím")_(x->2)$ de las siguientes funcioens:

\[Recuerda que las expresiones $(+infinity)slash(+infinity)$, $(+infinity)-(+infinity)$, $(0) dot (+infinity)$, $(1)^((+infinity))$, $(0)slash(0)$ son indeterminaciones \].
]

#columns(3, [
  #subquestion()[$display(2p(x) + q(x))$]
  #subquestion()[$display(p(x)-3q(x))$]
  #subquestion()[$display(r(x)/p(x))$]
  #subquestion()[$display(p(x)/p(x))$]
  #subquestion()[$display(s(x) dot q(x))$]
  #colbreak()
  #subquestion()[$display(s(x)^(s(x)))$]
  #subquestion()[$display(p(x)^(r(x)))$]
  #subquestion()[$display(r(x)^(s(x)))$]
  #subquestion()[$display((3-r(x))/s(x))$]
  #subquestion()[$display([r(x)/3]^(s(x)))$]
  #colbreak()
  #subquestion()[$display(r(x)^(p(x)))$]
  #subquestion()[$display(r(x)^(-q(x)))$]
  #subquestion()[$display((r(x)/3)^(p(x)))$]
  #subquestion()[$display((r(x)/3)^(-p(x)))$]
])

#question()[Calcula el valor de los siguientes límites, si existieran:]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->+infinity) (5x^2+3x+2))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (2x+sqrt(2x^2+6x-5)))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (3x^2+5x-3)/4)$]
  #subquestion()[$display(limits("lím")_(x->+infinity) sqrt(3x^2+5x-3) / 4)$]
  #subquestion()[$display(limits("lím")_(x->+infinity) x+e^x)$]
  #subquestion()[$display(limits("lím")_(x->+infinity) 2^x)$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (1/2)^x)$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (1/2)^x)$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (0,5)^x)$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->+infinity) 4/(3x^2+5x-3))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) 4/sqrt(3x^2+5x-3))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) x-e^(-x))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) 2^(-x))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (1/2)^(-x))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (1/2)^(-x))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) ((x+3)/(3x^2+5))^(2 sqrt(x)))$]
])

#pagebreak()

#question()[Calcula el valor de los siguientes límites, si existieran:]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->+infinity) (2x^3+x^2-1)/(-x^3+3))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (2x^3+2x+3)/(-x^2+3))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (4x^3+3x^2-2)/(5-x^2))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (-4x^2+1)/(x^3+x))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (sqrt(2x^2+2x+3))/(2x+3))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (root(3, 2x^2+3)-5)/((sqrt(x+5))+root(3, 1-x^2)))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->+infinity) (2x^2+1)/sqrt(x^3+3x-1))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (sqrt(2x^2+2x+3))/(2x+3))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (sqrt(2x^3+2x+3))/(x^2+3))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (sqrt(2x^3+2x+3))/(x^2+3))$]
  #subquestion()[$display(limits("lím")_(x->infinity) 1/(3x^2+1) (3-2x^2))$]
])

#question()[Calcula el valor de los siguientes límites, si existieran:]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->+infinity) x^2/(x-1)- x^2/(x-2))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (3x^4+5)/(x+2) - (4x^3-x)/(x-2))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (3x+5)/2 - (x^2-2)/x)$]
  #subquestion()[$display(limits("lím")_(x->-infinity) x-sqrt(3x^2+6x-5))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) 2x^2-sqrt(2x^2-1))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->+infinity) 2/sqrt(x^2-1) - 2/sqrt(x^2+1))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) (x^3-2x^2)/(x^2-1) - (x^3+2x^2)/(x^2+1))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (x^2+x+2)/(x-3) - (x^2-2x+2)/(x+3))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) sqrt(x^2+1) + sqrt(x+1)))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) sqrt(1-x) - e^x + e^(-x)))$]
])

#question()[Calcula el valor de los siguientes límites, si existieran:]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->+infinity) 2x - sqrt(x^2+x-3)) $]
  #subquestion()[$display(limits("lím")_(x->+infinity) sqrt(2x^2-3x+5) - sqrt(2x^2+x+1)) $]
  #subquestion()[$display(limits("lím")_(x->-infinity) sqrt(x^2-2x+5) - sqrt(x^2+x+5))$] 
  #subquestion()[$display(limits("lím")_(x->+infinity) x^(17) - 2^x)$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->+infinity) e^x - ln(x))$] 
  #subquestion()[$display(limits("lím")_(x->infinity) x e^(-x))$]
  #subquestion()[$display(limits("lím")_(x->infinity) x^2 sqrt(x/(x^5-3)) )$]
  #subquestion()[$display(limits("lím")_(x->infinity) "Ln"(x) dot 2/x)$]
])

#pagebreak()

#question()[Calcula los siguientes límites:]
#columns(3, [
  #subquestion()[$display(limits("lím")_(x->infinity) ((x+4)/(x+3))^(x+3))$]
  #subquestion()[$display(limits("lím")_(x->infinity) ((2x^2+5x)/(2x^2+3x))^(x^2+2x))$]
  #subquestion()[$display(limits("lím")_(x->infinity) ((x^3+4x)/(x^3+2))^(2x-4))$]
  #subquestion()[$display(limits("lím")_(x->infinity) ((2x+3)/(2x-3))^(x^2+3))$]
  
  #subquestion()[$display(limits("lím")_(x->-infinity) ((sqrt(-x)+1)/(sqrt(-x)))^sqrt(-x))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->0^+) root(x, 1+x/(x+1)))$]
  #subquestion()[$display(limits("lím")_(x->infinity) (1+1/2^x)^x)$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (1+e^x)^x)$]
  #subquestion()[$display(limits("lím")_(x->infinity) ((4x+1)/(2x))^x)$]
  #subquestion()[$display(limits("lím")_(x->infinity) ((4x+1)/(2x^2))^x)$]

  #subquestion()[$display(limits("lím")_(x->infinity) ((2x+1)/(4x))^x)$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->infinity) ((x-2)/(x+1))^(2x))$]

  #subquestion()[$display(limits("lím")_(x->infinity) ((x^2+1)/(x^2+x))^(3x-2))$]
  #subquestion()[$display(limits("lím")_(x->2) ((x+2)/(2x))^(1/(x-2)))$]
  #subquestion()[$display(limits("lím")_(x->1) ((2x+1)/(x+2))^(1/(x-1)))$]

  
])

#question()[Calcula los siguientes límites:]
  #columns(2, [
    #subquestion()[$display(limits("lím")_(x->-infinity) ((3x^3+5)/(x+2) - (4x^3 - x)/(x-2)))$]
    #subquestion()[$display(limits("lím")_(x->-infinity) (sqrt(x^2+x) - sqrt(x^2+1)))$]
    #subquestion()[$display(limits("lím")_(x->-infinity) ((x^3)/(2x^2+1)) - x/2)$]
    #subquestion()[$display(limits("lím")_(x->-infinity) (2x + sqrt(x^2 + x)))$]
  #colbreak()

  #subquestion()[$display(limits("lím")_(x->-infinity) (sqrt(x^2+2x) + x))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (1+3/x)^(2x))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) (1-1/x)^(5x+3))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) ((x^2+x-1)/(x^2+2))^(3x-1))$]
])

