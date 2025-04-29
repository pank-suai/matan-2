#import "lib/ilm.typ": *

#set text(lang: "ru")
#set math.equation(numbering: "(1)")


#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

#show: ilm.with(
  title: [Мат. анализ],
  author: "Панков Василий <pank-su>",
  author-format: (author) => [
    #stack(dir: ltr)[#block(
        image("src/images/000_avatar.png", width: 3em, height: 3em),
        radius: 50%,
        clip: true,
      )][#h(1em)][#text(author, size: 1.6em)]
  ],
  date: datetime.today(),
  abstract: [Лекции второго семестра ],
  table-of-contents: outline(depth: 2),
  external-link-circle: false,
)

#include "src/001_функция_нескольких_переменных.typ"

#include "src/002_частные_производные.typ"


#include "src/003_диф_неяв.typ"

#include "src/004_кас_плоскость.typ"

#include "src/005_экстремум_к_функции_двух_пер.typ"

#include "src/006_производная_по_напр.typ"

#include "src/007_диф_уравнения.typ"


#include "src/008_ряды.typ"

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

