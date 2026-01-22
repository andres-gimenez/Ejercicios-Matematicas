#import "@preview/g-exam:0.4.4": *

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
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Ecuaciones de 1º grado (hoja 2)",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year:2025, month:1, day:8),
  show-student-data: false,
  show-grade-table: false,
  question-points-position: none,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

#question()[Resuelve las siguientes ecuaciones:]
#columns(2, gutter: 11pt)[
 
  #subquestion()[$x-6=3x$] 
  #subquestion()[$x+6=9$] 
  #subquestion()[$x+9=3$] 
  #subquestion()[$x-3=4-x$] 
 
  #subquestion()[$4x+3=3x+5$] 
  #subquestion()[$x-8=2x-11$] 
  #subquestion()[$9x+8=7x+6$] 
  #subquestion()[$7x+9=3+9x$] 
  #colbreak()
  #subquestion()[$x+1=2x-7$] 
  #subquestion()[$6x+6=4+8x$] 
  #subquestion()[$25-2x=3x+20$] 
  #subquestion()[$4x+1=3x+3$] 
  #subquestion()[$5x-3=10x-6$] 



  #subquestion()[$display(3/2 x + 1/3 = 3/5 - (2- 2x)/3)$] 
  #subquestion()[$display(1/5 x + 2/7 = (2x - 1)/2) + 2/3$] 
]

#question()[Resuelve las siguientes ecuaciones:]
#columns(2, gutter: 11pt)[
  #subquestion()[$display((2x+4)/4-2(x-3)=5-(7x)/2)$] 
  #subquestion()[$display(x(x-1)-(x-3)=x^2-1-(x-2))$] 
  #subquestion()[$display((x-5)/2-(2x-4)/12=(5-x)/4-x/3)$] 
  #colbreak()
  #subquestion()[$display((3x-11)/20-(5x-1)/14=(x-7)/10-(5x-6)/21)$] 
  #subquestion()[$display(2 (2+x)-(6-7x) = 13x - (1 + 4x))$] 
  // #subquestion()[$display(3 (x+1)-2x=x-[2+3(3-x)])$] 
  // #subquestion()[$display((-6)/2 ((5+x)/3)=1/3 (4-(4x)/2) + (3x)/2)$] 
  // #subquestion()[$display(4/3 ((2+x)/5) = 1/5 (8 - (6x)/3 )+ (5x)/3)$] 
  // #subquestion()[$display(5/2 ((7+x)/3) = 1/3 (5 - (5x)/2) + (3x)/2)$] 
  // #subquestion()[$display(-1/2 (4 - (6x)/3) + (5x)/3 = -5/3 ((2+x)/2))$] 
  // #subquestion()[$display((-1)/2 (1 - (3x)/2) + (6x)/2 = (-3)/2 ((6+x)/2))$] 
  // #subquestion()[$display((-1)/3 (8 - (4x)/2) + (2x)/2 = (-6)/2 ((7+x)/3))$] 
  // #subquestion()[$display(18 + (3x+4)/5 = (5x+4)/2 - (2x-5)/2)$] 
  // #subquestion()[$display(1 - 2 [1 + 3x - 2 (x+2) + 3x] = -1)$] 
]
