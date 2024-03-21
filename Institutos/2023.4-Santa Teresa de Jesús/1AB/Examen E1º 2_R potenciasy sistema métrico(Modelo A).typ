#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.1.1": g-exam, g-question, g-subquestion, g-explanation

#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "agimenezmunoz@educa.madrid.com", 
    watermark: "Profesor: andres",
  ),
  school: (
    name: "IES Santa Teresa de Jesús",
    logo:image("./logo-ies_santa_teresa.jpeg")
  ),
  exam-info: (
    academic-period: "Curso 2023/2024",
    academic-level: "1º ESO",
    academic-subject: "Matemáticas",
    number: "2º Evaluación Recuperación",
    content: "Potencias, raíces y sistema métrico",
    model: "Modelo A"
  ),
  
  languaje: "es",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-studen-data: "odd-pages",
  show-grade-table: true,
  question-point-position: right,
  clarifications: (
 [Copiar, hablar, levantarse de la silla o molestar a al resto de la clase pueden ser motivos de la retirada de la prueba que se valorará con un cero.],
    [Esta prueba ha de realizarse con bolígrafo no borrable azul o negro.],
    [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
    [Se ha de llegar a la solución más reducida posible.],
    [No está permitido el uso móvil, ni ningún otro tipo de aparato electrónico, salvo una calculadora no programable. 
    La mera exhibición de material no permitido o la sospecha de haber sido utilizada por parte del corrector, implicará la anulará de la prueba y por consiguiente será calificada con un cero.],
    [No está permitido compartir material, durante la prueba.],
  )
)

#set math.cases(reverse: true)

#g-question(point:1)[Calcula utilizando las propiedades de las potencias:]

#columns(2, [
  #g-subquestion[$display(5^3 dot 5^6)=$]
  #v(1cm)

  #g-subquestion[$display((7^3)^5)=$]
  #v(1cm)
  #colbreak()

  #g-subquestion[$display(8^7 : 4^7=)$]
  #v(1cm)

  #g-subquestion[$display(4 dot 4^2 dot 4^3)=$]
  #v(1cm)
])
#v(1fr)

#g-question(point:1)[Calcula la raíz entera y el resto en cada apartado:]

#columns(2, [
  #g-subquestion[$26$]
  #v(2cm)

  #g-subquestion[$54$]
  #v(2cm)
  #colbreak()

  #g-subquestion[$125$]
  #v(2cm)

  #g-subquestion[$200$]
  #v(2cm)
])
#v(1fr)

#pagebreak()

#g-question(point:1)[Calcula las siguientes potencias:]

#columns(2, [
  #g-subquestion[$2^4=$]
  #v(2cm)

  #g-subquestion[$(-8)^2=$]
  #v(2cm)
  #colbreak()

  #g-subquestion[$-5^3=$]
  #v(2cm)

  #g-subquestion[$43^0=$]
  #v(2cm)
])

#g-question(point:1)[Realiza las siguientes conversiones de unidades:]
  #g-subquestion[$1,45 "Hm"^2=$ #box(width: 2cm, repeat[.]) $"m"^2$]
  #v(2cm)

  #g-subquestion[$0,0058 "Km"^3=$ #box(width: 2cm, repeat[.]) $"dam"^3$]
  #v(2cm)

  #g-subquestion[$0,2 "l"=$ #box(width: 2cm, repeat[.]) $"ml"^3$]
  #v(2cm)

  #g-subquestion[$85"1m"=$ #box(width: 2cm, repeat[.]) $"Hm"^3$]
  #v(2cm)


#pagebreak()

#g-question(point:2)[Un fraco de perfume de 120 mL cuesta 33,5€. Calula cuánto vale el litro de perfume.]
#v(1fr)

#g-question(point:2)[Tenemos dos bolsas de arena, en la que una pesa $2"Kg"$, $2"Hg"$ y $4"Dag"$ y la otra pesa $4"Kg"$, 9Hg y $2"Da"$. 
Calcula el peso total de las dos bolsas.]
#v(1fr)

#pagebreak()

#g-question(point:2)[La distancia entre Villaconejos y Chinchón es de $7"Km"$, $5"Hm"$, $9"Dam"$ y $4"m"$. 
Si hemos recorrido 3Km, 2Hm, 5Da y 1m ¿Cuánto nos queda por recorrer en Hm? ]
#v(1fr)