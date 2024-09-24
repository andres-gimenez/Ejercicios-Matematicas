#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.2": *

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("./logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1º Evaluación",
    content: "Estadística",
    model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
#set text(font:"Open Dyslexic")

#set math.cases(reverse: true)

=? En un club deportivo juvenil admiten socios con edades entre 12 y 18 años. Al preguntar la edad de los socioes, obtenemos estas respuestas.

#align(center, [12, 12, 13, 15, 15, 12, 18, 18, 17, 17, 14, 14, 14, 15, 18, 13, 13, 17, 16, 16]) 

==? 4 Completa la siguiente tabla de frecuencias, redondeando a dos decimales y siendo: \ 
  - $x_i$: Valor del carácter estadístico.
  - $n_i$: Frecuencia absoluta.
  - $N_i$: Frecuencia absoluta acumulada.
  - $f_i$: Frecuencia relativa.
  - $f_i %$: Frecuencia relativa (en porcentaje).
  // - $F_i$: Frecuencia relativa acumulada.
  
#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    // columns: (1.5cm, 1.5cm,  1.5cm, 1.5cm, 1.5cm, 1.5cm),
    columns: (2.5cm, 2.5cm,  2.5cm, 2.5cm, 2.5cm),
    rows: (1.2cm,)*8,
    // [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %],[$F_i$]
    [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %]
))

==? 2 Calcula la moda, la media y la mediana.
#v(1fr)

#pagebreak()


#v(1fr)