#import "@preview/g-exam:0.4.4": *

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Polinomios",
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: true,
  show-grade-table: "odd-pages",
  show-solutions: false,
  // question-text-parameters: (font:"OpenDyslexic")
)

// #set math.cases(reverse: true)
#questions-pages([
  #question()[Simplifica las siguientes expresiones:]
    #questions-columns(
      [ #subquestion()[$x^3 - 2x + 4 + 2x^3 + 4x -5=$] ],
      [ #subquestion()[$5x y + 3x y^2 - 3x y + 5x y^2=$] ],
      [ #subquestion()[$2x y - 3x^2y + 3x y + 2x^2y=$] ],
      [ #subquestion()[$2x^2y + 2y x^2=$] ],
      [ #subquestion()[$2/3 x^2 - 3/2 x^2=$] ],
      [ #subquestion()[$2/5 x^2 - 1/3 x + 3/8 x^2 - 2/5 x=$] ],
      [ #subquestion()[$(3x^2 + 4x - 1) + (2x^2 - 3x + 5)$] ],
      [ #subquestion()[$(7x^3 - x + 9) - (3x^3 + 5x - 2)$] ],
      [ #subquestion()[$(6x - 4) - (2x^2 - 3x + 1)$] ],
    )
  ],[
      #question()[Calcula el polinomio que falta:]
      #questions-columns(      
        [ #subquestion()[$P(x) + (2x^2 - x + 3) = (5x^2 + x + 1)$] ],
        [ #subquestion()[$P(x) + (2x^2 + x - 2) = (2x^2 - 2x - 3)$] ],
        [ #subquestion()[$(3x^2 - 2x + 2) - P(x) = (6x^2 + 2x + 3)$] ],
    )
   ],[
      #question()[Realiza los siguientes productos y simplifica:]
      #questions-columns(
        [ #subquestion()[$x(3x^2 + 2x - 4)$] ],
        [ #subquestion()[$(2x - 3)(x + 5)$] ],
        [ #subquestion()[$(x - 2)(x^2 + x + 1)$] ],
        [ #subquestion()[$(x - 1)(x^2 + 2x - 3)$] ],
        [ #subquestion()[$(x^2 + x - 1)(x^2 + 2x - 3)$] ],
        [ #subquestion()[$(x^2 - 2 x - 1)(2x - 3)$] ],
        
    )
  ],[ 
    #question()[Divide las siguientes expresiones algebraicas:]
      #questions-columns(
        [ #subquestion()[$(6x^3 - 9x^2 + 3x) : 3x$] ],
        [ #subquestion()[$(10x^4 + 5x^2 - 15x) : 5x$] ],

        [ #subquestion()[$(10x^4 + 5x^2 - 15x) : 5x$] ],
        [ #subquestion()[$(2x^4 + 4x^2 - 7x) : 3x$] ],
        [ #subquestion()[$(x^3 + 2x^2 + 2x) : 2x$] ],
        [ #subquestion()[$(25x^3 + 25x^2 - 15 x) : 5x$] ],
      )
  ]
  ,[
  #question()[Calcula el valor de los siguientes polinomios:]
    #questions-columns(
      [ #subquestion()[$P(x)=3x^2 - 2x + 5$ para $x=2$] ],
      [ #subquestion()[$P(x)=3x^2 - 2x + 5$ para $x=0$] ],
      [ #subquestion()[$P(x)=3x^2 - 2x + 5$ para $x=1$] ],   
      [ #subquestion()[$P(x)=3x^2 - 2x + 5$ para $x=-1$] ], 
      [ #subquestion()[$Q(x)=x^3 - 4x + 1$ para $x=-1$] ],
      [ #subquestion()[$Q(x)=2x^3 - 2x + 2$ para $x=-1$] ],
    )
  ],[
  #question()[Realiza las siguientes divisiones de polinomios y expresa el resultado según el algoritmo de la división:]
  #questions-columns(
    [ #subquestion()[$(3x^3 + 5x^2 - x + 2) : (x + 1)$]],
    [ #subquestion()[$(4x^3 - 6x + 8) : (x - 2)$]],
    [ #subquestion()[$(3x^4 - 5x^3 + 2x^2 - x + 7) : (x^2 - 1)$]],
    [ #subquestion()[$(2x^5 + x^4 - 6x^3 + 3x - 4) : (x^2 + x)$]],
    [ #subquestion()[$(5x^4 - 3x^2 + x - 9) : (x^2 - 2x + 3)$]],
    [ #subquestion()[$(5x^4 - 3x^2 + x - 9) : (x^2 - 2x + 3)$]],
    [ #subquestion()[$(4x^5 - x^3 + 7x - 2) : (2x^2 + x - 1)$]],
    [ #subquestion()[$(6x^6 - 2x^4 + x^2 - 8) : (x^3 - x)$],
  ])
  ],[
    #question()[Realiza las siguientes divisiones por el método de Ruffini y expresa la según el algoritmo de la división:]
    #questions-columns(
      [ #subquestion()[$(3x^3 + 5x^2 - x + 2) : (x + 1)$]],
      [ #subquestion()[$(4x^3 - 6x + 8) : (x - 2)$]],
      [ #subquestion()[$(2x^4 - 3x^2 + x - 5) : (x + 1)$]],
      [ #subquestion()[$(5x^3 + x^2 - 12x + 4) : (x - 3)$]],
      [ #subquestion()[$(6x^4 - 2x^3 + 9x - 3) : (2x - 1)$]
    ])
  ],
  [
    #question()[Factoriza los siguientes expresiones algebraicas:]
    #questions-columns(
      [ #subquestion()[$x^3+x^2-x-1$]],
      [ #subquestion()[$x^3+3x^2+3x+1$]],
      [ #subquestion()[$x^3+5x^2+8x+4$]],
      [ #subquestion()[$x^4+x^3-7x^2-13x-6$]],
      [ #subquestion()[$x^4-4x^3-x^2+16x-12$]],
    )
  ]
)