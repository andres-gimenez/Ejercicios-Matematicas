#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo: image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación Recuperación",
    content: "Expresiones algebraicas y ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
    [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
    [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
    La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
    [No está permitido compartir material, durante la prueba.],
  )
)

#set math.cases(reverse: true)

#g-question(point:4)[Resuelve las siguientes ecuaciones:]

  #g-subquestion[$display(5(x+1) + 2x = 5 - 2(2-x) )$]
  #v(1fr)

  #g-subquestion[$display(x/2-13 = 3 + (5x)/6)$]
  #v(1fr)

  #g-subquestion[$display(3x - 6 + 4x = 5 - 2x + 7)$]
  #v(1fr)

#pagebreak()

  #g-subquestion[$display(x/3 - (x+4)/2 = 2 + (5(1-x))/6)$]
  #v(1fr)


#g-question(point:4)[Resuelve las siguientes ecuaciones de segundo grado:]

  #g-subquestion[$display(x^2 + 4x + 4 = 0)$]
  #v(1fr)

#pagebreak()

  #g-subquestion[$display(x^2 - 5x + 6 = 0)$]
  #v(1fr)

  #g-subquestion[$display((x(x+3))/2=2)$]
  #v(1fr)

#pagebreak()

  #g-subquestion[$display((x(x+3))/2 + 2 = (x^2)/2 - 5x)$]
  #v(1fr)
  
#g-question(point:2)[Simplifica las siguientes expresiones al máximo:]

  #g-subquestion[$display(x^2-3x^3+x-7+4x^2-6x-1+9x-3) = $]
  #v(1fr)

  #g-subquestion[$display((x-2) dot (x^2 - 3x+4) - 2x + 3) = $]
  #v(1fr)

