#import "@preview/g-exam:0.4.4": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

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
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    number: [Problemas con sistemas de ecuaciones lineales],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  show-student-data: false,
  show-grade-table: false,
  // show-solutions: sys.inputs.at("show-solutions", default:config.at("show-solutions")),
  show-solutions: false,
  question-points-position: none,
)
#set math.cases(reverse: true)

#question()[Se tienen garrafas de tres tamaños diferentes para llenar un aljibe. 
Con seis garrafas pequeñas y 2 L se llenan exactamente una garrafa mediana y una grande. Con dos garrafas grandes llenamos  ̃dos medianas, una pequeña y sobra 1 L. El aljibe se llena al completo bien con catorce garrafas pequeñas más seis medianas, bien con cinco medianas junto con cinco grandes. 
Se pide calcular la capacidad de cada tipo de garrafa y, una vez conocidas estas, la del aljibe. (EVAU 2025)]

#question()[La primera interpretación en EE.UU. de la octava sinfonía de Mahler tuvo lugar en Filadelfia en 1916 con la participación de una orquesta, 
dos coros con el mismo número de miembros, un tercer coro infantil y, además, ocho cantantes solistas invitados especialmente y que no pertenecían a ninguno de los coros. 
La décima parte del numero total de intérpretes de los tres coros era menor en 15 unidades al de miembros de la orquesta. 
Los miembros de cada uno de los dos coros no infantiles superaban en 140 unidades a la suma de componentes del coro infantil y los de la orquesta. 
El número de miembros de la orquesta excedía en 21 unidades a la doceava parte del total de interpretes. 
¿Cuántos intérpretes tenía la orquesta y cada uno de los coros? 
¿Cuantos intérpretes había en total? (EVAU 2024)]

// Geometría
// #question()[Sara esta revisando una estructura de vigas metálicas. 
// Para ello, utiliza un programa de cálculo estructural que lleva integrado un modulo de diseño asistido por ordenador. 
// El programa trata las vigas como segmentos entre dos puntos. 
// Cuando dos segmentos comparten algún punto, se fijan simulando una soldadura.  ́
// Para introducir un segmento basta indicar las coordenadas de los extremos del mismo.
// Sara se ha dado cuenta de que una parte de la estructura no es lo suficientemente resistente. 
// En concreto, ha encontrado dos vigas, no soldadas entre sí, que deben reforzarse, por lo que decide añadir otra viga que, soldándola a ambas, solucione el problema.   
// Las dos vigas en cuestión son  V1 cuyos extremos son los puntos 
// $A(1, 2, -3)$ y $B(1, 6, 1)$ y $V 2$ cuyos extremos son los puntos $C(-2, -8, 7)$ y $D(10, -4, 7)$.  (EVAU 2025)]

// #subquestion()[Como primera solución, Sara decide que la viga añadida esté soldada a los puntos medios de $V_1$ y $V_2$. 
// Calcule las coordenadas de los extremos de la viga añadida y los cosenos de los ángulos que forman dicha viga con $V_1$ y con $V_2$.]

// #subquestion()[Haciendo un análisis más detallado, Sara encuentra que la resistencia es mayor si la viga añadida es perpendicular tanto a $V_1$ como a $V_2$. Calcule, en el caso de que sea posible, las coordenadas de los extremos de la viga añadida si se adopta esta solución.]

#question()[En el baloncesto existen canastas que valen un punto, otras que valen dos y otras
que valen tres puntos. Calcule el numero de lanzamientos de uno, de dos y de tres puntos que realizó un equipo en un partido sabiendo que:]

#subquestion()[El equipo anotó ́80 puntos con un acierto del 80% en tiros de uno, del 50% en tiros de dos y del 40% en tiros de tres.]

#subquestion()[La tercera parte del numero de lanzamientos de dos fue igual a la quinta parte del resto de lanzamientos.]

#subquestion()[El doble del numero de lanzamientos de tres es menor en cinco unidades al resto de lanzamientos.]