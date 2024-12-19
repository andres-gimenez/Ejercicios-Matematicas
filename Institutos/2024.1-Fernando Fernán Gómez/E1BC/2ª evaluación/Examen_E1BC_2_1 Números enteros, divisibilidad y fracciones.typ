#import "@preview/g-exam:0.4.2": *

#show: g-exam.with(
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
    number: "2ª evaluación - 1º examen",
    content: "Números enteros, divisibilidad y fracciones",
    model: "Modelo  A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2024, month: 12, day: 17),
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#set math.cases(reverse: true)


#question()[Simplifica las siguientes fracciones a la fracción irreducible:]

#subquestion(points:0.5)[$display(200/450)$=]
#v(1fr)

#subquestion(points:0.5)[$display(150/210)$=]
#v(1fr)

#subquestion(points:0.5)[$display(1800/840)$=]
#v(1fr)

#subquestion(points:0.5)[$display(462/154)$=]
#v(1fr)

#pagebreak()

#question()[Indica si las siguientes fracciones son equivalentes, mostrando las operaciones realizadas:]

#subquestion(points:0.5)[$display(324/215)$ y $display(108/70)$]
#v(1fr)

#subquestion(points:0.5)[$display(252/462)$ y $display(6/11)$]
#v(1fr)

#subquestion(points:0.5)[$display(150/50)$ y $display(50/150)$]
#v(1fr)

#subquestion(points:0.5)[$display(37/22)$ y $display(74/66)$]
#v(1fr)

// #question(points:2)[Resuelve las siguientes operaciones con fracciones, expresando el resultado con una fracción irreducible.]

// #subquestion()[$display(5/2+3/7)$=]
// #v(1fr)

// #subquestion()[$display(12/4+6/6)$=]
// #v(1fr)

// #subquestion()[$display(5/8+ 7/12)$=]
// #v(1fr)

#pagebreak()

#question(points:2)[Calcula el mínimo común múltiplo y máximo común divisor de $1.800$, $220$ y $616$.]
#v(1fr)

#question(points:2)[Para una ONG tengo que comprar 120 galletas de chocolate y 108 galletas de fresa. ¿Cuál es el mínimo número de cajas de cada sabor que debo comprar para tener el mismo número de galletas de los dos sabores?]
#v(1fr)


// #question(points:2)[Un grupo de amigos va a correr alrededor de una pista. Carlos tarda 12 minutos en dar una vuelta completa, mientras que Ana tarda 18 minutos y Pedro tarda 24 minutos en completar la misma vuelta.

// Si comienzan a correr al mismo tiempo desde el mismo punto, ¿cuántos minutos pasarán hasta que los tres amigos vuelvan a encontrarse en el punto de partida al mismo tiempo?]
// #v(1fr)

#question(points:2)[Queremos montar unas pulseras y disponemos de 56 cuentas azules, 28 amarillas y 42 rojas. ¿Cuántas cuentas de cada color tenemos que poner en cada pulsera para que sean todas las pulseras igual y tener el máximo de cuentas posibles en cada una de ellas?]
#v(1fr)