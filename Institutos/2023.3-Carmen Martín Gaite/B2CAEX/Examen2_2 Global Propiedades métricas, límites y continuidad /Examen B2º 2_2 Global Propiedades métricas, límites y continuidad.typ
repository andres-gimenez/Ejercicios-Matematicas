#import "@preview/cetz:0.2.0"
#import "./g-exam.typ": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    // watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Carmen Martín Gaite",
    logo: "logo-ies_carmen.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: "2º Evaluación ",
    content: "Examen global",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: false,
  show-grade-table: false,
  question-point-position: left,
//   clarifications: (
//  [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
//     [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
//     [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
//     [Se ha de llegar a la solución más reducida posible.],
//     [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
//     La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
//     [No está permitido compartir material, durante la prueba.],
//   )
)

= Opcion A
 #g-question(point: 2.5)[Halla la ecuación de la recta que pasa por el punto $A(2, -3, 0)$ y es paralela a la recta que es intersección de los planos:
  #align(top + center, columns(2, 
    [$ pi eq.triple 2x-3y+z=0 $
    #colbreak()
    $ pi prime eq.triple cases( delim: "{",
                &x &= 2+t+s,
                &y &= t-s,
                &z &=2+2t+s
              ) $ ]
    ))
 ]

  #g-question(point: 2.5)[Calcula el valor de los siguientes limites:
    // #g-subquestion(point: 1)[$display(lim_(x->1^(+))((1+ln x)/(x-1))^(1/(ln x)))$]

    #g-subquestion(point: 1)[$display(lim_(x->2)(x^3-x^2-x-2)/(x^2+x-6))$] // =7/5

    #g-subquestion(point: 1.5)[$display(lim_(x->+ infinity)((3x^3+x-1)/(3x^3-1))^(3x^2))$ ] // = e
  ]

 #g-question(point: 2.5)[
    #g-subquestion(point: 1.25)[
      Halla la recta que pasa por $A=(2,-2,1)$ y es perpendicular al plano $pi$:
      $ pi prime eq.triple cases( delim: "{",
                &x &= 1 -λ + μ,
                &y &= -3 + λ,
                &z &= 3μ
              ) $ ]
    #g-subquestion(point: 1.25)[Calcular la distancia de ese plano $pi$ al punto $A$. ]
 ]

 #g-question(point: 2.5)[
    #g-subquestion(point: 1.5)[Estudia la continuidad de la función en #underline[todo] el intervalo $[0, 3]$
    $ f(x) = cases( delim: "{",
                &x^3 + x - 2 &"si" &x <= 1,
                &2x^2 - 2 &"si" &x> 1
              ) $ 
    ]
    
    #g-subquestion(point: 0.25)[Enuncia el Teorema de Bolzano]
    #g-subquestion(point: 0.75)[Demuestra que $exists x in (0, 3)$ tal que $f(c)=0$]
 ]

#pagebreak()

= Opcion B
#g-question(point: 2.5)[Determina la ecuación del plano que pasa por el punto $P(-2,-3,2)$ y es paralelo a las rectas:
  #align(top + center, columns(2, 
    [$ r eq.triple (x+2)/(-1)=(y-1)/3=(z-3)/(-4)$
    #colbreak()
    $ s eq.triple cases( delim: "{",
                &x &= 2+3t,
                &y &= t,
                &y &=-1-t
              ) $ ]
    ))
 ]

 #g-question(point: 2.5)[Calcula el valor de los siguientes límites:
    \
    // #g-subquestion(point: 1)[$display(lim_(x->1^(+))((1+ln x)/(x-1))^(1/(ln x)))$]
    #g-subquestion(point: 1)[$display(lim_(x->- infinity)(x)/sqrt(x^2+1))$] // =7/5
 
    // #g-subquestion(point: 1.5)[$display(lim_(x->0)(1 + "sen"(x))^(1/x))$ ] // = e
    #g-subquestion(point: 1.5)[$display(lim_(x->+ infinity)(sqrt(x^2-5x+6) - x))$ ] // = -5/2

    // #g-subquestion(point: 1.5)[$display(lim_(x->0)((1+tg x) / (1 + "sen" x))^(1/"sen" x))$ ] // = 1
  ]

   #g-question(point: 2.5)[
    #g-subquestion(point: 1.25)[
      Hallar el plano paralelo a la recta $r$ que contiene a la recta $s$, siendo:
       #align(top + center, columns(2, 
        [\ $ r eq.triple x-1 = (y+2)/2 = z $
        #colbreak()
        $ s prime eq.triple cases( delim: "{",
                    &x &= -2 + 2λ,
                    &y &= 1 - λ,
                    &y &= 3λ
                  ) $ ]
        ))
    ]
    #g-subquestion(point: 1.25)[Calcular la distancia de dicho plano a la recta $r$.
    ]
 ]

 #g-question(point: 2.5)[
    #g-subquestion(point: 1.5)[Estudia la continuidad de la función $f(x)="sen"(x)-x^2+1$ en #underline[todo] el intervalo $[0, 2]$]
    #g-subquestion(point: 0.25)[Enuncia el Teorema de Bolzano]
    #g-subquestion(point: 0.75)[Demuestra que la ecuación $"sen"(x) = x^2 - 1$ tiene almenos una solución en el intervalo $[0,2]$]
 ]