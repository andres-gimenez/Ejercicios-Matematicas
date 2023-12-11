#import "./exam.typ": exam, question, part

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES África",
    logo: "logo-ies_africa.jpeg",
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "4º ESO",
    academic-subject: "Matemáticas A",
    number: "1º Evaluación 3º Examen",
    content: "Repartos proporcionales y polinómios",
    model: none
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "Diciembre 21, 2023",
  show-studen-data: true,
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
    [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    // [Se podrán quitar hasta cinco décimas por falta de claridad o rigor en el desarrollo de las respuestas o por una mala presentación.],
    // [Se valorará que se indiquen las cuentas en línea, realizando las operaciones en el margen.],
    [Está permitido utilizar la calculadora.],
    [No está permitido compartir metarial durante el examen.],
  )
)

#question(point: 3)[Simplifica estas expresiones:]
  // Pones más facil.
  #part[
    $display(5x dot [(2x^2 + x - 1) - 3 dot (x^2 -x +3)])$
  ]
  #v(1fr)

  #part[
    $display((2x+3) dot (3x - 5) - (x^3 + 2x - 7))$
  ]
  #v(1fr)

#pagebreak()

  #part[
    $display(2/(x+1)+ x/(x-1) = )$
  ]
  #v(1fr)

#pagebreak()

#question[El número de personas que acceden a un comercio en cada hora puede estimarse a partir de la expresión $P(x)=-x^2+8x$ 
y el número de personas que sale, la la expresión $Q(x)=-0,25x^2+2x$, donde $x$ representa el número de horas desde su apertura.]

  #part(point: 1)[Indica cúantas personas entran en el comercio durante la segunda hora y cuántas salen.]
  #v(1fr)

  #part(point: 2)[Indica la expresión que calcula el número de personas que hay en el interior del comercio a cualquier hora.]
  #v(2fr)

  #part(point: 1)[¿Cuántas personas hay en el comercio en la segunda hora? ¿y en la cuarta?]
  #v(1fr)

#pagebreak()

#question[En un restaurante, se divide la jornada laboral en turnos de comida y cena, realizando cuatro horas en cada turno. 
Los cuatro camareros se reparten la jornada laboral de la siguiente manera:
Marta trabaja de lunes a viernes en el turno de comidas y cenas;
Juan trabaja los viernes solo en el turno de cena y los sábados y domingos realiza los turnos de comida y cena;
Ignacio trabaja de jueves a domingo, realizando solo el turno de comidas
y Consuelo trabaja en el turno de noche, los viernes, sábados y domingos.]
  
  #part(point: 1)[Calcula las horas semanales que realiza cada camarero.]
  #v(1fr)

  #part(point: 2)[¿Si durante la semana han recaudado 1.300€ de bote, cuanto le corresponde a cada camarero si se reparte en función de las horas trabajadas durante la semana?]
  #v(1fr)
