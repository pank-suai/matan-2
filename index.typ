#import "lib/ilm.typ": *
#import "@preview/frame-it:1.2.0": *

#set text(lang: "ru")

#show figure: set block(breakable: true)

#show: frame-style(styles.hint)
#show: frame-style(kind: "theorem", styles.boxy)
//#show figure.where(kind: "frame"): set figure(numbering: none)



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



#show heading.where(level: 2): it => [
 #counter(math.equation).update(0)
 #it
]



// Только мат. выражения с ссылкой будут иметь номер
#show math.equation: it => {
  if it.block and not it.has("label") [
    #counter(math.equation).update(v => calc.max(v - 1, 0))
    #math.equation(it.body, block: true, numbering: none)#label("")
  ] else {
    it
  }  
}

#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    link(
      el.location(),
      numbering(el.numbering, ..counter(eq).at(el.location())),
    )
  }else if inspect.is-frame(it.element) {
    link(it.element.location(), inspect.lookup-frame-info(it.element).title)
  } else {
    // Other references as usual.
    it
  }
}



#include "src/001_функция_нескольких_переменных.typ"

#include "src/002_частные_производные.typ"

#include "src/003_диф_неяв.typ"

#include "src/004_экстремум_к_функции_двух_пер.typ"

#include "src/005_приложения_фнп.typ"


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

