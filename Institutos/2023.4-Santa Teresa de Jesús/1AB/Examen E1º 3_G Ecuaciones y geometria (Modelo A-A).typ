#import "@preview/cetz:0.2.2"
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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "3º Evaluación - Global",
    content: "Ecuaciones y geometría",
    model: "Modelo A-A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "abril 23, 2024",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  question-text-parameters: (size: 15pt, spacing:200%),
  clarifications: (
    [Explica brevemente todos los pasos de la resolución de los problemas.],
    [Para el cálculo de áreas, escribe la expresión algebraica que vas a utilizar, antes de aplicarla.],
    [No se dará por valido ejercicios resueltos a tanteo. En cada caso, plante la expresión algebraica o ecuación que vas a utilizar y resuélvela.],
    [Tomar $cal(pi) cal(tilde.eq) 3,14$])
)

// #set math.cases(reverse: true)
#g-question[Resuelve las siguientes ecuaciones:] \
#g-clarification[#text(size:11pt)[Expresa el resultado como una fracción irreducible]]

#g-subquestion(point:1)[$display(6x+5=21-2x)$]
#v(1fr)

#g-subquestion(point:2)[$display(2(2+3x) = 8)$]
#v(1fr)

#pagebreak()

#g-question[Que altura ha de tener un trapezoide, cuyas bases miden $5 "cm"$ y $3 "cm"$, para que su área mida $"12 cm"^2$.] \
#g-clarification[#text(size:11pt)[Expresa el problema en forma de ecuación y resuélvela.]] \
#g-clarification[#text(size:11pt)[Indica cual es el área del trapezoide.]]
\ \
#cetz.canvas(length: 2cm,
{
 import cetz.draw: *

  line((-1.5, -0.8), (-0.3, 0.3), (1.3, 0.3), (1.7, -0.8), close: true, fill: silver, stroke:black)

  line((1.3, 0.3), (1.3, -0.8), stroke: (paint:luma(130), dash: "dashed"))

  content((0.5, 0.5), [base menor = 3 cm])
  content((0.3, -0.99), [base mayor = 5 cm])
  content((1.1, -0.2), text(size:20pt)[x])
})
#g-subquestion(point:1)[Indica cual es la expresión algebraica para calcular el área del trapezoide.]
#v(1fr)

#g-subquestion(point:2)[Indica la ecuación que relaciona la altura con el área.]
#v(1fr)

#g-subquestion(point:1)[Resuelve la ecuación y calcula el área.]
#v(2fr)

#pagebreak()

#g-question(point:3)[En un rectángulo en el que la base mide 24cm y la altura 7cm, ¿cuánto mide la diagonal?] \
#g-clarification[#text(size:11pt)[Explica como has calculado la longitud de la diagonal y que teorema has utilizado.]]
\ \
#cetz.canvas(length: 2cm,
{
 import cetz.draw: *

  line((-1, -1), (-1, 1), (2,1), (2, -1), stroke:black, close:true)
  line((-1, -1), (2, 1), stroke: (paint:luma(0), dash: "dashed"))

  content((0.5, -1.2), [base = 24 cm])
  content((2.2, 0), [altura = 7 cm], angle:90deg)
  content((0.3, 0.2),  text(size:25pt)[x])
})



// #pagebreak()

// #g-question(point:2)[En la siguiente figura formada por un cuadrado y un semicírculo, calcula el área sombreada, teniendo en cuenta que el lado del cuadro mide 3 cm.] \
// #g-clarification[Tomar $cal(pi) cal(tilde.eq) 3,14$] \
// #g-clarification[Indica cual es el área del semicírculo y del cuadrado.] \
// #g-clarification[Evalua el área del círculo y del cuadrado.] \

// #cetz.canvas({
//   import cetz.draw: *
//   circle((0, 0), radius: 1.5, fill: silver, stroke: black)
//   rect((-1.5,0), (1.5,-3), fill: silver, stroke: black)
//   content((0, -3.3), [lado = 3cm])
// })
// #v(1fr)


// #g-question(point:2)[Calcula el área sombreada de la siguiente figura, si el lado del cuadrado mide 2 cm.] \
// #g-clarification[Tomar $cal(pi) cal(tilde.eq) 3,14$] \
// #g-clarification[Indica cual es el área del círculo y del cuadrado.] \
// #g-clarification[Evalua el área del círculo y del cuadrado.] \

// #cetz.canvas(length: 2cm,
// {
//  import cetz.draw: *
//   rect((-1, -1), (1, 1), fill: silver, stroke:black)

//   circle((0, 0), fill: white, stroke: black)
//   content((0, -1.2), [lado = 2cm])

// })
// #v(1fr)
// #pagebreak()



