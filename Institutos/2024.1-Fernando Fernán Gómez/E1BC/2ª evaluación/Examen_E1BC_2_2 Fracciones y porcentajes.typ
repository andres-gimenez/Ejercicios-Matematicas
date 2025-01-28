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
    number: "2ª evaluación - 2º examen",
    content: "Fracciones y porcentajes",
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

// #question()[Tres amigos se han reunido para hacer un trabajo. Marta ha realizado $2/7$ del trabajo, Juan realizo $1/3$ y Pablo realizó el resto del trabajo.]
// #subquestion()[Qué fracción del trabajo realizo Pablo?]

// #subquestion()[Ordenando las fracciones del trabajo de cada uno: ¿Quien ha realizado más trabajo? ¿Y quien menos?]
// #pagebreak()

#question()[Resuelve las siguientes operaciones con fracciones:]

#subquestion(points:1)[$1/5-7/4-(1/10 dot 1/2)$ =]
#v(1fr)
#subquestion(points:1)[$-7/6 -(5/12 colon 1/2) dot 4$ =]
#v(1fr)

#pagebreak()
#question(points:1)[Ana tiene 12 chocolatinas y quiere repartirlas entre sus amigos de la siguiente manera. Primero, le da 
$1/4$ de las chocolatinas a su amiga Laura. Luego, le da $1/3$ de las chocolatinas a su amigo Javier.]

#subquestion()[¿Cuántas chocolatinas recibe cada uno?]
#v(1fr)

#subquestion()[¿Qué fracción de chocolatinas le quedan a Ana?]
#v(1fr)

#subquestion()[Ordenando las fracciones que le queda a cada uno ¿Qué fracción es mayor?]
#v(1fr)

#pagebreak()
#question(points:1)[Marta ha visto unos zapatos que cuestan 32€ más IVA. ¿Cuanto tiene que pagar por ellos si ha de pagar el 21% de IVA?]
#v(2fr)

#question(points:1)[Un coche recorre 150 kilómetros en 3 horas.]

#subquestion()[¿Cuántos kilómetros recorrerá en 5 horas si mantiene la misma velocidad?]
#v(1fr)

#subquestion()[Si el coche debe recorrer 300 kilómetros, ¿cuánto tiempo tardará?]
#v(1fr)