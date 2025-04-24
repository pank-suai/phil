#show block: set block(inset: 12pt, radius: 12pt)
#set par(justify: false)
#let questions = csv("999_карточки.csv")
#set text(23pt)

// второй круг с 29-65

#grid(columns: 2, gutter: 9pt, align: center, ..questions.map(question => {
  link(label(str(question.first())))[
    #block(
      align(center + horizon)[#question.last()],
      fill: rgb("#f1faff"),
      height: 100pt,
      width: 100%,
    )
  ]
})) 

