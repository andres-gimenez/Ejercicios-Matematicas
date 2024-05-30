#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.0": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo:image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO - Refuerzo",
    academic-subject: "Matemáticas",
    number: "3º Evaluación - 2º examene",
    content: "Ecuaciones de 1º grado",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "abril 23, 2024",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
)

#set math.cases(reverse: true)

#g-question[Resuelve las siguientes ecuaciones.]

#g-subquestion(point: 1)[$display(2(x-2)=6)$]
#v(1fr)

#g-subquestion(point: 1)[$display(1+3x = x-5)$]
#v(1fr)

#pagebreak()
#g-question[Resuelve las siguientes ecuaciones.]
#g-subquestion(point: 2)[$display((x+1)/20=(x-1)/10)$]
#v(1fr)

#g-subquestion(point: 2)[$display( 3(2x-2) - 4 =  2(3x-5) -4(2x - 3))$]
#v(1fr)

#g-subquestion(point: 2)[$display(2/(x-2) = 2)$]
#v(1fr)

#pagebreak()
#g-question[Indica el número de soluciones que tienen las siguientes ecuaciones.]

#g-subquestion(point: 2)[$display(4(2x - 1) = 2(4x + 5) - 2)$]
#v(1fr)

#g-subquestion(point: 2)[$display(3(5x + 1) = 5(3x + 1) - 2)$]
#v(1fr)