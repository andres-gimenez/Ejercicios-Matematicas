#import "@preview/g-exam:0.4.3": *
// #import "@preview/wrap-it:0.1.0": wrap-content

#show: exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz",
    email: "agimenezmunoz@educa.madrid.com",
    watermark: "Profesor: Andrés",
  ),
  school: (
    name: "IES Gabriela Mistral",
    logo: image("../../logo-ies_gabriela_mistral.png"),
  ),
  exam-info: (
    academic-period: "Curso 2025/2026",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - Glocal (1ª parte)",
    content: "Operaciones combinadas y más cosas",
    model: [Modelo ◔], // ◔◓◮◤◨◨◫◢◨◫◱◵◹◾▶▨▢
  ),

  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 1, day: 3),
  show-student-data: "odd-pages",
  show-grade-table: true,
  // draft: true,
  question-points-position: right,
  question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#question(points: 0.5)[Calcula los siguientes porcentajes:]

#subquestion()[$21%$ de $32","43 =$ ]
#v(1fr)

#subquestion()[$56%$ de $350","7 =$ ]
#v(1fr)

#question(points: 0.5)[Aumenta o disminuye las siguientes cantidades en el porcentaje indicado:]

#subquestion()[Aumenta un $5%$ a $439","80 =$ ]
#v(1fr)

#subquestion()[Disminuye un $12%$ a $2500 =$ ]
#v(1fr)

#question(points: 1)[Marcos ve unas zapatillas que cuestan $82","32€$. Como son de su equipo de fútbol favorito, le hacen un descuento del $25%$. ¿Cuánto pagará Marcos por las zapatillas después de aplicarle un IVA del $21%$?]
#v(5fr)