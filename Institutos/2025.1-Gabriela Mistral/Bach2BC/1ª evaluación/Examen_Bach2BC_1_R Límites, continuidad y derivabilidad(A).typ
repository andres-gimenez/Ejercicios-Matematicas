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
    logo:image("../../logo-ies_gabriela_mistral.png")
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - Recuperación",
    content: "Límites, continuidad y derivabilidad",
    model: [Modelo $A$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 9),
  show-student-data: "odd-pages",
  // show-student-data: false,
  show-grade-table: true,
  show-solutions: false,
  // draft: true,
  // question-points-position: right,
  question-points-position: left,
  // question-points-position: none,
  // question-text-parameters: (size: 14pt, spacing:150%),

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
  // clarifications: (
  //   [Se puede utilizar calculadoras científicas básicas, que no sean programables resuelvan operaciones complejas como limites, derivadas, primitivas, ...],
  //   [El uso de teléfono móvil durante el examen, se valorará con un cero. El móvil ha de estar apagado durante el examen.],
  //   [Copiar, hablar, levantarse de la silla o molestar al resto de la clase pueden ser motivos de la retirada del examen que se valorará con un cero.],
  //   [La sospecha de que en un examen se ha copiado o se ha utilizado material no permitido se valorará con un cero.],
  //   [Deben aparecer todas las operaciones, no vale solo con indicar el resultado.],
  //   [Se ha de llegar a la solución más reducida posible.],
  //   [No te conformes con llegar a un resultado, el examen está para que demuestres tus conocimientos, es preferible una explicación de más que de menos.],
  //   [Se penalizara el no dar un valor exacto, por ejemplo $sqrt(2)$ es un valor exacto $1,41421$ no lo es.]
  // )
)
// #set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Sea la función $display(f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & x^2 - 6x +11 & "si" & x < 2,
                & sqrt(5x-1) & "si" & x >= 2,
                ))$
      #subquestion(points: 1)[Estudie la continuidad de la función en $RR$. #text(0.7em)[(PAU 2025)]]
      #subquestion(points: 1)[Estudie los extremos relativos de la función en el intervalo $(1,3)$. #text(0.7em)[(PAU 2025)]]
      #subquestion(points: 1)[Estudia la curvatura de la función en el intervalo $(1,3)$.]
    ]
  ],
  [
    #question()[Dada la función $f(x) = display("sen"(pi/2 x))$, se pide:]
    #subquestion(points:1.75)[Calcula $limits("lím")_(x->0)((sqrt(4-3f(x))- 2)/x)$ #text(0.7em)[(PAU 2025)]]

    #subquestion(points:1.25)[Calcula la ecuación de la recta tangente a $f(x)$ en el punto $x = 2$.]
   
  ],
  [
    #question()[Sea la función: $display(f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                & (2x+1)/x & "si" & x <0 ,
                & x^2 - 4x + 3 & "si" & x >= 0,
                ))$
      #subquestion(points: 1.25)[Estudia la continuidad de $f(x)$ en $RR$. #text(0.7em)[(PAU 2022)].]
      #subquestion(points: 0.75)[Es $f(x)$ derivable en $x=0$? Justifica la respuesta. #text(0.7em)[(PAU 2022)]]
      #subquestion(points: 2)[Determine para $x in (0, oo)$ el punto de la gráfica de $f(x)$ en el que la pendiente de la recta tangente es nula y obtenga la ecuación de la recta tangente en dicho punto. En el punto obtenido, ¿alcanza $f(x)$ algún extremo relativo? En caso afirmativo, clasifíquelo. #text(0.7em)[(PAU 2022)]]
    ]
  ],
)
  



