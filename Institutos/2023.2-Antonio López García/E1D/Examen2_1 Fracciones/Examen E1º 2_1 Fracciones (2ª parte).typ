#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Antonio López García",
    logo: "logo-ies_antonio.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación 1º Examen (2ª parte)",
    content: "Radicales y fracciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: false,
  question-point-position: right,
)
#hide(g-question(point: 2)[])

#g-question(point: 2)[Calcula las siguientes operaciones y simplifica si se puede:
  #subquestion[$display(4/11+5/11-2/11=)$]
  #v(1fr)

  #subquestion[$display(3+2/5=)$]
  #v(1fr)

  #subquestion[$display(7/12+2/9=)$]
  #v(1fr)

  #subquestion[$display(1-9/13=)$]
  #v(1fr)
]
#pagebreak()

#hide(question(point: 2)[])

#g-question(point: 2)[Ordena de mayor a menor las siguientes fracciones:
      \ \
      #align(center, [$ 2/3 ; 3/8 ; 4/6 ; 1/2 $])
      #v(1fr)
]    

#g-question(point: 2)[En un jardín tenemos 20 rosales rojos, 10 blancos y 15 amarillos.
  #subquestion[¿Qué fracción representa cada color?]
  #v(1fr)

  #subquestion[Si hemos podados los rosales rojos, ¿qué fracción nos queda por podar?]
  #v(1fr)
]
