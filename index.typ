#import "lib/ilm.typ": *

#set text(lang: "ru")
#set math.equation(numbering: "1")

#show ref: it => {
  lower(it)
}


#let is-print = false


#show: ilm.with(
  chapter-pagebreak: not is-print,
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
  table-of-contents: {
    if (not is-print){
      outline(depth: 2)

    }else{
      none
    }
    },
  external-link-circle: false
)

#include "src/000_введение.typ"

#include "src/001_античная_философия.typ"

#include "src/002_средневековая_философия.typ"

#include "src/003_философия_возрождения.typ"

#include "src/004_философия_нового_времени.typ"

#include "src/005_философия_просвещения.typ"

#include "src/006_немецкая_классическая_философия.typ"

#include "src/007_марксизм_и_неомарксизм.typ"

#include "src/008_позитивизм.typ"

#include "src/009_философия_жизни.typ"

#include "src/011_экзистенциализм.typ"

#include "src/012_фил_чел.typ"

#include "src/013_герменевтика.typ"

#include "src/014_аналитическая_философия.typ"

#include "src/015_остальное.typ"

/*
==============================================================================
                          Далее идут приложения
==============================================================================
*/


#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    return "Практика " + numbering("A.", ..nums)
  }
  return numbering("A.1.", ..nums)
})

#counter(heading).update(0)

// Практики
#include "src/990_практика_1.typ"

#include "src/991_практика_2.typ"

#include "src/992_практика_3.typ"

#include "src/993_практика_4.typ"

#include "src/994_практика_5.typ"

#include "src/995_практика.typ"

#if (not is-print){
  include "src/996_термины.typ"

}



#set heading(numbering: none)

#set page(margin: (x: 0pt, top: 0pt, bottom: 0pt))


= Карточки

//Нет ссылок:

//83
<83>
// На приличных картонках надо сделать

#include "src/999_карточки.typ"
