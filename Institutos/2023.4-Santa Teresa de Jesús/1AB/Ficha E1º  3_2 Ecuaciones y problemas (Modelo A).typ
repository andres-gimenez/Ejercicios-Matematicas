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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "3º Evaluación - 1º examene",
    content: "Expresiones algebraicas y ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "abril 23, 2024",
  show-studen-data: "odd-pages",
  show-grade-table: false,
  question-point-position: right,
)

#set math.cases(reverse: true)

#g-question[Simplifica las siguientes expresiones algebraicas:]

#g-subquestion[$display(3x + 4x =)$]
#v(1fr)

#g-subquestion[$display(4x + 5 - 3x + 2 =)$]
#v(1fr)

#g-subquestion[$display(4x^2 + 5x - 3x^2 + 2 - 3x + 8 =)$]
#v(1fr)

#g-subquestion[$display(5(4x^2 + 2x + 2) - 4x^2 - 1 =)$]
#v(1fr)

#g-subquestion[$display(-(x - 1) + (x - 4) =)$]
#v(1fr)

#pagebreak()

#g-question[Evalua las siguientes expresiones algebraicas con el valor indicado:]

#g-subquestion[$display(2x^2 - 5x + 3)$ para $x=2$ y $x=0$:]
#v(1fr)

#g-subquestion[$display(3x^2 + 2x - 1)$ para $x=-1$ y $x=0$:]
#v(1fr)

#g-question[Simplifica y evalúa:]

#g-subquestion[Simplifica la expresión algebraica: \ \
$display(5(x^2 + 3x - 2) - 5x^2 -14x + 9)=$]
#v(2fr)

#g-subquestion[Evalúa la para $x=-1:$]
#v(1fr)

#g-subquestion[Evalúa la para $x=0:$]
#v(1fr)

#g-subquestion[Evalúa la para $x=1:$]
#v(1fr)

#g-subquestion[Evalúa la para $x=2:$]
#v(1fr)

#pagebreak()
#g-question[Resuelve las siguientes ecuaciones:]

#g-subquestion[$display(x+6 = 9)$]
#v(2fr)

#g-subquestion[$display(25 - 2x = 3x + 3)$]
#v(2fr)

#g-subquestion[$display(2 (6 - 5x)-13 = 3)$]
#v(3fr)

#g-subquestion[$display(5(2x + 2) = 4x - 2)$]
#v(3fr)

#pagebreak()
#g-question[Expresa las siguientes frases en lenguaje algebraico]

#g-subquestion[El doble de un número]
#v(1fr)

#g-subquestion[La mitad de un número]
#v(1fr)

#g-subquestion[El triple de un número menos cinco.]
#v(1fr)

#g-subquestion[Si x es el número de ovejas que tenemos en una granja, indica la expresión algebraica que te dice el número de patas que tenemos.]
#v(1fr)

#g-subquestion[Si tenemos '$x$' ovejas e '$y$' vacas en una granja, ¿cuántos animales tenemos?]
#v(1fr)


#g-subquestion[Si tenemos '$x$' ovejas e '$y$' pavos en una granja, ¿cuántas patas tenemos?]
#v(1fr)

// #g-question[Un recipiente está lleno de agua. Se extrae la mitad del agua primero y después la cuarta parte del resto. Si quedan 300 litros, ¿cuál era la capacidad del recipiente?]
// #v(5fr)