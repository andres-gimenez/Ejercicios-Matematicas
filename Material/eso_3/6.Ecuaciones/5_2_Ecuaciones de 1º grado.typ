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
  show-student-data: true,
  show-grade-table: "odd-pages",
  show-solutions: false,
  // question-text-parameters: (font:"OpenDyslexic")
)

// #set math.cases(reverse: true)
#questions-pages(
  [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns([
      #subquestion()[$display(x-3=5)$]
    ], [
      #subquestion()[$display(x-6=3)$]
    ], [
      #subquestion()[$display(2x+3=13)$]
    ], [
      #subquestion()[$display(x-6=3x)$]
    ], [
      #subquestion()[$display(x-3=4-x)$]
    ], [
      #subquestion()[$display(x-3=4-x)$]
    ], [
      #subquestion()[$display(x-3=4-2x)$]
    ], [
      #subquestion()[$display(2x+34=-20)$]
    ], [
      #subquestion()[$display(4x+3=3x+5)$]
    ], [
      #subquestion()[$display(x-8=2x-11)$]
    ], [
      #subquestion()[$display(9x+8=7x+6)$]
    ], [
      #subquestion()[$display(7x+9=3+9x)$]
    ], [
      #subquestion()[$display(x+1=2x-7)$]
    ], [
      #subquestion()[$display(6x+6=4+8x)$]
    ], [
      #subquestion()[$display(9+9x=17+5x)$]
    ], [
      #subquestion()[$display(2x+3=3x)$]
    ], [
      #subquestion()[$display(25-2x=3x+20)$]
    ], [
      #subquestion()[$display(4x+1=3x+3)$]
    ], [
      #subquestion()[$display(5x-3=10x-6)$]
    ], [
      #subquestion()[$display(1+8x=-16x+31)$]
    ], [
      #subquestion()[$display(5x-11=15x-19)$]
    ], [
      #subquestion()[$display(12x-48=-15x-30)$]
    ], [
      #subquestion()[$display(2x+17=3x+7)$]
    ], [
      #subquestion()[$display(10-5x=x-2)$]
    ], [
      #subquestion()[$display(70-3x=4x)$]
    ], [
      #subquestion()[$display(48-3x=5x)$]
    ], [
      #subquestion()[$display(-4x+30=-3x-10)$]
    ], [
      #subquestion()[$display(10x-15=4x+27)$]
    ], [
      #subquestion()[$display(x-3(x-2) = 6x-2)$]
    ], [
      #subquestion()[$display(3x+1=6x-8)$]
    ], [
      #subquestion()[$display(3x-7=2(x+1))$]
    ], [
      #subquestion()[$display(47-3x=5+11x)$]
    ], [
      #subquestion()[$display(2(2+4x)=3+12x)$]
    ], [
      #subquestion()[$display(30-9x=-7x+21)$]
    ], [
      #subquestion()[$display(5x=7(5x-3)+3)$]
    ], [
      #subquestion()[$display(3x-10=2x+1)$]
    ], [
      #subquestion()[$display(2(x-5)=3x-17)$]
    ], [
      #subquestion()[$display(25-2x=3x-35)$]
    ], [
      #subquestion()[$display(2+5(x-13)=x-3)$]
    ], [
      #subquestion()[$display(75-5x=3x+3)$]
    ], [
      #subquestion()[$display(5+8x=2x+20)$]
    ], [
      #subquestion()[$display(2(2x-2)=-(4-x))$]
    ], [
      #subquestion()[$display(2y-3=y+5)$]
    ], [
      #subquestion()[$display(2(3x-49)=-x+14)$]
    ], [
      #subquestion()[$display(3(x-5)-2(x+4)=18)$]
    ], [
      #subquestion()[$display(20=2x-(10-4x))$]
    ], [
      #subquestion()[$display(60x-1=3(1+12x))$]
    ], [
      #subquestion()[$display(5(x-1)+10(x+2)=45)$]
    ], [
      #subquestion()[$display(2x+3(2x-1)=x+67)$]
    ], [
      #subquestion()[$display(12x+3(2x-4)=60)$]
    ], [
      #subquestion()[$display(3-2x(5-2x)=4x^2+x-30)$]
    ], [
      #subquestion()[$display(3x-(x+1)=x-2)$]
    ], [
      #subquestion()[$display(3(2-x)=18x-1)$]
    ], [
      #subquestion()[$display(3(x+4)=4x+1)$]
    ], [
      #subquestion()[$display(10+5(x-3)=3(x+1))$]
    ], [
      #subquestion()[$display(2[3(x+5)-9]=-3(2x-4))$]
    ]
    )
  ],
  [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns(
      [
      #subquestion()[$display(7(x-1)-2(x+8)=3(x-3))$)]
      ], [
      #subquestion()[$display(7(x-1)-2(x+8)=3(x-3))$]
      ], [
      #subquestion()[$display(2(3x+2)=4[2x-5(x-2)])$]
      ], [
      #subquestion()[$display(15x=2(1+9x)-3)$]
      ], [
      #subquestion()[$display(3(12-x)-4x=2(11-x)+9x)$]
      ], [
      #subquestion()[$display(2(1+x)-3(x-1)-6=x-11)$]
      ], [
      #subquestion()[$display(5-[3-2(4-x)]=2(4x+4))$]          
      ], [
      #subquestion()[$display(-3x=2x+4x-x))$]
      ], [
      #subquestion()[$display(11-5(3x+2)+7x=1-8x)$]
      ], [
      #subquestion()[$display(3x+5(2x-1)=8-3(4-5x))$]
      ], [
      #subquestion()[$display(x-7(2x+1)=2(6-5x)-13)$]
      ], [
      #subquestion()[$display(5x-9=4x-20)$]
      ], [
      #subquestion()[$display(2x-7=x+5)$]
      ], [
      #subquestion()[$display(x/5=-30)$]
      ], [
      #subquestion()[$display(2x+6=3x-1)$]
      ], [
      #subquestion()[$display(x-3 = x-3)$]
      ], [
      #subquestion()[$display(x-3 = x-4)$]
      ], [
      #subquestion()[$display(3x + 1 = 3 - (2- 2x))$]
      ], [
      #subquestion()[$display(3[x+(14-x)]=2[x-(2x-21)])$]
      ], [
      #subquestion()[$display(-2+5[-6x+3(5-x)]=20-(x+1))$]
      ], [
      #subquestion()[$display(-5(2-x)+3(2x+4)=(4x-2) dot 5)$]
      ], [
      #subquestion()[$display(3x+5(12-x)=-3x+4-2(7-3x))$]
      ], [
      #subquestion()[$display(5(x-3)-4(x-1)=2x-3(x+2))$]
      ], [
      #subquestion()[$display(13x-5(x+2)=4(2x-1)+7)$]
      ]
    )
  ],
    [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns(
      [
        #subquestion()[$display(3x+1/2x+6=2x)$]
      ], [
        #subquestion()[$display(3/2 x+8=3/5 x-1)$]
      ], [
        #subquestion()[$display(4/3(x+1)=2x-1)$]
      ], [
        #subquestion()[$display(x/2+2x/3-5x/6=5x-14)$]
      ], [
        #subquestion()[$display((x-2)/4-(2x+6)/3=0)$]
      ], [
        #subquestion()[$display((x+1)/4-(x-2)/6=1)$]
      ], [
        #subquestion()[$display(1/x+1=3/x-3)$]
      ],[
        #subquestion()[$display((5x)/6-3/6=2/4+x/4)$]
      ], [
        #subquestion()[$display((x+2)/x-1/3=4/x)$]
      ], [
        #subquestion()[$display((x+2)/3-(5x-3)/4-2x=5)$]
      ], [
        #subquestion()[$display((5+2x)/x-1/(x^2)=2)$)]            
      ], [
        #subquestion()[$display((x-1)/4-(x-5)/(36)=(x-5)/9)$]
      ], [
        #subquestion()[$display(5x-3(2x-4)=9)$]
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
//             \part $\frac{3x+1}{3}-\frac{5x-4}{7}=\frac{25}{21}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=1 )$ \fi
            
//             \part $\frac{3x}{2} + \frac{2x}{3} = \frac{1 + 3x}{2}$ \phantom{12} \ifprintanswers $(\text{Sol: } x=\frac{3}{4} )$ \fi
      ]
    )
  ],
  [#question()[Resuelve las siguientes ecuaciones:]
    #questions-columns(
      [
        #subquestion()[$display(3x+1/2x+6=2x)$]
      ], [
      ])
  ]
)

