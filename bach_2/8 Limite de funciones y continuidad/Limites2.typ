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
    content: "Límites 2 (v1)",  // limite x-> c
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
// #set math.cases(reverse: true)

#question()[Calcula el valor de los siguientes límites, si existieran:]

#columns(2, [
  #subquestion()[$display(limits("lím")_(x->1) (3x^3-9x^2+6)/(x+1))$]
  #subquestion()[$display(limits("lím")_(x->-2) sqrt(3x^2-8)/x+2))$]
  #subquestion()[$display(limits("lím")_(x->+infinity) sqrt(x^2+1) + sqrt(x+1)))$]
  #subquestion()[$display(limits("lím")_(x->-infinity) sqrt(1-x) - e^x + e^(-x)))$]
  #subquestion()[$display(limits("lím")_(x->0)1000/x^2))$]
  #subquestion()[$display(limits("lím")_(x->0) 1/x^3)))$]
  #subquestion()[$display(limits("lím")_(x->0) -10/(x^2)))$]
  #subquestion()[$display(limits("lím")_(x->0) -1/x^3))$]
  #subquestion()[$display(limits("lím")_(x->2^+) 1/root(4, x^4-16)))$]
  #subquestion()[$display(limits("lím")_(x->2^-) 1/root(4, x^4-16)))$]
  #subquestion()[$display(limits("lím")_(x->2) 1/root(4, x^4-16)))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->0^+) x/(ln x))$]
  #subquestion()[$display(limits("lím")_(x->0^-) x/(ln x))$]
  #subquestion()[$display(limits("lím")_(x->0) x/(ln x))$]
  #subquestion()[$display(limits("lím")_(x->0^+) (ln x)/x)$]
  #subquestion()[$display(limits("lím")_(x->0^-) (ln x)/x)$]
  #subquestion()[$display(limits("lím")_(x->0) (ln x)/x)$]
  #subquestion()[$display(limits("lím")_(x->0) (ln x)/x)$]
  #subquestion()[$display(limits("lím")_(x->(pi/2)^+) (1+tan(x))/cos(x))$]
  #subquestion()[$display(limits("lím")_(x->(pi/2)^-) (1+tan(x))/cos(x))$]
  #subquestion()[$display(limits("lím")_(x->pi/2) (1+tan(x))/cos(x))$]
])

#question()[Si $limits("lím")_(x->a) f(x)=-2$, $limits("lím")_(x->a) g(x)=2$ y $limits("lím")_(x->a) h(x)=5$] 

#columns(2, [
  #subquestion()[$display(limits("lím")_(x->a) [2f(x) - 2g(x) + h(x)])$]
  #subquestion()[$display(limits("lím")_(x->a) 12/(f(x)+g(x)))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->a) sqrt(f(x)^2 + g(x)^2))$]
  #subquestion()[$display(limits("lím")_(x->a) [f(x)/g(x) - (f(x) + g(x))/h(x)]) $]
])


#question()[Determina los siguientes límites de funciones distinguiendo, si es necesario, los dos límites laterales.]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->0) (3x^4)/(x^3+x^2))$]
  #subquestion()[$display(limits("lím")_(x->2) ((x-2)/(x^2-4) - (x^2-4)/(x-2)) )$]
  #subquestion()[$display(limits("lím")_(x->sqrt(5)) (x-sqrt(5)) / (x^2-5))$]
  #subquestion()[$display(limits("lím")_(x->5) (x^2-25) / (sqrt(x)-sqrt(5)))$]
  #subquestion()[$display(limits("lím")_(x->3) (x^2-3x)/(2-sqrt(2x-2)))$]
  #subquestion()[$display(limits("lím")_(x->0) (sqrt(1-x)-1)/x)$]
  #subquestion()[$display(limits("lím")_(x->3) (2x+1)/(3-x))$]
  #subquestion()[$display(limits("lím")_(x->4) (x^2+x-20)/(x^2-7x+12))$]
  #subquestion()[$display(limits("lím")_(x->-4) (x^2-7x+16)/(x^2-2x-24))$]
  #subquestion()[$display(limits("lím")_(x->1) (x-1)/(x^2+1))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->1) (x^2+1)/(x-1))$]
  #subquestion()[$display(limits("lím")_(x->3) (x^2-9)/(x^2-4))$]
  #subquestion()[$display(limits("lím")_(x->3) (x^2-x-6)/(x^2+4x-21))$]
  #subquestion()[$display(limits("lím")_(x->3) (x^3+3x-18)/(x^2-27))$]
  #subquestion()[$display(limits("lím")_(x->-1) (x^4-x^3-3x^2+5x-2)/(x^2-2x+1))$]
  #subquestion()[$display(limits("lím")_(x->3) (sqrt(x+1)-2)/(x-3))$]
  #subquestion()[$display(limits("lím")_(x->2) (x^2-4)/(3-sqrt(x+7)))$]
  #subquestion()[$display(limits("lím")_(x->4) (2-sqrt(x))/(3-sqrt(x+5)))$]
])

