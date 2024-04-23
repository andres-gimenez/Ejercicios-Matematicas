#import "@preview/cetz:0.2.1"
#import "@preview/g-exam:0.3.0": *

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
    model: "Modelo B"
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
  #g-subquestion[$display(7^4 dot 7^3)=$]
  #v(1cm)

  #g-subquestion[$display((5^2)^6)=$]
  #v(1cm)
  #colbreak()

  #g-subquestion[$display(3^4 : 3^9=)$]
  #v(1cm)

  #g-subquestion[$display(7^2 dot 7 dot 4^6)=$]
  #v(1cm)
])
#v(1fr)

#g-question(point:1)[Calcula la raíz entera y el resto en cada apartado:]

#columns(2, [
  #g-subquestion[$20$]
  #v(2cm)

  #g-subquestion[$54$]
  #v(2cm)
  #colbreak()

  #g-subquestion[$81$]
  #v(2cm)

  #g-subquestion[$210$]
  #v(2cm)
])
#v(1fr)

#pagebreak()

#g-question(point:1)[Calcula las siguientes potencias:]

#columns(2, [
  #g-subquestion[$2^5=$]
  #v(2cm)

  #g-subquestion[$(-7)^2=$]
  #v(2cm)
  #colbreak()

  #g-subquestion[$-6^3=$]
  #v(2cm)

  #g-subquestion[$96^0=$]
  #v(2cm)
])

#g-question(point:1)[Realiza las siguientes conversiones de unidades:]
  #g-subquestion[$1,75 "Hm"^2=$ #box(width: 2cm, repeat[.]) $"m"^2$]
  #v(2cm)

  #g-subquestion[$0,0037 "Km"^3=$ #box(width: 2cm, repeat[.]) $"dam"^3$]
  #v(2cm)

  #g-subquestion[$0,3 "l"=$ #box(width: 2cm, repeat[.]) $"ml"$]
  #v(2cm)

  #g-subquestion[$311m=$ #box(width: 2cm, repeat[.]) $"Hm"$]
  #v(2cm)


#pagebreak()

#g-question(point:2)[Un fraco de tinta para impresora de 120 ml cuesta 53,5€. Calula cuánto vale el litro de tinta para impresora.]
#v(1fr)

#g-question(point:2)[Tenemos dos cajas de azulejos, en la que una pesa $2"Kg"," "2"Hg" y " "4"Dag"$ y la otra pesa $4"Kg"," " 9 "Hg" "y" " "2"Dag"$. 
Calcula el peso total de las dos cajas.]
#v(1fr)

#pagebreak()

#g-question(point:2)[La distancia entre Villaconejos y Chinchón es de $7"Km", " "5"Hm", 9"Dam" y " "4"m"$. 
Si hemos recorrido $3"Km", " " 2 "Hm", " " 5"Dam" "y" " " 1"m"$ ¿Cuánto nos queda por recorrer en $"Hm"$? ]
#v(1fr)