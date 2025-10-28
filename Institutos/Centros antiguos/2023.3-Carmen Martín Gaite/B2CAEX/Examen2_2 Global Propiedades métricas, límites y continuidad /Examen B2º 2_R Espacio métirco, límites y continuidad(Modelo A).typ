#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Carmen Martín Gaite",
    logo: read("./logo-ies_carmen.jpeg", encoding: none)
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: "2º Evaluación recuperación",
    content: "Espacios métricos, límites y continuidad",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "March 3, 2024",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  // clarifications: (
  //   [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
  //   [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
  //   La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
  //   [No está permitido compartir material, durante la prueba.],
  // )
)

#g-question[Calcula el valor de los siguientes límites:
  // #g-subquestion(point: 1)[$display(limits("lím")_(x->infinity) (x^2+3x-10)/(2x^2-2x-4))$]
  // #v(5pt)
  // #g-subquestion(point: 1)[$display(limits("lím")_(x->2) (x^2+3x-10)/(2x^2-2x-4))$]
  // #v(5pt)
  #g-subquestion(point: 1)[$display(limits("lím")_(x->3) (sqrt(x+1) - 2)/(x-3))$]
  #v(5pt)
  // #g-subquestion(point: 1.5)[$display(limits("lím")_(x->1) ((2x+1)/(x+2))^(1/x-1))$]
  // #v(5pt)

  #g-subquestion(point: 1.5)[$display(limits("lím")_(x->infinity) (1 + 2 / (x+3) )^(x+2))$]
  #v(5pt)


  #g-subquestion(point: 1)[$display(limits("lím")_(x->infinity) (sqrt(x-2) - x))$]
  #v(5pt)
  // #g-subquestion(point: 1)[$display(limits("lím")_(x->infinity) (sqrt(x+3) - sqrt(x+2)))$]
  // #v(5pt)
  // Selectividad Junio del 89 (Obligatoria)
  // #g-subquestion(point: 1)[$display(limits("lím")_(x->1) (1/(1-x)- 3/(1-x^3)))$]
]

// #g-question[Indica en que valores de $x$ no son continuas las siguientes funciones:

//   #g-subquestion(point: 0.5)[$display(f(x) = (2x+1)/(x+2))$]

//   #g-subquestion(point: 0.5)[$display(f(x) = sqrt(x^2-4))$]

//   #g-subquestion(point: 0.5)[$display(f(x) = sqrt((x^2+1)/x))$]
// ]

#g-question(point: 1)[Determina $a$ y $b$ para que sea continua la función \
  #align(center, [
    $f(x) = display(cases( delim: "{",
                x^2 + 2x - 1  & #h(10pt) &"si" & #h(10pt) &      &x < 0,
                a x + b       &          &"si" &          & 0 <= &x < 3,
                1             &          &"si" &          &      &x >= 3
              ))$ 
   ]
  ) 
  // ¿La función que resulta, es derivable en $x=3$?
]

#g-question(point: 1.5)[Determina $a$ y $b$ para que sea continua la función \
  #align(center, [
    $f(x) = display(cases( delim: "{",
                x^3 + 2x + 3        & #h(10pt) &"si" & #h(10pt) &      &x < 0,
                a dot "sen"(x) + b  &          &"si" &          & 0 <= &x <= pi,
                (x-pi)^2 + a        &          &"si" &          &      &x > pi
              ))$ 
   ]
  ) 
  // ¿La función que resulta, es derivable en $x=3$?
]

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


// Selectividad Septiembre-91
#g-question(point: 2)[Halla el plano que pasa por los puntos $A(0, 2, 0)$ y $B(1,0,1)$ y es perpendicular al plano $x-2y-z=7$].

// Selectividad Madrid Junio-91
#g-question(point: 2)[Dado el plano $pi eq.triple 2x-2y+z-3=0$, hallar un punto $P$ de la recta  \
  $r eq.triple display(cases( delim: "{",
                &x &=  &3 +  &λ,
                &y &= -&2 - 3&λ,
                &z &= -&1 +  &λ
              ))$, 
de manera que la distancia de $P$ al plano $pi$ sea 1].

// // Selectividad Madrid Junio-91 (optativa)
// #g-question[Se consideran las rectas
//   $r eq.triple display((x-3)/1=(y+4)/3), z=0$, 
//   $s eq.triple display(cases( delim: "{",
//                 &x &-y &    &+6 &= 0,
//                 &x &+y &-2z &   &= 1,
//               ))$ \
//   Hallar una recta perpendicular a $r$ y $s$ tal que contenga al punto $P(2, -1, 1)$.
// ]

// // Selectividad Madrid Junio-92 (optativa)
// #g-question[Dado el plano $pi: 2x-3y+z=0$ y la recta 
//   $r eq.triple display(cases( delim: "{",
//                 &x &=  &1 + &λ,
//                 &y &=  &2 - &λ,
//                 &z &= -&1 + 2&λ
//               ))$, 
//   hallar la ecuación del plano que contiene a la recta $r$ y es perpendicular al plano $pi$.
// ]

// // Selectividad Madrid Septiembre-92 (obligatoria)
// #g-question[Dadas las rectas
//   $r eq.triple display(cases( delim: "{",
//                 &x &= -&1 - λ,
//                 &y &=  &3 - λ,
//                 &z &=  &1 + λ
//               ))$ ;
//   $s eq.triple display((x-4)/2=(y-4)/4=(z-2)/1)$, 
  
//   Hallar una recta perpendicular a $r$ y $s$ tal que contenga al punto $P(2, -1, 1)$.
// ]

// // Selectividad Madrid Septiembre-92 (obligatoria)
// #g-question[Hallar la ecuación del plano parlelo a las rectas: \ 
//   #align(center, [
//     $r eq.triple display(cases( delim: "{",
//                   &x &= &2 + &λ,
//                   &y &= &3,
//                   &z &= &1 + 2&λ
//                 ))$ #h(1cm)
//     $s eq.triple display(cases( delim: "{",
//                   &x &= -&2 &- 3&λ,
//                   &y &=  &1 &+  &λ,
//                   &z &=  &  &-  &λ
//                 ))$ \ 
//     ]
//   )
//   y que contienen al punto $P(2, 3, 4)$.
// ]

// // Selectividad Madrid Septiembre-92 (optativa)
// // Dificil
// #g-question[Dados los puntos $P(1, 1, 1)$ y las recta \
// #align(center, [
//   $r eq.triple display(cases( delim: "{",
//                   &x &= &1 + &λ,
//                   &y &= &2 - &λ,
//                   &z &= &1 + 2&λ
//                 ))$ #h(1cm)
//   $s eq.triple display(cases( delim: "{",
//                   &x &= μ,
//                   &y &= 3μ,
//                   &z &= 2 - μ
//                 ))$
//       ]
//     )
//     calcular las ecuaciones parametricas de la recta que pasa por el punto $P$ y corta a $r$ y a $s$.
//   ]

