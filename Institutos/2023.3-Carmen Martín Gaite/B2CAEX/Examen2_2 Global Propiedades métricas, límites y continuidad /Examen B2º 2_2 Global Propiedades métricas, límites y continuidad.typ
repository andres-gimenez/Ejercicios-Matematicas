#import "./g-exam.typ": g-exam, g-question, g-subquestion, g-explanation

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
)

#set heading(numbering: "A.1")
#show heading: it => [
  #set align(center)
  // #set text(font: "Inria Serif")
  // #emph(it.body)
  #it.body
  #counter(heading).display() 
]

#set text(lang:"es")

// #show: g-exam.with(
//   author: (
//     name: "Andrés Jorge Giménez Muñoz", 
//     email: "agimenezmunoz@educa.madrid.com", 
//     // watermark: "Profesor: andres",
//   ),
//   school: (
//     name: "IES Carmen Martín Gaite",
//     logo: "logo-ies_carmen.jpeg",
//   ),
//   exam-info: (
//     academic-period: "Curso 2023/2024",
//     academic-level: "2º Bachillerato",
//     academic-subject: "Matemáticas II",
//     number: "2º Evaluación ",
//     content: "Examen global",
//     model: "Modelo A"
//   ),
  
//   languaje: "es",
//   decimal-separator: ",",
//   date: "November 21, 2023",
//   show-studen-data: false,
//   show-grade-table: false,
//   question-point-position: left,
// )

    #table(
      columns: (auto, 1fr, 80pt),
      // rows: (100pt),
      image("logo-ies_carmen.jpeg", height:2.5cm, fit: "contain"),
      [
        #align(center + top)[
          *IES Carmen Martín Gaite*

          Examen Global - 2º Evaluación (Modelo B)

          Curso *2023-2024*
        ]
        MATERIA: *MATEMÁTICAS II*
      ],
      [],
    )

#rect(
  width:100%,
  [
     #align(center)[*INSTRUCCIONES GENERALES Y CALIFICACION*]

    Despues de leer atentamente el examen, responda razonadamente las #underline[cuatro] preguntas de una de las opciones A o B. Todas las respuestas deberan estar debidamente justificadas.

    *CALIFICACION:* Cada pregunta se calificara sobre 2,5 puntos.
    
    *TIEMPO:* 90 minutos.
  ]
)

#rect(
  width: 100%,
  // height: 1pt,
  outset: 0pt,
  inset: 15pt,
  [
= Opción

*A.1  Calificación máxima:* 2,5 puntos.

  #h(6pt) Dados los planos:
  #h(14pt) #grid(columns:(60pt, 1fr, 20pt, 1fr, 60pt),
    [],
    [ #align(horizon, $ pi eq.triple 2x-3y+z=0 $ )],
    [],
    [ #align(horizon, $ pi prime eq.triple cases( delim: "{",
                &x &= 2+t+s,
                &y &= t-s,
                &z &=2+2t+s
              )  $ )],
    []
    )
  
  #h(14pt) a) (1,5 puntos) Halla la ecuación de la recta que pasa por el punto $A(2, -3, 0)$ y es paralela a la recta que es intersección de los planos $pi$ y $pi prime$.

  #h(14pt) b) (1 punto) Calcula el angulo que forman los planos $pi$ y $pi prime$.

*A.2  Calificación máxima:* 2,5 puntos.
 
    #h(6pt) Calcula el valor de los siguientes límites:
    
    // #g-subquestion(point: 1)[$display(limits("lím")_(x->1^(+))((1+ln x)/(x-1))^(1/(ln x)))$]
    #h(14pt) a) (0,5 puntos) $display(limits("lím")_(x->- infinity)(x)/sqrt(x^2+1))$ // =7/5
 
    // #g-subquestion(point: 1.5)[$display(limits("lím")_(x->0)(1 + "sen"(x))^(1/x))$ ] // = e
    \
    #h(14pt) b) (1 punto) $display(limits("lím")_(x->+ infinity)sqrt(x^2-5x+6) - x)$  // = -5/2
    \ \
    // #g-subquestion(point: 1.5)[$display(limits("lím")_(x->0)((1+tg x) / (1 + "sen" x))^(1/"sen" x))$ ] // = 1

    #h(14pt) c) (1 punto) $display(limits("lím")_(x->+ infinity)(2x+1)^(1/x))$


