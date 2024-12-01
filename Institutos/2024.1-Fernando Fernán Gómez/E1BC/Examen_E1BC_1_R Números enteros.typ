#import "@preview/g-exam:0.4.1": *

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("./logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "Recuperación 1ª evaluación",
    content: "Números enteros, números decimales y divisibilidad",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2024, month: 11, day: 21),
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-points-position: right,
  // question-text-parameters: (size: 18pt, spacing:200%, font:"OpenDyslexic")
  localization: (
    grade-table-grade: [Calificación]
  ),
  clarifications: 
  (
    [Deben aparecer todos los pasos (cálculos) intermedios.],
    [No se permite el uso de calculadora.],
    [Se debe usar bolígrafo azul o negro para escribir.],
    [El hablar en clase sin causa justificada llevara la disminución de la nota del examen.]
  )
)

// #set math.cases(reverse: true)

#question(points:1.2)[Realiza las siguientes operaciones:]

#columns(2)[
  #subquestion[$display(53 - 17 + 3)$ = ]
  #v(1cm)

  #subquestion[$display(6 dot (-4))$ = ]
  #v(1cm)

  #subquestion[$display((-75) colon (-3))$ = ]
  #v(1cm)
  #colbreak()

  #subquestion[$display(-15 colon 3 dot (-4))$ = ]
  #v(1cm)

  #subquestion[$display((-3)^3)$ = ]
  #v(1cm)

  #subquestion[$display((-2)^4)$ = ]
  #v(1cm)
]

#question(points:1)[Aplicando las propiedades de las potencias, expresa como una sola potencia:]
#columns(2)[
  #subquestion[$display(7^3 dot 7^5)$ = ]
  #v(1cm)

  #subquestion[$display(4^7 colon 4^4)$ = ]
  #v(1cm)

  #subquestion[$display((6^4)^3)$ = ]
  #v(1cm)

  #colbreak()

  #subquestion[$display(2^3 dot 5^3)$ = ]
  #v(1cm)

  #subquestion[$display(12^3 colon 4^3)$ = ]
  #v(1cm)
]

#question(points:1)[Aproxima por redondeo y truncamiento los siguientes decimales:]

#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    columns: (3cm, 3cm,  3cm, 3cm),
    [],[Número], [Truncamiento], [Redondeo],
    [a la milésima],  [$"6,3256"$], [], [],
    [a la décima],    [$"13,71"$], [], [],
    [a la centésima], [$"9,876"$], [], [],
))

#pagebreak()

#question(points:1)[Calcula mentalmente:]

#columns(2)[
  #subquestion[$display("67,942" dot "100")$ =]
  #v(1cm)

  #subquestion[$display("0,072" colon "1000")$ =]
  #v(1cm)

  #colbreak()
  
  #subquestion[$display("0,032" dot "100")$ = ]
  #v(1cm)

  #subquestion[$display("412,9" colon "100")$ = ]
  #v(1cm)
]

#question(points:1)[Realiza la siguiente división (saca 1 decimal) e indica el cociente y el resto:]

  $display("648" colon "3,2"=)$ 
  #v(1fr)

#question(points:1)[Haz la descomposición factorial de 180 y 135:]
  #v(0.5cm)
    #stack(
      dir:ltr,
      spacing:1cm,
      [ ],
      grid(
        columns: (0.65cm, 2cm),
        rows: (1cm,4cm),
        stroke: (x, y) => if x == 0 {
          (right: (
            thickness: 1pt,
          ))
        },
        [180],[]
        
      ),
      grid(
        columns: (0.65cm, 2cm),
        rows: (1cm,4cm),
        stroke: (x, y) => if x == 0 {
          (right: (
            thickness: 1pt,
          ))
        },
        [135],[]
        
      ), 
    )
    #h(1cm) 180 = #h(2.8cm) 135=

#v(0.5cm)

#pagebreak()

#question(points:1.8)[Realiza las siguientes operaciones combinadas:]

  #subquestion()[$display(21 + 35 colon (-7)-2 dot (-6))$=]
  #v(1fr)

  #subquestion()[$display(3^2 + 8 - 3  dot (sqrt(81) - sqrt(16)))$=]
  #v(1fr)

  #subquestion()[$display("13,594" - "1,37" dot "6,2")$=]
  #v(1fr)

#pagebreak()

#question(points:2)[Marta va al supermercado y compra 6 bricks de leche a $1,05€$; la unidad, una caja de galletas que vale $1,59€$, queso semicurado que vale $4,33€$ y una bolsa de almendras naturales que valen $2,15€$.]

#subquestion()[Expresa mediante una operación combinado cuanto se gasta.]
#v(1fr)

#subquestion()[Calcula cuanto se gasta, evaluando la operación combinada del apartado anterior.]
#v(3fr)

#subquestion()[Si paga con un billete de $20€$. Expresa mediante una operación combinada cuanto le devuelven.]
#v(1fr)

#subquestion()[Calcula cuanto se gasta, evaluando la operación combinada del apartado anterior.]
#v(3fr)