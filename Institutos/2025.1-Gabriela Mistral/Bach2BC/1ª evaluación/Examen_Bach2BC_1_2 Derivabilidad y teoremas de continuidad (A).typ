#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 2º parcial",
    content: "Derivabilidad y teoremas de continuidad",
    model: [Modelo $A$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 9),
  // show-student-data: "odd-pages",
  show-student-data: false,
  show-grade-table: false,
  show-solutions: true,
  // draft: true,
  // question-points-position: right,
  question-points-position: none,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  // clarifications: (
  //   [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
  //   [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
  //   [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
  //   [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.]
  // )
)
// #set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Calcula la derivada de las siguientes funciones.]
    #questions-columns(max-columns: 1,
      [
      #subquestion(points:1.5)[$display(f(x) = ("sen"(x))^"cos"(x))$]
      #solution()[
        $ f(x) = ("sen"(x))^"cos"(x)) => \ 
          ln (f(x)) = ln ("sen"(x))^"cos"(x)) => \
          ln(f(x)) = "cos"(x) dot ln("sen"(x))) => \
          (f'(x))/(f(x)) =  ("cos"(x))' dot ln("sen"(x)) + "cos"(x) dot (ln("sen"(x)))') => \
          (f'(x))/(f(x)) =  -"sen"(x) dot ln("sen"(x)) + 1/"sen"(x) dot cos(x) => \
          f'(x) = f(x) (cos(x) / "sen"(x) - "sen"(x) dot ln(x)) => \
          f'(x) = ("sen"(x))^"cos"(x)) (cos(x) / "sen"(x) - "sen"(x) dot ln(x)) => \
          #result($ f'(x) = ("sen"(x))^"cos"(x)) ("cotg"(x) - "sen"(x) dot ln(x)) $) $
        ]
      ],
      [
        #subquestion(points:1)[$display(f(x) = arctan(sqrt(x-7)))$]
        #solution()[
          $ f'(x) = 1/(1+ sqrt(x-7)^2) dot (sqrt(x-7)))' = 
            1/(1+ sqrt(x-7)^2) dot 1/(2sqrt(x-7)) dot (x-7)' = \
             1/(1+x-7) dot 1/(2sqrt(x-7)) dot 1 = 
             #result($ 1/(2 (x-6) sqrt(x-7)) $) $
        ]
      ],
      [
      #subquestion(points:1)[$display(f(x) = (x+5) sqrt(x^2-2))$]
      #solution()[
          $ f'(x) = (x+5)' sqrt(x^2-2) + (x+5) (sqrt(x^2-2))' = \ 
          1 dot sqrt(x^2-2) + (x+5) dot 1/(2 sqrt(x^2-2)) dot (x^2-2)' = \
          sqrt(x^2-2) + (x+5) dot 1/(2 sqrt(x^2-2)) dot (2x) = \
          sqrt(x^2-2) + ((x+5)2x)/(2 sqrt(x^2-2)) = \
          (sqrt(x^2-2) sqrt(x^2-2)) / sqrt(x^2-2) + (x^2+5x)/(sqrt(x^2-2)) = \
          (x^2-2) / sqrt(x^2-2) + (x^2+5x)/(sqrt(x^2-2)) = \
          #result($ (2x^2+5x - 2) / sqrt(x^2-2) $) $ 
        ]
      ],
      [
      #subquestion(points:0.5)[$display(f(x) = "sen"^2(x)+"cos"^2(x))$]
      #solution()[
        (1ª forma)$ f(x) = "sen"^2(x)+"cos"^2(x) = 1 => f'(x)  = 0 $
        (2ª forma) $ f'(x) = 2"cos"(x) "sen"(x) + 2 (-"sen"(x)) cos(x) = 2 cos(x) "sen"(x) - 2 cos(x) "sen"(x) = 0 $
      ]
      ],
      //  [
      // #subquestion(points:1.5)[$display(f(x) = sqrt(x^2+1) / ln(x+1))$]
      // ]
    )
  ],
  [
    #question(points:1.5)[Estudia la continuidad y derivabilidad de las siguientes funciones en todo $RR$.
      
      $display(f(x) = cases(reverse: #false, delim: "{", gap: #0.5em,
                & x^2  &"si" & x < 0 ,
                & "ln"(1+x)  &"si" & 0 <= x <= 1,
                & sqrt(x) + "ln" 2 - 1 & "si" & x > 1,
                ))$]
      #solution()[      
        En $(-oo, 0)$ es continua y derivable por estar definida con un polinomio.

        En $(0, 1)$ es continua y derivable ya que si $x in (0,1)$,  $1-x > 0$ luego $ln$ está bien definido y es continua y derivable. (_$ln(x)$ es continua y derivable si $x>0$_)
        
        En $(1, oo)$ es continua ya que $sqrt(x)$ es continua y derivable si $x > 1$. (_$sqrt(x)$ es continua y derivable si $x>=0$ pero en esta caso solo nos interesa si $x>1$ _)

        Estudia su *continuidad* y *derivabilidad* en los puntos de empalme $x = 0$ y $x = 1$.

        *Continuidad en $x=0$*:
        
        $display(cases(reverse: #true, delim: "{", gap: #0.5em,        
          limits("lím")_(x -> 0^-) f(x) = limits("lím")_(x -> 0^-) x^2 = 0, 
          limits("lím")_(x -> 0^+) f(x) = limits("lím")_(x -> 0^+) ln(1+x) = ln(1 + 0) = 0,
          f(0) = ln(1 + 0) = 0
        ))$ $=>$ La función es *continua* en $x = 0$.

        *Derivabilidad en $x=0$*:

        $display(f'(x) = cases(
          2x & "si" & x < 0,
          1 / (1 + x) & "si" & 0 < x < 1
        )
        )$

        $display(f'(x) = cases(
          f'(0^-) = 0,
          f'(0^+) = 1
        ))$ $=>$ Como $f'(0^-) ≠ f'(0^+)$, *no es derivable* en $x = 0$.

        *Continuidad en $x=1$*:

        $display(cases(reverse: #true, delim: "{", gap: #0.5em,        
          limits("lím")_(x -> 1^-) f(x) = limits("lím")_(x -> 1^-) ln(1+x) = ln(1+1) = ln(2), 
          limits("lím")_(x -> 1^+) f(x) = limits("lím")_(x -> 1^-) sqrt(x)-ln(2) - 1 = sqrt(1)-ln(2) - 1=ln(2),
          f(1) = ln(1 + 1) = ln(2)
        ))$ $=>$ #text(size:10pt)[La función es *continua* en $x = 1$.]

        *Derivabilidad en $x=1$*:

        $display(f'(x) =
        cases(
          1 / (1 + x) & "si" & 0 < x < 1,
          1 / (2 sqrt(x)) & "si" & x > 1)
        )$

        $display(f'(1) = cases(reverse: #false, delim: "{", gap: #0.5em,
          f'(1^-) = 1/(1+1) = 1/2,
          f'(1^+) = 1/(2 sqrt(1)) =1/2
        ))$ $=>$ Como $f'(1^-) = f'(1^+)$, *es derivable* en $x = 1$.

        *Luego podemos concluir*:

        - Continua en $x = 0$ y $x = 1$.
        - No derivable en $x = 0$.
        - Derivable en $x = 1$.
      ]
  ],
  [
    #question(points: 1.5)[Determina $a$ y $b$ para la función sea continua y derivable en $x=pi/4$
    
    $display(f(x) = display(cases(reverse: #false, delim: "{",
                    a "cos"(x)  & "si" & x <= pi/4,
                    -x  + b     & "si" & x > pi/4,
                  )))$ 
    ]
    #solution()[
      Para que sea continua en $x=pi/4$ los limites 

      $display(limits("lím")_(x->(pi/4)^-) (a cos(pi/4)) = a (sqrt(2) / 2))$

      $display(limits("lím")_(x->(pi/4)^+) (-x+b) = -pi/4 + b)$

      han de coincidir:

      $display(a (sqrt(2) / 2) = -pi/4 + b) $

      Para que sea derivable en $x=pi/4$, las derivadas laterales han de coincidir

      $display(f'(x) = cases(reverse: #false, delim: "{",
            -a "sen"(x) & "si" & x < pi/4,
            -1 & "si" & x > pi/4
          ))$

      $display(f'(pi/4) =cases(reverse: #false, delim: "{",
            -a "sen"(pi/4) & "si" & x < pi/4,
            -1 & "si" & x > pi/4
          )
      )$

      $display(-a "sen"(pi/4) = -1) => a sqrt(2) / 2 = 1 => a = sqrt(2) $

      Sustituyendo en la primera ecuación:

      $display(a (sqrt(2) / 2) = -pi/4 + b => sqrt(2) (sqrt(2) / 2) = -pi/4 + b => 1 = -pi/4 + b => b = 1+ pi/4 )$

      Por tanto: $display(f(x) = display(cases(reverse: #false, delim: "{",
                    sqrt(2) "cos"(x)  & "si" & x <= pi/4,
                    -x  + 1 + pi/4     & "si" & x > pi/4,
                  )))$ es continua y derivable en $pi/4$.
    ]
 ])
  #pagebreak()
  #questions-pages(
  [
    #question()[Sea la función $f(x)=ln(x+2)- x^8 + 5$:]
    #questions-columns(max-columns: 1,
    [
      #subquestion(points:1)[
        Estudia la continuidad de la función $f(x)$ en #underline[todo] el intervalo $[-1, 2]$]
      #solution()[
        Para que la función sea continua ha de ser continua en $(a, b)$ y además los limites laterales $limits("lím")_(x->a^+) = f(a)$ y $limits("lím")_(x->b^-) = f(b)$

      $display(cases(reverse: #true, delim: "{",
            ln(x+2) "es continua para" x > -2,
            x^2 - 5 "es continua en" RR.
          )) => f(x)  "es continua en" (-1, 2) $

      *Continua por la derecha en $x = -1$*

      $limits("lím")_(x->-1^+) f(x) = limits("lím")_(x->-1^+) (ln(-1+2)- x^8 + 5) = ln(1) - (-1)^8 + 5 = 0 -3^8 + 5 = -1 + 5 = 4$

      $f(3) = ln(-1+2)- (-1)^8 + 5 = ln(1) - (-1)^8 + 5 = 0 - 1 + 5 = 4$ 

      $limits("lím")_(x->3^+) f(x) = f(3) =>$ es continua por la derecha en $x=3$

      *Continua por la derecha en $x = 2$*

      $limits("lím")_(x->2^+) f(x) = limits("lím")_(x->2^+) (ln(2+2)- 2^8 + 5) = ln(4) - 2^8 + 5$

      $f(2) = ln(2+2)- 2^8 + 5 = ln(4) - 2^8 + 5$ 

      #clarification()[No hace falta aproximar el valor de $ln(4) - 2^8 + 5$, solo hay que demostrar que los valores son iguales.]

      $limits("lím")_(x->5^+) f(x) = f(5) =>$ es continua por la derecha en $x=2$

      $display(cases(reverse: #true, delim: "{",
            f(x) "es continua en" (-1,2),
            f(x) "es continua por la derecha en" x=-1,
            f(x) "es continua por la izquierda en" x=2.
          )) => f(x)  "es continua en" [-1, 2] $
      ]
    ],[
      #subquestion(points:0.5)[Enuncia el Teorema de Bolzano.]
        #solution()[
        _Se puede enunciar de muchas maneras, aunque son todas muy similares:_
    
        + *Sea una función real $f(x)$ continua en un intervalo cerrado $[a, b]$
        con $"sig"(f(a)) != "sig"(f(b)) => $ entonces existe al menos un punto $c in (a, b)$ tal que $f(c) = 0.$*

        + *Sea una función real $f(x) in C[a,b]$  con $f(a) dot f(b) < 0 =>  exists c in (a, b)$ tal que $f(c) = 0.$*


        _Forma intuitiva (no queda bien en un examen):_

        Es decir, si la función es continua y toma valores de signos opuestos en los extremos del intervalo, entonces debe cortar al menos una vez el eje $x$ dentro del intervalo.
      ]
    ],[
      #subquestion(points:1.5)[Demuestra que la ecuación $ln(x+2) = x^8 - 5$ tiene al menos una solución en el intervalo $(-1,2)$.]
      #solution()[
        Sea la función $f(x) = ln(x+2) - x^8 + 5$

        $f(-1) = ln(-1+2) - (-1)^8 + 5 = ln(1) - 3^8 + 5 = 0 -1 + 5 = 4 > 0$
        $f(2) = ln(2+2) - 2^8 + 5 = ln(4) - 2^8 + 5 < 0 "porque" 2^8 > ln(4) + 5$

        Luego $f(x)$ es continua en $[-1,2]$ porque lo hemos demostrado en el apartado (a), $"sig"(f(-1)) > 0$,  $"sig"(f(2)) < 0$, como cumple las hipótesis del teorema de Bolzano, podemos concluir que $exists c in (-1, 2)$ tal que $f(c) = 0$ 
        
        Luego $exists c in (-1,2)$ donde 
        $ ln(c+2) - c^8 + 5 => ln(c+2) = c^8 - 5 $ luego $exists$ solución al menos una solución en $(-1, 2)$
      ]
    ])
  ],
)

// #g-question(point: 2)[Determina el valor de $a$ que la siguien función sea continua \
//   #align(center, [
//     $f(x) = display(cases( delim: "{",
//                 |-1 +2x|  & #h(10pt) &"si" & #h(10pt) & x < 3,
//                 a^x - 3   &          &"si" &          & x >= 3
//               ))$
//    ]
//   ) 
//   // ¿La función que resulta, es derivable en $x=3$?
// ]


// #g-question(point: 2)[Determina $a$ para que sea continua la función \
//   #align(center, [
//     $f(x) = display(cases( delim: "{",
//                 x^2 + 1 & #h(10pt) &"si" & #h(10pt) &     &x <= 0,
//                 x + a^2 &          &"si" &          & 0 < &x < 2,
//                 a x +1  &          &"si" &          &     &x >= 2
//               ))$, 
//    ]
//   ) 
//   // ¿La función que resulta, es derivable en $x=3$?
// ]



