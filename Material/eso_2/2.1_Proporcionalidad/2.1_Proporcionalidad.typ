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
    content: "Proporcionalidad",
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year:2025, month:1, day:21),
  show-student-data: false,
  show-grade-table: false,
  question-points-position: none,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
)

#set math.cases(reverse: true)

#question[En una granja avicola hay 300 gallinas que se comen un camión de grano en 20 días.
    Si se compran 100 gallinas más
    ¿En cuánto tiempo comerán la misma cantidad de granos?]
    
  #question[Por cada 24 kg de aceutanas se obtienen 6 litros de aceite. 
    ¿Cuántos litros se obtienen con 5.000 kg de aceitunas?]

#question[Seis grifos, tardan 10 horas en llamar un depósito de 500 $m^2$ de capacidad. 
    ¿Cuantas horas tardarán cuatro grifos en llenar 1.000 $m^3$ cada uno?]

#question[Juan tiene tres hijos: Marta de 6 años, Juan de 8 años y Pablo de 9 años. 
    Para premiar su desempeño en la escuela, Juan quiere entregarle 667 figuritas del mundial de fútbol.
    Para que la entrega sea más justa, Juan reparte las figuritas proporcionalmente, de acuerdo a las edades de sus hijos.
    ¿Cuántas figuritas le tocan a cada hijo?]

#question[En unas elecciones para escoger al representante escolar han votado 3.400 alumnos de la universidad,
    que representan el $75\%$ del total de alumnos. 
    ¿Cuántos alumnos hay en total en la universidad?]

#question[El precio de una estantería, incluido un IVA del $21\%$, es igual a 847€. 
    ¿Cuál es el precio de la estantería sin IVA?]

#question[Un agricultor vende 120 kg de naranjas de los 600 kg que tenía en total. 
    ¿Qué porcentaje suponen del total de naranjas los kilos que ha vendido?]

#question[Después de una rebaja del $13\%$ una chaqueta cuesta 37,41€. 
    ¿Cuál era el precio de la chaqueta antes del descuento?]

#question[Compramos un televisor cuyo precio es de 240€ sin IVA. 
    El dependiente nos hace un descuento de un $20\%$ de esa cantidad y, después, aumenta un $21\%$ de IVA,
    ¿cuánto dinero tendremos que pagar?]


