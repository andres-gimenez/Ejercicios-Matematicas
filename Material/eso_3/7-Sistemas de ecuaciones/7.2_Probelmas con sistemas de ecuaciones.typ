#import "@preview/g-exam:0.4.4": *

#let config = yaml("../../config.yaml")

#show: exam.with(
  author: (
    name: config.at("author").at("name"),
    email: config.at("author").at("email"),
    watermark: config.at("author").at("watermark"),
  ),
  school: (
    name: config.at("school").at("name"),
    logo:image("../../" + config.at("school").at("logo"))
  ),
  exam-info: (
    academic-period: config.at("exam-info").at("academic-period"),
    academic-level: "3º ESO",
    academic-subject: "Matemáticas",
    number: "Problemas",
    content: "Sistema de ecuaciones",
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year:2025, month:1, day:8),
  show-student-data: false,
  show-grade-table: false,
  question-points-position: none,
// show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
)

#set math.cases(reverse: true)

#question()[Una tienda vende camisetas y pantalones. 
Si una persona compra 3 camisetas y 2 pantalones y paga 80€, 
su amiga compra 4 camisetas y un pantalón y paga 65€.
¿Cuánto cuesta comprar una camiseta y un pantalón juntos?]

#question()[Un autobús transporta 72 personas. 
Hay adultos y niños en el autobús. 
Si el número de adultos es el doble que el de los niños, ¿cuántos adultos y niños hay en el autobús?]

#question()[En una frutería, dos kilos de manzanas y tres kilos de naranjas cuestan 12 euros. 
Tres kilos de manzanas y un kilo de naranjas cuestan 10 euros. 
¿Cuánto cuesta cada kilo de manzanas y de naranjas?]

#question()[En una granja hay gallinas y conejos. 
En total hay 20 animales y entre todos tienen 56 patas. 
¿Cuántas gallinas y cuántos conejos hay en la granja?]

#question()[En un partido de baloncesto, un equipo anotó 76 puntos. 
Este equipo consiguió un total de 30 canastas, algunas de 2 puntos y otras de 3 puntos. 
¿Cuántas canastas de cada tipo marcaron?]

 #question()[Dos ciclistas avanzan uno hacia el otro por una misma carretera. Sus velocidades son de 20km/h y de 15 km/h. Si les separan 78 km. ¿Cuánto tardarán en encontrarse?]

#question()[En un garaje hay 110 vehículos entre coches y motos y sus ruedas suman 360. ¿Cuántas motos y coches hay?]

#question()[En una granja hay doble número de gatos que de perros y triple número de gallinas que de perros y gatos juntos. ¿Cuántos gatos, perros y gallinas hay si en total son 96 animales?]

#question()[Una granja tiene cerdos y pavos, en total hay 35 cabezas y 116 patas. ¿Cuántos cerdos y pavos hay?]

#question()[Las tres cuartas partes de la edad del padre de Juan excede en 15 años a la edad de este. Hace cuatro años la edad del padre era el doble que la edad del hijo. Hallar las edades de ambos.]

#question()[Un padre tiene 34 años y su hijo 12. ¿Al cabo de cuántos años la edad del padre será el doble que la del hijo?]

#question()[Se distribuyen 400 bolsas en tres urnas sabiendo que la primera tiene 80 menos que la segunda y esta tiene 60 menos que la tercera, averigua cuántas bolsas tiene cada una.]

#question()[Reparten 390€ entre dos personas de tal modo que la parte de la primera sea igual al doble de la parte de la segunda menos 60.]

#question()[Roberto tiene 18€ en monedas de 20 céntimos y 50 céntimos. 
    ¿Cuántas monedas tiene si hay el doble de monedas de 20 céntimos que de 50 céntimos?]

#question()[Antonio se ha comprado dos pantalones y tres camisas en las rebajas. Los pantalones tenían un $30\%$ de descuento y las camisas un $20\%$.
    El precio original de un pantalón era el doble que el de una camisa, pero con el descuento solo ha pagado 104€.
    ¿Cuánto costaba cada artículo antes de las rebajas?]