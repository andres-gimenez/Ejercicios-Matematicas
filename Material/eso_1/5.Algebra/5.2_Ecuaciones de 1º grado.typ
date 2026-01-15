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
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Expresiones algebraicas y ecuaciones",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year:2025, month:1, day:8),
  show-student-data: false,
  show-grade-table: false,
  question-points-position: none,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

#question()[Resuelve las siguientes ecuaciones:]
#columns(2, gutter: 11pt)[
  #subquestion()[$x-3=5$] //(sol: x= 8)
  #subquestion()[$x-6=3$] //(sol: x= 9)
  #subquestion()[$2x+3=13$] //(sol: x=)
  // #subquestion()[$x-6=3x$] //(sol: x=)
  // #subquestion()[$x+6=9$] //(sol: x=)
  // #subquestion()[$x+9=3$] //(sol: x=)
  // #subquestion()[$x-3=4-x$] //(sol: x=)
  // #subquestion()[$x-3=4-2x$] //(sol: x=)
  #subquestion()[$2x+34=-20$] //(sol: x=)
  // #subquestion()[$4x+3=3x+5$] //(sol: x=)
  // #subquestion()[$x-8=2x-11$] //(sol: x=)
  // #subquestion()[$9x+8=7x+6$] //(sol: x=)
  // #subquestion()[$7x+9=3+9x$] //(sol: x=)
  
  // #subquestion()[$x+1=2x-7$] //(sol: x=)
  // #subquestion()[$6x+6=4+8x$] //(sol: x=)
  #subquestion()[$9+9x=17+5x$] //(sol: x=)
  
  #subquestion()[$2x+3=3x$] //(sol: x=)

  // #subquestion()[$25-2x=3x+20$] //(sol: x=)
  // #subquestion()[$4x+1=3x+3$] //(sol: x=)
  // #subquestion()[$5x-3=10x-6$] //(sol: x=)
#colbreak()
  // #subquestion()[$1+8x=-16x+31$] //(sol: x=)
  // #subquestion()[$5x-11=15x-19$ ] //(sol: x=)
  // #subquestion()[$12x-48=-15x-30$] //(sol: x=)
  // #subquestion()[$2x+17=3x+7$] //(sol: x=)
  // #subquestion()[$5x-9=4x-20$ ] //(sol: x=)
  #subquestion()[$2x-7=x+5$] //(sol: x=)
  #subquestion()[$display(x/5=-30)$] //(sol: x=)
  // #subquestion()[$2x+6=3x-1$] //(sol: x=)
  // #subquestion()[$x-3 = x-3$] //(sol: x=)
  // #subquestion()[$x-3 = x-4$] //(sol: x=)
  #subquestion()[$3x + 1 = 3 - (2- 2x)$] //(sol: x=)

  #subquestion()[$display(3/2 x + 1/3 = 3/5 - (2- 2x)/3)$] //(sol: x=)
  #subquestion()[$display(1/5 x + 2/7 = (2x - 1)/2) + 2/3$] //(sol: x=)
]

#question()[Halla la solución de las ecuaciones propuestas:]
#columns(2, gutter: 11pt)[
  #subquestion()[$display(5x + 3 - 2x + 4 = 2x - 3 + 5x + 8)$]
  #subquestion()[$display(7x - 5 + 5x = 5 + 3x - 3)$]
  #subquestion()[$display(7 (5x + 3) = 5 + 3x)$]
  #subquestion()[$display(3 (2x + 5) = 4 (x - 2))$]
#colbreak()
  #subquestion()[$display((2x + 2)/5 = (x - 2) / 3)$]
  #subquestion()[$display((3x + 5)/7 = (2x - 3) / 4)$]
  #subquestion()[$display((2x+4)/5 = 5 - (3x+5)/3)$]
  #subquestion()[$display((x+2)/5 + (2x-3)/4 = (3x+5)/3)$]
]

