#import "@preview/g-exam:0.4.2": *
#import "@preview/cetz:0.3.4"

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
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "3ª evaluación - 1º examen",
    content: "Polígonos - Teorema de Pitágoras y teorema de Tales",
    model: "Modelo ◔"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-points-position: right,
  clarifications: [No está permitido el uso de calculadora]
  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

// #set math.cases(reverse: true)

// #polygon(points:(0,0), angle: 90deg)

// #draw.polygon(
//     (0, 1), (1, 0), (0, -1), (-1, 0),
//     fill: blue,
//     stroke: black,
//     // stroke-width: 1pt
// )

// #draw.polygon((0, 0), 5, radius: 1, name: "poly")

//   #draw.for-each-anchor("poly", name => {
//     if name.starts-with(regex("(corner|edge)")) {
//       circle((), fill: gray, radius: .1)
//     }
//   })

// #cetz.canvas({
//   import cetz.draw: *

//     // polygon((0, 0), 5, radius: 3, name: "p1")
//     //  polygon((5, 7), 4, name: "p2")
//     // line("p1", "p2")
    
//     // text("5 cm", (0, 3), align: center)
//     // text("3 cm", (2, 0), align: center)
//     line((0,0), (1, 1.7), (2, 0), (1, -1.7), (0, 0))
// })

// #text("5 cm", (0, 3), align: center)
// #text("3 cm", (2, 0), align: center)

// #draw.polygon((0, 0), 5, name: "p1")
 
// #draw.polygon((2, 2), 3, name: "p2")
  
// #draw.line("p1", "p2")

// #draw.rect((1,1), (0,0), name: "r")

// #draw.polygon((0, 0), 5, radius: 1, name: "poly")

// #question()[Efectúa las siguientes operaciones con notación científica:]

// #subquestion(points:0.5)[$display("3,2" dot 10^(18) + "2,8" dot 10^(17))$=]
// #v(1fr)

// #subquestion(points:0.5)[$display("5,8" dot 10^(-32) - "2,4" dot 10^(-33))$=]
// #v(1fr)

// #subquestion(points:0.5)[$display("1,5" dot 10^(7) dot "3,2" dot 10^(-2))$=]
// #v(1fr)

// #subquestion(points:0.5)[$display("1,2" dot 10^(4) + "1,7" dot 10 ^6 dot "3,2" dot 10^(-2))$=]
// #v(1fr)
// #pagebreak()

// #question(points:2)[Un fabricante de piezas de automóvil tiene un contrato en el que las piezas que ha de fabricar tienen que tener menos de un error relativo de $3 dot 10^(-4)$ metros. Al realizar las pruebas de calidad, una pieza que ha de medir $3,1 dot 10^(-3)$ metros, mide $3,2 dot 10^(-3)$ metros. ¿Está la pieza dentro de los márgenes de calidad que se le exige?]
// #v(1fr)
// #pagebreak()

// #question()[Siendo el polinomio $P(x)= 2x^3 - 3x^2 + x-5$, calcula:]
// #subquestion(points:0.75)[$display(P(1))=$]
// #v(1fr)

// #subquestion(points:0.75)[$display(P(1/2))=$]
// #v(1fr)

// #subquestion(points:0.75)[$display(P(-1))=$]
// #v(1fr)

// #subquestion(points:0.75)[$display(P(2))=$]
// #v(1fr)

// #pagebreak()
// #question()[Reduce todo lo que se pueda las siguientes expresiones algebraicas:]

// #subquestion(points:0.5)[$display(5x - (3x^3 + 2x^2 - 5x - 2))$=]
// #v(2fr)

// #subquestion(points:0.5)[$display((3x + 2) - (-5x^3 - x^2 + 5x - 7))$=]
// #v(2fr)

// #subquestion(points:0.5)[$display(3x dot 5x^5)$=]
// #v(1fr)

// #subquestion(points:0.5)[$display(140x^14 : 20x^2)$=]
// #v(1fr)

// #subquestion(points:0.5)[$display((3x^5)^3)$=]
// #v(1fr)

// #subquestion(points:0.5)[$display((2x^3)^2) dot 5 x^6$=]
// #v(1fr)

// #question()[Un agricultor tiene un terreno con forma de trapecio. La base mayor mide 18 metros, la base menor mide 10 metros y la altura del trapecio es de 7 metros.]

// #subquestion()[Calcula el área del terreno.]

// #subquestion()[Si quiere cercar el terreno completamente y los lados no paralelos miden 5 m cada uno, ¿cuántos metros de valla necesita en total?]

