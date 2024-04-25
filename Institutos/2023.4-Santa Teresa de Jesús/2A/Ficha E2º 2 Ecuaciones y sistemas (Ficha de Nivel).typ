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
    logo: read("./logo-ies_santa_teresa.jpeg", encoding: none)
    // logo:image("./logo-ies_santa_teresa.jpeg", alt: "IES Santa Teresa de Jesús")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación (Ficha de nivel))",
    content: "Expresiones algebraicas y ecuaciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: false,
  question-point-position: none,
)

#set math.cases(reverse: true)

#g-question(point:3)[Resuelve las siguientes ecuaciones:]

  // #g-subquestion[$display(5(x+1) + 2x = 5 - 2(2-x) )$]
  // #v(1fr)

  #g-subquestion[$display(x/2-13 = 3 + (5x)/6)$]
  #v(1fr)

  #g-subquestion[$display(3x - 6 + 4x = 5 - 2x + 7)$]
  #v(1fr)

  #g-subquestion[$display(x/3 - (x+4)/2 = 2 + (5(1-x))/6)$]
#v(1fr)

#pagebreak()

#g-question(point:3)[Resuelve las siguientes ecuaciones de segundo grado:]

  // #g-subquestion[$display(x^2 + 4x + 4 = 0)$]
  // #v(1fr)

  // #g-subquestion[$display(x^2 - 5x + 6 = 0)$]
  // #v(1fr)

  #g-subquestion[$display((x(x+3))/2=2)$]
  #v(1fr)

  #g-subquestion[$display((x(x+3))/2 + 2 = (x^2)/2 - 5x)$]
  #v(1fr)

// #pagebreak()

// #g-question(point:2)[Simplifica las siguientes expresiones al máximo:]

//   #g-subquestion[$display(x^2-3x^3+x-7+4x^2-6x-1+9x-3) = $]
//   #v(1fr)

//   #g-subquestion[$display((x-2) dot (x^2 - 3x+4) - 2x + 3) = $]
//   #v(1fr)

#pagebreak()

#g-question(point:3)[Resuelve los siguientes sistemas de ecuaciones, por metodos distintos:]
    #g-subquestion[
          $display(cases( delim: "{",
               &2x &+  &y &= &10 ,
              -&3x &- 2&y &= -&16
            ))$
        #v(1fr)
    ]
        
    #g-subquestion[
          $display(cases( delim: "{",
              &x &+ 2&y &= &6 ,
              &x &+ 3&y &= &7
            ))$
        #v(1fr)
    ]

#pagebreak()

#g-question(point:2)[En una granja en la que hay patos y vacas. 
Si tenemos 132 cabezas y 402 patas, ¿Cuantos patos y vacas tenemos?]
#v(1fr)

#g-question(point:2)[Una empresa de trasporte cobra 5€ por cada envío más 3€ por cada kilogramo que pese el paquete. Encontramos otra compañía de transportes que nos realiza los portes a 15€ el envío más 2€ por kilogramo. ¿A partir de cuanto peso nos interesa la 2ª compañía? 
]
#v(1fr)
