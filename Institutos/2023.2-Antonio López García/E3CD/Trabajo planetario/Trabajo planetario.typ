#import "./g-exam.typ": g-exam, g-question, g-subquestion, g-explanation
#import "@preview/cetz:0.2.0"

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
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación",
    content: "Trabajo planetario",
    model: ""
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 28, 2024",
  show-studen-data: true,
  show-grade-table: false,
  question-point-position: right,
  clarifications: (
    // [El trabajo en individual],
    [Se puede utilizar el móvil para buscar información.],
  )
)

#set enum(numbering: "a)")

#g-question[¿Qué relación hay entre los nombres de los días de la semana y el de los planetas?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Ninguna
    + En la antigüedad los planetas eras La Luna, Marte, Mercurio, Júpiter, Venus, Saturno y El Sol.
    + Los nombres de los planetas y los días de la semana coinciden, porque en los dos se utilizaron nombres de dios romanos. 
  ])
]

#g-question[¿Cuál es la estrella más cercana al Sistema Solar?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Próxima Centauri
    + La Estrella Polar
    + Vega
  ])
]

#g-question[¿Desde donde no se puede ver la Estrella Polar?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Desde Canadá
    + Desde Argentina
    + Desde Groenlandia
  ])
]

#g-question[¿Cómo se llamaba la primera nave tripulada que se lanzó al espacio?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Vostok 1
    + Apollo 11
    + Mercury
  ])
]

#g-question[¿Cómo se llama la galaxia que alberga al sistema solar?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + Andrómeda
    + Via Láctea
    + Pegaso
  ])
]

#pagebreak()
#g-question[¿Cómo se llamaba el primer astronauta que pisó la Luna?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + Yuri Gagarin
    + Buzz Aldrich
    + Neil Armstrong
  ])
]

#g-question[¿Qué efectos produce la Luna sobre la Tierra?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + El día y la noche
    + Mareas
    + Erupciones volcánicas
  ])
]

#g-question[Stephen William Hawking fue un ilustre físico teórico que destaco por sus estudios sobre los agujeros negros. Pese a su fama y relevancia en el mundo académico, ¿En qué año le concedieron el Premio Novel?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + En el año 2013.
    + No se lo concedieron porque murió antes de que se lo concedieran y no se puede otorgar el Novel a título póstumo.
    + No se lo concedieron porque sus teorías no están probadas y solo se concede el Novel a teorías probadas.
  ])
]

#g-question[¿Qué porcentaje de la Tierra está cubierta por agua?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + el 25%
    + el 50%
    + el 70%
  ])
]

#g-question[El pensamiento más extendido hasta el siglo XVII fue que
 #stack(dir:ltr,
  h(1cm),
  [ 
    + la tierra es plana.
    + la tierra es esférica, situada en el centro del universo.
    + la tierra la soporta el gigante Atlas. 
  ])
]