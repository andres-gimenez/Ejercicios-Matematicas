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
    content: "Límites 3 (v1)",   // L'Hopital
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

#question()[Calcula el valor de los siguientes límites, si existieran:]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->infinity) ((2^x+x)/(e^x)))$]

  #subquestion()[$display(limits("lím")_(x->infinity) ((3x+1)/(2x))^(1/(x-2)))$]

  #subquestion()[$display(limits("lím")_(x->infinity) (e^x+ e^(-x))/(e^x - e^(-x)) )$]

  #subquestion()[$display(limits("lím")_(x->-infinity) (e^x+ e^(-x))/(e^x - e^(-x)) )$]

  #subquestion()[$display(limits("lím")_(x->1) (x^2-1)/abs(x-1) )$]

  #subquestion()[$display(limits("lím")_(x->-infinity) (x^2-1)/abs(x-1) )$]

])

#question()[Calcula el valor de los siguientes límites, si existieran:]
#columns(2, [
  #subquestion()[$display(limits("lím")_(x->0) ((cos(x))/(cos(x) + cos^2(x)))^cos(2x))$]
  #subquestion()[$display(limits("lím")_(x->0) ((1+ln(x))/(x-1))^(1/ln(x))) $]
  #subquestion()[$display(limits("lím")_(x->infinity) ((2 ln(x)) / ln(7x^2))^ln(x))$]
  #subquestion()[$display(limits("lím")_(x->infinity) ((3x-2)/(3x))^(2x-1))$]

  #subquestion()[$display(limits("lím")_(x->infinity) (log x)^(1-3x))$]
#subquestion()[$display(limits("lím")_(x->infinity) ((x+2)/6))^(1/(x-4))$]

])

