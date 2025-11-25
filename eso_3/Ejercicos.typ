#import "@local/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo:image("../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Crecimiento, decrecimiento, curvatura ],
    content: [máximos, mínimos y curvatura],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 22),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-columns()[Calcula y simplifica:]

$ 1 - 1 / 3 dot [1 - 1 / 2 dot (frac(- 2, 5) + 3 - 7 / 2)] $

a) $3 - 2 / 3 (1 - 1 / 4) + 3 / 8 dot (- 2)$

a) $3 - 2 / 5 (1 - 5 / 9) - (4 - 2 / 3) : 2$

a) $3 - 3 / 4 dot 2 / 5 + 2 (1 - 1 / 2)$

a) $4 / 5 - 2 / 5 : (1 / 3 - 2 / 5 dot 1 / 2)$

a) $5 / 2 - 1 / 2 dot (2 - 2 / 5 : 2 / 3)$

a) $5 / 4 - 3 / 4 dot (2 - 3 / 5 dot 5 / 6)$

a) $1 / 2 + 5 / 6 dot 3 / 10 - (1 - 4 / 5)$

$1 / 2 + 5 / 6 dot 3 / 10 - (1 - 4 / 5)$

$[(5 / 12 - 5 / 4) dot 6 / 5]^8041 - sqrt(- 19 + 100) med : [16 med : (3 - 5)^4]$

$ (- 2)^3 - (- 3)^2 + [- 1 dot (- 3)]^2 + (- 10 : 5)^3 + 4^2 $

$ (- 3)^(- 2) + (3 / 4)^(- 1) - (1 / 8)^0 - 3^(- 1) $

b) $(1 / 2 + 2 / 3 dot 1 / 4)^(- 2)$

b) $(1 / 12 : 1 / 6 - 1 / 6)^(- 2)$

b) $(1 - 3 / 5)^(- 2) : (4 / 25)^(- 1)$

b) $4 - (3 / 2 - 3 / 4)^(- 2)$

b) $2^(- 1) + (7 / 9 - 1 / 3)^(- 1)$

b) $(3 / 2 - 5 / 4)^(- 2) - 2 (1 - 1 / 3)^(- 1)$

b) $4 + (3 / 2 - 3 / 4)^(- 2) dot (7 / 9 - 1 / 3)^(- 1)$

2.- Calcula pasando previamente a fracción:

$1 , 5 + 3 , hat(6) - 0 , 2 hat(7)$

$0 , 6 + 0 , hat(6) - 0 , 0 hat(6)$

$3 , hat(6) - 0 , 2 hat(7)$

$1 , hat(6) - 0 , 0 hat(6)$

$0 acute med hat(6) med + med 0 acute 1 med hat(5) med + med 0 acute med 2$

$1 acute med hat(3) med + med 3 acute 1 med hat(6)$

3.- Descompón en factores y utiliza las propiedades de las potencias para simplificar esta expresión:

$ frac(3^4 dot 16^2 dot 9^2, 8^2 dot 3^5 dot 2^3) $

$frac(25^3 dot 10^(- 3) dot 20^2, 2^(- 2) dot 5^5)$

$frac(15^(- 4) dot 6^6, 12^2 dot 9^(- 6) dot 3^5)$

$ frac(8^3 dot 4^(- 4) dot 2^(- 7), 2^5 dot 16^(- 2)) $

$ frac(9^(- 6) dot 2^3 dot 27^3, 16^(- 3) dot 8^3) $

$ frac(8^10 dot 9^(- 1), 32^3 dot 27^(- 2) dot 3^2) $

$ frac(8^(- 2) dot 16, 25^(- 3) dot 125 dot 4^(- 1)) $

$ frac(32^(- 1) dot 9^4, 8^(- 5) dot 27^2 dot 4) $

$ frac((2^4)^(- 2) dot 32 dot 4^3, 16^(- 1) dot 8^3) $

$ frac(3^6 dot 2^8 dot 5^3, 9^3 dot 25^2 dot 4^4) = $

// #box(image("media/image5.wmf"))

4.- Efectúa:

$sqrt(2) dot sqrt(3) dot sqrt(6)$

$3 sqrt(2) dot sqrt(8)$

$ sqrt(27) med dot sqrt(3) $

$ sqrt(45) med : sqrt(5) $

$ 7 sqrt(50) - 5 sqrt(8) - 2 sqrt(18) $

$ 3 sqrt(32) - sqrt(18) + 2 sqrt(50) $

