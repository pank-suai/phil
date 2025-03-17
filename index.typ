#import "lib/ilm.typ": *

#set text(lang: "ru")
#set math.equation(numbering: "1")

#show ref: it => {
  lower(it)
}


#show: ilm.with(
  title: [Философия],
  author: 
    "Панков Василий <pank-su>",
  author-format: (author) => [
    #stack(dir: ltr)[#block(
        image("src/images/000_avatar.png", width: 3em, height: 3em),
        radius: 50%,
        clip: true,
      )][#h(1em)][#text(author, size: 1.6em)]
  ],
  date: datetime.today(),
  abstract: [По лекциям Коломийцева],
  table-of-contents: outline(depth: 2),
  external-link-circle: false
)

#include "src/000_введение.typ"

#include "src/001_античная_философия.typ"

/*
==============================================================================
                          Далее идут приложения
==============================================================================
*/


#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    return "Приложение " + numbering("A.", ..nums)
  }
  return numbering("A.1.", ..nums)
})

#counter(heading).update(0)

= Практика

#include "src/990_практика_1.typ"

#set page(margin: (x: 0pt, top: 15pt, bottom: 0pt))
= Карточки

// На приличных картонках надо сделать

#include "src/999_карточки.typ"