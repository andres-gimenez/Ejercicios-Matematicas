#import "@preview/g-exam:0.4.2": *
#import "@preview/wrap-it:0.1.0": wrap-content

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2ª evaluación - 1º parcial",
    content: "Probabilidad y expresiones algebraicas",
    // model: [Modelo $alpha$]
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 2, day: 18),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#question()[En un cajón hay 14 cucharas, 16 tenedores y 11 cuchillos.
Si se extrae un cubierto del cajón al azar:]

#subquestion(points:0.75)[¿Cuál es la probabilidad de que sea un tenedor?]
#v(1fr)

#subquestion(points:0.75)[¿Cuál es la probabilidad de que sea un cuchillo?]
#v(1fr)

#pagebreak()

#question()[Lanzamos un dado hexaédrico (de 6 caras), numerado de l 1 al 6. Calcula la probabilidad de obtener:]

#subquestion(points:0.75)[Un 2.]
#v(1fr)

#subquestion(points:0.75)[Un número mayor que 2.]
#v(1fr)

#question(points:1)[Si la predicción del tiempo nos dice que mañana hay una probabilidad de 0,3 de que llueva, ¿cual es la probabilidad de que mañana no llueva?]
#v(1fr)

#pagebreak()
#question(points:1)[Opera con los siguientes monomios, si se puede:]
#columns(2, gutter: 11pt)[
#subquestion()[$display( 4x^2 + 2) =$]
#v(1cm) 
#subquestion()[$display( 3x^4 - 2x^4) =$]
#v(1cm) 
#subquestion()[$display( 7x^2 - 5x^2) =$]
#v(1cm) 
#subquestion()[$display( 2x^3 - 5x^3) =$]
#v(1cm) 

#colbreak()
#subquestion()[$display( 4x^2 dot 5x^4) =$]
#v(1cm) 
#subquestion()[$display( 2x^3 dot (-2x)) =$]
#v(1cm) 
#subquestion()[$display( 3x^2 dot 7) =$]
#v(1cm) 
#subquestion()[$display( 2x^3 dot 12x^8) =$]
#v(1cm) 
]


#question(points:2)[Evalua las expresiones algebraicas para los valores indicados:]
#subquestion()[$display( 3x^3 - 5x ^2 + 2x - 1)$ para $x = 2$]
#v(1fr)
#subquestion()[$display( -2x^3 + 2x ^2 - 2x) + 3$ para $x = -1$]
#v(1fr)
#pagebreak()


#question(points:1.5)[Simplifica las siguientes expresiones algebraicas:]

#subquestion()[$display( 4x^3 - 5x^2 + 2 + 5x^3 - 4x + 3) =$]
#v(1fr)
#subquestion()[$display( 5x^2 -  x^3 - 3 + 3x^3 - 4x - 5) =$]
#v(1fr)
// #subquestion()[$display( 2x^3 - 2x^2 + 2 - 2x^3 - 4  + 3x) =$]
// #v(1fr)
// #subquestion()[$display( x^3 -  7x^2 - 2 - 5x   - 4x + 3) =$]
// #v(1fr)


#question(points:1.5)[Elimina los paréntesis y simplifica todo lo posible:]
#subquestion()[$display(7x^2 - (3x^2 +2x^3 )) =$]
#v(1fr)

#subquestion()[$display((5x^2 - 3) - (2x^2 + 5 )) =$]
#v(1fr)