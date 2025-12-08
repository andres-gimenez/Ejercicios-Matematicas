#import "@local/g-exam:0.4.4": *

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
    watermark: "Profesor: Andrés",
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Expresiones algebraicas y ecuaciones",
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: true,
  show-grade-table: "odd-pages",
  show-solutions: false,
  // question-text-parameters: (font:"OpenDyslexic")
)

// #set math.cases(reverse: true)
#questions-pages([
#question()[Realiza las siguientes operaciones con monomios:]
  #questions-columns([
    #subquestion(solution:$5x^2$)[$2x^2 + 3x^2=$] 
  ],[
    #subquestion()[$3x^2 - 5x^2=$]
  ],[
    #subquestion()[$15x^5 - 10x^5=$]
  ],[
    #subquestion()[$5x^2 -4x^2=$]
  ],[  
    #subquestion()[$3x y^2 + 5 x y^2=$]
  ],[
    #subquestion()[$32x^2 - 4x^2 + 5x^2=$]
  ],[
    #subquestion()[$2z + 7 z=$]
  ],[
    #subquestion()[$5x y - 7x y=$]
  ],[
    #subquestion()[$-4r - 8r=$]
  ],[
    #subquestion()[$5/7 x - 2/7 x=$]
  ],[
    #subquestion()[$5/4 b^5 + 7/4 b^5=$]
  ],[
    #subquestion()[$1/3 x y - 2/5 x y=$]
  ],[
    #subquestion()[$2/5 x + 3/4 x=$]
  ],[
    #subquestion()[$1/3 x - 4/7 x + 2/6 x=$]
  ],[  
    #subquestion()[$2/5 y - 5/2 x=$]
  ],[
    #subquestion()[$2 dot 4x=$]
  ],[
    #subquestion()[$4 dot 8x^2=$]
  ],[
    #subquestion()[$2 dot 4x=$]
  ],[
    #subquestion()[$5x dot 3x=$]
  ],[
    #subquestion()[$3t dot 8t=$]
  ],[
    #subquestion()[$4a dot 2a=$]
  ],[
    #subquestion()[$4x dot (-2x)=$]
  ],[
    #subquestion()[$5 alpha + 4 alpha=$]
  ],[
    #subquestion()[$6 beta^2 + 4 beta^2=$]
  ],[
    #subquestion()[$5 delta - 6 delta=$]
  ]
  )
],[
  #question()[Simplifica lo máximo posible las siguientes expresiones algebraicas:]
  #questions-columns(
    [
      #subquestion(solution:[$5x$])[$2x + 3x=$]
    ],[
      #subquestion(solution:[$2x-1$])[$5x+4-3x-5=$] 
    ],[
      #subquestion()[$2x +3 -3x + 3 + 5x =$]
    ],[
      #subquestion()[$2x^2 + 3 -3x + 3 x^2 + 5x - 4=$]
    ],[
      #subquestion()[$3x^2 + 3x - 2 x^2 + 5x - 2=$]
    ],[
      #subquestion()[$5a - 3a^2 + 5 - 3a + 2=$]
    ],[
      #subquestion()[$alpha + 3 - 5alpha +7=$]
    ],[
      #subquestion()[$3x + 2 - 5x=$]
    ],[
      #subquestion()[$3x + 2x - 5 + 2=$]
    ],[
      #subquestion()[$5x - 2 + 4x -1=$]
    ],[
      #subquestion()[$7x + 3 - 2x + 2=$]
    ],[
      #subquestion()[$9x^2 - 3x  + 2x^2 + 1=$]
    ],[
      #subquestion()[$2x^2 + 3x=$]
    ],[
      #subquestion()[$8x- 4x^2 + 2x - 5=$]
    ],[
      #subquestion()[$-2x + 4x - 2x^2 + 3=$]
    ],[
      #subquestion()[$-x^2 + 2x^3 - 3x + 2=$]
    ],[
      #subquestion()[$x^3 - 2x^2 + 3x^3 + 5x^2=$]
    ],[
      #subquestion()[$4x^2 - 7x + x^2 + 4x - 3x^2 + 4x=$]
    ],[
      #subquestion()[$5x^8 + 2x^4 - 2x^8 + 3x^4=$]
    ],[
      #subquestion()[$5x^3 - 8x^3 + 5=$]
    ],[
      #subquestion()[$9x + 4x - 13x=$]
    ],[
      #subquestion()[$8x^5 - 3x^2 - 3x^2=$]
    ],[
      #subquestion()[$-x^3 + 3x^2 + x^3=$]
    ],[
      #subquestion()[$7y^2 - 4y^2 + 3y + 2=$]
    ],[
      #subquestion()[$4t^2 - 3t + 2t^2 - 5t=$]
    ],[
      #subquestion()[$-z^2 + 5z - 2z^2 - z=$]
    ])
    ], [
      #question()[Simplifica lo máximo posible las siguientes expresiones algebraicas:]
      #questions-columns(
      [
        #subquestion()[$x^3 - 2x + 4 + 2x^3 + 4x -5=$]
      ],
      [
        #subquestion()[$5x y + 3x y^2 - 3x y + 5x y^2=$]
      ],[
        #subquestion()[$2x y - 3x^2y + 3x y + 2x^2y=$]
      ],[
        #subquestion()[$2x^2y + 2y x^2=$]
      ],[
        #subquestion()[$2/3 x^2 - 3/2 x^2=$]
      ],[
        #subquestion()[$2/5 x^2 - 1/3 x + 3/8 x^2 - 2/5 x=$]
      ],[
        #subquestion()[$5/2 x^2 - 6x + 4/5 x^2 + 2x=$]
      ],[
        #subquestion()[$(3x - 3) - 5x + 2)=$]
      ],[
        #subquestion()[$(6x + 7) - (8x - 2)=$]
      ],[
        #subquestion()[$-(8x^2 + 5) + (3x^2 - x + 2)=$]
      ],[
        #subquestion()[$(3y^3 - 5y + 2) - (5y^3 +3y - 2)=$]
      ],[
        #subquestion()[$(6x - 3) - (5x +9)=$]
      ],[
        #subquestion()[$5x - [3x + 4x - (5x + 2x)=$]
      ],[
        #subquestion()[$-(4x + 3x - 3) + (5x + 1)=$]
      ],[
        #subquestion()[$-[3x + (3x + 5x - 3)]=$]
      ],[
        #subquestion()[$5 - (3x + 1) - (3x + 2) + (3x - 2)=$]
      ],[
        #subquestion()[$3x - (2x - 2x + 3x)=$]
      ],[
        #subquestion()[$4(2x - 3)=$]
      ],[
        #subquestion()[$5(-3x + 2)=$]
      ],[
        #subquestion()[$2(x-5) + 4(2x - 3)=$]
      ],[
        #subquestion()[$3(2x^2 - 5) + 2(2x+3)=$]
      ],[
        #subquestion()[$-2(x + 5) - 5(x+2)=$]
      ],[
        #subquestion()[$2x(4x+2)=$]
      ],[
        #subquestion()[$2x(3x + 5) - 3(-2x + 2)=$]
      ],[
        #subquestion()[$5(-4x-3) + 2(2-4x)=$]
      ],[
        #subquestion()[$5x + 3x(4X +2)=$]
      ],[
        #subquestion()[$2/3 x + (2/7 x + 2)=$]
      ],[
        #subquestion()[$3/2 x^2 - (3/4 x^2 - 4x + 2/3)=$]
      ],[
        #subquestion()[$3/2 x^3 -[2/3 x^3 - (3/2 x^3 + 2x)]=$]
      ],[
        #subquestion()[$5/2 x + 3(3/2 x + 2)=$]
      ],[
        #subquestion()[$\21/5 x^2 + 2/5 x - [3/2 x^2 + (5x + 2)]=$]
      ],[
        #subquestion()[$5 alpha + 4 alpha^2 - 3 alpha + 3 alpha^2=$]
      ],[
        #subquestion()[$5 gamma^2 + 3 gamma^2 - 2=$]
      ])
  ],[
    #question()[Realiza los siguientes productos y simplifica:]
      #questions-columns(
      [
        #subquestion()[$(x+1)(x+2)=$]
      ],[
        #subquestion()[$(x-2)(x+5)=$]
      ],[
        #subquestion()[$(2x-3)(3x+5)=$]
      ],[
        #subquestion()[$(3x-2)(4x+2)=$]
      ],[
        #subquestion()[$(2x-5)(2x+3)=$]
      ],[
        #subquestion()[$2x+5x(3x+2)=$]
      ],[
        #subquestion()[$(2x-2)(4x-1)+(2x-5)=$]
      ],[
        #subquestion()[$(x+2)^2=$]
      ],[
        #subquestion()[$(x-2)^2=$]
      ],[
        #subquestion()[$(2x+5)^2=$]
      ],[
        #subquestion()[$(3x-5)^2=$]
      ],[
        #subquestion()[$(x-3)(x+3)=$]
      ],[
        #subquestion()[$(2x+5)(2x-5)=$]
      ],[
        #subquestion()[$(2/3x+4/2)(1/2x-1/5)=$]
      ]
      )
  ],
  [
    #question()[Simplifica las siguientes expresiones algebraicas:]
      #questions-columns(
      [
        #subquestion()[$(5x+5)(2-5x)+(2x-5)(2x+5)=$]
      ],
      [
        #subquestion()[$(2x+6)(2x-6)+(3x+2)(3x-2)=$]
      ],
      [
        #subquestion()[$(5x+3)^2 - (2x-2)^2=$]
      ],
      [
        #subquestion()[$(3x-5)^2 + (x-2)(x+2)=$]
      ],
      [
        #subquestion()[$2x[4x(x-5)]+3x(-4x + 5)=$]
      ],
      [
        #subquestion()[$2x[4x(x-5)]- 2x=$]
      ])
  ]
  ,[
  #question()[Evalua las siguientes expresiones algebraicas para los valores indicados:]
    #questions-columns([
      #subquestion(solution:[$49$])[$5x^2 + 3x - 2$ para $x=3$]
    ],[
      #subquestion()[$3x^2 - 2x - 5$ para $x=2$]
    ],[
      #subquestion()[$3x^2 - 2x - 5$ para $x=2$]
    ],[
      #subquestion()[$3x^2 - 2x - 5$ para $x=-2$]
    ],[
      #subquestion()[$3x^2 - 2x - 5$ para $x=0$]
    ],[
      #subquestion()[$3x^2 - 2x - 5$ para $x=-1$]
    ],[
      #subquestion()[$4t^2 - 4t +2$ para $t=3$]
    ],[
      #subquestion()[$5/3 x + 2/3$ para $x=1/5$]
    ],[
      #subquestion()[$2/3 x^2 + 1/5$ para $x=1/4$]
    ],[
      #subquestion()[$4/5 x - 1/5$ para $x=-1$]
    ],[
      #subquestion()[$4x^3 + 5x^2 - 2x + 1$ para $x=2$]
    ],[
      #subquestion()[$5x^2y - 2x + 2y - 1$ para $x=1$ e $y=2$]
    ],[  
      #subquestion()[$5x y + 3$ para $x=2$]
    ],[
      #subquestion()[$theta^2 + 5$ para $theta=3$]
    ])
],[
#question()[Escribe las siguientes expresiones en notación algebraica:]
 #questions-columns([
  #subquestion()[El doble de un número.]
 ],[
  #subquestion()[La mitad de un número.]
 ],[
  #subquestion()[El doble de un número más su mitad.]
 ],[ 
  #subquestion()[La mitad de un número menos dos.]
 ],[
  #subquestion()[La mitad de un número, menos dos.]
 ],[
  #subquestion()[El triple de la mitad de un número.]
 ],[
  #subquestion()[La mitad del triple de un número.]
  ],[
  #subquestion()[El siguiente número a uno dado.]
  ],[
  #subquestion()[El triple de un número al sumarle siete.]
 ],[
  #subquestion()[Un número par.]
 ],[
  #subquestion()[Un número impar.]
  ]
 )
  ],[
  #question()[Siendo los polinomios: 

    $P[x] = 3x^4+5x^3-2x^2+4x-2$

    $Q[x] = 5x^4-2x^3+5x^2-2x+4$

    $R[x] = 3x^2+2x+3$

    Calcula:
    #subquestion()[$P[x] + Q[x] = $]
    #subquestion()[$P[x] - Q[x] = $]
    #subquestion()[$P[x] dot R[x] = $]
    #subquestion()[$P[x] + Q[x] dot R[x] = $]
  ]
  ],
  [ #question()[Resuelve los siguientes problemas:]
    #questions-columns([
      #subquestion()[Marta tiene $x$ años y su hermano tiene 3 años más que ella. *Escribe la expresión* que representa la edad del hermano. Utilizando la expresión anterior calcula la edad del hermano si marta tiene 10 años y si tiene 12. ]
    ],
    [
      #subquestion()[Dentro de 5 años, Marta tendrá el doble de edad que su hermano tenía hace 2 años. *Plantea la expresión* que relaciona las edades:]
    ],
    [
      #subquestion()[Un rectángulo tiene base $3x$ y altura $x+2$. 
      Escribe una expresión para el *perímetro* y otra para el *área*. 
      Calcula es perímetro y el área si la base mide 3cm y si vale 20cm]
    ],
    [
      #subquestion()[Un cuadrado aumenta su lado en $2x$. El lado original era $5$. Expresa el área del cuadrado final en función de $x$.]
    ],
    [
      #subquestion()[En una papelería, una libreta cuesta $x$ € y un bolígrafo cuesta 2 € menos. Escribe una expresión para el coste total de *3 libretas y 5 bolígrafos*. ¿Cuanto cuestan las 3 libretas y 5 bolígrafos si el precio de la libreta son 3€ y si son 5€-']
    ],
    [
      #subquestion()[Ana compra $x$ caramelos y cada caramelo cuesta 0,10 €.
      Si además compra una chocolatina que cuesta 1,20 €,
      expresa el precio total de la compra.]
    ], 
    [
      #subquestion()[Un ciclista recorre x kilómetros cada hora.
      Escribe una expresión para la distancia recorrida en 3 horas y media.]
    ],
    [ 
      #subquestion()[Un coche avanza $20 + x$ km en la primera hora y 
        $30 - x$ km en la segunda.
        Escribe la expresión para la distancia total recorrida.]
    ],
    [
      #subquestion()[Un depósito contiene $x$ litros de agua. Se vacía la mitad y luego se añaden 3 litros. Expresa la cantidad final de agua.]
    ],[
      #subquestion()[Si se reparte $x+8$ euros entre 4 amigos a partes iguales, *escribe la expresión* que representa cuánto recibe cada uno.]
    ],
    [
      #subquestion()[En una clase hay $x$ alumnos. Si se apuntan 6 más, serán el doble de los que había el curso pasado.
      *Plantea la expresión que relaciona los alumnos de este año con los del año pasado*.]
    ],
    [
      #subquestion()[Una cuerda mide $5x+10$ cm. Se corta en dos trozos: uno mide $2x-3$ y el otro lo que falta. *Expresa la longitud del segundo trozo.*]
    ]
    )
  ]
)