#question()[Dada la función,
    $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & x/(x-2) &"si" & x < 1,
                & 2x-1 &"si" & 1<=x< 4,
                & sqrt(x) + x +1 &"si" & x>=4
              ) $ 
Calcula:
]
#columns(4, [
  #subquestion()[$display(limits("lím")_(x->1^-) f(x))$]
  #subquestion()[$display(limits("lím")_(x->1^+) f(x))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->1) f(x))$]
  #subquestion()[$display(limits("lím")_(x->4^-) f(x))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->4^+) f(x))$]
  #subquestion()[$display(limits("lím")_(x->4) f(x))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->2) f(x))$]
  #subquestion()[$display(limits("lím")_(x->5) f(x))$]
])


#question()[Calcula los limites con indeterminación $(0)slash(0)$]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->-1) (x^3-2x^2+2x+5)/(x^2-6x-7))$]
  #subquestion()[$display(limits("lím")_(x->4) (x^3-5x+1)/(x^3+2x^2-3x))$]
  #colbreak()
  #subquestion()[$display(limits("lím")_(x->-3) sqrt(x^2+2x-3)/root(3, x^3+3x^2))$]
  #subquestion()[$display(limits("lím")_(x->1) root(4, x^3-x)/sqrt(x^2+x-2))$]
])

#question()[Calcula los limites con indeterminación $(+infinity)-(+infinity)$]

  #subquestion()[$display(limits("lím")_(x->0) (x^2-5x+2)/(x^2+2x) - (x^3+2x+1)/
  (x^3+x))$]

#question()[Calcula los limites con indeterminación $(1)^((+infinity))$]

  #subquestion()[$display(limits("lím")_(x->7) ((x^2-7x+4)/(x-3))^((x+1)/(x-7)))$]

// = EvAU
// #question()[Año 2011 - Ordinaria - Opción A]

// #subquestion()[$display(limits("lím")_(x->infinity) sqrt(x) / (sqrt(x + sqrt(x))))$]

// #question()[Año 2012 - Ordinaria - Opción B]

// #subquestion()[$display(limits("lím")_(x->+infinity) (3x + ln(x+1))/(sqrt(x^2-3)) )$]

// #question()[Año 2012 - Ordinaria - Coincidente - Opción B

// Dada la función

//  $ f(x) = (x-3)/sqrt(x^2-9) $
 
// se pide:
// ]

// #subquestion()[Hallar $display(limits("lím")_(x->+3^+) f(x))$, $display(limits("lím")_(x->-3^-) f(x))$]

// #subquestion()[Hallar $display(limits("lím")_(x->+infinity) f(x))$, $display(limits("lím")_(x->-infinity) f(x))$]



// #question()[Año 2025 - Modelo - Bloque 2

// Dada la función $display(f(x)=sin(pi/2 x))$, se pide]

// #subquestion()[Estudiar la paridad de la función $display(g(x) = f(x f(x))) $]

// #subquestion()[Hallar $display(limits("lím")_(x->0) (sqrt(4+3f(x)) - 3) / x )$.]


// #question()[Año 2025 - Ordinaria - Coincidente - Bloque 2

// Para la  la función $display(f(x)=sqrt(x^2+3x))$, se pide]

// #subquestion()[Hallar $display(limits("lím")_(x->-infinity) f(x)/x )$ y $display(limits("lím")_(x->-infinity) f(x)+x )$.]

