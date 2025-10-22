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
    academic-period: "Curso 2025/2026",
    academic-level: "2º Bachillerato",
    academic-subject: "Matemáticas",
    number: [Derivadas],
    // content: [($X->infinity$)],
    model: [v1],
  ),
  
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 10, day: 22),
  show-student-data: false,
  show-grade-table: false,
  show-solution: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Calcula la derivada de las siguientes funciones:]
    #questions-columns([
      #subquestion()[$display(f(x) = x^3 + 5x^2 - 2x + 7)$]
      #solution()[
        $display(f'(x) = 3x^2 + 10x - 2)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = sqrt(x^2 + 3x + 2))$]
      #solution()[
        $display(f'(x) = (2x + 3)/(2 sqrt(x^2 + 3x + 2)))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^(2x) + ln(x))$]
      #solution()[
        $display(f'(x) = 2e^(2x) + 1/x)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (3x^2 + 2x + 1)/(x - 1))$]
      #solution()[
        $display(f'(x) = ((6x + 2)(x - 1) - (3x^2 + 2x + 1)(1))/(x - 1)^2 = ((6x^2 - 6x + 2x -2) - (3x^2 + 2x + 1))/(x-1)^2 = (3x^2 - 6x - 3)/(x - 1)^2)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = sin(x) + cos(x))$]
      #solution()[
        $display(f'(x) = cos(x) - sin(x))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = tan(x) + x^2)$]
      #solution()[
        $display(f'(x) = sec^2(x) + 2x)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = root(3, x^3 + x + 1))$]
      #solution()[
        $display(f'(x) = (1/3)(x^3 + x + 1)^(-2/3)(3x^2 + 1) = (3x^2 + 1)/(3 root(3, (x^3 + x + 1)^2)))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = ln(sqrt(x^2 + 1)))$]
      #solution()[
      $display(f'(x) = (1/(sqrt(x^2 + 1)))  [(1/2)(x^2 + 1)^(-1/2)](2x) = x/(x^2 + 1))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^(sin(x)))$]
      #solution()[
        $display(f'(x) = e^(sin(x)) cos(x))$
      ]
    ],
    )
  ],
  [
    #question()[Calcula la derivada de las siguientes funciones:]
    #questions-columns(
    [
      #subquestion()[$display(f(x) = (x^2 + 1)^(x))$]
      #solution()[
      $display("Ln"(f(x)) = "Ln"((x^2+1)^x) => "Ln"(f(x)) = x dot "Ln"((x^2+1)) =>)$
      
      $display(["Ln"(f(x))]' = [x dot "Ln"(x^2+1)]' => (f'(x))/(f(x)) = 1 dot "Ln"(x^2+1) + x dot 1/(x^2+1) dot 2x) =>$

      $display((f'(x))/(f(x)) = "Ln"(x^2+1) + (2x^2)/(x^2+1) => f'(x) = f(x) [ "Ln"(x^2+1) + (2x^2)/(x^2+1)]) =>$

      $display(f'(x) = (x^2 + 1)^(x) [ln(x^2 + 1) + (x(2x)/(x^2 + 1))])$
      ]
    ]
    )
  ])

