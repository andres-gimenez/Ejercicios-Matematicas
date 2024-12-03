#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.2": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "Prueba de nivel",
    content: "",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "odd-pages",
  show-grade-table: false,
  question-point-position: right,
)

#set math.cases(reverse: true)

#g-question[Resuelve las siguientes ecuaciones]

#g-subquestion[$display(x+6 = 9)$]
#v(1fr)

#g-subquestion[$display(25 - 2x = 3x + 3)$]
#v(1fr)

#g-subquestion[$display(x-7 (2x + 1) = 2 (6 - 5x)-13)$]
#v(2fr)

#g-subquestion[$display((5x)/6-3/6 = 2/4 + x/4)$]
#v(2fr)

#pagebreak()

#g-question[Realiza las siguientes operaciones]

#g-subquestion[$display(4/5 + 2/3 - 4/5) = $]
#v(2fr)

#g-subquestion[$display((4/5)^2 - (3/2)^3) = $]
#v(2fr)

#g-subquestion[$display((2/3+1) dot (5/4-3/2)) = $]
#v(2fr)
#pagebreak()

#g-question[
En un quiosco de prensa al final de la mañana se ha vendido la mitad de los periódicos. 
Por la tarde se vendieron la mitad de los que quedaban y se quedaron 40 periódicos sin vender. 
¿Cuántos periódicos había en el quiosco al comenzar el día?]
#v(1fr)

#g-question[
Un kilogramo de café cuesta 9,6 euros, un litro de leche 0,60 euros y un kilogramo de azúcar 1 euro. ¿A 
qué precio sale una taza de café con leche con 12,5 gramos de café, 15 centilitros de leche y 10 gramos 
de azúcar?
]
#v(1fr)