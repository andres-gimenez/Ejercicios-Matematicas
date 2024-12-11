#import "@preview/g-exam:0.4.2": *
#import "@preview/wrap-it:0.1.0": wrap-content

// #set text(font: "comic-sans")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º evaluación - Hoja de ejercicios 1",
    content: "Divisibilidad",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  question-points-position: right,
 
)
// #set math.cases(reverse: true)

#question()[En un club de ajedrez, Ana y Luis juegan torneos regularmente. Ana participa en
un torneo cada 4 días, mientras que Luis lo hace cada 6 días. Si ambos jugaron un
torneo hoy, ¿cuántos días pasarán hasta que vuelvan a coincidir en un torneo?]

#question()[Si los tornillos se venden en cajas de 50 unidades y las tuercas en cajas de 45, ¿cuántas cajas de cada tenemos que comprar para tener una rosca por cada tornillo?]

#question()[Mónica quiere pintar su casa. Necesitará 16 litros de pintura blanca, 36 litros de
pintura gris y 12 litros de pintura verde. Quiere comprar botes de pintura que
tengan los mismos litros, de capacidad más grande para que el número de botes
sea el menor posible. ¿De cuántos litros debe ser cada bote y cuántos botes de
cada color debe comprar como máximo?]

#question()[Marta quiere comprar lápices de color verde y morado. Los lápices verdes van en cajas de 
100 unidades, mientras que los morados van en cajas de 40.
¿Cuál es el mínimo número de cajas de cada color que debe comprar Marta para tener el mismo número de lápices de ambos colores?]

#question()[Un grupo de teatro tiene ensayos cada 9 días, y otro grupo cada 15 días. Si
ambos grupos se reunieron hoy, ¿en cuántos días volverán a reunirse al mismo
tiempo?]

#question()[En un evento de ajedrez, se deben empacar 60 relojes y 90 tableros en cajas, de
manera que cada caja tenga la misma cantidad de relojes y tableros. ¿Cuál es el
mayor número de cajas que se pueden usar?]

#question()[En un torneo de 24 jugadores se agrupan en equipos y 36 relojes se
distribuyeron equitativamente entre los equipos. ¿Cuál es el mayor número de
equipos que se pueden formar, de manera que cada equipo tenga la misma
cantidad de jugadores y relojes?]

#question()[El auto que se va a comprar Pablo necesita un cambio de aceite cada 40.000km y
de neumáticos cada 90.000km. ¿En cuántos kilómetros coincidirá por primera vez
el cambio de aceite y de neumáticos?]

#clarification()[Consejo: Trabaja con 40 y 90. La solución la multiplicamos por mil.]