#question()[Resuelve las siguientes ecuaciones:]
#columns(2, gutter: 11pt)[
  #subquestion()[$display((3x)/2 + (2x)/3 = (1 + 3x)/2)$ ] //(sol: x=3/4)
  #subquestion()[$display((x-4)/6+(2x-4)/8=(5x)/10-(5x-6)/12)$] //(sol: x=)
    
  // #subquestion()[$display((2x+4)/4-2(x-3)=5-(7x)/2)$] //(sol: x=)
  // #subquestion()[$display(x(x-1)-(x-3)=x^2-1-(x-2))$] //(sol: x=)
  // #subquestion()[$display((x-5)/2-(2x-4)/12=(5-x)/4-x/3)$] //(sol: x=)
  #subquestion()[$display((2x-1)/3-(5x-4)/7=(x+5)/2-5)$] //(sol: x=)
  // #subquestion()[$display((3x-11)/20-(5x-1)/14=(x-7)/10-(5x-6)/21)$] //(sol: x=)
  // #subquestion()[$display(2 (2+x)-(6-7x) = 13x - (1 + 4x))$] //(sol: x=)
  #colbreak()
  #subquestion()[$display((3x-17)/8-(1-4x)/3=(1-x)/4-(9+x)/6)$] //(sol: x=)
  // #subquestion()[$display(3 (x+1)-2x=x-[2+3(3-x)])$] //(sol: x=)
  // #subquestion()[$display((-6)/2 ((5+x)/3)=1/3 (4-(4x)/2) + (3x)/2)$] //(sol: x=)
  // #subquestion()[$display(4/3 ((2+x)/5) = 1/5 (8 - (6x)/3 )+ (5x)/3)$] //(sol: x=)
  // #subquestion()[$display(5/2 ((7+x)/3) = 1/3 (5 - (5x)/2) + (3x)/2)$] //(sol: x=)
  // #subquestion()[$display(-1/2 (4 - (6x)/3) + (5x)/3 = -5/3 ((2+x)/2))$] //(sol: x=)
  // #subquestion()[$display((-1)/2 (1 - (3x)/2) + (6x)/2 = (-3)/2 ((6+x)/2))$] //(sol: x=)
  // #subquestion()[$display((-1)/3 (8 - (4x)/2) + (2x)/2 = (-6)/2 ((7+x)/3))$] //(sol: x=)
  // #subquestion()[$display(18 + (3x+4)/5 = (5x+4)/2 - (2x-5)/2)$] //(sol: x=)
  // #subquestion()[$display(1 - 2 [1 + 3x - 2 (x+2) + 3x] = -1)$] //(sol: x=)
  #subquestion()[$display(5 (x+1) - (1-x) = 2 (x-1) - 4 (1-x))$] //(sol: x=)
  // #subquestion()[$display(2 - [3 - 2 (x+1)] = 3x + 2 [x - (3+2x)])$] //(sol: x=)
  #subquestion()[$display(x + 1/2 [x - 3/2 (4 -3x)] = 2/3 (1 - (5x)/2))$] //(sol: x=)
]
    
#question()[Resuelve las siguientes ecuaciones de 2º grados:]
#columns(2, gutter: 11pt)[
  #subquestion()[$display(x^2-5x+6 = 0)$] //(sol: x=)
  #subquestion()[$display(2x^2+3x-2 = 0)$] //(sol: x=)
  #subquestion()[$display(x^2+4x+4 = 0)$] //(sol: x=)
  #subquestion()[$display(x^2-7x = 0)$] //(sol: x=)
  #subquestion()[$display(x^2+1 = 0)$] //(sol: x=)
  #colbreak()
  #subquestion()[$display(x dot (x+2) = 0)$] //(sol: x=)
  #subquestion()[$display(3 dot (x-2)^2 = 0)$] //(sol: x=)
  #subquestion()[$display((x-2) dot (x+1) = 0)$] //(sol: x=)
  #subquestion()[$display(5x dot (2x-1) = -1)$] //(sol: x=)
]

#question()[Un rectángulo tiene una área de 24 m². Su base mide 6 m más que su altura. Calcula las dimensiones del rectángulo resolviendo una ecuación de segundo grado.]


#question()[Resuelve los siguientes sistemas de ecuaciones:]
#columns(2, gutter: 11pt)[
 #subquestion()[
    $display(cases( delim: "{",
              2&x - 3&y  &= -&1 ,
              3&x + 2&y  &= &5
            ))$
  ]
  
  #subquestion()[
    $display(cases( delim: "{",
             -3&x &- 4&y &= &5 ,
              -2&x &+ 3&y &= &9
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
             &x &+ &y &= &7 ,
             &x &- &y &= &1
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
             2&x &+ &y &= &5 ,
              &x &- &y &= &3
            ))$
  ]
#colbreak()
  #subquestion()[
    $display(cases( delim: "{",
              3&x &- &y &= &4 ,
              2&x &+ &y &= &7
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
              4&x &- 3&y &= &2 ,
              2&x &+ &y &= &9
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
              5&x &+ 2&y &= &18 ,
              3&x &- &y &= &7
            ))$
  ]
]

#question()[Una tienda vende camisetas y pantalones. 
Si una persona compra 3 camisetas y 2 pantalones y paga 80€, 
su amiga compra 4 camisetas y un pantalón y paga 65€.
¿Cuánto cuesta comprar una camiseta y un pantalón juntos?]

#question()[Un autobús transporta 72 personas. 
Hay adultos y niños en el autobús. 
Si el número de adultos es el doble que el de los niños, ¿cuántos adultos y niños hay en el autobús?]

#question()[En una frutería, dos kilos de manzanas y tres kilos de naranjas cuestan 12 euros. 
Tres kilos de manzanas y un kilo de naranjas cuestan 10 euros. 
¿Cuánto cuesta cada kilo de manzanas y de naranjas?]

#question()[En una granja hay gallinas y conejos. 
En total hay 20 animales y entre todos tienen 56 patas. 
¿Cuántas gallinas y cuántos conejos hay en la granja?]

#question()[En un partido de baloncesto, un equipo anotó 76 puntos. 
Este equipo consiguió un total de 30 canastas, algunas de 2 puntos y otras de 3 puntos. 
¿Cuántas canastas de cada tipo marcaron?]