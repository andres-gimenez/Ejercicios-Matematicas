#import "./exam.typ": exam, question, subquestion, explanation
#import "@preview/cetz:0.2.0"

#show: exam.with(
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

#question[¿Qué relación hay entre los nombres de los días de la semana y el de los planetas?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Ninguna
    + En la antigüedad los planetas eras La Luna, Marte, Mercurio, Júpiter, Venus, Saturno y El Sol.
    + Los nombres de los planetas y los días de la semana coinciden, porque en los dos se utilizaron nombres de dios romanos. 
  ])
]

// #question[Busca las distancias de cada planeta del Sistema Solar al Sol y representala en la recta.]
// #align(center, 
//       cetz.canvas(length: 1cm, {
//         cetz.plot.plot(
//           // axes: ("x", "y"),
//           size: (16, 1),
//           axis-style: "school-book",
//           fill: "o" ,
//           fill-below: true,
//           // horizontal:false,
//           x-domain: (0, 4.5E+9),
//           y-domain: (0, 0),
//           x-max: 5E+9,
//           x-min: 0,
//           y-max: 0,
//           y-min: 0,
//           x-grid: "both",
//           y-grid: false,
//           // x-tick-step: none,
//           // x-tick-step: 1E+9,
//           x-ticks: ((1E+9, $1 dot 10^9 "Km"$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
//           y-ticks: ((0,0),),
//           // y-tick-step: 1,
//           // x-minor-tick-step: 1,
//           // y-minor-tick-step: 1,
//             {
//               cetz.plot.add(((0,0),), mark-size: 0,)
//               // cetz.plot.add(
//               //   style: style,
//               //   domain: (-10, 0.1), 
//               //   // mark: "+",
//               //   x=>2/x
//               // )
//               // cetz.plot.add(
//               //   style: style,
//               //   domain: (0, 10), 
//               //   // mark: "+",
//               //   x=>calc.sqrt(x+1)-2
//               // )
//             }
//           )
//         }
//       )
//     )
// ]

#question[¿Cuál es la estrella más cercana al Sistema Solar?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Próxima Centauri
    + La Estrella Polar
    + Vega
  ])
]

#question[¿Desde donde no se puede ver la Estrella Polar
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Desde Canadá
    + Desde Argentina
    + Desde Groenlandia
  ])
]

#question[¿Cómo se llamaba la primera nave tripulada que se lanzó al espacio?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + Vostok 1
    + Apollo 11
    + Mercury
  ])
]

#question[¿Cómo se llama la galaxia que alberga al sistema solar?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + Andrómeda
    + Via Láctea
    + Pegaso
  ])
]

#pagebreak()
#question[¿Cómo se llamaba el primer astronauta que pisó la Luna?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + Yuri Gagarin
    + Buzz Aldrich
    + Neil Armstrong
  ])
]

#question[¿Qué efectos produce la Luna sobre la Tierra?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + El día y la noche
    + Mareas
    + Erupciones volcánicas
  ])
]

#question[Stephen William Hawking fue un ilustre físico teórico que destaco por sus estudios sobre los agujeros negros. Pese a su fama y relevancia en el mundo académico, ¿En qué año le concedieron el Premio Novel?
  #stack(dir:ltr,
  h(1cm),
  [ 
    + En el año 2013.
    + No se lo concedieron porque murió antes de que se lo concedieran y no se puede otorgar el Novel a título póstumo.
    + No se lo concedieron porque sus teorías no están probadas y solo se concede el Novel a teorías probadas.
  ])
]

#question[¿Qué porcentaje de la Tierra está cubierta por agua?
 #stack(dir:ltr,
  h(1cm),
  [ 
    + el 25%
    + el 50%
    + el 70%
  ])
]

#question[El pensamiento más extendido hasta el siglo XVII fue que
 #stack(dir:ltr,
  h(1cm),
  [ 
    + la tierra es plana.
    + la tierra es esférica, situada en el centro del universo.
    + la tierra la soporta el gigante Atlas. 
  ])
]