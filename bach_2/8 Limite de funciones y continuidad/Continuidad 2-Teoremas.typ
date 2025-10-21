#import "@local/g-exam:0.4.4": *
// #import "@preview/wrap-it:0.1.0": wrap-content

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: [Continuidad 2],
    content: [Teoremas de Bolzano y del Valor Medio],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: false,
  show-grade-table: false,
  show-solution: true,
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
[
  #question()[
    Demuestra que la ecuación $ e^x = 2 $ 
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
    La ecuación $e^x-2=0$ tiene al menos una raíz real en el intervalo $[0,1]$.
    ],
  ],
  [
      #question()[Demuestra que la ecuación
        $x^3-x = "sen"(x)$
      tiene *exactamente una* raíz real en el intervalo $[1,2]$.
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

      La ecuación $x^3-x- "sen"(x)=0$ tiene exactamente una raíz real en el intervalo $(1,2)$.

     ]
  ]
)
