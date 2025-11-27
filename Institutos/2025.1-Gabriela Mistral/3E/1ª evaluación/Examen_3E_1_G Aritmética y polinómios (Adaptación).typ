#import "@preview/g-exam:0.4.3": *
// #import "@preview/wrap-it:0.1.0": wrap-content

#let Calculator() = box(image("../../calculator.png"), height: 10pt)

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - Global",
    content: "Aritmética y polinomios",
    model: [Modelo ◓], // ◔◓◮◤◨◨◫◢◨◫◱◵◹◾▶▨▢
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 25),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  // question-text-parameters: (size: 14pt, spacing:150%),

  question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic"),

  clarifications:(
    [Los ejercicios marcados con #Calculator(), están pensados para que lo hagáis con calculadora. Para los ejercicios que no la tienen, se puede utilizar la calculadora como ayuda, pero se ha de dar una solución exacta.],
    [Demuestra lo que sabes y explica los problemas, como se los tuviera que entender alguien que no sabe hacerlos]
  )
)

#question(points: 1)[Calcula y simplifica:

$display(4 + (2 / 3 - 5 / 6)^(- 2) dot (4 / 9 - 2 / 3)^(- 1)=)$
]

// #subquestion()[$display(3 - 3 / 4 dot 2 / 5 + 2 (1 - 1 / 2)=)$]
// #v(1fr)


// #subquestion()[$display(4 + (2 / 3 - 5 / 6)^(- 2) dot (4 / 9 - 2 / 3)^(- 1)=)$]
#v(1fr)

#pagebreak()
#question(points: 1)[Calcula pasando previamente a fracción:
#v(1mm)
$display(1","5 + 3 ","overparen(6) - 0","2overparen(7) = )$
]
#v(1fr)

#question(points:2)[Descompón en factores y utiliza las propiedades de las potencias para simplificar esta expresión:
#v(1mm)
$display(frac(8^3 dot 4^(- 4) dot 2^(- 7), 2^5 dot 16^(- 2)) = ) $
]
#v(1fr)

#pagebreak()

#question(points:1)[Simplifica las siguiente expresión con radicales:

$display(root(3,4/7) dot root(4, 4/7)=)$
]
#v(2fr)

#question(points:1.5)[#Calculator() Cinco fotocopiadoras tardan 3 minutos en hacer 300 fotocopias. Si ponemos en funcionamiento quince fotocopiadoras y queremos hacer 1500 fotocopias. ¿Cuánto tiempo tardarán?
]
#v(3fr)

// #question(points:1)[Un ganadero necesita 600 kg de pienso para alimentar a 40 vacas durante 8 días. ¿Durante cuántos días podrá alimentar a 20 vacas con 1500 kg de pienso?]

#pagebreak()

#question(points:1.5)[#Calculator() María, Inés y Sara han organizado un viaje para los alumnos de un Instituto. Han cobrado 1500 euros por el trabajo realizado. María trabajó 10 días, Inés 8 días y Sara 12 días. ¿Cuánto dinero le corresponderá a cada una si el reparto se hace de manera proporcional a los días trabajados?]
#v(3fr)

#pagebreak()
#question(points: 2)[Si tenemos los polinomios

 $display(P(x) = 2x^3 - 3x^2 - 6)$ 
 
 $display(Q(x) = x^2 - 3x + 2)$  
 
 $display(R(x) = 2x^2+5)$
 
 Calcula:

 $P(x) dot (Q(x) - R(x)) = $

]