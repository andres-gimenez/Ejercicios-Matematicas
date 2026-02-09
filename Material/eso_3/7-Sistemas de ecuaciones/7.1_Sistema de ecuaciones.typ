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
    academic-level: "3º ESO",
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

#question()[Resuelve los siguientes sistemas de ecuaciones por el método de sustitución:]

#columns(2, gutter: 11pt)[
  #subquestion()[
    $display(cases( delim: "{",
              4&x - &y &= 1&8 ,
              2&x - 3&y &= &4
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
              &x + 3&y  &= &9 ,
              2&x - 2&y  &= &2
            ))$
  ]
  #colbreak()

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
]

#question()[Resuelve los siguientes sistemas de ecuaciones por el método de igualación:]

#columns(2, gutter: 11pt)[
  #subquestion()[
    $display(cases( delim: "{",
              4&x - &y &= 1&8 ,
              2&x - 3&y &= &4
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
              3&x - &y  &= &5 ,
              4&x + &y  &= &9
            ))$
  ]
  

  #subquestion()[
    $display(cases( delim: "{",
              2&x - 3&y  &= -&1 ,
              3&x + 2&y  &= &5
            ))$
  ]

  #colbreak()
  #subquestion()[
    $display(cases( delim: "{",
             -3&x &- 4&y &= &5 ,
              -2&x &+ 3&y &= &9
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
             -3&x &- 4&y &= &5 ,
              -2&x &+ 3&y &= &9
            ))$
  ]
]

#question()[Resuelve los siguientes sistemas de ecuaciones por el método de reducción:]

#columns(2, gutter: 11pt)[
 
  #subquestion()[
    $display(cases( delim: "{",
              3&x - &y  &= &5 ,
              4&x + &y  &= &9
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
              5&x &+ 2&y &= 1&8 ,
              3&x &- &y &= &7
            ))$
  ]
]

#question()[Resuelve los siguientes sistemas de ecuaciones por el método gráfico:]

#columns(2, gutter: 11pt)[
  #subquestion()[
    $display(cases( delim: "{",
             2&x &- &y &= -&1 ,
             &x &+ &y &= &4
            ))$
  ]

  #subquestion()[
    $display(cases( delim: "{",
             &x &- &y &= &3 ,
             2&x &+ &y &= &6
            ))$
  ]
  #colbreak()
    #subquestion()[
    $display(cases( delim: "{",
             &x &+ &y &= &2 ,
             3&x &- &y &= &6
            ))$
    ]
    
    #subquestion()[
    $display(cases( delim: "{",
             2&x &- &y &= &4 ,
             &x &+ &y &= &5
            ))$
    ]
]

