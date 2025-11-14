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
  show-student-data: "odd-pages",
  // show-student-data: true,
  show-grade-table: true,
  show-solutions: false,
  // draft: true,
  question-points-position: right,
  // question-points-position: none,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  clarifications: (
    [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
    [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
    [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.]
  )
)
// #set math.cases(reverse: true)

#questions-pages(
  [
  #question()[Calcula la derivada de las siguientes funciones.]

    #subquestion(points:1.5)[$display(f(x) = ("sen"(x))^"cos"(x))$]
    
    #subquestion(points:1)[$display(f(x) = arctan(sqrt(x-7)))$]

    #subquestion(points:1)[$display(f(x) = (x+5) sqrt(x^2-2))$]

    #subquestion(points:0.5)[$display(f(x) = "sen"^2(x)+"cos"^2(x))$]

    // #subquestion(points:1.5)[$display(f(x) = sqrt(x^2+1) / ln(x+1))$]
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
    #question()[Sea la función $f(x)=ln(x-2)- x^8 + 5$:]
    #subquestion(points:1)[
    Estudia la continuidad de la función $f(x)$ en #underline[todo] el intervalo $[3, 5]$]
    
    #subquestion(points:0.5)[Enuncia el Teorema de Bolzano.]

    #subquestion(points:1.5)[Demuestra que la ecuación $ln(x-2) = x^8 - 5$ tiene al menos una solución en el intervalo $(3,5)$.]
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



