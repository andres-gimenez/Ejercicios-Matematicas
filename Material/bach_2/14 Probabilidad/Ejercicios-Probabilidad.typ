#import "@local/g-exam:0.4.4": *
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
    number: [Probabilidad],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  show-solutions: true,
  question-points-position: none,
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[En un experimento aleatorio se sabe que:

    - $P(A)=0.35$
    - $P(B)=0.50$
    - $P(A inter B)=0.20$

    Calcula:]
    #questions-columns(
      [
      #subquestion()[$P(A union B)$]
      #solution()[      
      $P(A union B) = P(A) + P(B) - P(A inter B)$

      $P(A union B) = 0,35 + 0,50 - 0,20 = 0,65$
      ]
      ],
      [
      #subquestion()[$P(A \\ B)$]
      #solution()[
      $P(A \\ B) = P(A) - P(A inter B)$

      $P(A \\ B) = 0,35 - 0,20 = 0,15$
      ]
      ],
      [
      #subquestion()[$P(B \\ A)$]  
      #solution()[
      $P(B \\ A) = P(B) - P(A inter B)$

      $P(B \\ A) = 0,50 - 0,20 = 0,30$
      ]
      ],
      [ 
      #subquestion()[$P(overline(A))$]
      #solution()[
        $P(overline(A)) = 1 - P(A)$

        $P(overline(A)) = 1 - 0,35 = 0,65$
      ]
      ],
      [
      #subquestion()[$P(overline(A) inter B)$]
      #solution()[
        $P(overline(A) inter B) = P(B) - P(A inter B)$

        $P(overline(A) inter B) = 0,50 - 0,20 = 0,30$
      ]
      ],
      [
      #subquestion()[$P(overline(A) inter overline(B))$]
      #solution()[
        $P(overline(A) inter overline(B)) = P(overline(A union B)) = 1 - P(A union B)$

        $P(overline(A) inter overline(B)) = 1 - 0,65 = 0,35$
      ]
      ],
      [
      #subquestion()[$P(overline(A) union overline(B))$]
      #solution()[
        $P(overline(A) union overline(B)) = P(overline(A inter B)) = 1 - P(A inter B)$

        $P(overline(A) union overline(B)) = 1 - 0,20 = 0,80$
      ]
      ],
      [#subquestion()[$P(overline(A) union B)$]
       #solution()[
        $P(overline(A) union B) = P(overline(A)) + P(B) - P(overline(A) inter B)$

        $P(overline(A) union B) = 0,65 + 0,50 - 0,30 = 0,85$
      ]
      ]

    )
  ],
  [
    #question()[Sean dos sucesos $A$ y $B$ tales que:
    - $P(A)=0.6$
    - $P(B)=0.5$
    - $P(A inter B)=0.3$

    Calcula:]
    #questions-columns(
      [
      #subquestion()[$P(A | B)$]
      #solution()[
        $display(P(A | B) = P(A inter B)/P(B))$

        $display(P(A | B) = (0","3)/(0","5) = 0","6)$
      ]
      ],
      [
      #subquestion()[$P(B | A)$]
      #solution()[
        $display(P(B | A) = P(A inter B)/P(A))$

        $display(P(B | A) = (0","3)/(0","6) = 0","5)$
        ]
      ],
      [
      #subquestion()[$P(overline(A) | B)$]
      #solution()[
        $display(P(overline(A) | B) = 1 - P(A | B))$

        $display(P(overline(A) | B) = 1 - 0","6 = 0","4)$
        ]
      ],
      [
        #subquestion()[$P(overline(B) | A)$]
        #solution()[
          $display(P(overline(B) | A) = 1 - P(B | A))$

          $display(P(overline(B) | A) = 1 - 0","5 = 0","5)$
        ]
      ]
    )
  ],
  [
    #question()[Dados dos sucesos A y B, de un experimento aleatorio, con probabilidades tales que $display(P(A)=4/9)$, $display(P(B)=1/3)$ y $display(P(A union B)=7/9)$:]

    #questions-columns(
      [#subquestion()[Comprobar si A y B son incompatibles o no.]
      #solution()[Para que dos sucesos sean incompatibles, debe cumplirse que $P(A inter B) = 0$.

      $P(A union B) = P(A) + P(B) - P(A inter B) => P(A inter B) = P(A) + P(B) - P(A union B)$

      $display(P(A inter B) = 4/9 + 1/3 - 7/9 = 4/9 + 3/9 - 7/9 = 0)$

      Luego los sucesos son incompatibles.

      ]],
      [#subquestion()[Calcular $P(overline(A) inter overline(B))$]
       #solution()[
        $P(overline(A) inter overline(B)) = P(overline(A union B)) = 1 - P(A union B)$

        $display(P(overline(A) inter overline(B)) = 1 - 7/9 = 2/9)$
       ]
       ]
    )
  ],
  [
    #question()[Dados dos sucesos A y B, de un experimento aleatorio, con probabilidades tales que $display(P(A)=4/9)$, $display(P(B)=1/2)$ y $display(P(A union B)=2/3)$:]

    #questions-columns(
      [#subquestion()[Comprobar si A y B son independientes o no.]
        #solution()[Para que dos sucesos sean independientes, debe cumplirse que 
      
        $ P(A | B) = P(A) <=> P(A inter B) = P(A) dot P(B) $

        Utilizamos la segunda definición:

        $ P(A) dot P(B) = 4/9 dot 1/2 = 4/18 = 2/9 = 1/3 = P(A union B) $

        Luego los sucesos son independientes.
        ]
      ]
      ,
      [#subquestion()[Calcular $P(overline(A)|B)$, donde $overline(A)$ representa el suceso contrario de A]
      #solution()[
        $display(P(overline(A)|B) = 1 - P(A|B))$
        
        Como $A$ y $B$ son independientes, $P(A|B) = P(A)$, por lo que:

        $display(P(overline(A)|B) = 1 - P(A) = 1 - 4/9 = 5/9)$
    ]
  ],
  [
    #question()[Sea $A$ y $B$ sucesos tales que:
      - $P(A)=0,4$
      - $P(B)=0,7$
      - $P(A | B)= 0,28$
      Calcula:
      
      #subquestion()[$P(A inter B)$]
          #solution()[
            $display(P(A|B) = P(A inter B)/P(B) => P(A inter B) = P(A|B) dot P(B))$

            $display(P(A inter B) = 0","28 dot 0","7 = 0","196)$
            ]
            #subquestion()[$P(B | A)$]
            #solution()[
              $display(P(B | A) = P(A inter B)/P(A))$

              $display(P(B | A) = (0","196)/(0","4) = 0","49)$

              o Directamente:
              
              $display(cases(delim: "{",
                P(B | A) = display(P(B inter A)/P(A) => P(A inter B) = P(A)/P(B | A)), 
                P(B | A) = display(P(A inter B)/P(A) => P(A inter B) = P(B)/P(A | B)),
                )
              => 
              P(A)/P(B | A) = P(B)/P(A | B) => \

              P(B | A) = (P(A|B) dot P(B))/P(A)
              )$

              Sustituyendo por los valores dados:

              $display(P(B | A) = (0","28 dot 0","7)/(0","4) = 0","49)$
              
            ]
        ]
      ]
    )
  ],
  [
    #question()[Sean $A$ y $B$ sucesos independientes tales que:
      - $P(A)=0.4$
      - $P(B)=0.7$
      calcula:
    ]
    #questions-columns(
      [#subquestion()[$P(A inter B)$]
        #solution()[
          Como A y B son independientes, $P(A inter B) = P(A) dot P(B)$

          $display(P(A inter B) = 0","4 dot 0","7 = 0","28)$
        ]
      ],
      [#subquestion()[$P(A union B)$]
        #solution()[
          $P(A union B) = P(A) + P(B) - P(A inter B)$

          $display(P(A union B) = 0","4 + 0","7 - 0","28 = 0","82)$
        ]
      ],
      [#subquestion()[$P(overline(A) inter B)$]
        #solution()[
          $P(overline(A) inter B) = P(B) - P(A inter B)$

          $display(P(overline(A) inter B) = 0","7 - 0","28 = 0","42)$
        ]
      ],
      [#subquestion()[$P(overline(A) inter overline(B))$]
        #solution()[
          $P(overline(A) inter overline(B)) = P(overline(A union B)) = 1 - P(A union B)$

          $display(P(overline(A) inter overline(B)) = 1 - 0","82 = 0","18)$
        ]
      ]
    )
  ],
  [
    #question()[Sean $B_1, B_2, B_3$ una partición del espacio muestral tal que:
      - $P(B_1)=0.2$
      - $P(B_2)=0.5$
      - $P(B_3)=0.3$
      - $P(A | B_1)=0.6$
      - $P(A | B_2)=0.3$
      - $P(A | B_3)=0.4$
      calcula:
      $P(A)$
    ]
    #questions-columns(
      [
        #subquestion()[$P(A)$]
        #solution()[
          Utilizando la fórmula de la probabilidad total:

          $display(P(A) = P(B_1) dot P(A | B_1) + P(B_2) dot P(A | B_2) + P(B_3) dot P(A | B_3))$

          $display(P(A) = 0","2 dot 0","6 + 0","5 dot 0","3 + 0","3 dot 0","4 = 0","42)$
        ]
      ],
      [
        #subquestion()[$P(B_1 | A)$]
        #solution()[
          Utilizando la formula de Bayes:

          $display(P(B_1 | A) = (P(A | B_1) dot P(B_1))/P(A))$

          $display(P(B_1 | A) = (0","6 dot 0","2)/(0","42) = 0","286)$
        ]
      ]
    )
  ],
  [
    #question()[*Año 2025 - Ordinaria - Bloque 4* 
    Sabiendo que: $display(P(overline(L)) = 11/20)$, $display(P(A|B) - P(B|A) = 1/24)$ y \ $display(P(A inter overline(B)) = 3/10)$, se pide: ]
    #questions-columns(
      [
        #subquestion()[$P(A inter B)$]
        #solution()[
          Si $display(P(overline(A)) = 11/20 => P(A) = 1 - 11/20 = 9/20)$

          $display(P(A inter overline(B)) = P(A) - P(A inter B) => \
          P(A inter B) = P(A) - P(A inter overline(B)) = 9/20 - 3/10 = 9/20 - 6/20 = 3/20 )$
        ]
      ],
      [
        #subquestion()[$P(B)$]
        #solution()[
          $display(P(A|B) - P(B|A) = (P(A inter B))/(P(B)) - (P(A inter B))/(P(A)) => \
          P(B) = P(A inter B)/(P(A|B) - P(B|A) + (P(A inter B))/(P(A))) = (3/20)/(1/24 + (3/20)/(9/20)) =  (3/20)/(1/24 + 5/3) = (3/20)/(1/24 + 3/9) = (3/20)/(3/8) = 8/20 = 2/5)
          $
        ]
      ],
      [
        #subquestion()[Calcular $P(C)$, siendo $C$ otro suceso del espacio muestral, independiente de $A$ y que verifica que $P(A inter C) = 14/25$]
        #solution()[
          Si $A$ y $C$ son independientes, entonces $P(A inter C) = P(A) dot P(C)$

          $display(P(A union C) = P(A) + P(C) - P(A inter C) = P(A) + P(C) - P(A) dot P(C) => \
          P(A union C) -P(A) = P(C) - P(A) dot P(C) => \
          P(A union C) -P(A) = P(C)(1 - P(A)) => \
          P(C) = (P(A union C) - P(A))/(1 - P(A)) = 
          (14/25 - 9/20)/(1 - 9/20) = (56/100 - 45/100)/(11/20) = (11/100)/(11/20) = 1/5)
          $
        ]
      ])
  ],
  [
    #question()[*Año 2025 - Ordinaria - Bloque 4* Sea $E = {2, 3, 5, 7, 11, 13, 17, 19}$ un espacio muestral y $P$ una medida de probabilidad en $E$ definida por: $display(P(7) = P(3) = 1/4)$ y con el resto de sucesos elementales equiprobables.

    Se consideran los sucesos $A = {7, 11, 13, 19}$, $B = {2, 5, 7, 13, 17}$ y $C = {3, 5, 7, 11, 13}$.
    Se pide calcula:
    ]
    #questions-columns(
      [
        #subquestion()[$P(overline(A\\C) inter B)$]
        #solution()[
          Para calcular $P(overline(A\\C) inter B)$, primero calculamos $A\\C$:

          $A\\C = A - (A inter C) = {7, 11, 13, 19} - {7, 11, 13} = {19}$

          Luego, $overline(A\\C) = E - A\\C = {2, 3, 5, 7, 11, 13, 17, 19} - {19} = {2, 3, 5, 7, 11, 13, 17}$

          Finalmente, $overline(A\\C) inter B = {2, 3, 5, 7, 11, 13, 17} inter {2, 5, 7, 13, 17} = {2, 5, 7, 13, 17}$

          Ahora calculamos la probabilidad de este suceso:

          $P(overline(A\\C) inter B) = P(2) + P(5) + P(7) + P(13) + P(17)$

          La probabilidad de todos los sucesos del espacio muestral ha de ser 1. Sabemos que $P(7) = P(3) = 1/4$, y el resto de sucesos elementales son equiprobables. Como hay un total de $8$ sucesos elementales en el espacio muestral y ya conocemos la probabilidad de dos de ellos (3 y 7), los otros seis sucesos elementales tienen una probabilidad de $display((1 - P(3) - P(7))/6 = (1 - 1/4 - 1/4)/6 = (1/2)/6 = 1/12)$.

          Por lo tanto:

          $P(overline(A\\C) inter B) = P(2) + P(5) + P(7) + P(13) + P(17)$
          
          $display(P(overline(A\\C) inter B) = 1/12 + 1/12 + 1/4 + 1/12 + 1/12)$

          $display(P(overline(A\\C) inter B) = 4/12 + 1/4 = 1/3 + 1/4 = 4/12 + 3/12 = 7/12)$
        ]
      ],
      [
        #subquestion()[$P(A inter B) | overline(C))$]
        #solution()[
          Para calcular $P(A inter B) | overline(C))$, primero calculamos $A inter B$:

          $A inter B = {7, 11, 13, 19} inter {2, 5, 7, 13, 17} = {7, 13}$

          $overline(C) = E \\ C = {2, 3, 5, 7, 11, 13, 17, 19} \\ {3, 5, 7, 11, 13} = {2, 17, 19}$

          $(A inter B) inter overline(C) = {7, 13} inter {2, 17, 19} = emptyset$

          Por lo tanto:

          $display(P(A inter B | overline(C)) = 
          P((A inter B) inter overline(C))/P(overline(C))= 
          P(emptyset)/P(overline(C)) = 0/(3/12) = 0)
          $
          
        ]
      ])
  ]
)

