#import "@local/g-exam:0.4.4": *
// #import "@preview/wrap-it:0.1.0": wrap-content

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
    // academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas II",
    // number: "Versión 1",
    content: "Límites 4 - L'Hôpital (v1)", 
    // model: [Modelo $alpha$],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 11, day: 6),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: false,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#questions-pages(
  [
    #question()[Calcula el valor de los siguientes límites, si existieran:]

    #questions-columns([
        #subquestion()[$display(limits("lím")_(x->+oo) ((e^x)/x^2))$]
        #solution()[
          $display(limits("lím")_(x->+oo) ((e^x)/x^2) = e^oo/oo^2 = oo/oo) $ #h(1mm) (Indeterminado)

          $display(limits("lím")_(x->+oo) ((e^x)/x^2) stretch(=)^"L'H" 
          limits("lím")_(x->+oo) ((e^x)/(2x)) = e^oo/oo = oo/oo))$#h(1mm) (Indeterminado)

          $display(limits("lím")_(x->+oo) ((e^x)/(2x)) stretch(=)^"L'H" limits("lím")_(x->+oo) ((e^x)/(2)) = e^oo/2 = oo/2 = oo)
          $
        ]
    ],
    [
      #subquestion()[$display(limits("lím")_(x -> 0) ("sen"(x)/x))$]
      #solution()[
        $display(limits("lím")_(x->0) ("sen"(x)/x) = "sen"(0)/0 = 0/0) $ #h(1mm) (Indeterminado)

        $display(limits("lím")_(x->0) ("sen"(x)/x) stretch(=)^"L'H" limits("lím")_(x->0) ("cos"(x)/1) = cos(0) / 1 = 1/1 = 1 )$
      ]
    ],
    [
      #subquestion()[$display(limits("lím")_(x -> 0) (("ln"(x) - 1)/x))$]
      #solution()[
        $display(limits("lím")_(x->0) (("ln"(x)-1)/x) = ("ln"(0) - 1)/0 = (1-1)/0 = 0/0) $ #h(1mm) (Indeterminado)

        $display(limits("lím")_(x->0) (("ln"(x) - 1)/x) stretch(=)^"L'H" limits("lím")_(x->0) (1/x)/1 = limits("lím")_(x->0) (1/x) = 1/0 = oo)$
      ]
    ],
    [
      #subquestion()[$display(limits("lím")_(x -> 0) ((e^x - 1)/x))$]
      #solution()[
        $display(limits("lím")_(x->0) ((e^x - 1)/x) = (e^0 - 1)/0 = (1-1)/0 = 0/0) $ #h(1mm) (Indeterminado)

        $display(limits("lím")_(x -> 0) ((e^x - 1)/x) stretch(=)^"L'H" limits("lím")_(x->+0) (e^x/1) = e^0 / 1 = 1/1 = 1)$
      ]
    ],
    [
      #subquestion()[$display(limits("lím")_(x -> 0) ((x "cos"(x) - "sen"(x))/x^3))$]
      #solution()[
        $display(limits("lím")_(x -> 0) ((x "cos"(x) - "sen"(x))/x^3) = (0 "cos"(0) - "sen"(0))/0^3 = (0 dot 1 - 0)/ 0 = 0/0)$ #h(1mm) (Indeterminado)

        $display(limits("lím")_(x -> 0) ((x "cos"(x) - "sen"(x))/x^3) stretch(=)^"L'H" limits("lím")_(x -> 0) ((cancel("cos"(x)) + x (-"sen"(x)) - cancel("cos"(x)))/(3x^2)) = (0 dot (-"sen(0)"))/(3 dot 0^2) = (0 dot 0)/0 = 0/0)$ #h(1mm) (Indeterminado)

        $display(limits("lím")_(x -> 0) (-(x "sen"(x) )/(3x^2)) stretch(=)^"L'H" limits("lím")_(x -> 0) (-("sen"(x) + x dot "cos"(x))/(6x)) = (-("sen"(0) + 0 dot "cos"(0))/(6 dot 0)) = (-(0 + 0)/0) = 0/0)$ #h(1mm) (Indeterminado)

         $display(limits("lím")_(x -> 0) (-("sen"(x) + x dot "cos"(x))/(6x)) stretch(=)^"L'H" limits("lím")_(x -> 0) (-("cos"(x) + "cos"(x) + x dot (-"sen"(x)))/6) = limits("lím")_(x -> 0) (-(2 dot "cos"(x) - x dot "sen"(x))/6) = limits("lím")_(x -> 0) ((x dot "sen"(x) - 2 dot "cos"(x))/6) = (0 dot "sen"(0) - 2 dot "cos"(0))/ 6 = (0 dot 0 - 2 dot 1)/6 = -2/6 = -1/3)$
      ]
    ],
    [
      #subquestion()[$display(limits("lím")_(x -> 0) ((1-x)/1-"sen"((pi x)/2)))$]
    ],
    [
      #subquestion()[$display(limits("lím")_(x -> 0) (("tg"(x)-"sen"(x))/(x-"sen"(x))))$]
    ],
    [
      #subquestion()[$display(limits("lím")_(x -> 0) (1/("sen"^2(x))-1/(x^2 )))$]
    ]
    )
  ]
)
  