$ 2 sqrt(125) - 5 sqrt(45) + sqrt(20) $

$ 3 sqrt(18) - 2 sqrt(32) - sqrt(50) $

$ 5 sqrt(12) + 3 sqrt(27) - sqrt(75) $

$ sqrt(27) - sqrt(12) + sqrt(75) $

2$sqrt(125) - 5 sqrt(45) + sqrt(20)$

$ 5 sqrt(18) - 7 sqrt(50) + 6 sqrt(98) $

// #box(image("media/image6.wmf"))

// #box(image("media/image7.wmf"))

6.- Leyendo 90 páginas diarias, Raquel terminó un libro en 15 días. Si hubiera leído 75 páginas diarias, ¿cuántos días habría tardado?

6.- En el almacén de un comedor escolar hay aceite suficiente para hacer la comida de 150 alumnos durante 24 días. ¿Cuánto les durará el aceite si se apuntan al comedor 30 alumnos más?

4.- Utilizamos 60 barcas para trasladar 840 personas a una isla. ¿Cuántas barcas necesitaría para trasladar a 1.008 personas?

4.- Trabajando simultáneamente y con la misma productividad, 314 personas tardaron 20 años en construir un monumento. ¿Cuántas personas habrían tenido que trabajar de haber tenido que construir el monumento en 8 años?

#strong[5.- Cinco] #strong[fotocopiadoras] tardan #strong[6 minutos] en hacer #strong[600 fotocopias];. Si ponemos en funcionamiento #strong[siete fotocopiadoras] y queremos hacer #strong[1400 fotocopias];. ¿#strong[Cuánto tiempo] tardarán?

7.- Un ganadero necesita 600 kg de pienso para alimentar a 40 vacas durante 8 días. ¿Durante cuántos días podrá alimentar a 20 vacas con 1500 kg de pienso?

4.- Una familia de 5 miembros puede mantenerse durante 8 meses con 500 euros. ¿Cuántas personas podría mantenerse durante 15 meses con 30.000 euros?

1.- Si 18 máquinas mueven 1200 $m^3$ de tierra en 12 días, ¿cuánto tardarán 24 máquinas en mover 1600 $m^3$ de tierra?

1.- Tres amigos han puesto 12 €, 8 € y 5 €, respectivamente, para participar en un sorteo de Lotería. Si les ha correspondido un premio de 4000 €, ¿qué cantidad debe quedarse cada uno al repartirlo?

#strong[1.-] María, Inés y Sara han organizado un viaje para los alumnos de un Instituto. Han cobrado 1500 euros por el trabajo realizado. María trabajó 12 días, Inés 8 días y Sara 10 días. ¿Cuánto dinero le corresponderá a cada una si el reparto se hace de manera proporcional a los días trabajados?

#strong[3.-] Luis va a repartir 80€ entre sus tres hijos de forma inversamente proporcional al número de horas que han pasado con la consola el fin de semana. Pablo ha pasado 10h, Juan 1h y Marta 2h. ¿Cuántos euros le corresponden a cada uno?

4.- Un empresario reparte 340 € entre tres trabajadores de forma inversamente proporcional a los días que han faltado en el mes, que son 1, 2 y 5. ¿Cuánto le corresponde a cada uno?

1.- En una Olimpiada Europea de Matemáticas se conceden tres premios inversamente proporcionales a los tiempos empleados en la resolución de los ejercicios. Los tiempos de los tres primeros clasificados han sido 3, 5 y 6 horas. Calcula cuánto dinero recibe cada uno si hay 42000 euros para repartir.

8.- Hoy he devuelto a mi hermano 270 €, lo que supone el 30% de lo que me prestó. ¿Cuánto dinero me prestó?

2.- Jaime ha pagado 27 € por una camisa que costaba 36 €. ¿Qué porcentaje de descuento le han aplicado?

3.- La casa que alquilé en julio del año pasado, por 3.250€ todo el mes, la he vuelto a alquilar en julio de este año por 2.600€. Calcula el índice de variación respecto al precio del verano pasado.

5.- A Sonia le han aplicado un 20% de rebaja en el seguro del coche por no haber tenido accidentes. Si ahora le cuesta 600 €, ¿cuánto pagaba anteriormente?

3.- Hoy he hecho un pedido de 2Kg. de mazapán en una confitería de Toledo y, por ser cliente habitual, me han hecho un 20% de descuento. Si al final he pagado 50’80€, ¿cuál es el precio de 1Kg de mazapán?

