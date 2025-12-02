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
    logo:image("../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    // academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    // number: "Versión 1",
    content: "Trigonometría",
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

// #let header-color = rgb(0, 80, 180)
// #let alt-row = rgb(0xE8, 0xF4, 0xFF)

// #set text(size:8pt)

#show heading: it => {
  if it.level == 1 {
    text(size: 22pt, weight: "bold")[#it \ ]
  } else if it.level == 2 {
    text(fill:blue, size:14pt)[#it]
  } else if it.level == 3 {
    text(fill:red, size:12pt)[#it]
  } else {
    it
  }
}

// #set page(columns: 2)

// #set table.hline(stroke:0.7pt + gray)

// #set table(
//     align: left,
//     inset: 5pt,
//     stroke: (x, y) => {
//     if y == 0 {
//       if x == 0{
//         (bottom: 0.7pt + gray, right: 0.7pt + gray)
//       }
//       else {
//         (bottom: 0.7pt + gray)
//       }

//     } 
//     else {
//       if x == 0 {
//         (right: 0.7pt + gray)
//     } 
//     else {
//       none
//     }
//   }
//   }
// )

#place(
  top + center,
  scope: "parent",
  float: true,
  [= Trigonometría]
)

== Tabla trigonometrica
    #table(
      columns: (auto, auto, auto, auto, auto, auto),
        [Grados], [$0$], [$30º$],  [$45º$],  [$60º$], [$90º$],
        [Radianes], [0], [$pi/6$], [$pi/4$], [$pi/3$], [$pi/2$],
        [$"sen"(x)$],           [$0$], [$1/2$],  [$sqrt(2)/2$],  [$sqrt(3)/2$], [$1$],
        [$"cos"(x)$],           [$1$], [$sqrt(3)/2$], [$sqrt(2)/2$],  [$1/2$], [$0$],
        [$"tg"(x)$],            [$0$], [$sqrt(3)/3$],  [$1$],  [$sqrt(3)$],  [$exists.not$],
        [$"cotg"(x)$],          [$exists.not$], [$sqrt(3)$],   [$sqrt(2)/2$],  [$sqrt(3)/3$], [$1$],
        [$"sec"(x)$],           [$1$], [$(2sqrt(3))/3$],  [$sqrt(2)$],  [$2$], [$exists.not$],
        [$"cosec"(x)$],         [$exists.not$], [$2$],  [$sqrt(2)$],  [$(2sqrt(3))/3$], [$1$],
    )



// #align(left)[
//   == Funciones algebraicas

//     #table(
//       columns: (auto, auto),
//       table.header([=== Función], [=== *Derivada*]),
//       [$display(f(x) = u + v + ...)$], [$display(f'(x)= u' + v' + ...)$],
//       table.hline(),
//       [$display(f(x) = k dot u)$], [$display(f'(x) = k dot u')$],
//       [$display(f(x) = u dot v)$], [$display(f'(x) = u' dot v + u dot v')$],
//       table.hline(),
//       [$display(f(x) = u/v)$], [$display(f'(x) = (u' dot v - u dot v')/(v^2))$],
//       [$display(f(x) = k/v)$], [$display(f'(x) = (-k v' /v^2))$],
//       [$display(f(x) = u/k )$], [$display(f'(x) = u'/k )$],
//       table.hline(),
//       [$display(f(x) = |u|)$], [$display(f'(x) = u/(|u|) dot u')$],
//     )
// ]

// #align(left)[
//   == Funciones exponeciales
//     #table(
//       columns: (auto, auto),
//       table.header([=== Función], [=== *Derivada*]),
//       [$display(f(x) = u^n)$], [$display(f'(x) = n dot u^(n-1) dot u')$],
//       [$display(f(x) = u^(-n))$], [$display(f'(x) = (-n dot u')/u^(n+1) )$],
//       [$display(f(x) = root(n, u) = u^(1/n))$], [$display(f'(x) = u'/(n root(n, u^(n-1))) = 1/n dot u^(1/n - 1) dot u' )$],
//       table.hline(),
//       [$display(f(x) = a^u)$], [$display(f'(x) = a^u dot u' dot ln (a))$],
//       [$display(f(x) = e^u)$], [$display(f'(x) = e^u dot u' )$],
//       [$display(f(x) = u^v)$], [$display(f'(x) = v dot u^(v-1) dot u' + u^v dot v' dot ln(u) )$],      
      
   
//     )
//   ]

// #align(left)[
//   == Funciones logaritmicas
//     #table(
//       columns: (auto, auto),
//       table.header([=== Función], [=== *Derivada*]),
//       [$display(f(x) = log_a (u) )$], [$display(f'(x) = u'/(u dot ln(a)) = u'/u dot log_a e )$],
//       [$display(f(x) = ln(u) )$], [$display(f'(x) = u'/u )$],
//     )
//   ]

// #align(left)[
//   == Funciones trigonométricas
//     #table(
//       columns: (auto, auto),
//       table.header([=== Función], [=== *Derivada*]),
//       [$display(f(x) = "sen"(u) )$], [$display(f'(x) = "cos"(u) dot u' )$],
//       [$display(f(x) = "cos"(u))$], [$display(f'(x) = -"sen"(u) dot u')$],
//       [$display(f(x) = tg(u) )$], [$display(f'(x) = (1 + tg^2(u)) dot u' = sec^2(u) dot u' )$],
//       [$display(f(x) = "cotg"(u))$], [$display(f'(x) = -"cosec"^2(u) dot u' )$],
//       [$display(f(x) = "sec"(u))$], [$display(f'(x) = "sec"(u) dot tg(u) dot u' )$],
//       [$display(f(x) = "cosec"(u))$], [$display(f'(x) = -"cosec"(u) dot "cotg"(x))$],
//     )
//   ]

// #colbreak()

// #align(left)[
//   == Func. trigonométricas inversas
//     #table(
//       columns: (auto, auto),
//       table.header([=== Función], [=== *Derivada*]),
//       [$display(f(x) = "arc" "sen" (u))$], [$display(f'(x) = u'/sqrt(1-u^2) )$],
//       [$display(f(x) = "arc" "cos" (u))$], [$display(f'(x) = -u'/sqrt(1-u^2) )$],
//       [$display(f(x) = "arc" "tg" (u))$], [$display(f'(x) = u'/(1+u^2) )$],
//       [$display(f(x) = "sec" (u))$], [$display(f'(x) = u'/(u sqrt(u^2 - 1)) )$],
//       [$display(f(x) = "arc" "cotg" (u))$], [$display(f'(x) = -u'/(1+u^2))$],
//       [$display(f(x) = "arc" "sec" (u))$], [$display(f'(x) = u'/(u sqrt(u^2 - 1)) )$],
//       [$display(f(x) = "arc" "cosec" (u))$], [$display(f'(x) = -u'/(u sqrt(u^2 - 1)) )$],
//     )
//   ]

// #align(left)[
//   == Funciones simples
//     #table(
//       columns: (auto, auto),
//       table.header([=== Función], [=== *Derivada*]),
//       [$display(f(x) = k)$], [$display(f(x) = 0)$],
//       [$display(f(x) = x)$], [$display(f'(x) = 1)$],
//       [$display(f(x) = k x)$], [$display(f'(x) = k)$],
//       table.hline(),
//       [$display(f(x) = x/k)$], [ $display(f'(x) = 1/k)$ ],
//       [$display(f(x) = k/x)$], [ $display(f'(x) = -k/x^2)$ ],
//       table.hline(),
//       [$display(f(x) = x^n )$], [$display(f'(x) = n k^(n-1) )$ ],
//       [$display(f(x) = x^(-n))$], [$display(f'(x) = - n/(x^(n-1)) )$ ],
//       [$display(f(x) = sqrt(x))$], [$display(f'(x) = 1/(2 sqrt(x)))$ ],
//       [$display(f(x) = root(k, x))$], [$display(f'(x) = 1/(k root(k, x^(k-1))))$],
//       [$display(f(x) = a^x)$], [$display(f'(x) = a^x dot ln(a))$ ],
//       [$display(f(x) = e^x)$], [$display(f'(x) = e^x)$ ],
//       [$display(f(x) = x^x)$], [$display(f'(x) = x^x dot (1+ln(x)))$ ],
//       table.hline(),
//       [$display(f(x) = log_a (x) )$], [$display(f'(x) = 1/(x ln(a)) "si" x >0)$ ],
//       [$display(f(x) = log_a |x| )$], [$display(f'(x) = 1/(x ln(a)))$ ],
//       [$display(f(x) = ln (x))$], [$display(f'(x) = 1/(x) "si" x >0)$ ],
//       [$display(f(x) = ln |x|)$], [$display(f'(x) = 1/(x))$ ],
//       table.hline(),
//       [$display(f(x) = "sen" (x))$], [$display(f'(x) = "cos" (x) )$ ],
//       [$display(f(x) = "cos" (x))$], [$display(f'(x) = -"sen" (x))$ ],
//       [$display(f(x) = tg (x))$], [$display(f'(x) =  1 + tg^2 (x) = sec^2(x) )$ ],
//     )
//   ]
