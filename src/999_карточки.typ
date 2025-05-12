#show block: set block(outset: 12pt)
#set par(justify: false)
#let questions = csv("999_карточки.csv")

#set text(23pt)

#grid(
  columns: 2,
  stroke: (dash: "dashed"),
  align: center,
  ..questions.map(question => {
    link(label(str(question.first())))[
      #block([
        #place(start + top)[#box(
            inset: 8pt,
            stroke: (right: 1pt, bottom: 1pt),
          )[#text(question.first(), size: 13pt)]]
        #place(center + horizon)[#question.last()]
      ], height: 100pt, width: 100%, breakable: false)
    ]
  }),
)