#import "@preview/g-exam:0.3.2": *

// #set text(font:"OpenDyslexic")
// #set text(font: "New Computer Modern")

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
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 2º examen",
    content: "Probabilidad",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // question-text-parameters: (font:"OpenDyslexic")
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

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

#g-question(point:1)[Indica cual es el espacio muestral de los siguientes experimentos aleatorios:]

#g-subquestion()[Elegir al azar un día de la semana.]
#v(1fr)

#g-subquestion()[Extraer una bola de un bombo con 10 bolas numeradas del 0 al 9.]
#v(1fr)

#g-subquestion()[De las asignaturas que tienes en el instituto, elegir una al azar.]
#v(1fr)

#g-question(point:1.5)[Del experimento aleatorio lanzar un dado de seis caras, indica:]

#g-subquestion()[Cual es el espacio muestral.]
#v(1fr)

#g-subquestion()[Cual es el suceso contrario a $A={1,4,5}$.]
#v(1fr)

#g-subquestion()[Un suceso imposible.]
#v(1fr)

#g-subquestion()[Un suceso seguro.]
#v(1fr)

#pagebreak()
#g-question(point:3)[En una caja tenemos 3 tizas blancas, 5 azules y 7 rojas, si sacamos una tiza al azar, calcula las siguientes probabilidades.]

#g-subquestion()[Probabilidad de que la tiza sea azul.]
#v(1fr)

#g-subquestion()[Probabilidad de que la tiza no sea azul.]
#v(1fr)

#g-subquestion()[Probabilidad de que la tiza sea azul o roja.]
#v(1fr)

#g-subquestion()[Probabilidad de que la tiza sea verde.]
#v(1fr)

#g-subquestion()[Probabilidad de que la tiza sea azul o roja.]
#v(1fr)

#g-subquestion()[Probabilidad de que la tiza sea blanca, azul o roja.]
#v(1fr)

#pagebreak()
#g-question(point:1.5)[En las noticias nos han dicho que hay una probabilidad de que llueva mañana del $0,2$ ¿Qué probabilidad hay de que no llueva mañana?]
#v(1fr)

#g-question[Una moneda se lanza 3 veces.]

#g-subquestion(point:1)[Muestra en un diagrama de árbol los resultados posibles.]
#v(1fr)

#g-subquestion(point:1)[¿Cuál es la probabilidad de obtener exactamente 2 caras?]
#v(1fr)

#g-subquestion(point:1)[¿Cuál es la probabilidad de obtener almenos 1 cara?]
#v(1fr)