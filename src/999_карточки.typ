#show block: set block(inset: 12pt, radius: 12pt)
#set par(justify: false)
#let questions = csv("999_карточки.csv")

Нет ссылок:
66<66>
67<67>
68<68>
69<69>
70<70>
71<71>

#set text(23pt)

// второй круг с 32-74

#grid(columns: 2, gutter: 9pt, align: center
,..questions.slice(31,74).map(question => {
  link(label(str(question.first())))[
    #block(
      align(center + horizon)[#question.last()],
      fill: rgb("#f1faff"),
      height: 100pt,
      width: 100%,
      breakable: false,
    )
  ]
})
)