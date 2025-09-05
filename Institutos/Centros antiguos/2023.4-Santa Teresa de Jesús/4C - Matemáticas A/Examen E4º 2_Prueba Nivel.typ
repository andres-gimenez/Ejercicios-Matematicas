#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.2.0": g-exam, g-question, g-subquestion

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo:image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas A",
    number: "(Ejercicio)",
    content: "Funciones",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: false,
  question-point-position: left,
)

#set math.cases(reverse: true)
// #set text(18pt)

#g-question[Una empresa de transporte nos cobra 0,2€ por kilómetro más 10€ fijo por trayecto, mientras que una segunda  oferta nos cobra 0,3€ por kilómetro más 5€ fijos por trayecto.]

#g-subquestion[Indica la expresión algebraica que representa el precio de cada compañía en función de los kilómetros del transporte.]
#v(1fr)

#g-subquestion[¿A partir de qué cantidad me interesa elegir cada empresa?]
#v(4fr)

#pagebreak()
#g-subquestion[Representa en una gráfica el precio de las dos empresas.]

#align(center, 
              cetz.canvas(length: 0.7cm, {
                cetz.plot.plot(
                  // axes: ("x", "y"),
                  size: (20, 10),
                  axis-style: "school-book",
                  fill: "o" ,
                  fill-below: true,
                  // horizontal:false,
                  x-domain: (0, 100),
                  y-domain: (0, 30),
                  x-max: 100,
                  x-min: 0,
                  y-max: 350,
                  y-min: 0,
                  x-grid: "both",
                  y-grid: "both",
                  // x-tick-step: none,
                  x-tick-step: 5,
                  // x-ticks: ((-2, $-2$), (0, $0$), (2, $2$), (4, $4$), (6, $6$)),
                  y-tick-step: 40,
                  // x-minor-tick-step: 0.2,
                  // y-minor-tick-step: 0.2,
                  // y-minor-tick-color:
                    {
                      cetz.plot.add(((0,0),), mark-size: 0,)
                    }
                  )
                }
              )
      )