*A.3  Calificación máxima:* 2,5 puntos.
    
  Dados los puntos $P(-3,1,2)$ y $Q(-1,0,1)$ y el plano $pi$ de ecuación $x+2y-3z=4$, se pide:

  #h(14pt) a) (1 punto) Hallar la proyección de $Q$ sobre $pi$.

  #h(14pt) b) (0,5 puntos) Escribe la ecuación del plano paralelo a $pi$ que pasa por el punto $P$.

  #h(14pt) c) (1 punto) Escribe la ecuación del plano perpendicular a $pi$ que contiene a los puntos $P$ y $Q$.

*A.4  Calificación máxima:* 2,5 puntos.
    
    #h(14pt) a) (1,5 puntos) Estudia la continuidad de la función $f(x)=ln(x+1)- 2x +3$ en #underline[todo] el intervalo $[0, 3]$.

    #h(14pt) b) (0,25 puntos) Enuncia el Teorema de Bolzano.

    #h(14pt) c) (0,75 puntos) Demuestra que la ecuación $ln(x+1) = 2x - 3$ tiene al menos una solución en el intervalo $(0,3)$.
])

#pagebreak()

#rect(
  width: 100%,
  // height: 1pt,
  outset: 0pt,
  inset: 15pt,
  [
= Opción
*B.1  Calificación máxima:* 2,5 puntos.
  
  #h(6pt)Dadas las rectas:
    #h(14pt) #grid(columns:(60pt, 1fr, 20pt, 1fr, 60pt),
    [],
    [ #align(horizon, $ r eq.triple (x+2)/(-1)=(y-1)/3=(z-3)/(-4) $ )],
    [],
    [ #align(horizon, $ s eq.triple cases( delim: "{",
                &x &= 2+3t,
                &y &= t,
                &z &=-1-t
              ) $ )],
    []
    )

    #h(14pt) a) (1.5 puntos) Determina la ecuación del plano que pasa por el punto $P(-2,-3,2)$ y es paralelo a las rectas $r$ y $s$.
    
    #h(14pt) b) (1 punto) Calcula el angulo que forman las rectas $r$ y $s$

*B.2  Calificación máxima:* 2,5 puntos.
  
    #h(6pt) Calcula el valor de los siguientes límites:
    // #g-subquestion(point: 1)[$display(limits("lím")_(x->1^(+))((1+ln x)/(x-1))^(1/(ln x)))$]

    #h(14pt) a) (1 punto) $display(limits("lím")(x->2)(x^3-x^2-x-2)/(x^2+x-6))$ // =7/5

    #h(14pt) b) (1,5 puntos) $display(limits("lím")_(x->+ infinity)((3x^3+x-1)/(3x^3-1))^(3x^2))$ // = e

    // #h(14pt) c) (1,5 puntos) $display(limits("lím")_(x->+ infinity)(x-sqrt(x^2-6x)))$ // = 3

*B.3  Calificación máxima:* 2,5 puntos.
    #h(14pt) #grid(columns:(120pt, 60pt, 100pt, 20pt),
    align(horizon,[Dadas las rectas:]),
    [ #align(horizon, $ r eq.triple cases( delim: "{",
                &x-y &= 2,
                &3x-z &=-1,
               
              ) $ )],
    [],
    [ #align(horizon, $ s eq.triple cases( delim: "{",
                &x &=-1 + 2λ,
                &y &=-4-λ,
                &z &=λ
              ) $ )],
    ) 
    Se pide :

    #h(14pt) a) (1 punto) Calcular la posición relativa de las rectas $r$ y $s$.

    #h(14pt) b) (0,5 punto) Hallar la ecuación del plano perpendicular a la recta $r$ y que pase por el punto $P(2, -1, 5)$.

    #h(14pt) c) (1 punto) Encontrar la ecuación del plano paralelo a la recta $r$ que contiene a la rescta $s$.


*B.4 Calificación máxima:* 2,5 puntos.
    
    #h(14pt) a) (1,5 puntos) Estudia la continuidad de la función en #underline[todo] el intervalo $[-2, 3]$
    $ f(x) = cases( delim: "{",
                &x^3 + x + 2 &"si" &x <= 1,
                &2x^2 + 2 &"si" &x> 1
              ) $ 
    
    #h(14pt) b) (0,25 puntos) Enuncia el Teorema de Bolzano.

    #h(14pt) c) (0,75 puntos) Demuestra que $exists c in (-2, 3)$ tal que $f(c)=0$
])