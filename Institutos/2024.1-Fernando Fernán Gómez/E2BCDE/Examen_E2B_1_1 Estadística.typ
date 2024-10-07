#import "@preview/g-exam:0.3.2": *

// #set text(font:"OpenDyslexic")
// #set text(font: "New Computer Modern")

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
  question-text-parameters: (font:"OpenDyslexic")
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

=? 1 Indica si son variables estadísticas y en caso de serlo, indica de que tipo son:

==? Distancia recorrida por un jugador en un partido de futbol.
#v(1fr)

==? Color de los ojos de los alumnos de 2º. 
#v(1fr)

==? Canastas encestadas por los jugadores de un equipo de baloncesto.
#v(1fr)

==? Dimensiones de los pupitres del aula. 
#v(1fr)

==? Tiempo de espera en la cola del supermercado.
#v(1fr)

==? Número de pacientes en una sala de espera.
#v(1fr)

=? 1 En un instituto donde hay 1.200 alumnos se quiere hacer un estudio de la talla y el peso de los alumnos, para ello se escogen a 40 alumnos aleatoriamente, a los cuales se les mide y se les pesa. Indica cuales son las variables aleatorias del estudio, el individuo, la población, la muestra, el tamaño de la población y el tamaño de la muestra.
#v(3fr)

#pagebreak()

=? En un club deportivo juvenil admiten socios con edades entre 12 y 18 años. Al preguntar la edad de los socios, obtenemos estas respuestas.

#align(center, [12, 12, 13, 15, 15, 12, 18, 18, 17, 17, 14, 14, 14, 15, 18, 13, 13, 17, 16, 16, 12, 12, 14, 14, 14]) 

==? 4 Completa la siguiente tabla de frecuencias, redondeando a dos decimales y siendo: \ 
  - $x_i$: Valor del carácter estadístico.
  - $n_i$: Frecuencia absoluta.
  - $N_i$: Frecuencia absoluta acumulada.
  - $f_i$: Frecuencia relativa.
  - $p_i %$: Frecuencia relativa (en porcentaje).
  // - $F_i$: Frecuencia relativa acumulada.
  
#align(center,
  table(
    fill: (x, y) =>
      if(y == 0) { luma(230) },
    // columns: (1.5cm, 1.5cm,  1.5cm, 1.5cm, 1.5cm, 1.5cm),
    columns: (2.5cm, 2.5cm,  2.5cm, 2.5cm, 2.5cm),
    rows: (1.2cm,)*8,
    // [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$f_i$ %],[$F_i$]
    [$x_i$],[$n_i$], [$N_i$], [$f_i$],[$p_i$ %]
))

#pagebreak()

==? 1 Dibuja un diagrama de barras y de sectores (con los datos del primer apartado).
#v(1fr)

==? 3 Calcula la moda, la media y la mediana (con los datos del primer apartado).
#v(1fr)

