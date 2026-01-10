#import "@local/g-exam:0.4.4": *
// #import "@preview/wrap-it:0.1.0": wrap-content

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
    number: [Continuidad 2],
    content: [Teoremas de Bolzano y del Valor Medio],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 22),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
[
  #question()[
    Demuestra que el polinomio $P(x) = x^3-4x+1$ tiene *al menos una raíz real* en el intervalo $[0, 2]$.]
  #solution()[
  + *Definimos la función:*

    $ f(x) = x^3 - 4x + 1 $

  + *Comprobamos que es continua* en $[0, 2]$.

    Es un polinomio, y todos los polinomios son continuos en $RR$.

  + *Evaluamos los extremos del intervalo:*

    $ f(0) = 0^3 - 4·0 + 1 = 1 $

    $ f(2) = 2^3 - 4·2 + 1 = 8 - 8 + 1 = 1 $

    No hay cambio de signo entre $0$ y $2$, así que probamos en un punto intermedio:

    $ f(1) = 1 - 4 + 1 = -2 $

  + *Buscamos un cambio de signo:*

    $ f(0) = 1 > 0 $  
    $ f(1) = -2 < 0 $

    Hay cambio de signo entre $x = 0$ y $x = 1$.

  + *Aplicamos el Teorema de Bolzano:*

    Como $f$ es continua en $[0, 1]$ y $f(0)·f(1) < 0$,  
    existe al menos un número $c ∈ (0, 1)$ tal que $ f(c) = 0 $.

  *Conclusión*

  La ecuación $x^3 - 4x + 1 = 0$ tiene al menos una raíz real en el intervalo   $[0, 2]$.
  ]
],
[#question()[
    Demuestra que la ecuación $e^x = 2$ 
    tiene al menos una raíz real en el intervalo $[0,1]$.]
  #solution()[
    + *Definimos la función:*

      $ f(x) = e^x - 2 $

    + *Comprobamos que es continua* en $[0,1]$.

    La función exponencial es continua en $RR$, por tanto $f$ es continua en $[0,1]$.

    + *Evaluamos los extremos del intervalo:*

      $ f(0) = e^0 - 2 = 1 - 2 = -1 $

      $ f(1) = e^1 - 2 = e - 2 tilde.eq.rev 0,718) $

    + *Buscamos un cambio de signo:*

      $ f(0) = -1 < 0 $  
      $ f(1) = e - 2 > 0 $

      Hay cambio de signo entre $x=0$ y $x=1$.

    + *Aplicamos el Teorema de Bolzano:*

      Como $f$ es continua en $[0,1]$ y $f(0) dot f(1) < 0$, existe al menos un $c in (0,1)$ tal que $f(c)=0$.

    *Conclusión*
    La función $f(x) = e^x-2$ tiene al menos una raíz real en el intervalo $(0,1)$. Luego $exists c in (0,1)$ tal que $e^c = 2 => exists c in (0,1)$ tal que $e^c = 2 $
    ],
  ],
  [
    #question()[Demuestra que la ecuación
        $x^3-x = "sen"(x)$
      tiene *exactamente una* solución real en el intervalo $[1,2]$.
    ]
    #solution()[
      *Definición de la función:*
      $f(x)=x^{3}-x-"sin"(x)$
      
      + *Continuidad:*
        $x^3$ y $x$ son polinomios y $"sen"(x)$ es continua en $RR$, por tanto $f$ es continua en $[1,2]$.

        
      + *Evaluación en los extremos del intervalo:*

        $ f(1)=1^3-1-"sen"(1) = 0- "sen"(1) approx -0,84147 < 0, $
    
        $ f(2)=2^3-2-"sen"(2) = 8 - 2 - "sen"(2) = 6- sin(2) approx  6-0{,}90930 approx 5{,}0907 > 0. $

        Como $f(1)<0$ y $f(2)>0$, existe un cambio de signo entre $1$ y $2$.

      + *Aplicación del Teorema de Bolzano (Teorema del valor intermedio):*

        Dado que $f$ es continua en $[1,2]$ y cambia de signo en los extremos, *existe al menos un* $c in (1,2)$ tal que $f(c)=0$.

      + *Unicidad de la raíz en $[1,2]$:*

        Consideramos la derivada
        $ f'(x)=3x^2-1- "cos"(x) $

        $forall x in [1,2]$ se cumple $"cos"(x) < 1$, por tanto
        
        $ f'(x) < 3x^2-1-1=3x^2-2 $
        Y para $x > 1$ se tiene $3x^2-2 > 3 dot 2-2 = 1 > 0$.
        Luego $f'(x)>0$ en $[1,2]$, esto es, $f$ es estrictamente creciente en $[1,2]$.

        Una función continua y estrictamente creciente no puede tener más de una raíz en un intervalo, por tanto la raíz garantizada por Bolzano es *única* en $[1,2]$.

      *Conclusión*

      La función $f(x) = x^3-x- "sen"(x)$ tiene exactamente una raíz real en el intervalo $(1,2)$ luego $x^3-x="sen"(x)$ tiene una solución en $(1,2)$.

     ]
  ],
  [
    #question()[Demuestra que la función
        $f(x) = x^2 - 2x + 3$
      alcanza un máximo y un mínimo en el intervalo $[0, 4]$.
    ]
    #solution()[
      - $f$ es un polinomio => continua en $[0,4]$.
      - Por Weierstrass, tiene máximo y mínimo.
      - Calculamos los extremos relativos:
        - $f'(x) = 2x - 2$.
          - $f'(x) = 0 => x = 1$.
      - Evaluamos
        - $f'(0) = 3, f(1)= 2, f(4)= 11$.
        => Mínimo absoluto: f(1) = 2 y Máximo absoluto: f(4)=11
    ]
  ],
  [
    #question()[Demuestra que la función $display(f(x) = x + 1/x)$
      alcanza su máximo y  mínimo en el intervalo $[1, 3]$.
    ]
    #solution()[
      - $f$ es continua en $[1,3]$ (suma de funciones continuas y no hay problemas con el dominio porque $ x != 0$).
      - Por Weierstrass, tiene máximo y mínimo.
      - Calculamos los extremos relativos:
        - $f'(x) = 1 - 1/x^2$.
          - $f'(x) = 0 => x = 1$.
      - Evaluamos
        - $f'(1) = 2, f(3)= 3 + 1/3 = 10/3 approx 3,33$.
        => Mínimo absoluto: f(1) = 2 y Máximo absoluto: f(3)=10/3
    ]
  ],
  [
    #question()[Demuestra que la función $display(f(x) = x^3 -3x^2 + 1)$
        alcanza su máximo y  mínimo en $[0, 3]$.
    ]
    #solution()[
      - $f$ es un polinomio => continua en $[0,3]$.
      - Por Weierstrass, tiene máximo y mínimo.
      - Calculamos los extremos relativos:
        - $f'(x) = 3x^2 - 6x = 3x (x - 2)$.
          - $f'(x) = 0 => x = 0$ ó $x = 2$.
      - Evaluamos
        - $f'(0) = 1, f(2)= -3, f(5)= -5$.
        => Mínimo absoluto: $f(3) = -5$ y Máximo absoluto: $f(0)=1$.
    ]
  ],
  [
    #question()[Demuestra que $display(f(x) = "sen"(x) + "cos"(x))$
        alcanza su máximo y  mínimo en $[0, 2 pi]$.
    ]
    #solution()[
      - El seno y coseno son continuas, al ser $f(x)$ suma de funciones continuas => $f(x)$ es continua en $[0, 2 pi]$.
      - Por Weierstrass, tiene máximo y mínimo.
      - Calculamos los extremos relativos:
        - $f'(x) = "cos"(x) - "sen"(x)$.
          - $f'(x) = 0 => "tan"(x) = 1 => x = pi/4, (5 pi)/4$.
      - Evaluamos
        - $f'(0) = 1, f(2pi)= 1, f(pi/4)= sqrt(2), f(5pi/4) = -sqrt(2)$.
        => Máximo absoluto: $f = sqrt(2) "en" x=pi/4$ y mínimo absoluto: $f=-sqrt(2) "en" x=(5 pi)/4$.
    ]
  ],
  // [
  //   #question()[Demuestra que toda función continua en un intervalo cerrado y acotado alcanza un máximo y un mínimo, pero que si el intervalo no es cerrado o no es acotado, esto puede no cumplirse.],
  //   #solution()[
  //     $f(x) = x "en" (0, 1)$ continua, pero, no alcanza máximo ni mínimo, ya que:

  //     $inf f = 0$, $sup f = 1$

  //     pero ninguno de esos valores pertenece al intervalo.
  //   ]

  // ]
)
