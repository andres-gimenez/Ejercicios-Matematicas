#import "@preview/g-exam:0.4.4": *

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "Ejercicios",
    content: "Reto matemático",
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: "odd-pages",
  show-solutions: false,
)
  
$ a = b $

Multiplicamos ambos lados por $a$:

$ a^2 = a b $

Restamos $b^2$ en ambos lados:

$ a^2 - b^2 = a b - b^2 $

Factorizamos:

$ (a - b)(a + b) = b(a - b) $

Dividimos ambos lados por $(a - b)$:

$ a + b = b $

Sustituimos $a = b$:

$ b + b = b $

$ 2b = b $

Dividimos entre $b$:

$ 2 = 1 $

¿Donde está el error?