#set page(width: 21cm, height: 29.7cm, margin: 2cm)
// #set text(overhang: true)
#set par(justify: true)
#set heading(numbering: "1.")
#show heading.where(level:1): set text(blue)

#align(center)[
  #text(size: 1.5em, weight: "bold")[Criterios de Corrección – Matemáticas 2º Bachillerato]
]

#v(1em)

#heading[Estructura general de la calificación]

Cada examen se calificará sobre *10 puntos*, distribuidos entre los ejercicios del modo siguiente:

- Ejercicio 1: 2 puntos  
- Ejercicio 2: 3 puntos  
- Ejercicio 3: 2,5 puntos  
- Ejercicio 4: 2,5 puntos

La suma total será *10 puntos*.

#v(0.8em)

#heading[Criterios generales de evaluación]

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt,
  fill: (x, y) => 
    if y == 0 {rgb("#d0e4ff")},
  rows: (25pt, auto),
  align: (left, left, center),
    [*Aspecto*], [*Descripción*], [*Peso orientativo*],
    "Procedimiento", "Aplicación correcta de fórmulas, teoremas y razonamientos.", "60 %",
    "Resultado", "Correcto y coherente con los datos del problema.", "20 %",
    "Presentación y claridad", "Orden, notación adecuada y justificación.", "10 %",
    "Corrección formal", "Cálculos, signos, unidades y escritura matemática.", "10 %",
)

#v(0.8em)

#heading[Penalizaciones orientativas]

#table(
  columns: (auto, auto),
  stroke: 0.5pt,
  fill: (x, y) => 
    if y == 0 {rgb("#d0e4ff")},
  rows: (25pt, auto),
  align: (left, left),
    
    [*Tipo de error*], [*Penalización*],
    "Error de cálculo aislado", "−0,25 puntos",
    "Error de planteamiento parcial", "−0,5 puntos",
    "Falta de justificación del resultado", "−0,5 puntos",
    "Error conceptual grave o método incorrecto", "−1 punto o anulación del apartado",
    "Notación incorrecta reiterada", "−0,25 puntos",
    "Error arrastrado pero bien usado después", "No se vuelve a penalizar"
)

#v(0.8em)

#heading[Criterios específicos por tipo de ejercicio]

*Límites y continuidad:*  
Se valora la identificación de indeterminaciones, el uso de propiedades y la justificación de la existencia o no del límite.  

*Derivadas y aplicaciones:*  
Se debe mostrar el proceso de derivación y analizar correctamente el signo de la derivada para justificar crecimiento o extremos.  

*Integrales:*  
Debe indicarse el método empleado (sustitución, partes, etc.) y comprobar el resultado mediante derivación.  
La falta de la constante “+ C” resta 0,25 puntos.  

*Probabilidad y estadística:*  
Se valora la elección correcta del modelo, la claridad de los pasos y la coherencia de los resultados.  

*Geometría:*  
Es importante la interpretación de los elementos (vectores, planos, rectas) y la correcta justificación de relaciones como paralelismo u ortogonalidad.

#v(0.8em)

#heading[Presentación del examen]

- Usar notación matemática correcta y clara.  
- Subrayar o destacar los resultados finales.  
- Evitar tachones y mantener una presentación limpia.  
// - No se penaliza el uso de lápiz si el texto es legible.

#v(0.8em)

#heading[Criterios de recuperación o segunda corrección]

- Si el planteamiento es correcto pero hay errores de cálculo, podrá obtenerse hasta un *70 %* de la puntuación del apartado.  
- Si solo se da el resultado sin justificar, se podrá alcanzar como máximo el *40 %*.  
- Se mantiene el mismo baremo que en la evaluación ordinaria.

#v(1em)

#align(center)[
  _Departamento de Matemáticas - Curso 2º de Bachillerato_
]