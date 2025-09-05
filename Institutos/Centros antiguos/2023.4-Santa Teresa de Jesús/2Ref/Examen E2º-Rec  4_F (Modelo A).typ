#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.0": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo:image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO - Refuerzo",
    academic-subject: "Matemáticas",
    number: "Examen final",
    content: "",
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

#g-question(point:2)[Realiza las siguientes operaciones convinadas:]

#g-subquestion[$display(6+15 dot 3 - (32 - 7) : 5=)$]
#v(1fr)

#g-subquestion[$display(5 dot (28-13) - 54 : 6=)$]
#v(1fr)


#pagebreak()

#g-question(point:2)[Simplifica las siguientes expresiones algebraicas:]

#g-subquestion[$display(5x + 3 - 2x + 5=)$]
#v(1fr)

#g-subquestion[$display(4(3x^2 + 2x + 1) - 4x^2 + 2 =)$]
#v(1fr)

#g-subquestion[$display(-(x - 2) + (x + 8) =)$]
#v(1fr)

#pagebreak()

#g-question[Resuelve las siguientes ecuaciones:]

#g-subquestion(point:1)[$display(23 - 4x = 6x + 3)$]
#v(1fr)

#g-subquestion(point:1)[$display(2 (5x + 2) = 4x + 3)$]
#v(1fr)

#pagebreak()

#g-question(point:2)[En una ferretería se venden tornillos en cajas de tres tamaños: pequeña, mediana y grande. La caja grande contiene el doble que la mediana y la mediana 25 tornillos más que la pequeña. He comprado una caja de cada tamaño y en total hay 375 tornillos, ¿cuántos tornillos hay en cada caja?]
#v(1fr)

#g-question(point:2)[Una granja acaba de vender 35 jamones a 18€ el kilo, obteniendo 7.560€. ¿cuántos pesan todos los jamonos? ¿Y cuánto pesa cada jamón?]
#v(1fr)