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
  show-grade-table: true,
  question-point-position: right,
)

#set math.cases(reverse: true)

#g-question(point:2)[Simplifica las siguientes expresiones algebraicas:]

#g-subquestion[$display(5x + 7x =)$]
#v(1fr)

#g-subquestion[$display(6x + 8 - 7x + 5 =)$]
#v(1fr)

#g-subquestion[$display(3x^2 + 2x - 5x^2 + 2 - 3x + 6 =)$]
#v(1fr)

#g-subquestion[$display(2(2x^2 + 3x + 2) - 2x^2 + 1 =)$]
#v(1fr)

#g-subquestion[$display(-(x - 2) + (x - 3) =)$]
#v(1fr)

#pagebreak()

// #g-question[Evalua las siguientes expresiones algebraicas con el valor indicado:]

// #g-subquestion[$display(3x^2 - 2x + 3)$ para $x=2$ y $x=0$:]
// #v(1fr)

// #g-subquestion[$display(3x^2 + 3x - 2)$ para $x=-1$ y $x=0$:]
// #v(1fr)

#g-question[Simplifica y evalúa:]

#g-subquestion(point:1)[Simplifica la expresión algebraica: \ \
$display(2(x^2 + 2x - 1) - 2x^2 -14x + 7)=$]
#v(2fr)

#g-subquestion(point:0.25)[Evalúa la para $x=-1:$]
#v(1fr)

#g-subquestion(point:0.25)[Evalúa la para $x=0:$]
#v(1fr)

#g-subquestion(point:0.25)[Evalúa la para $x=1:$]
#v(1fr)

#g-subquestion(point:0.25)[Evalúa la para $x=2:$]
#v(1fr)

#g-question[Resuelve las siguientes ecuaciones:]

#g-subquestion(point:0.5)[$display(x+3 = 12)$]
#v(2fr)

#g-subquestion(point:0.75)[$display(25 - 2x = 4x + 1)$]
#v(2fr)

#pagebreak()

#g-subquestion(point:0.75)[$display(3 (6 - 2x)-12 = 5)$]
#v(3fr)

#g-subquestion(point:0.75)[$display(4(3x + 5) = 2x + 8)$]
#v(3fr)

#g-subquestion(point:0.5)[$display(6x+3x=21-3)$]
#v(2fr)

#g-subquestion(point:0.75)[$display(3(2+2x) = 12 )$]
#v(3fr)


#pagebreak()
#g-question(point:2)[Expresa las siguientes frases en lenguaje algebraico]

// #g-subquestion[La mitad de un número]
// #v(1fr)

// #g-subquestion[El triple de un número]
// #v(1fr)

// #g-subquestion[El triple de un número menos cinco.]
// #v(1fr)

#g-subquestion[Si '$x$' es el número de coches que tenemos en una garaje, indica la expresión algebraica que te dice el número de ruedas que tenemos.]
#v(1fr)

#g-subquestion[Si tenemos '$x$' motos e '$y$' coches en un garaje, ¿cuántos vehículos tenemos?]
#v(1fr)


#g-subquestion[Si tenemos '$x$' motos e '$y$' coches en una garaje, ¿cuántas ruedas tenemos?]
#v(1fr)

// #g-question[Un recipiente está lleno de agua. Se extrae la mitad del agua primero y después la cuarta parte del resto. Si quedan 300 litros, ¿cuál era la capacidad del recipiente?]
// #v(5fr)