1.- En un partido de fútbol, el equipo local tuvo el 60% de posesión del balón. El primer tiempo se prolongó en 2 minutos y el segundo en tres minutos. ¿Cuánto tiempo tuvo el balón el equipo visitante?

#strong[4.-] #strong[\a)] Me he comprado una Tablet por 549 €. Si me han hecho un descuento del 10%, ¿cuál era su precio original?

#strong[\b)] Mi hermano se ha comprado un móvil, que costaba 250 €, y ha pagado 235 €, ¿qué porcentaje le han rebajado?

1.- En el mes de enero rebajaron en un 10% una sudadera que costaba 60 euros. En febrero, la rebajaron otro 10%. ¿Cuál fue su precio después de estas dos rebajas?

1.- El precio inicial de un ordenador portátil era de 300 euros. A lo largo del tiempo ha sufrido las siguientes variaciones: en septiembre, subió un 10%; y en enero, bajó un 20%. ¿Cuál es su precio actual?

1.- En el mes de enero rebajaron en un 10% un artículo. En febrero, lo rebajaron otro 10%; y en marzo, un 10% más. Calcula el porcentaje de variación respecto del precio inicial.

1.- El precio de un ordenador portátil ha sufrido a lo largo del tiempo las siguientes variaciones: subió un 10%, subió otro 10% y bajó un 20%. Calcula el porcentaje de variación respecto del precio inicial.

3.- El precio de una bicicleta estática se ha incrementado en un 10% durante el mes de septiembre. A finales de octubre, veo que ha vuelto a subir un 25%. Si a principios de septiembre costaba 450€, ¿cuál será su precio en el mes de noviembre? (Indica cuál es el índice de variación total)

#strong[5.-] Un comerciante sube un 10 % el precio de las lavadoras; pero al cabo de un tiempo, para liquidar género, aplica un descuento del 20 % sobre los precios nuevos.

#strong[\a)] ¿Cuánto tenemos que pagar por una lavadora que, antes de cambiar los precios, costaba 650 €?

#strong[\b)] ¿Cuál ha sido el índice de variación total?

1.- El precio inicial de un ordenador portátil era de 300 €. A lo largo del tiempo ha sufrido las siguientes variaciones: subió un 10%, subió otro 10% y bajó un 20%.

#block[
  #set enum(numbering: "a)", start: 1)
  + ¿Cuál es su precio actual?

  + ¿Cuál es la variación total expresada en porcentaje?
]

#strong[6.-] En un almacén, el stock de televisores era de #strong[600 unidades] en el mes de septiembre. De cara al Black Friday #strong[aumentaron un 20 %] y, después, para cubrir la campaña navideña, lo han vuelto a #strong[aumentar un 10 % con respecto al número anterior];. ¿#strong[Cuántos televisores tienen al final];?

#strong[7.-] Una #strong[guitarra] de #strong[800 euros] #strong[sube] el #strong[50 %];. Después, #strong[baja] el #strong[50] %.

a) ¿Cuál es su #strong[precio final];?

b) ¿Cuál es la #strong[variación porcentual] que ha sufrido respecto al precio inicial?

#strong[6.-] Realiza las siguientes operaciones con polinomios:

$upright(bold(a \)))$ $2 (3 x^4 - 2 x^3 - 4 x - 2) - 3 (x^3 - 2 x^2 - 3 x + 1)$

$upright(bold(b \)))$ $(2 x - 5) (x + 2) + 3 x (x + 2)$

$upright(bold(c \)))$ $2 (3 - x) (2 x - 5) - (6 x^2 - 10 x - 12)$

$upright(bold(d \)))$ $(x^2 - 3) (x + 1) - (x^2 - 5) (x + 2)$

#strong[3.-] Realiza las siguientes operaciones:

a) $(6 x^2 - x) - (3 x^2 - 5 x + 6) =$

b) $3 x^2 dot (x^2 - 2 x) =$

c) $(3 x - 2) dot (2 x^2 + 4 x - 3) =$

d) $4 (2 x^2 - 2 x - 1) - 3 (x^2 + x + 2) =$

e) $4 x + (2 x - 1) + 5 x - (4 x - 2) =$

f) $(2 x - 5) dot (x + 2) + 3 x dot (x + 2) =$

g) $(x^2 - 3) dot (3 x + 2) - (2 x^2 + 5) dot (x - 2) =$
