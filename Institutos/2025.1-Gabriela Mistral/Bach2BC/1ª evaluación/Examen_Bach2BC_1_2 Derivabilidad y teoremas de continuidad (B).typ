#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

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
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 2º parcial",
    content: "Derivabilidad y teoremas de continuidad",
    model: [Modelo $B$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 9),
  show-student-data: "odd-pages",
  // show-student-data: true,
  show-grade-table: true,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
  // question-points-position: none,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  clarifications: (
    [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
    [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
    [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.]
  )
)
// #set math.cases(reverse: true)

#questions-pages(
  [
  #question()[Calcula la derivada de las siguientes funciones.]

    #subquestion(points:1.5)[$display(f(x) = ("cos"(x))^"sen"(x))$]

    #subquestion(points:1)[$display(f(x) = (x-3) sqrt(x^2+2))$]
 
    #subquestion(points:1)[$display(f(x) = arctan(sqrt(x-2)))$]
 
    #subquestion(points:0.5)[$display(f(x) = "sen"^2(x)+"cos"^2(x))$]

    // #subquestion(points:1.5)[$display(f(x) = "ln"(x+1) / sqrt(x^2+1))$]
  ],
  [
    #question(points:1.5)[Estudia la continuidad y derivabilidad de las siguientes funciones en todo $RR$.]
  
    $display(f(x) = cases(reverse: #false, delim: "{", gap: #0.5em,
                & x^2  &"si" & x < 0 ,
                & sqrt(x+1) -1  & "si" & 0 <= x <= 1,
                & ln(x+1) & "si" & x > 1,
                ))$
  ],
  [
    #question(points: 1.5)[Determina $a$ y $b$ para la función sea continua y derivable en $x=pi/4$

    $display(f(x) = display(cases(reverse: #false, delim: "{",
                    a "sen"(x)  & "si" & x <= pi/4,
                    x  + b     & "si" & x > pi/4,
                  )))$]
  ])
  #pagebreak()
  #questions-pages(
  [
    #question()[Sea la función $f(x)=ln(x+2)- x^10 +3$:]
    #subquestion(points:1)[
    Estudia la continuidad de la función $f(x)$ en #underline[todo] el intervalo $[-1, 5]$]
    
    #subquestion(points:0.5)[Enuncia el Teorema de Bolzano.]

    #subquestion(points:1.5)[Demuestra que la ecuación $ln(x+3) = x^(10)-3$ tiene al menos una solución en el intervalo $(-1,5)$.]
  ]
)

// #g-question(point: 2)[Determina el valor de $a$ que la siguien función sea continua \
//   #align(center, [
//     $f(x) = display(cases( delim: "{",
//                 |-1 +2x|  & #h(10pt) &"si" & #h(10pt) & x < 3,
//                 a^x - 3   &          &"si" &          & x >= 3
//               ))$
//    ]
//   ) 
//   // ¿La función que resulta, es derivable en $x=3$?
// ]


// #g-question(point: 2)[Determina $a$ para que sea continua la función \
//   #align(center, [
//     $f(x) = display(cases( delim: "{",
//                 x^2 + 1 & #h(10pt) &"si" & #h(10pt) &     &x <= 0,
//                 x + a^2 &          &"si" &          & 0 < &x < 2,
//                 a x +1  &          &"si" &          &     &x >= 2
//               ))$, 
//    ]
//   ) 
//   // ¿La función que resulta, es derivable en $x=3$?
// ]