//         \part $\frac{x-4}{6}+\frac{2x-4}{8}=\frac{5x}{10}-\frac{5x-6}{12}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=5 )$ \fi
//         \part $\frac{2x+4}{4}-2(x-3)=5-\frac{7x}{2}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=-1 )$ \fi
//         \part $x(x-1)-(x-3)=x^2-1-(x-2)$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=2 )$ \fi
//         \part $\frac{x-5}{2}-\frac{2x-4}{12}=\frac{5-x}{4}-\frac{x}{3}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=\frac{33}{11} )$ \fi
//         % \part $\frac{2x-1}{3}-\frac{5x-4}{7}=\frac{x+5}{2}-5$  \phantom{1234} \ifprintanswers $(\text{Sol: } x=5 )$ \fi
//         % \part $\frac{3x-11}{20}-\frac{5x-1}{14}=\frac{x-7}{10}-\frac{5x-6}{21}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=\frac{-27}{29} )$ \fi
//         \part $2 (2+x)-(6-7x) = 13x - (1 + 4x )$ \phantom{1234} \ifprintanswers $(\text{Sin solución} )$ \fi
//         \part $\frac{3x-17}{8}-\frac{1-4x}{3}=\frac{1-x}{4}-\frac{9+x}{6}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=\frac{29}{51} )$ \fi
            
