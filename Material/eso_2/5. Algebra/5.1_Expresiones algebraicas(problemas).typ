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
    logo:image("../../" + config.at("school").at("logo")),
    watermark: "Profesor: Andrés",
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Problemas con expresiones algebraicas",
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: true,
  show-grade-table: "odd-pages",
  show-solutions: false,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
)

// #set math.cases(reverse: true)
#questions-pages(
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
    ])
  ]
)