#import "@preview/g-exam:0.4.0": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("./logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 3º examen",
    content: "Números enteros",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // question-text-parameters: (font:"OpenDyslexic")
  // question-text-parameters: (size: 18pt, spacing:200%)
  // question-text-parameters: (size: 11pt, spacing:100%)
)

#set math.cases(reverse: true)

// #place(
//   center ,
//   clearance: 0pt,
//   dx: -30pt,
//   dy: 40pt,
//   rotate(-45deg,
//     origin: top + right,
//     text(size:70pt, fill:silver)[Borrador] 
//   )
// )

#question(points:0.5)[Indica dos números decimales distintos entre $3,6$ y $3,7$.]
  #v(1fr)

#question(points:0.5)[Indica dos números decimales distintos entre $-5,3$ y $-5,2$.]
  #v(1fr)

#question(points:2)[Realiza las siguientes operaciones, indicando las operaciones realizadas al margen:]
#subquestion[$display("8,32" times "4,23" + "5,3322")$=]
#v(3fr)

#subquestion[$display("5,42" times ("2,36" - "5,33"))$=]
#v(3fr)

#pagebreak()

#question(points: 2)[Indica el valor de las siguientes operaciones con números decimales:]

#subquestion[$display((-2,3)^2)$=]
#v(1fr)

#subquestion[$display((0,2)^2)$=]
#v(1fr)

#subquestion[$display("-1432,435" dot 100)$=]
#v(1fr)

#subquestion[$display("536,233254" : 1000)$=]
#v(1fr)

#subquestion[$(-10)^8$=]
#v(1fr)

#pagebreak()
#question(points: 3)[Realiza las siguientes operaciones combinadas:]

// #subquestion[$display(3 dot (5-2) + 5 dot (4-8) - 4 dot (6 - 10))$=]
// #v(1fr)

#subquestion[$display(5 dot (-2+4) - 7 dot (-8+2) - 4 dot (5 - 3))$=]
#v(1fr)

// #subquestion[$display((2 - 3) dot (-4+2) - (-3+1)^2 - 5 dot (4 - 3))$=]
// #v(1fr)

#subquestion[$display(sqrt(5 - 1) + (3-1)^2 + 5 dot (1 - 2))$=]
#v(1fr)

#pagebreak()

#question(points:2)[En un tarro de cristal hay 30 bolas, Marta saca 10 bolas, 
Juan saca el doble que Marta y Pablo mete cinco veces tres bolas.]

#subquestion[Indica las bolas que quedan en el tarro, mediante una opareción combinada. (Deberán aparecer todas las operaciones en una sola línea.)]
#v(2cm)

#subquestion[Resuelve la operación combinada del apartado anterior e indica cuantas bolas quedan en el tarro.]
#v(1fr)
