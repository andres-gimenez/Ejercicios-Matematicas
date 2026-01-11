#import "@preview/g-exam:0.4.2": *

// #set text(font:"OpenDyslexic")
// #set text(font: "New Computer Modern")

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andrés",
  ),
  school: (
    name: "IES Fernando Fernán Gómez",
    // logo:image("../../logo-ies_fernando_fernan_gomez.png")
  ),
  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación",
    content: "Regla de tres",
    // model: "Modelo A"
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year:2024, month:1, day:8),
  show-student-data: false,
  show-grade-table: false,
  question-points-position: right,
  // question-text-parameters: (font:"OpenDyslexic")
)

// #text(font: "Linux Libertine", style: "italic")[Italic]
// #set text(font:"Linux Libertine", style: "italic")
// #set text(font:"Open Dyslexic")
// #set text(font:"OpenDyslexic")

#set math.cases(reverse: true)

#question()[Para fabricar 30 kg de chocolate se necesitan 10 kg de cacao. 
¿Cuántos kg de chocolate se podrán fabricar con 64 kg de cacao?]

#question()[Una moto recorre 30 km en 15 minutos. ¿Cuántos kilómetros recorrerá en 2 horas? 
    ¿Y cuánto tardará en recorrer 50 km?]

#question()[Diez obreros tardan 2 meses en construir una casa. ¿Cuántos días tardarían 15 obreros?]

#question()[Un autobús tarda una hora en hacer su trayecto a una velocidad de 80 km/h. Si aumentase la velocidad en 20 km/h, ¿en cuánto haría su trayecto?]

#question()[Un artesano fabrica 21 jarrones en 3 días. 
¿Cuántos jarrones producirá en 2 días? 
¿Cuántos días tardará en realizar 280 jarrones?]

#question()[Si 46 papeleras cuestan 368€, ¿cuánto cuesta 20 papeleras?]

#question()[Para hacer una tarta de queso de 3 kilos hemos de utilizar 1,20 kilos de queso. ¿Cuánto queso hemos de utilizar para hacer una tarta de 4,5 kilos?]
    
#question()[Un grifo que arroja 18 litros por minuto emplea 28 horas en llenar un depósito. ¿Qué tiempo emplearía si su caudal fuera de 42 litros por minuto?]

#question()[En un día 30 obreros producen 600 piezas. ¿Cuántas piezas producirían si fueran 45 obreros?]

#question()[Un granjero tiene pienso para alimentar a 12 vacas durante 60 días. Compra 8 vacas. ¿Cuánto le durará el pienso?]

#question()[En 5 días, 3 alumnos han conseguido vender 930 papeletas de una rifa para el viaje fin de curso. 
    ¿Cuántos días tienen que dedicar para vender 2.170 papeletas?]

#question()[Un barco hace la travesía del Atlántico en 5 días si mantiene una velocidad de 22,5 nudos. 
    ¿Cuál debe ser su velocidad si el tiempo ha de reducirse a 4,5 días?]

#question()[Nueve trabajadores cargan un camión en 2 horas. ¿Cuánto tardan seis trabajadores?]

#question()[Había comprado 12 kg de café por 30 euros, pero por error solo me envían 4,5 kg. ¿Cuánto debo pagar?]

#question()[Por tres horas de trabajo, Pedro ha cobrado 60 euros. ¿Cuánto cobrará por 8 horas?]

#question()[Sara y Pedro le quieren comprar un regalo a Laura que les cuesta 24 € a cada uno. 
¿Cuánto tendrá que poner cada uno si al final también participan en el regalo Diego, Juan y Clara?]

#question()[Juan mide 175 cm y pesa 70 kg. ¿Cuánto pesa su amigo Gonzalo que mide 5 cm más que él, si los dos están en la misma proporción?]

#question()[Si tres kilos de naranjas cuestan 4,00€, ¿cuántos kilos de naranjas se pueden comprar con 34,00€?]

 #question()[Si 42 metros de tela cuestan 1.050€, ¿cuántos metros podremos comprar con 450€?]

#question()[En una mina de carbón, de cada 1.000 kg de material extraído, solamente se obtienen 600 kg de carbón. 
¿Cuántos kg se habrán obtenido en un día en que se extrajeron 20.000 kg de material?]

#question()[En misma mina, el motor sube la vagoneta cargada de roca en 3,5 minutos cuando da 360 revoluciones por minuto. 
Si suben la potencia del motor a 420 revoluciones por minuto, ¿cuánto tiempo tardará en subir la vagoneta cargada?]

#question()[Al llegar al hotel nos han dado un mapa con los lugares de interés de la ciudad, 
y nos han dicho que 5 cm del mapa representan 600 metros de la realidad. 
Hoy queremos ir a un parque que se encuentra a 8 cm del hotel en el mapa. ¿A qué distancia real del hotel se encuentra este parque?]

