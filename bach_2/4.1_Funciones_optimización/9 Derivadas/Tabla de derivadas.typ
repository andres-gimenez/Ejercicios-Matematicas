#import "@preview/g-exam:0.4.3": *
// #import "@preview/wrap-it:0.1.0": wrap-content

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
    // academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    // number: "Versión 1",
    content: "Tabla de derivadas",
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 20),
  show-student-data: false,
  show-grade-table: false,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#let header-color = rgb(0, 80, 180)
#let alt-row = rgb(0xE8, 0xF4, 0xFF)

#set text(size:8pt)

#show heading: it => {
  if it.level == 1 {
    text(size: 15pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(fill:blue, size:11pt)[#it]
  } else if it.level == 3 {
    text(fill:red, size:10pt)[#it]
  } else {
    it
  }
}

#set page(columns: 2)

#place(
  top + center,
  scope: "parent",
  float: true,
  [= Tabla de derivadas]
)

#set table.hline(stroke:0.7pt + gray)

#set table(
    align: left,
    inset: 8pt,
    stroke: (x, y) => {
    if y == 0 {
      if x == 0{
        (bottom: 0.7pt + gray, right: 0.7pt + gray)
      }
      else {
        (bottom: 0.7pt + gray)
      }

    } 
    else {
      if x == 0 {
        (right: 0.7pt + gray)
    } 
    else {
      none
    }
  }
  }
)

#align(left)[
  == Funciones algebraicas

    #table(
      columns: (auto, auto),
      table.header([=== Función], [=== *Derivada*]),
      [$display(f(x) = u + v + ...)$], [$display(f'(x)= u' + v' + ...)$],
      table.hline(),
      [$display(f(x) = c)$], [$display(f'(x)=0)$],
      [$display(f(x) =x^n)$], [$display(n · x^(n-1))$],
      table.hline(),
      [$f(x) =x^n$], [n · x^(n-1)],
    )
]

#align(left)[
  == Funciones exponeciales
    #table(
      columns: (auto, auto),
      align: center,
      inset: 8pt,
      // stroke: 0.5pt,
      table.header([=== Función], [=== *Derivada*]),
      [$f(x) = k dot x$], [k],
      [$f(x) = x^{1/n}$], [ (1/n) · x^{(1/n)-1} ],
    )
  ]

#align(left)[
  == Funciones logaritmicas
    #table(
      columns: (auto, auto),
      table.header([=== Función], [=== *Derivada*]),
      [$f(x) = k dot x$], [k],
      [$f(x) = x^{1/n}$], [ (1/n) · x^{(1/n)-1} ],
    )
  ]

#align(left)[
  == Funciones trigonométricas
    #table(
      columns: (auto, auto),
      table.header([=== Función], [=== *Derivada*]),
      [$f(x) = k dot x$], [k],
      [$f(x) = x^{1/n}$], [ (1/n) · x^{(1/n)-1} ],
    )
  ]

#colbreak()

#align(left)[
  == Funciones trigonométricas inversas
    #table(
      columns: (auto, auto),
      table.header([=== Función], [=== *Derivada*]),
      [$f(x) = k dot x$], [k],
      [$f(x) = x^{1/n}$], [ (1/n) · x^{(1/n)-1} ],
    )
  ]

#align(left)[
  == Funciones simples
    #table(
      columns: (auto, auto),
      table.header([=== Función], [=== *Derivada*]),
      [$display(f(x) = k)$], [$display(f(x) = 0)$],
      [$display(f(x) = x)$], [$display(f'(x) = 1)$],
      [$display(f(x) = k x)$], [$display(f'(x) = k)$],
      table.hline(),
      [$display(f(x) = x/k)$], [ $display(f'(x) = 1/k)$ ],
      [$display(f(x) = k/x)$], [ $display(f'(x) = -k/x^2)$ ],
      table.hline(),
      [$display(f(x) = x^n )$], [$display(f'(x) = n k^(n-1) )$ ],
      [$display(f(x) = x^(-n))$], [$display(f'(x) = - n/(x^(n-1)) )$ ],
      [$display(f(x) = sqrt(x))$], [$display(f'(x) = 1/(2 sqrt(x)))$ ],
      [$display(f(x) = root(k, x))$], [$display(f'(x) = 1/(k root(k, x^(k-1))))$],
      [$display(f(x) = a^x)$], [$display(f'(x) = a^x dot ln(a))$ ],
      [$display(f(x) = e^x)$], [$display(f'(x) = e^x)$ ],
      [$display(f(x) = x^x)$], [$display(f'(x) = x^x dot (1+ln(x)))$ ],
      table.hline(),
      [$display(f(x) = log_a (x) )$], [$display(f'(x) = 1/(x ln(a)) "si" x >0)$ ],
      [$display(f(x) = log_a |x| )$], [$display(f'(x) = 1/(x ln(a)))$ ],
      [$display(f(x) = ln (x))$], [$display(f'(x) = 1/(x) "si" x >0)$ ],
      [$display(f(x) = ln |x|)$], [$display(f'(x) = 1/(x))$ ],
      table.hline(),
      [$display(f(x) = "sen" (x))$], [$display(f'(x) = "cos" (x) )$ ],
      [$display(f(x) = "cos" (x))$], [$display(f'(x) = -"sen" (x))$ ],
      [$display(f(x) = tg (x))$], [$display(f'(x) =  1 + tg^2 (x) = sec^2(x) )$ ],
    )
  ]
