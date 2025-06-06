#import "@preview/frame-it:1.2.0": *


#let (abstract, example) = frames(abstract: ("Замечание", gray), example: ("Пример"))

#let (theorem,) = frames(kind: "theorem", theorem: ("Теорема", rgb("#c1e0ff"),))




== Производная по направлению

Частные производные $z = f(x, y)$ $z'_x$ и $z'_y$ представляют собой производные по направлением осей $O x$ и $O y$.

Допустим мы хотим взять иное направление $arrow(l) = M M_0$ ($M_0(x_0, y_0), M(x_0 + Delta x; y_0 + Delta y)$),  а $arrow(e) = (cos alpha, sin alpha)$ -- орта (единичный вектор) этого направления. $Delta p = sqrt(Delta x^2 + Delta y^2)$, тогда $(Delta x)/(Delta p) = cos alpha$, $(Delta y)/(Delta p) = sin alpha$

Получим следующий предел:

$ lim_(Delta rho -> 0) (Delta f_l)/(Delta rho) = lim_(Delta rho -> 0) (f(x_0 + Delta x; y_0 + Delta y) - f(x_0; y_0))/(Delta rho) = (partial f)/(partial l)(x_0; y_0) $ <dif_l>

@dif_l называется производной функции $f$ по направлению $arrow(l)$.


Если хотим его выразить через $(diff f)/(diff x)$, $(diff f)/(diff y)$, то получим следующее

$ (Delta_l f)/(Delta rho) = (f(x_0 + Delta rho cos alpha; y_0 + Delta rho sin alpha) - f(x_0; y_0 + Delta rho sin alpha))/(Delta rho cos alpha) cos alpha + $

$ + (f(x_0; y_0 + Delta rho sin alpha) - f(x_0; y_0))/(Delta rho sin alpha) sin alpha -> (partial f)/(partial x) cos alpha + (partial f)/(partial y) sin alpha, quad Delta rho -> 0. $

Таким образом,

$ (partial f)/(partial l) = (partial f)/(partial x) cos alpha + (partial f)/(partial y) sin alpha. $



=== Градиент

/ Градиент: Вектор в начале точке $M$ имеющий своими координатами частные производные
  функции $z = f(x, y)$: $ nabla z = (diff z)/(diff x) i + (diff z)/(diff y) j $.


#theorem[

/ Теорема: Имеет место равенство $(diff f)/(diff l) = arrow(gradient) z dot arrow(e)$, т. е. производная по направлению $arrow(l)$ равна скалярному произведению векторов градиента и орты направления $arrow(l)$.

/ Следствие:  $arrow z$ в каждой точке направлен по нормали к линии уровня проходящей через данную функцию в сторону возрастания функции: 
   $
     max_{l} = (diff f)/(diff l) = abs(arrow(gradient) z) = sqrt(((diff f)/(diff x) )^2 + ((diff f)/(diff y))^2)
   $

   называется экстремум этой функции достигнутый при условии, что $f(x, y) = 0$
]

/ Теорема: Скорость изменения функции $f$ по некоторому направлению $arrow(l)$ равна проекции вектора градиента на это направление: $ (diff f)/(diff l) =  "пр"_l gradient f$ 


== Условный экстремум

Под условным экстремумом имеется в виду поиск экстремума некоторой функции $z = f(x,y)$, при условии, что $(x,y)$ удовлетворяют ещё некоторым условиям, например уравнению $phi(x, y) = 0$.

Отыскание условного экстремума сводит к исследованию на обычный экстремум
функции лагранжа:

$
  u = f(x; y) + lambda phi (x; y)
$

где $lambda$ -- неопределённый постоянный множитель

$
  cases(
    (diff u)/(diff x) = (diff f)/(diff x) + lambda (diff phi)/(diff x) = 0 \
    (diff u)/(diff y) = (diff f)/(diff y) + lambda (diff phi)/(diff y) = 0
  )
$