// #subquestion()[Si decide dividir el terreno en dos partes iguales con una línea paralela a las bases, ¿a qué distancia de la base mayor debe trazar la línea?]



#question(points:2.5)[Ana quiere construir un jardín en forma de triángulo. Sus lados miden 6 m, 8 m y 10 m.]

#subquestion()[Demuestra que el triángulo es rectángulo.]

#subquestion()[Calcula el área del jardín.]

#subquestion()[¿Cuantos metros de valla necesita para cercarlo?]

#subquestion()[Si quiere colocar césped en todo el jardín y cada metro cuadrado de césped cuesta 12€, ¿cuánto gastará en total?]

// #question()[En un día soleado, un árbol proyecta una sombra de 7 metros de longitud. Al mismo tiempo, una persona de 1,60 metros de altura proyecta una sombra de 1,50 metros.]

// #subquestion()[Calcula el área del paralelogramo.]

// #subquestion()[Determina el perímetro sumando todos sus lados.]

// #subquestion()[Si se quisiera transformar este paralelogramo en un rectángulo de igual área, ¿cuál debería ser la nueva altura manteniendo la base de 10 metros?¿Podemos considerar que el árbol y la persona forman triángulos semejantes con sus sombras?]

// #subquestion()[Usando la semejanza, calcula la altura del árbol.]

#pagebreak()

#question(points:2.5)[Imagina que un parque tiene la forma de un romboide. La base del paralelogramo mide 10 metros, y su altura (la distancia perpendicular entre las bases) es de 6 metros. Además, los lados inclinados miden 8 metros cada uno.]

// #cetz.canvas(length: 1cm, {
//   import cetz.draw: *
//   import cetz.angle: angle
//   let (a, b, c) = ((0,0), (-1,1), (1.5,0))
//   line(a, b)
//   line(a, c)
//   set-style(angle: (radius: 1, label-radius: .5), stroke: blue)
//   angle(a, c, b, label: [33], mark: (end: ">"), stroke: blue)
//   set-style(stroke: red)
//   angle(a, b, c, label: n => $#{n/1deg} degree$,
//     mark: (end: ">"), stroke: red, inner: false)
// })

// #cetz.canvas({
//   import cetz.draw: *
//     scale(0.5)
//     // polygon((0, 0), 5, radius: 3, name: "p1")
//     //  polygon((5, 7), 4, name: "p2")
//     // line("p1", "p2")
    
//     // text("5 cm", (0, 3), align: center)
//     // text("3 cm", (2, 0), align: center)
//     // line((0,0), (1, 1.7), (2, 0), (1, -1.7), (0, 0))

//     // line((0,0), (10, 0), (8, 6), (2, 6), close: true, 
//     //   name: "line",
//     //   // fill: green, 
//     //   storoke: blue, 
//     //   label: "uno")

//     line((0,0), (10, 0), 
//       name: "line1",
//       stroke: blue
//       )

//     content(
//         ("line1.start", 50%, "line1.end"),
//         angle: "line1.end" ,
//         padding: .1,
//         anchor: "south",
//         [10]
//       )
      
//     // mark((5,2), (1,0), symbol: ">", fill: black)
//     // content((name: "circle", anchor: 0deg), [0deg], anchor: "west")
    
//     line((2, 0), (2, 6), stroke: (thickness: 1pt, dash: "dashed"), label: $alpha$)

//     // bezier((0,0), (10, 0), (8, 6), (2, 6))
    
//     // text("10 m")
    
// })

// hola 

// #cetz.canvas({
//   import cetz.draw: *

//   hide({
//     line((10, 0), (10, 10), name: "upward line")
//     line((0, 0), (30deg, 15.5cm), name: "sloped line") // a bit longer, so that there is an intersection
//   })

//   intersections("x", "upward line", "sloped line")
//   line((5, 0), "x.0", stroke: orange + 1.2pt)
//   line((15, 0), "x.0", stroke: green + 1.2pt)
// })

#subquestion()[Calcula el área del paralelogramo.]
#subquestion()[Determina el perímetro sumando todos sus lados.]
#subquestion()[Si se quisiera transformar este paralelogramo en un rectángulo de igual área, ¿cuál debería ser la nueva altura manteniendo la base de 10 metros?]

#pagebreak()
#question(points:2.5)[Si la diagonal de un televisor mide 223 cm y su altura son 119cm. ¿Cuál es su área?] 

#pagebreak()
#question(points:2.5)[Si los segmento $overline("AB")$, $overline("BC")$ y $overline("A'B'")$ miden respectivamente, 2,4cm, 5,3cm, 2,7cm, ¿cuánto mide el segmente $overline("B'C'")$]  
#image("Tales.png")