#import "@preview/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

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
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Álgebra de matrices],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Sean  
      $ A = mat(2, -1; 3, 4) #h(3cm)  B = mat(1, 5; -2, 0) $  

      Calcula:
    ]
    #questions-columns(
    [#subquestion()[$display(A + B =)$]],
    [#subquestion()[$display(2A - 3B =)$]],
    [#subquestion()[$display(A dot B =)$]],
    [#subquestion()[$display(B dot A =)$]],
    [#subquestion()[$display(A^t + B^t =)$]],
    [#subquestion()[$display((A + B)^t =)$]],
    )
  ],
  [
    #question()[Dadas las matrices  
      $ A = mat(1, 0, 2; -1, 3, 1) #h(3cm)B = mat(2, 1; 0, -1; 1, 4) $

      Calcula:
    ]
    #questions-columns(
    [#subquestion()[$display(A dot B =)$]],
    [#subquestion()[¿Existe $display( B dot A)$?]],
    )
  ],
  [
    #question()[Hallar la matriz $X$ que verifica:  

        $ 2X + A = B $

      donde  
        $ A = mat(3, -2; 1, 4) #h(3cm)  
         B = mat(7, 0; 5, 10) $]
  ],
  [
    #question()[Calcula el rango de la matriz 
        $ A = mat(1, 2, 3; 2, 4, 6; 1, 1, 1) $]
  ],
  [
    #question()[Estudia el rango de la matriz según el parámetro $k$: 
       $ A = mat(1, k, 2; 2, 2k, 4; 1, 1, k) $]
  ],
  [
    #question()[Resolver el sistema mediante matrices:
    $ cases(
      &x  &+ &2y &- &z  &= &1,
      2&x &+ &5y &+ &z  &= &4,
      &x  &+ &3y &+ 2&z &= &5
    ) $]
  ]
)
