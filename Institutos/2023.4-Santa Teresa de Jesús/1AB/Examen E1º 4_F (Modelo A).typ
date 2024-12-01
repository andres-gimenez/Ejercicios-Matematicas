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
    academic-level: "1º ESO",
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

#g-question(point:1.5)[Calcula utilizando las propiedades de las potencias:]
#g-subquestion[$5^3 dot 5^7 =$]
#v(0.5cm)
#g-subquestion[$7^5 : 7^2 =$]
#v(0.5cm)
#g-subquestion[$(5^3)^4 =$]
#v(0.5cm)
#g-subquestion[$37^0 =$]
#v(0.5cm)

#g-question(point:1.5)[Realiza los siguientes cambios de unidades:]
#g-subquestion[$1,45 "hm"^2=$ #h(2cm) $m^2$]
#v(0.5cm)
#g-subquestion[$0,253"km"=$ #h(2cm) $"dam"$]
#v(0.5cm)
#g-subquestion[$6369 "ml"^2=$ #h(2cm) $l$]
#v(0.5cm)

#g-question(point:1.5)[Efectúa las siguientes operaciones:]
#g-subquestion[$display(2 dot 6 - [ 3 + (5 - 3)]) = $ ]
#v(1fr)

#g-subquestion[$display(15 - (8 - 5 + 9 + 2)) =$]
#v(1fr)

#pagebreak()

#g-question[Resuelve las siguientes ecuaciones:]

#g-subquestion(point:1)[$display(3 (6 - 2x)-12 = 5)$]
#v(1fr)

#g-subquestion(point:1)[$display(4(3x + 5) = 2x + 8)$]
#v(1fr)
#pagebreak()

// #g-question(point:2)[Una granja acaba de vender 35 jamones a 18€ el kilo, obteniendo 7.560€. ¿cuántos pesan todos los jamonos? ¿Y cuánto pesa cada jamón?]

#g-question(point:2)[Por la impresión de 36 fotografías digitales nos han cobrado 11,52€. ¿Cuál sería el coste de imprimir 48 fotografías?]
#v(1fr)

#g-question(point:2)[Calcula el área de la siguiente figura según las cotas que aparecen en el dibujo.] \
#g-clarification[Indica cuantas figuras hay y como calculas el área de cada una de ellas.] \
#cetz.canvas({
  import cetz.draw: *
   line((-1.5, 0), (0, 1.5), (1.5, 0), close: true, fill: gray, stroke:black)
  rect((-1.5,0), (1.5,-3), fill: gray, stroke: black)
  content((0, -3.3), [lado = 5cm])
  content((2, -0.8), [altura total = 7cm], angle:90deg)
})
#v(1fr)