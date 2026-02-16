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
    number: [Sistemas de ecuaciones lineales],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  // show-solutions: false,
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Resuelve los siguientes sistemas de ecuaciones lineales:]
    #questions-columns(
    [#subquestion()[
        $display(cases(delim: "{",
          2&x &+ &3&y  &=  &5 ,
         -&x &+ &4&y  &= -&1
        ))$]
    ],
    [
        #subquestion()[
        $display(cases(delim: "{",
          & &x &- & &y &+ 3&z=  &1 ,
          &3&x &+ & &y &+ 2&z= &3,
          & &  &- & 2&y &+ 7&z= 1&0
        ))$
        ]
        #solution()[$x=λ, y = 7 λ - 7, z = 2 λ - 2$]
    ],
    [
        #subquestion()[
        $display(cases(delim: "{",
           &x &+ &  &y &  &z= &3,
           &  &  &  &y &+ &z= &5,
           &x &  &  &  &+ &z= &4,
          5&x &- &  &y &+ &z= &6
        ))$
        ]
        #solution()[$x=1, y = 2, z = 3$]
    ],
    [
        #subquestion()[
        $display(cases(delim: "{",
           &3&x &+ & 4&y &= &4,
           &2&x &+ & 6&y &= 2&3,
          -&2&x &+ & 3&y &= &1,
        ))$
        ]
        #solution()[$x=1, y = 2, z = 3$]
    ],
    [
        #subquestion()[
        $display(cases(delim: "{",
           & &x &+ &  &y +& &z  &-& &t &= &0,
           & &x &+ &  &y  & &   &-& &t &= -&1,
           &2&x &+ & 2&y +& &z  &-&2&t &= -&1,
        ))$
        ]
        #solution()[$x=-1 + λ - μ , y = μ, z = -4 μ + 3, t = λ$]
    ], 

    )
  ],
  [
    #question()[Discutir y resolver el siguiente sistema en función de los valores de $m$:

     $display(cases(delim: "{",
           &3&x &+ & 2&y - &m&z &= &4,
           & &x &- &  &y + & &z &= &1,
           &2&x &- &  &y + & &z &= &m,
        ))$
    ]
    #solution()[
       Definimos la matriz del sistema y su ampliada:
        $display((A | B) = mat(augment: #3, &3, &2, -&m, &4; &1, -&1, &1, &1; &2, -&1, &1, &m))$

        *Calculamos el rango de A*

        Para calcular el rango de A, calculamos el valor de un menor de orden 3 de A:

        $display(mat(delim: "|", &3, &2, -&m; &1, -&1, &1; &2, -&1, &1) = \ = 
        3 dot (-1) dot 1 + 2 dot 2 dot 1 + (-m) dot (-1) dot 1  - (-m) dot (-1)dot 2 - 2 dot 1 dot 1 - 3 dot 1 dot (-1) = \ =
        -3 + 4 +m -2m - 2 + 3 = m - 2)$

        - Si $m != 2$ el menor de orden 3 es cero, luego el rango de $A <  3$.
  
        - Si $m = 2$ el menor de orden 3 es distinto de cero, luego el rango de A = 3. Tenemos que buscar un menor de orden 2, de A, distinto de cero.
  
           $mat(delim: "|", &3, &2; &1, -&1) = -3 -2 = -5 != 0$

           Luego el rango de A, si $m = 2$ es 2. 



    ]
  ],
  [
    #question()[Discutir y resolver el siguiente sistema en función de los valores de $a$:

     $display(cases(delim: "{",
           &a&x &- &  &y &+ & &z &= &2,
           & &x &+ & a&y &- & &z &= &1,
           & &x &  &  &  &- & &z &= &0,
        ))$
    ]
  ],
  [
    #question()[Discutir y resolver el siguiente sistema en función de los valores de $a$:

     $display(cases(delim: "{",
           &a&x &+ &  &y &+ & &z &= &1,
           & &x &+ & a&y &+ & &z &= &a,
           & &x &+ &  &y &+ & a&z &= &a^2,
        ))$
    ]
  ],
  [
    #question()[Obtener el valor de $k$ para el sistema sea compatible determinado:

        $display(cases( delim: "{",
               &x &  & &   &+ 2&z   &=  &3 ,
              3&x &+ & &y  &+  &z   &= -&1 ,
               &  &  &2&y  &-  &z   &= -&2 ,
               &x &- & &y  &+  k&z  &= -&5
            ))$
    ]
    #solution()[
        Para que el sistema sea compatible determinado, el rango de la matriz de los coeficientes debe ser igual al rango de la matriz ampliada, y ambos deben ser iguales al número de incógnitas.

        Calculamos el rango de la matriz de los coeficientes y el de la matriz ampliada:

        $display(mat(augment: #3, &1, &0, &2, &3; &3, &1, &1, -&1; &0, &2, -&1, -&2; &1, -&1, &k, -&5))$

        Aplicamos operaciones elementales para llevar la matriz a una forma escalonada:

        $display(mat(augment: #3, &1, &0, &2, &3; &3, &1, &1, -&1; &0, &2, -&1, -&2; &1, -&1, &k, -&5)
        stretch(=)^(f_2 <- f_2 - 3f_1 \ f_4 <- f_4 - f_1)
        mat(augment: #3, &1, &0, &2, &3; &0, &1, -&5, -1&0; &0, &2, -&1, -&2; &0, -&1, k-&2, -&8)
        stretch(=)^(f_3 <- f_3 - 2f_2 \ f_4 <- f_4 + f_2)
        mat(augment: #3, &1, &0, &2, &3; &0, &1, -&5, -1&0; &0, &0, &9, 1&8; &0, &0, k&-7, -1&8)
        )$

        $display(mat(delim: "|",&1, &0; &0, &1) = 1 != 0)$

        Tenemos un menor de orden $2$ distinto de cero, luego el rango de la matriz de los coeficientes es al menos $2$ para todo valor de $k$.

        $display(mat(delim: "|",&1, &0, &2; &0, &1, -&5; &0, &0, &9) = 9 != 0)$

        Tenemos un menor de orden $3$ distinto de cero, luego el rango de la matriz de los coeficientes es $3$ para todo valor de $k$.

        Calculamos el menor de orden $4$ para la matriz ampliada:
        
          $display(mat(delim: "|", &1, &0, &2, &3; &0, &1, -&5, -1&0; &0, &0, &9, 1&8; &0, &0, k&-7, -1&8) =
          mat(delim: "|", &9, 1&8; k&-7, -1&8) =
          -18mat(delim: "|", &9, -&1; k&-7, &1) =
          -18(9 - (-1)(k-7))= -18(k+2))$

        Si $k = -2$ el rango de la matriz ampliada es $3$, mientras que el rango de la matriz de los coeficientes es $3$, luego el sistema sería compatible y como el rango es igual al número de incógnitas, es compatible determinado.

        Si $k != -2$ el rango de la matriz ampliada es $4$, mientras que el rango de la matriz de los coeficientes es $3$, luego el sistema sería incompatible.
    ]
  ]
  // [
  //   #question()[Calcula el valor de los siguientes determinantes:]
  //   #questions-columns(
  //   [
  //     #subquestion()[$display(mat(delim: "|", &1, 5; -&2, 0))$]
  //     #solution()[$display(mat(delim: "|", &1, 5; -&2, 0) = &1 dot 0 - 5 dot (-&2) = #result(10))$]
  //   ],
  //   [
  //     #subquestion()[$display(mat(delim: "|", 2, -&1; 3, &4))$]
  //     #solution()[$display(mat(delim: "|", 2, -&1; 3, &4) = 2 dot &4 - (-&1) dot 3 = #result(11))$]
  //   ],
  //   [
  //     #subquestion()[$display(mat(delim: "|", &2, -&1, &3; &5, &4, -&2; &3, &4, &3))$]
  //     #solution()[
  //     $display(mat(delim: "|", &2, -&1, &3; &5, &4, -&2; &3, &4, &3)
  //        = 2 dot 4 dot 3 + (-1) dot (-2) dot 3 + 3 dot 5 dot 4 - 3 dot 4 dot 3 - (-1) dot 5 dot 3 - 2 dot (-2) dot 4 = #result(85))$]
  //   ],
  //   [
  //     #subquestion()[$display(mat(delim: "|", &1, &2, &3; &0, -&1, &4; &5, &2, &1))$]
  //     #solution()[
  //       *Operando:*

  //     $display(mat(delim: "|", &1, &2, &3; &0, -&1, &4; &5, &2, &1)
  //       = 1 dot (-1) dot 1 + 2 dot 4 dot 5 + 3 dot 0 dot 2 - 3 dot (-1) dot 5 - 2 dot 0 dot 1 - 1 dot 4 dot 2 = #result(46))$
      
  //      *Por adjuntos:*
       
  //      $display(mat(delim: "|", &1, &2, &3; &0, -&1, &4; &5, &2, &1)
  //       = 1 mat(delim:"|", -&1, &4; &2, &1) - 0 mat(delim: "|", 2, 3;2, 1) + 5 mat(delim: "|", &2, &3; -&1, &4) =
  //       1 mat(delim:"|", 2, 3;2, 1) + 5 mat(delim: "|", &2, &3; -&1, &4) =
  //       1[-1 dot 1 - 4 dot 2] + 5[&2 dot &4 - (-&1) dot &3] = \ =
  //       1 dot (-1 - 8) + 5 dot (8 + 3) =
  //         1 dot (-9) + 5 dot 11 =
  //         -9 + 55 = 
  //        #result(46))$
  //     ]
  //   ],
  //   [
  //     #subquestion()[$display(mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &5, -&2, &1, &9; &0, &2, &3, &4))$]
  //     #solution()[
  //       *Haciendo ceros:*

  //       $display(mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &4, -&2, &1, &9; &0, &2, &3, &4)
  //       stretch(=)^(f_3 <- f_3 - 2 f_1)
  //       mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &0, -&8, -&9, &1; &0, &2, &3, &4)
  //       stretch(=)^(f_3 <- f_3 - 8f_2 \ f_4 <- f_4 + 2f_2)
  //        mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &0, &0, -&41, -&23; &0, &0, &11, &10)
  //       stretch(=)^(f_4 <- f_4 - 11/41 f_3)
  //       mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &0, &0, -&41, -2&3; &0, &0, &0, 157/41) =
  //       (-2) dot 1 dot (-41) dot 157/41 = #result(314)
  //       )$

  //       *Por adjuntos:*

  //       $display(mat(delim: "|", &2, &3, &5, &4; &0, -&1, &4, &3; &4, -&2, &1, &9; &0, &2, &3, &4) = 
  //       2 mat(delim: "|", -&1, &4, &3; -&2, &1, &9; &2, &3, &4) + 0 mat(delim: "|", &3, &5, &4; -&2, &1, &9; &2, &3, &4) +4 mat(delim: "|", &3, &5, &4; -&1, &4, &3; &2, &3, &4) + 0 mat(delim: "|", &3, &5, &4; -&1, &4, &3; -&2, &1, &9) = \ =
  //       2 mat(delim: "|", -&1, &4, &3; -&2, &1, &9; &2, &3, &4) + 4 mat(delim: "|", &3, &5, &4; -&1, &4, &3; &2, &3, &4) = \
  //       2[(-1) dot 1 dot 4 + 4 dot 9 dot 2 + 3 dot (-2) dot 3 - 3 dot 1 dot 2 - 4 dot (-2) dot 4 - (-1) dot 3 dot 9  ] + \ +
  //       4 [3 dot 4 dot 4 + 5 dot 3 dot 2 + 4 dot (-1) dot 3 - 4 dot 4 dot 2 - 5 dot (-1) dot 4 - 3 dot 3 dot 3] = \ =
  //       2 dot 103 + 4 dot 27 = #result()[314])$
  //       ]
  //   ],
  //   [
  //     #subquestion()[$display(mat(delim: "|", &2, &1, &0, &3; &1, &0, &4, &2; &4, &2, &0, &6; &2, &0, &8, &4))$]
  //     #solution()[La primera y tercera fila son linealmente dependientes, ya que la $f_2 = 2f_1$, luego el determinante vale $0$.
      
  //     $display(mat(delim: "|", &2, &1, &0, &3; &1, &0, &4, &2; &4, &2, &0, &6; &2, &0, &8, &4) = 0)$
  //     ]
  //   ],
  //   [
  //     #subquestion()[$display(mat(delim: "|", &3, &5, -&2, &3, &3, &7; -&1, &0, &4, &2, -&1, -&9; &0, &3, -&2, &1, &0, &4; &2, &0, &8, &4, &2, &1; -&2, &7, &3, &1, -&2, &0; -&5,&4,&2,&5,-&5,&8))$]
  //     #solution()[La primera y la quinta columna son iguales,
  //     luego el determinante vale $0$.
      
  //     $display(mat(delim: "|", &3, &5, -&2, &3, &3, &7; -&1, &0, &4, &2, -&1, -&9; &0, &3, -&2, &1, &0, &4; &2, &0, &8, &4, &2, &1; -&2, &7, &3, &1, -&2, &0; -&5,&4,&2,&5,-&5,&8) = 0)$
  //     ]
  //   ],
  //   )
  // ],
  // [
  //    #question()[Calcula la inversa de las siguientes matrices, si existe:]
  //     #questions-columns(
  //       [
  //         #subquestion()[$display(mat(&1, &2; &3, &4))$]
  //         #solution()[
  //           Calculamos el determinante:

  //           $display(mat(delim: "|", &1, &2; &3, &4) = 1 dot 4 - 2 dot 3 = 4 - 6 = -2)$

  //           Calculamos la transpuesta:
  //           $display(mat(&1, &2; &3, &4)^t = mat(&1, &3; &2, &4))$

  //           Calculamos la adjunta de la transpuesta:
  //           $display("adj" mat(&1, &3; &2, &4) = mat(&4, -&2; -&3, &1))$

  //           Calculamos la inversa:

  //           $display(mat(&1, &2; &3, &4) ^(-1) = 1/(-2) mat(&4, -&2; -&3, &1) = mat(1/(-2) dot 4, 1/(-2) dot  -2; 1/(-2) dot  -3, 1/(-2) dot 1) = 
  //           mat(-&2, &1; &3/2, -&1/2))$
  //         ]
  //       ],
  //       [
  //         #subquestion()[$display(mat(&2, &1; &4, &2))$]
  //         #solution()[
  //           $display(mat(delim: "|", &2, &1; &4, &2) = 2 dot 2 - 1 dot 4 = 4 - 4 = 0)$

  //           *El determinante es cero, luego la matriz no es invertible.*

  //           $display(mat(&2, &1; &4, &2)^(-1))$ no existe
  //         ]
  //       ],
  //     )
  // ],
  // [
  //   #question()[Estudio el rango de las siguientes matrices según el valor de sus parámetros $k$:]
  //   #questions-columns(
  //     [
  //       #subquestion()[$display(mat(&1, &2, &3; &4, &5, &6; &k, &k, &k))$]
  //       #solution()[
  //         Calculamos el determinante:

  //         $display(mat(delim: "|", &1, &2, &3; &4, &5, &6; &k, &k, &k) = 
  //         stretch(=)^(f_2 <- f_2 - f_1)
  //         mat(delim: "|", &1, &2, &3; &3, &3, &3; &k, &k, &k)
  //         stretch(=)^(f_3 <- f_3 - k f_1)
  //         mat(delim: "|", &1, &2, &3; &3, &3, &3; &0, &0, &0)
  //         = 0
  //         )$

  //         *El determinante es cero para todo valor de $k$, luego el rango es menor que $3$.*

  //         Calculamos los menores de orden $2$:

  //         $display(mat(delim: "|", &1, &2; &4, &5) = 1 dot 5 - 2 dot 4 = 5 - 8 = -3 != 0)$

  //         *El menor de orden $2$ no es nulo para ningún valor de $k$, luego el rango es $2$ para todo valor de $k$.*
  //       ]
  //     ],
  //     [
  //       #subquestion()[$display(mat(&1, -&1, -&1; &1, -&1, &2; &2, &1, &k))$]
  //       #solution()[
  //       Calculamos el determinante:

  //       $display(mat(delim: "|", &1, -&1, -&1; &1, -&1, &2; &2, &1, &k) = -k-4-1-2+k-2 = -9 !=0 #h(3mm) forall k)$

  //       El determinante es distinto de cero para todo valor de $k$, luego el rango es $3$ para todo valor de $k$.
  //       ]
  //     ],
  //     [
  //         #subquestion()[$display(mat(&1, -&k, &3, -&2; -&3, &6, -&9, &6; &k, -&4, &6, -&4))$]
  //     ],
  //     [
  //         #subquestion()[$display(mat(&1, -&1, &0, &5; &0, &1, &1, &k; &1, &0, -&2, &3; &2, &0, -&3, &k))$]
  //     ]

  //   )
  // ],
  // [
  // #question()[Dadas las matrices $display(A = mat(&1, &0, -&1; &0, &m, &3; &4, &1, -&m))$, $display(B = mat(&1, &0; &3, &2; -&1, &1))$ y $display(c= mat(&5, -&3, 4; -&3, -&2, &2))$]
    
  //     #subquestion()[Indica los valores de m para los que la matriz $A$ es invertible.]
  //     #solution()[
  //       Para que la matriz $A$ sea invertible, su determinante debe ser distinto de cero:

  //       $display(mat(delim: "|", &1, &0, -&1; &0, &m, &3; &4, &1, -&m) = -m^2 + 4m -3 != 0 => m!=1 " o " m!=3)$

  //       Para $m!=1 " y " m!=3$ la matriz tiene inversa.
  //     ]
  //     #subquestion()[Resuelve la siguiente ecuación matricial: $X A - B^t = C$ para $m = 0$.]
  //     #solution()[
  //       Despejamos $X$:

  //       $display(X A - B^t = C => X A = C + B^t => X A A^(-1) = (C + B^t) A^(-1) => X = (C + B^t) A^(-1))$

  //       Calculamos $B^t$:

  //       $display(B^t = mat(&1, &3, -&1; &0, &2, &1))$

  //       Calculamos $C + B^t$:

  //       $display(C + B^t = mat(&5, -&3, &4; -&3, -&2, &2) + mat(&1, &3, -&1; &0, &2, &1) = mat(&6, 0, 3; -&3, 0, 3))$

  //       Calculamos $|A|$ para $m=0$:

  //       $display(mat(delim: "|", &1, &0, -&1; &0, &0, &3; &4, &1, &0) = -m^2 + 4m - 3 = -3 != 0)$

  //       Calculamos $A^(-1)$ para $m=0$:

  //       $display(A^(-1) = 1/abs(A) (A d)^t)$

  //       $display((A d) = mat(
  //         &mat(delim: "|", &0, &3; &1, &0), -&mat(delim: "|", &0, &3; &4, &0), &mat(delim: "|", 0, 0; 4, 1);
  //         -&mat(delim: "|", 0, -&1; 1, &0), &mat(delim: "|", &1, -&1; &4, &0), -&mat(delim: "|", 1, 0; 4, 1);
  //         &mat(delim: "|", 0, -&1; 0, &3), - &mat(delim: "|", 1, -&1; 0, &3), &mat(delim: "|", 1, 0; 0, 0))
  //       ) =
  //       mat(-&3, 1&2, &0; -&1, &4, -&1; 0, -&3, &0)
  //       $

  //       $display((A d)^t = mat(-&3, -&1, &0; 1&2, &4, -&3; &0, -&1, &0)) $

  //       $display(A^(-1) = 1/(-3) mat(-&3, -&1, &0; 1&2, &4, -&3; &0, -&1, &0) = mat(1, 1/3, 0; -4, -4/3, 1; 0, 1/3, 0))$

  //       $display(X = (C + B^t) A^(-1) = mat(&6, 0, 3; -&3, 0, 3) mat(1, 1/3, 0; -4, -4/3, 1; 0, 1/3, 0) = mat(&6, &3, &0; -&3, &0, &0))$
  //     ]
  // ]
)
