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
    number: [Determinantes],
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
    #question()[Calcula el valor de los siguientes determinantes:]
    #questions-columns(
    [
      #subquestion()[$display(mat(delim: "|", &1, 5; -&2, 0))$]
      #solution()[$display(mat(delim: "|", &1, 5; -&2, 0) = &1 dot 0 - 5 dot (-&2) = #result(10))$]
    ],
    [
      #subquestion()[$display(mat(delim: "|", 2, -&1; 3, &4))$]
      #solution()[$display(mat(delim: "|", 2, -&1; 3, &4) = 2 dot &4 - (-&1) dot 3 = #result(11))$]
    ],
    [
      #subquestion()[$display(mat(delim: "|", &2, -&1, &3; &5, &4, -&2; &3, &4, &3))$]
      #solution()[
      $display(mat(delim: "|", &2, -&1, &3; &5, &4, -&2; &3, &4, &3)
         = 2 dot 4 dot 3 + (-1) dot (-2) dot 3 + 3 dot 5 dot 4 - 3 dot 4 dot 3 - (-1) dot 5 dot 3 - 2 dot (-2) dot 4 = #result(85))$]
    ],
    [
      #subquestion()[$display(mat(delim: "|", &1, &2, &3; &0, -&1, &4; &5, &2, &1))$]
      #solution()[
        *Operando:*

      $display(mat(delim: "|", &1, &2, &3; &0, -&1, &4; &5, &2, &1)
        = 1 dot (-1) dot 1 + 2 dot 4 dot 5 + 3 dot 0 dot 2 - 3 dot (-1) dot 5 - 2 dot 0 dot 1 - 1 dot 4 dot 2 = #result(46))$
      
       *Por adjuntos:*
       
       $display(mat(delim: "|", &1, &2, &3; &0, -&1, &4; &5, &2, &1)
        = 1 mat(delim:"|", -&1, &4; &2, &1) - 0 mat(delim: "|", 2, 3;2, 1) + 5 mat(delim: "|", &2, &3; -&1, &4) =
        1 mat(delim:"|", 2, 3;2, 1) + 5 mat(delim: "|", &2, &3; -&1, &4) =
        1[-1 dot 1 - 4 dot 2] + 5[&2 dot &4 - (-&1) dot &3] = \ =
        1 dot (-1 - 8) + 5 dot (8 + 3) =
          1 dot (-9) + 5 dot 11 =
          -9 + 55 = 
         #result(46))$
      ]
    ],
    [
      #subquestion()[$display(mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &5, -&2, &1, &9; &0, &2, &3, &4))$]
      #solution()[
        *Haciendo ceros:*

        $display(mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &4, -&2, &1, &9; &0, &2, &3, &4)
        stretch(=)^(f_3 <- f_3 - 2 f_1)
        mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &0, -&8, -&9, &1; &0, &2, &3, &4)
        stretch(=)^(f_3 <- f_3 - 8f_2 \ f_4 <- f_4 + 2f_2)
         mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &0, &0, -&41, -&23; &0, &0, &11, &10)
        stretch(=)^(f_4 <- f_4 - 11/41 f_3)
        mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &0, &0, -&41, -2&3; &0, &0, &0, 157/41) =
        (-2) dot 1 dot (-41) dot 157/41 = #result(314)
        )$

        *Por adjuntos:*

        $display(mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &4, -&2, &1, &9; &0, &2, &3, &4) = 
        2 mat(delim: "|", -&1, &4, &3; -&2, &1, &9; &2, &3, &4) + 0 mat(delim: "|", &3, &5, &4; -&2, &1, &9; &2, &3, &4) +4 mat(delim: "|", &3, &5, &4; -&1, &4, &3; &2, &3, &4) + 0 mat(delim: "|", &3, &5, &4; -&1, &4, &3; -&2, &1, &9) = \ =
        2 mat(delim: "|", -&1, &4, &3; -&2, &1, &9; &2, &3, &4) + 4 mat(delim: "|", &3, &5, &4; -&1, &4, &3; &2, &3, &4) = \
        2[(-1) dot 1 dot 4 + 4 dot 9 dot 2 + 3 dot (-2) dot 3 - 3 dot 1 dot 2 - 4 dot (-2) dot 4 - (-1) dot 3 dot 9  ] + \ +
        4 [3 dot 4 dot 4 + 5 dot 3 dot 2 + 4 dot (-1) dot 3 - 4 dot 4 dot 2 - 5 dot (-1) dot 4 - 3 dot 3 dot 3] = \ =
        2 dot 103 + 4 dot 27 = #result()[314])$
        ]
    ],
    [
      #subquestion()[$display(mat(delim: "|", &2, &1, &0, &3; &1, &0, &4, &2; &4, &2, &0, &6; &2, &0, &8, &4))$]
      #solution()[La primera y tercera fila son linealmente dependientes, ya que la $f_2 = 2f_1$, luego el determinante vale $0$.
      
      $display(mat(delim: "|", &2, &1, &0, &3; &1, &0, &4, &2; &4, &2, &0, &6; &2, &0, &8, &4) = 0)$
      ]
    ],
    [
      #subquestion()[$display(mat(delim: "|", &3, &5, -&2, &3, &3, &7; -&1, &0, &4, &2, -&1, -&9; &0, &3, -&2, &1, &0, &4; &2, &0, &8, &4, &2, &1; -&2, &7, &3, &1, -&2, &0; -&5,&4,&2,&5,-&5,&8))$]
      #solution()[La primera y la quinta columna son iguales,
      luego el determinante vale $0$.
      
      $display(mat(delim: "|", &3, &5, -&2, &3, &3, &7; -&1, &0, &4, &2, -&1, -&9; &0, &3, -&2, &1, &0, &4; &2, &0, &8, &4, &2, &1; -&2, &7, &3, &1, -&2, &0; -&5,&4,&2,&5,-&5,&8) = 0)$
      ]
    ],
    )
  ],
  [
     #question()[Calcula la inversa de las siguientes matrices, si existe:]
      #questions-columns(
        [
          #subquestion()[$display(mat(&1, &2; &3, &4))$]
          #solution()[
            Calculamos el determinante:

            $display(mat(delim: "|", &1, &2; &3, &4) = 1 dot 4 - 2 dot 3 = 4 - 6 = -2)$

            Calculamos la transpuesta:
            $display(mat(&1, &2; &3, &4)^t = mat(&1, &3; &2, &4))$

            Calculamos la adjunta de la transpuesta:
            $display("adj" mat(&1, &3; &2, &4) = mat(&4, -&2; -&3, &1))$

            Calculamos la inversa:

            $display(mat(&1, &2; &3, &4) ^(-1) = 1/(-2) mat(&4, -&2; -&3, &1) = mat(1/(-2) dot 4, 1/(-2) dot  -2; 1/(-2) dot  -3, 1/(-2) dot 1) = 
            mat(-&2, &1; &3/2, -&1/2))$
          ]
        ],
        [
          #subquestion()[$display(mat(&2, &1; &4, &2))$]
          #solution()[
            $display(mat(delim: "|", &2, &1; &4, &2) = 2 dot 2 - 1 dot 4 = 4 - 4 = 0)$

            *El determinante es cero, luego la matriz no es invertible.*

            $display(mat(&2, &1; &4, &2)^(-1))$ no existe
          ]
        ],
      )
  ],
)