//         \part $3 (x+1)-2x=x-[2+3(3-x)]$ \phantom{1234} \ifprintanswers $(\text{Sol: }x = \frac{14}{3} )$ \fi

//         % \part $\frac{-6}{2}(\frac{5+x}{3})=\frac{1}{3}(4-\frac{4x}{2})+\frac{3x}{2}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=-\frac{38}{11} )$ \fi
//         % \part $\frac{4}{3}(\frac{2+x}{5})=\frac{1}{5}(8-\frac{6x}{3})+\frac{5x}{3}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=\frac{-16}{15} )$ \fi
//         % \part $\frac{5}{2}(\frac{7+x}{3}) = \frac{1}{3}(5-\frac{5x}{2})+\frac{3x}{2}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=-25 )$ \fi

//         \part $\frac{-1}{2}(1-\frac{3x}{2})+\frac{6x}{2}=\frac{-3}{2}(\frac{6+x}{2})$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=-\frac{8}{9} )$ \fi
//         \part $\frac{-1}{2}(4-\frac{6x}{3})+\frac{5x}{3}=\frac{-5}{3}(\frac{2+x}{2})$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=\frac{2}{21} )$ \fi
//         \part $\frac{-1}{3}(8-\frac{4x}{2})+\frac{2x}{2}=\frac{-6}{2}(\frac{7+x}{3})$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=-\frac{13}{8} )$ \fi
//         \part $18+\frac{3x+4}{5}=\frac{5x+4}{2}-\frac{2x-5}{2}$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=\frac{143}{9} )$ \fi

//         \part $1-2[1+3x-2 (x +2)+3x] = -1$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=1 )$ \fi
//         \part $5 (x+1)-(1-x)= 2 (x-1)-4 (1-x)$ \phantom{1234} \ifprintanswers $(\text{Sin solución} )$ \fi
//         \part $2- [3 - 2 (x+1)]=3x + 2 [x - (3+2x)]$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=-7 )$ \fi
//         \part $x + \frac{1}{2} [x - \frac{3}{2} (4 -3x)] = \frac{2}{3} (1 - \frac{5x}{2})$ \phantom{1234} \ifprintanswers $(\text{Sol: } x=\frac{44}{65} )$ \fi
//     \end{parts}
// \end{questions}