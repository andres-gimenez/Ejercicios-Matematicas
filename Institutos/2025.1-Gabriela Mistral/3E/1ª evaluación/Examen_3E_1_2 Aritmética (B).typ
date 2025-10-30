#import "@preview/g-exam:0.4.3": *
// #import "@preview/wrap-it:0.1.0": wrap-content

#let Calculator() = box(image("../../calculator.png"), height: 8pt)

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
    number: "1ª evaluación - 2º parcial",
    content: "Aritmética",
    model: [Modelo ◔], // ◔◓◮◤◨◨◫◢◨◫◱◵◹◾▶▨▢
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 4),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  clarifications:(
    [Los ejercicios marcados con #Calculator(), están pensados para que lo hagáis con calculadora. Para los ejercicios que no la tienen, se puede utilizar la calculadora como ayuda, pero se ha de dar una solución exacta.],
    [Demuestra lo que sabes y explica los problemas, como se los tuviera que entender alguien que no sabe hacerlos]
  )
)

#question(points: 0.5)[Expresa como una única potencia, sin calcular el resultado:]
#subquestion()[$display(32^12 dot 32^21) = $]
#v(1fr)
#subquestion()[$display((55^12)^19) = $]
#v(1fr)
#subquestion()[$display((x^28)^15) = $]
#v(1fr)

#question(points: 0.5)[Expresa en forma de potencia, sin calcular el resultado:]
#subquestion()[$display(root(15, 25^3) =) $]
#v(1fr)
#subquestion()[$display(root(9, 52^27) =) $]
#v(1fr)
#subquestion()[$display(1/x^5 =) $]
#v(1fr)
#subquestion()[$display(1/5^7 =) $]

#question(points: 0.7)[Expresa en forma de raíz, con potencia entera:]
#subquestion()[$display(12^(2/7)=) $]
#v(1fr)
#subquestion()[$display(15^(7/3) =) $]
#v(1fr)
#subquestion()[$display(1/x^(-2/5) =) $]
#v(1fr)
#subquestion()[$display(1/x^(-4/3) =) $]
#v(1fr)

#pagebreak()
#question(points: 0.8)[Racionaliza las siguientes expresión:]
#subquestion()[$display(1/sqrt(3) =) $]
#v(1fr)
#subquestion()[$display(5/sqrt(3) =) $]
#v(1fr)
#subquestion()[$display(7^(-1/2)) = $]
#v(1fr)

#question(points: 0.5)[Realiza las siguientes operaciones, indicando todos los pasos y dando un resultado lo más simplificado posible, sin decimales (No uses la calculadora):]
#subquestion()[$display(sqrt(8) dot sqrt(2) =)$]
#v(1fr)
#subquestion()[$display(sqrt(3528) =)$]
#v(1fr)

#question(points: 0.5)[Expresa en forma de una única raíz, sin calcular el resultado:]
#subquestion()[$display(sqrt(sqrt(38)) =)$]
#v(1fr)
#subquestion()[$display(sqrt(root(3,32)) =)$]
#v(1fr)

#pagebreak()
#question(points: 2)[Simplifica la siguiente expresión, sin utilizar decimales y expresando todas las potencias positivas:]
#v(2mm)
$display((9 dot 25 dot 18^(-2) dot 3^(-4)) / (3 dot 5^(-1) dot 3 ) = )$
#v(1fr)

#question(points:1.5)[#Calculator()Dos amigos compran un décimo de lotería por 20€, 
Pedro aporta 8€ y María 12€. 
Posteriormente Pedro le regala 2€ a Carla de su participación.
Si el décimo es premiado con 50.000€, ¿cuánto dinero le corresponde a cada uno para que 
el reparto sea proporcional? ]
#v(1fr)
#pagebreak()

#question(points:1.5)[#Calculator()¿A que rédito se debe depositar un capital de 6.500€ para que produzca un interés de 526€ en 18 meses?]
#v(1fr)

#question(points:1.5)[#Calculator() Para pavimentar 2 km de carretera 50 trabajadores han empleado 20 días trabajando 8 horas diarias. ¿Cuántos días tardarán 100 trabajadores trabajando 10 horas al día en construir 6 km más de carretera?]
#v(1fr)