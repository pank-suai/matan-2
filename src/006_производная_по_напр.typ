#import "@preview/gentle-clues:1.1.0": *

= Производная по направлению

Производная функции $z = f(x, y)$ в $ l = arrow(M M_1)$:

$
  (diff z)/(diff l) = lim_(M M_1 -> 0) (f(M_1) - f(M)) / (M M_1)
$

#example[
  $ (diff z)/(diff l) = (diff z)/(diff x) cos alpha + (diff z)/(diff y) sin alpha = (diff z)/(diff x) cos alpha + (diff z)/(diff y) cos beta $

  $
    cos alpha = x / abs(arrow(l))\
    abs(l) = sqrt(x^2 + y^2)
  $
]

/ Градиент: Вектор в начале точке $M$ имеющий своими координатами частные производные
  функции $z = f(x, y)$: $ nabla z = (diff z)/(diff x) i + (diff z)/(diff y) j $.

Градиент функции и производная в направлении $arrow(l)$ есть проекция градиента
на $arrow(l)$.

Градиент указывает направление наибыстрейшего роста функции в данной точке.

Производная функция направления градиента имеет наибольшее значение равное: $ | gradient z | = sqrt(((diff z)/ (diff x))^2 + ((diff z)/(diff y))^2 ) $

называется экстремум этой функции достигнутый при условии, что $f(x, y) = 0$

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


