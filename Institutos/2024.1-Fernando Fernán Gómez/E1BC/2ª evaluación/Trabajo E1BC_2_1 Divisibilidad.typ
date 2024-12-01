#import "@preview/g-exam:0.4.1": *
#import "@preview/wrap-it:0.1.0": wrap-content


#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º evaluación - Ficha 1",
    content: "Divisibilidad",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: "odd-pages",
  show-grade-table: false,
  question-points-position: right,
 
)

#set math.cases(reverse: true)

#wrap-content(box(height:4cm, image("./Eratostenes.jpeg"), inset:0.2em), 
[Eratóstenes fue un matemático, astrónomo y geógrafo griego, que nació en el año 276 a.C. Fue la primera persona en calcular el diámetro de la tierra, estimo la inclinación del eje de la tierra, dio una estimación de la distancia de la Tierra al Sol y fue el primero en proponer el incluir un día cada cuatro años, lo que terminaron siendo los años bisiestos.],
align: right)

#question()[Otra aportación importante fue un método para buscar números primos, llamado criba de Eratóstenes. La cual consiste en los en realizar los siguientes pasos.

- El número $1$, no es primo, ya que es la unidad, pues lo tachamos.
- Tomamos el 2, como no es divisible por ninguno de los anteriores, salvo el 1, es primo. Así que lo rodeamos con un círculo.
- Todos los múltiplos del 2, salvo el 2, no son primos, ya que son divisibles entre dos. Así que los tachamos.
- Buscamos el siguiente número que no está tachado, que en el 3. Como no es múltiplo de ninguno de los anteriores, solo es divisible entre 1 y entre si mismo, así que es primo. Lo rodeamos con un círculo.
- Tomamos todos los múltiplos de 3, salvo el 3, que al ser divisibles entre 3 no son primos. Los tachamos.
- Buscamos el siguiente número sin tachar que es el 5, que será nuestro siguiente número primo y repetimos los mismos pasos que hemos hecho para el 2 y 3, pero esta vez con el 5.
- Repetimos esta tarea, hasta tener todos los números o tachados o rodeados por un círculo y sabremos cuales son todos los primos menores a 100. 
]
#align(center)[

#text(21pt)[#table(
  columns: 10,
  ..range(1, 101).map(str)
)]]

#pagebreak()

#wrap-content(box(height:5cm, image("./Relog10horas.jpg"), inset:0.2em), 
[Tras el existo del sistema de medidas que fue el Sistema Métrico Decimal, basado en múltiplos de 10, hubo un intento de llevar la misma idea para medir el tiempo, estableciendo relojes de 10 horas, en la que cada hora tenía 100 minutos y cada minuto 100 segundos.

Sin embargo, esta idea no tuvo tanta aceptación como el resto de medidas y se dejó de utilizar.],
align: left)

#question()[Para analizar porque no triunfó los relojes de 10 horas, 100 minutos y 100 segundos, sigue los siguientes pasos]

#subquestion()[Calcula los divisores de 10 y de 12. ¿Cual tiene más?]
#v(1fr)

#subquestion()[Compara de cuantas formas podemos dividir el día con un reloj de 10 horas y otro de 12 horas. ]
#v(2fr)