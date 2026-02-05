#import "@preview/g-exam:0.4.4": *

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: config.at("author").at("name"),
    email: config.at("author").at("email"),
    watermark: config.at("author").at("watermark"),
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Sistema de ecuaciones",
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year:2025, month:1, day:8),
  show-student-data: false,
  show-grade-table: false,
  question-points-position: none,
// show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
)

#set math.cases(reverse: true)

#questions-pages([
  question()[Resuelve los siguientes sistemas de ecuaciones, por el método de sustitución:]
  #questions-columns([
    #subquestion()[
      $display(cases( delim: "{",
              &x + 2&y &= &8 ,
              3&x - &y  &= &3
            ))$]
      ],[
      #subquestion()[
        $display(cases( delim: "{",
                  &x + 2&y &= &8 ,
                  3&x - &y  &= &3
              ))$]
  ],)
  ], [
    #question()[Resuelve los siguientes sistemas de ecuaciones, por el método que consideres más sencillo:]
    #questions-columns([
      #subquestion()[
          $display(cases( delim: "{",
                    2&x - 3&y  &= -&1 ,
                    3&x + 2&y  &= &5
                  ))$
        ]
      ], [
        #subquestion()[
          $display(cases( delim: "{",
                  -3&x &- 4&y &= &5 ,
                    -2&x &+ 3&y &= &9
                  ))$
        ]
      ], [
        #subquestion()[
          $display(cases( delim: "{",
                  &x &+ &y &= &7 ,
                  &x &- &y &= &1
                  ))$
        ]
      ], [
        #subquestion()[
          $display(cases( delim: "{",
                  2&x &+ &y &= &5 ,
                    &x &- &y &= &3
                  ))$
        ]
      ], [
        #subquestion()[
          $display(cases( delim: "{",
                    3&x &- &y &= &4 ,
                    2&x &+ &y &= &7
                  ))$
        ]
      ], [
        #subquestion()[
          $display(cases( delim: "{",
                    4&x &- 3&y &= &2 ,
                    2&x &+ &y &= &9
                  ))$
        ]
      ], [
        #subquestion()[
          $display(cases( delim: "{",
                    5&x &+ 2&y &= &18 ,
                    3&x &- &y &= &7
                  ))$
        ]
    ])
], [
  #question()[Una tienda vende camisetas y pantalones. 
  Si una persona compra 3 camisetas y 2 pantalones y paga 80€, 
  su amiga compra 4 camisetas y un pantalón y paga 65€.
  ¿Cuánto cuesta comprar una camiseta y un pantalón juntos?]
], [
  #question()[Un autobús transporta 72 personas. 
  Hay adultos y niños en el autobús. 
  Si el número de adultos es el doble que el de los niños, ¿cuántos adultos y niños hay en el autobús?]
], [
  #question()[En una frutería, dos kilos de manzanas y tres kilos de naranjas cuestan 12 euros. 
  Tres kilos de manzanas y un kilo de naranjas cuestan 10 euros. 
  ¿Cuánto cuesta cada kilo de manzanas y de naranjas?]
], [
  #question()[En una granja hay gallinas y conejos. 
  En total hay 20 animales y entre todos tienen 56 patas. 
  ¿Cuántas gallinas y cuántos conejos hay en la granja?]
    ],[ 
  #question()[En un partido de baloncesto, un equipo anotó 76 puntos. 
    Este equipo consiguió un total de 30 canastas, algunas de 2 puntos y otras de 3 puntos. 
     ¿Cuántas canastas de cada tipo marcaron?]
  ]
)