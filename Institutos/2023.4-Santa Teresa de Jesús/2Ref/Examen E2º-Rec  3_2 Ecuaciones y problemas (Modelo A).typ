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

// #g-question(point:2)[Simplifica las siguientes expresiones algebraicas:]

// // #g-subquestion[$display(4x + 12x =)$]
// // #v(1fr)

// #g-subquestion[$display(3x + 7 - 4x + 8 =)$]
// #v(1fr)

// #g-subquestion[$display(4x^2 + 2x - 6x^2 + 3 - 4x + 6 =)$]
// #v(1fr)

// #g-subquestion[$display(3(3x^2 + 2x + 1) - 4x^2 + 2 =)$]
// #v(1fr)

// #g-subquestion[$display(-(x - 2) + (x + 7) =)$]
// #v(1fr)

// #pagebreak()

// // #g-question(point:1)[Evalua las siguientes expresiones algebraicas con el valor indicado:]

// // #g-subquestion[$display(4x^2 - 3x + 1)$ para $x=2$ y $x=0$:]
// // #v(1fr)

// // #g-subquestion[$display(2x^2 + 2x - 1)$ para $x=-1$ y $x=0$:]
// // #v(1fr)

// #g-question[Simplifica y evalúa:]

// #g-subquestion(point:1)[Simplifica la expresión algebraica: \ \
// $display(3(x^2 + 3x - 2) - 3x^2 -19x + 2)=$]
// #v(2fr)

// #g-subquestion(point:0.25)[Evalúa la para $x=-1:$]
// #v(1fr)

// #g-subquestion(point:0.25)[Evalúa la para $x=0:$]
// #v(1fr)

// #g-subquestion(point:0.25)[Evalúa la para $x=1:$]
// #v(1fr)

// #g-subquestion(point:0.25)[Evalúa la para $x=2:$]
// #v(1fr)

// #g-question[Resuelve las siguientes ecuaciones:]

// // #g-subquestion(point:0.5)[$display(x+7 = 9)$]
// // #v(2fr)

// #g-subquestion(point:1)[$display(25 - 4x = 6x + 5)$]
// #v(2fr)

// #pagebreak()

// #g-subquestion(point:1)[$display(4 (2 - 3x)-10 = 3)$]
// #v(3fr)

// #g-subquestion(point:1)[$display(2 (5x + 2) = 4x + 3)$]
// #v(3fr)


// #g-subquestion(point:1)[$display((x+2)/2 + 3 = x+ 2 )$]
// #v(3fr)

// #pagebreak()

// #g-question(point:2)[En una ferretería se venden tornillos en cajas de tres tamaños: pequeña, mediana y grande. La caja grande contiene el doble que la mediana y la mediana 25 tornillos más que la pequeña. He comprado una caja de cada tamaño y en total hay 375 tornillos, ¿cuántos tornillos hay en cada caja?]
