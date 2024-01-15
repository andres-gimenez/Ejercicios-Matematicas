#import "./exam.typ": exam, question, subquestion
// #import emoji: *

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
    academic-level: "1º ESO",
    academic-subject: "Atención educativa",
    number: "1º Evaluación",
    content: "Adicciones",
    model: none
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "Diciembre 21, 2023",
  show-studen-data: true,
  show-grade-table: false,
  question-point-position: right,
  // clarifications: (
  //   [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   // [Se podrán quitar hasta cinco décimas por falta de claridad o rigor en el desarrollo de las respuestas o por una mala presentación.],
  //   // [Se valorará que se indiquen las cuentas en línea, realizando las operaciones en el margen.],
  //   [Está permitido utilizar la calculadora.],
  //   [No está permitido compartir material durante el examen.],
  // )
)

#set heading(
  numbering: "1.", 
  level: 1)
  #show heading: it => [
    #set text(style: "normal", weight: "medium")
    #counter(heading).display() #it.body
  ]


= Jugar videojuegos o ir de compras puede ser tan dañino como fumar:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= El azucar y los refrescos pueden crear adicción:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= El salir de compras puede crear adicción:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= La palabra adicción viene del latín Addictus, que significa esclavitud: 
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= Las adicciones son fácilmente controlables: 
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= Cada tipo de adicción actúa a todo el mundo por igual: 
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= Solo las adicciones a sustancias ilegales como las drogas, alcohol o tabaco, nos dificultan en alcanzar nuestras metas:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= La adicción a videojuegos solo nos llevará el número de horas que yo tenga controladas:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

=  Las adicciones solo nos afectan físicamente y no pueden producir pensamientos obsesivos:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

=  La ausencia de la sustancia o actividad que provoca la adicción solo provoca sufrimiento a traves del dolor físico:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

=  La ludopatía o adicción a los juegos de apuestas, solo producen adicción mientras nos dure el dinero:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

=  Los familiares o amigos de una personan no pueden influir en lo susceptible que es a las adicciones, porque las adicciones son algo personal:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

=  Estamos expuesto por igual a cualquier tipo de adicción independientemente de nuestra edad, sexo, nivel social o entorno personal:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= Los factores de riesgo en las adicciones no tienen ninguna relación con causas hereditarias:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down

= Si no pertenezco a un grupo de riesgo atribuido a un tipo de adicción, no me tengo que preocupar porque no puedo caer en ese tipo de adicción:
  - Verdadero: #emoji.thumb.up
  - Falso: #emoji.thumb.down


#v(2cm)

#align(right,
[
Número de preguntas correctas:

#rect()
])