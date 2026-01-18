#import "@preview/g-exam:0.4.4": *

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
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Ecuaciones de 1º grado",
  ),
  
  language: "es",  
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: "odd-pages",
  show-solutions: false,
  clarifications: 
    (
    [Realiza los ejercicios que te indique el profesor en tu cuaderno y envíalas al aula virtual],
    [El fin de realizar estos ejercicios está destinado a tu aprendizaje, si te ayudan a hacerlos, entera té lo que estás poniendo. Si te los hacen o utilizas alguna herramienta que los haga, estás perdiendo el tiempo en un trabajo improductivo.]
    ) 
)

#questions-pages(
 
  [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns(
      [#subquestion()[$display(7(x-1)-2(x+8)=3(x-3))$]],
      [#subquestion()[$display(2(3x+2)=4[2x-5(x-2)])$]],
      [#subquestion()[$display(3(12-x)-4x=2(11-x)+9x)$]],
      [#subquestion()[$display(2(1+x)-3(x-1)-6=x-11)$]], 
      [#subquestion()[$display(5-[3-2(4-x)]=2(4x+4))$]], 
      [#subquestion()[$display(11-5(3x+2)+7x=1-8x)$]],
      [#subquestion()[$display(3x+5(2x-1)=8-3(4-5x))$]],
      [#subquestion()[$display(x-7(2x+1)=2(6-5x)-13)$]],
      [#subquestion()[$display(3x + 1 = 3 - (2- 2x))$]],
      [#subquestion()[$display(3[x+(14-x)]=2[x-(2x-21)])$]],
      [#subquestion()[$display(-5(2-x)+3(2x+4)=(4x-2) dot 5)$]],
      [#subquestion()[$display(3x+5(12-x)=-3x+4-2(7-3x))$]],
      [#subquestion()[$display(5(x-3)-4(x-1)=2x-3(x+2))$]],
      [#subquestion()[$display(13x-5(x+2)=4(2x-1)+7)$]]
    )
  ],
    [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns(
      [
        #subquestion()[$display(3x+1/2x+6=2x)$]    
      ], [
        #subquestion()[$display(3/2+3x=(5x)/9-(2x+1)/6)$]
      ], [
        #subquestion()[$display((8x)/2-3=3x+1)$]
      ], [
        #subquestion()[$display(3/2+(3x)/2-(5x)/6=15)$]
      ], [
        #subquestion()[$display(2+(3x-1)/(15)+(x-4)/5=(x+4)/3)$]
      ], [
        #subquestion()[$display((5x+7)/2-(3x+9)/4=(2x+5)/3+5)$]
      ], [
        #subquestion()[$display((x-5)/2-(8-3x)/2=2-(9x)/2)$]
      ], [
        #subquestion()[$display(5-(2x-8)/2=(3x)/2-(3-x)/5)$]
      ], [
        #subquestion()[$display((x-2)/6-(3-2x)/5=6-(5x)/5)$]
      ], [
        #subquestion()[$display((x-5)/9-(4-2x)/2=8-(8x)/2)$]
      ], [
        #subquestion()[$display(x/3-(13-2x)/2=1/6)$]
      ], [
        #subquestion()[$display((15x-35)/(10)+(4-x)/3=20/4+(3x-3)/18)$]
      ], [
        #subquestion()[$display((4x)/2+x=(6x)/3+7)$]
      ], [
        #subquestion()[$display((3x+1)/3-(5x-4)/7=25/21)$]
      ], [
        #subquestion()[$display((3x)/2 + (2x)/3 = (1 + 3x)/2)$]
      ]
    )
  ],
  [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns(
      [
        #subquestion()[$display((x-4)/6+(2x-4)/8=(5x)/10-(5x-6)/12)$]
      ], [
        #subquestion()[$display((2x+4)/4-2(x-3)=5-(7x)/2)$]
      ], [
        #subquestion()[$display(x(x-1)-(x-3)=x^2-1-(x-2))$]
      ], [
        #subquestion()[$display((x-5)/2-(2x-4)/12=(5-x)/4-x/3)$]
      ], [
        #subquestion()[$display((2x-1)/3-(5x-4)/7=(x+5)2-5)$]
      ], [
        #subquestion()[$display((3x-11)/20-(5x-1)/14=(x-7)/10-(5x-6)/21))$]
      // ], [
      //   #subquestion()[$display(2 (2+x)-(6-7x) = 13x - (1 + 4x ))$] 
      ], [
        #subquestion()[$display((3x-17)/8-(1-4x)/3=(1-x)/4-(9+x)6)$] 
      // ], [
      //   #subquestion()[$display(3 (x+1)-2x=x-[2+3(3-x)])$] 
      ], [
        #subquestion()[$display((-6)/2+(5+x)/3=1/3 (4-(4x)/2)+(3x)/2)$]
      ], [
        #subquestion()[$display(4/3((2+x)/5)=1/5 (8-(6x)/3)+(5x)/3)$)]
      ], [
        #subquestion()[$display(5/2 (7+x)/3 = 1/3 (5-(5x)/2)+(3x)/2)$]
      ], [
        #subquestion()[$display((-1)/2 (1-(3x)/2)+(6x)/2=(-3)/2 ((6+x)/2))$]
      ], [
        #subquestion()[$display((-1)/2 (4-6x)/3+(5x)/3=(-5)/3 ((2+x)/2))$]
      ], [
        #subquestion()[$display((-1)/3 (8-(4x)/2)+(2x)/2=(-6)/2((7+x)/3))$] 
      ], [
        #subquestion()[$display(18+(3x+4)/5=(5x+4)/2-(2x-5)/2)$]
      ], [
        #subquestion()[$display(1-2[1+3x-2 (x +2)+3x] = -1)$]
      ], [
      //   #subquestion()[$display(5 (x+1)-(1-x)= 2 (x-1)-4 (1-x))$] 
      // ], [
      //   #subquestion()[$display(2- [3 - 2 (x+1)]=3x + 2 [x - (3+2x)])$]
      // ], [
        #subquestion()[$display(x + 1/2 [x - 3/2 (4 -3x)] = 2/3 (1 - (5x)/2))$] 
      ]
    )
  ],
    [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns(
      [#subquestion()[$display(3/x + 5/x = 6)$]],
      [#subquestion()[$display((x-1)/(x-1) = 3)$]],
      [#subquestion()[$display(3/(x-2) = 1/2)$]],
      [#subquestion()[$display(1/x + 3/(2x) = 12)$]],
      [#subquestion()[$display(5/(x+1)-4/(x+1) = 7)$]],
      [#subquestion()[$display(5/(x+1)-4/(x+1) = 0)$]],
      [#subquestion()[$display(x/(x+1)-5/(x-2) = 1)$]],
      [#subquestion()[$display((2x-5)/(x+3)+1 = x/(x+3))$]],
    )
  ],
)
