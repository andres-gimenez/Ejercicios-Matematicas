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
      $ A = mat(2, -&1; 3, &4) #h(3cm)  B = mat(&1, 5; -&2, 0) $  

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
      $ A = mat(&1, 0, &2; -&1, 3, &1) #h(3cm)B = mat(2, &1; 0, -&1; 1, &4) $

      Calcula:
    ]
    #questions-columns(
    [#subquestion()[$display(A dot B =)$]],
    [#subquestion()[¿Existe $display( B dot A)$?]],
    [#subquestion()[¿Existe $display( A dot B^t)$?]],
    )
  ],
  [
    #question()[Hallar la matriz $X$ que verifica:  

        $ 2X + A = B $

      donde  
        $ A = mat(3, -&2; 1, &4) #h(3cm)  
         B = mat(7, &0; 5, 1&0) $]
  ],
  [
    #question()[Calcula $A dot B $, siendo:  

        $ A= mat(3, -&2, 5; 1, &4, 5; 2, -&1, 3) #h(3cm) 
          B= mat(5, &2, -&5; 3, &2, &8; 1, -&3, &5) $

    ]
  ],

  [
    #question()[Calcula el rango de las siguientes matrices]
    #questions-columns(
      [#subquestion()[$display(mat(1, 2, 3; 2, 4, 6; 1, 1, 1))$]
      #solution()[
        *Forma 1:*

        La segunda fila es el doble de la primera, por lo que las filas no son linealmente independientes. Además, la tercera fila no puede obtenerse como combinación lineal de las dos primeras. Por lo tanto, el rango de la matriz es 2.

        *Forma 2:*

        $display("rango"mat(1, 2, 3; 2, 4, 6; 1, 1, 1) 
        stretch(=)^(f_2 <- f_2 - 2 f_1)
        "rango"mat(1, 2, 3; 0, 0, 0; 1, 1, 1))$
        
        Al tener una fila de ceros, el rango no puede ser 3.

        Como no podemos poner  la fila 3 como combinación lineal de las otras dos, el rango es 1, son linealmente independientes. Luego tenemos dos filas linealmente independientes, lo que implica que el rango es 2.
        ]
      ],
      [#subquestion()[$display(mat(&1, -&2, " "&0, -&3; -&1, &3, &1, &4; &2, &1, &5, -&1))$]
      #solution()[
        $display("rango"mat(&1, -&2, " "&0, -&3; -&1, &3, &1, &4; &2, &1, &5, -&1) =
        stretch(=)^(f_2 <- f_2 + f_1 \ f_3 <- f_3 - 2 f_1)
          "rango"mat(&1, -&2, " "&0, -&3; &0, &1, &1, &1; &0, &5, &5, &5) 
        stretch(=)^(f_3 <- f_3 - 5 f_2)
          "rango"mat(&1, -&2, " "&0, -&3; &0, &1, &1, &1; &0, &0, &0, &0)
        )$

        Tenemos dos filas linealmente independientes, luego el rango es 2.        
        ]
      ],
      [#subquestion()[$display(mat(&1, " "&0, &2, " "&1, -&1; &0, &2, -&1, &1, &2; -&1, &1, &3, &2, &0; &0, &8, &7, &9, &4))$]
      #solution()[
        $display("rango"mat(&1, " "&0, &2, " "&1, -&1; &0, &2, -&1, &1, &2; -&1, &1, &3, &2, &0; &0, &8, &7, &9, &4) 
        stretch(=)^(f_3 <- f_3 + f_1 \ f_4 <- f_4 - 4 f_2)
          "rango"mat(&1, " "&0, &2, " "&1, -&1; &0, &2, -&1, &1, &2; &0, &1, &5, &3, -&1; &0, &0, &11, &5, -&4)
        stretch(=)^(f_4 <- f_4 - 11 f_3) \
          "rango"mat(&1, " "&0, &2, " "&1, -&1; &0, &2, -&1, &1, &2; &0, &1, &5, &3, -&1; &0, &0, &0, -&28, &7)
        )$

        Tenemos cuatro filas linealmente independientes, luego el rango es 4.
      ]
      ],
    )
  ],
  [
    #question()[Hallar la matriz $X$ que verifica:  

        $ A X + B = I $

      donde  
        $ A = mat(3, 0; 1, 3) "y" B = mat(1, 2; 5, 4) $]
  ],
  [
    #question()[Hallar la matriz $X$ que verifica:  

        $ A X + A^t = 2 I $

      donde  
        $ A = mat(&1, &0; -&1, -&1) $]
  ],
  [
    #question()[Estudia el rango de la matriz según el parámetro $k$: 
       $ A = mat(1, &k, 2; 2, 2&k, 4; 1, &1, k) $]
  ],
  [
    #question()[Dada la matriz: 
       $ A = mat(1, 0, 1; 0,1,0;1, 0, 1) $
       
       Calcula la potencia enésima de $A$.]
  ],
  [
    #question()[Resolver el sistema mediante matrices:
    $ cases(
      &x  &+ &2y &- &z  &= &1,
      2&x &+ &5y &+ &z  &= &4,
      &x  &+ &3y &+ 2&z &= &5
    ) $]
  ],
  [
    #question()[Sea la matriz $ A = mat(&1, &1; &0, &1) $. Calcula $A^n$ para $forall n in NN$.]
    // #questions-columns(max-columns: 1,
      #subquestion()[Calcula $A^2$, $A^3$ y $A^4$.]
      #solution()[Calculamos:

      $display(A^2 = mat(&1, &1; &0, &1) dot mat(&1, &1; &0, &1) = mat(&1, &2; &0, &1))$

      $display(A^3 =mat(&1, &2; &0, &1) dot mat(&1, &1; &0, &1) = mat(&1, &3; &0, &1))$

      $display(A^4 =mat(&1, &3; &0, &1) dot mat(&1, &1; &0, &1) = mat(&1, &4; &0, &1))$
      ]
      #subquestion()[Conjetura una expresión para $A^n$.]
      #solution()[Observamos que:
        $display(A^n = mat(&1, &n; &0, &1))$
      ]
      #subquestion()[Demuestra por inducción tu conjetura.]
      #solution()[Procedemos por inducción sobre $n$.
        
        Probamos que la conjetura se cumple para  $n = 1$ 
        
        $display(A^1 = A = mat(&1, &1; &0, &1))$.

        Paso inductivo: Supongamos que para algún $n in NN$ se cumple que $display(A^n = mat(&1, &n; &0, &1))$
        
        Ahora tenemos que demostrar que es verdad para $n+1$

        $display(A^(n+1) = A^n dot A = mat(&1, &n; &0, &1) dot mat(&1, &1; &0, &1) = mat(&1, n &+ 1; &0, &1))$

        Por lo tanto, por el principio de inducción, la conjetura es cierta $forall n in NN$.
      ]
    // )
  ]
)
