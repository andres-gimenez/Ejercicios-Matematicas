// Get Polylux from the official package repository
#import "@preview/polylux:0.3.1": *

// Make the paper dimensions fit for a presentation and the text larger
#set page(paper: "presentation-16-9")
#set text(size: 25pt)

// Use #polylux-slide to create a slide and style it using your favourite Typst functions
#polylux-slide[
  #align(horizon + center)[
    = Estadistica
  ]
    
]

#polylux-slide[
    #align(center)[
  == Datos en crudo
    ]
    #v(1cm)
     #align(center)[
  #image("Datos en crudo.png", width: 20%)
     ]
]

#polylux-slide[
    #align(center)[
  == Datos agrupados
    ]
    #v(1cm)
     #align(center)[
  #image("Datos agrupados.png", width: 100%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras 1º examen
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras 1º examen.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras de los 4 examenes
    ]
    #v(1cm)
     #align(center)[
      #grid(
        columns: (1fr, 1fr),
        rows: (1fr, 1fr),
        image("Diagrama de barras 1º examen.png", width: 100%),
        image("Diagrama de barras 2º examen.png", width: 100%),
        image("Diagrama de barras 3º examen.png", width: 100%),
        image("Diagrama de barras 4º examen.png", width: 100%)
      )
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras combinados
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras combinado.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras con leyenda
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 1.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras con leyenda
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 2.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras con leyenda
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 3.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras con leyenda
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 4.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras con leyenda
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 5.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras con leyenda
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 6.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama de barras con leyenda
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 7.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama circular
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama circular.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Diagrama circular
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama circular 2.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Ejemplo de diagrama de no dice nada
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de datos apilados 1.png", width: 70%)
     ]
]

#polylux-slide[
  
  #align(center)[
  == Ejemplo de diagrama de no dice nada en bonito
    ]
    #v(1cm)
     #align(center)[
  #image("Diagrama de barras con leyenda 2.png", width: 70%)
     ]
]