#question()[Una obra puede estar acabada por 20 albañiles en 14 días. ¿Cuántos obreros hay que añadir para que la obra se termine en 8 días?]

#question()[Una granja de conejos recibe un pedido de pienso y llena el depósito, 
con lo que tienen comida para sus 150 conejos durante 12 días. 
Pero deciden vender 30 conejos, ¿cuántos días podrán comer los conejos con ese depósito lleno?]

#question()[En un taller de confección, si se trabajan 8 horas diarias se tardan 6 días en servir un pedido. 
¿Cuánto se tardará en servir el pedido si se trabajan 12 horas diarias?]

#question()[Para empapelar un salón se necesitan 40 m de papel de 0,65 m de ancho. Si los rollos tuvieran un ancho de 0,55 m, 
¿cuántos metros de papel pintado se necesitarían para empapelar el mismo salón?]

#question()[Un coche, que mantiene una velocidad constante de 100 km/h, tarda en realizar el trayecto Madrid-Barcelona, 6 h 15 min. 
¿Cuánto tardará otro coche que mantiene una velocidad de 115 Km/h?]

#question()[Si una máquina embotelladora llena 240 botellas en 20 min, ¿cuántas botellas llenas en hora y media?]

#question()[Ayer 2 camiones transportaron una mercancía desde el puerto hasta el almacén. 
Hoy 3 camiones, iguales a los de ayer, tendrán que hacer 6 viajes cada uno para transportar la misma cantidad de mercancía del almacén al centro comercial. 
¿Cuántos viajes tuvieron que hacer ayer los camiones?]

#question()[Una receta de tarta de manzana nos especifica los siguientes ingredientes para 6 personas: 

#stack(dir:ltr,
[
  #h(1cm)
],
[
  - 365 g. de harina.
  - 4 huevos 
  - 300 g. de mantequilla 
  - 250 g. de azúcar 
  - 6 manzanas. 
])

Calcula los ingredientes necesarios de una tarta de manzana para 15 personas.]
    
// #question()[Indica si hay proporcionalidad directa, inversa o si no hay ninguna proporcionalidad:]
// #subquestion()[Cantidad de personas que viajan en un autobús y dinero recaudado.]
// #subquestion()[Cantidad de refrescos que caben en una caja y diámetro de las botellas.] 
// #subquestion()[Número de litros que escapan por segundo en el desagüe de una piscina y diámetro del desagüe.] 
// #subquestion()[Velocidad media de un ciclista y distancia recorrida.]
// #subquestion()[Número de vueltas que da una rueda para recorrer una distancia y diámetro de la rueda.] 
//   #subquestion()[Número de comensales para zamparse una tarta y cantidad que come cada uno.]
// #subquestion()[Tiempo que tarda un balón en caer al suelo y altura desde la que se lanza.]
// #subquestion()[Número de horas que está encendida una bombilla y gasto que ocasiona.] 
// #subquestion()[Número de peldaños de una escalera de altura fija y anchura de ellos.]
// #subquestion()[Número de goles marcados por un equipo y partidos ganados.]
// #subquestion()[El número de libros que caben en una estantería y el grosor de estos.]
// #subquestion()[La velocidad a la que corre una moto y el tiempo que tarda en hacer un determinado trayecto.]
// #subquestion()[El número de litros de agua y el número de botellas que los contienen.]
//   #subquestion()[El número de sandías que hay en un camión y el peso de éste.]
// #subquestion()[El número de cromos que reparto entre mis amigos y el número de amigos.]
// #subquestion()[El número de personas en un campamento y el número de raciones de comida.]
// #subquestion()[ El número de líneas de cada página y el número de páginas de una novela.]
// #subquestion()[Número de horas dedicadas a las matemáticas y nota de mi examen.]
// #subquestion()[Peso y estatura de una persona.]

// #question()[¿Qué distancia real medida en kilómetros hay entre dos ciudades que están separadas por 40 cm en un mapa a escala 1:500.000?]

// #question()[¿Qué distancia real, medida en kilómetros, hay entre dos ciudades que están separadas por 50 cm. en un mapa a escala 1:100.000?]

// #question()[En un mapa la distancia entre dos puntos es de 5 cm y en la realidad es de 2.500 m. ¿Cuál es la escala del mapa?]

// #question()[Si en la escala gráfica de un mapa 1 kilómetro equivale a 4 centímetros, ¿cuál es la escala de ese mapa?]

// #question()[¿A cuántos cm equivalen en un mapa de escala 1: 400.000, 5 km. de terreno en la realidad?]

// #question()[¿Qué distancia real, medida en kilómetros, hay entre dos ciudades que están separadas por 50 cm en un mapa a escala 1:1.000.000?]
