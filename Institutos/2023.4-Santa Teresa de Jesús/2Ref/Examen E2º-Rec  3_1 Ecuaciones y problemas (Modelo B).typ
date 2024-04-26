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
    number: "3º Evaluación - 1º examene",
    content: "Expresiones algebraicas y ecuaciones",
    model: "Modelo B"
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

#g-subquestion[$display(5x + 3 - 2x +  =)$]
#v(1fr)

#g-subquestion[$display(3x^2 + 2x - x^2 + 2 - 4x +  =)$]
#v(1fr)

#g-subquestion[$display(4(3x^2 + 2x + 1) - 4x^2 + 2 =)$]
#v(1fr)

#g-subquestion[$display(-(x - 2) + (x + 8) =)$]
#v(1fr)

#pagebreak()

#g-question[Simplifica y evalúa:]

#g-subquestion(point:1)[Simplifica la expresión algebraica: \ \
$display(4(x^2 + 3x - 2) - 4x^2 -19x + 2)=$]
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

// #g-subquestion(point:0.5)[$display(x+7 = 9)$]
// #v(2fr)

#g-subquestion(point:1)[$display(23 - 4x = 6x + 3)$]
#v(2fr)

#pagebreak()

#g-subquestion(point:1)[$display(4 (2 - 3x)-11 =4 )$]
#v(3fr)

#g-subquestion(point:1)[$display(2 (5x + 2) = 4x + 3)$]
#v(3fr)


#g-subquestion(point:1)[$display((x+2)/2 + 4 = x + 3 )$]
#v(3fr)

#pagebreak()

#g-question(point:2)[En una ferretería se venden tornillos en cajas de tres tamaños: pequeña, mediana y grande. La caja grande contiene el doble que la mediana y la mediana 25 tornillos más que la pequeña. He comprado una caja de cada tamaño y en total hay 375 tornillos, ¿cuántos tornillos hay en cada caja?]
