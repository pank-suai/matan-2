#import "@preview/gentle-clues:1.1.0": *

= Частные производные

$
  z = f(x, y)
$

Назовём $Delta z_x$ частным приращением

$
  Delta z_x = f(x + Delta x, y) - f(x, y) \

  Delta z_y = f(x, y + Delta y) - f(x, y) \

  Delta z = f(x + Delta x, y + Delta y) - f(x, y)
$

$
  z'_x = frac(diff z, diff x) = lim_(Delta x -> 0) frac(Delta z_x, Delta x) \

  z'_y = frac(diff z, diff y) = lim_(Delta x -> 0) frac(Delta z_y, Delta y) \
$

== Частные производные высших порядков

Частные производные вида:

$
  frac(diff f(x;y), diff x), quad frac(diff f(x;y), diff y) \
  (x;y) in cal(D)
$

Возьмём производную второго порядка по $x$ и по $y$:

$
  (diff^2 z)/(diff x^2), (diff^2 z)/(diff x diff y), (diff^2 z)/(diff y^2), (diff^2 z)/(diff y diff x)
$

или

$
  z''_(x x), z''_(x y), z''_(y y), z''(y x)
$

```
Похоже на бином ньютона.
```

#example(title: [Пример])[

  $
    z = x^4 - 2x^2y^2 + y^5 \
    z'_x = 3x^3 - 4y^2x \
    z''_(x x) = 12 x^2 - 4y^2 \
    z'_(y) = -4y x^2 + 5y^4 \
    z''_(y y) = -4 x^2 + 20 y^3 \
    z''_(y x) = -8 x y \
    z''_(x y) = -8 y x
  $

]

/ Теорема Шварца: Если частные производные высшего порядка непрерывны, то смешанные производного
  одного порядка отличающиеся лишь порядком дифференцирования равны между собой.

$
  (diff^2 z) / (diff x diff y) = (diff^2 z) / (diff y diff x) \
  (diff^3 z) / (diff y diff x diff y) = (diff^3 z)/ (diff x diff y diff y) = (diff^3 z)/ (diff y diff y diff x)
$

= Дифференцируемость и полный дифференциал функции

```
TODO: по ощущению, я что-то упустил
```

Пусть $z = f(x; y)$, $M(x;y)$, $$ функция $f(x, y)$ будет дифференцируемой в
точке $M$, если её приращение можно составить в следующем виде:

$
  Delta z = A dot Delta x + B dot Delta y + alpha Delta x + beta dot Delta y \

  alpha = alpha (Delta x; Delta y) arrow 0\
  beta = beta (Delta x; Delta y) arrow 0 \

  "при" Delta x arrow 0 quad Delta y arrow 0\
  d z = A dot Delta x + B dot delta y \
  Delta x = d x quad Delta y = d y
$

/ Необходимое условие дифференцируемости функции: Если $z = f(x; y)$ дифференцируема в точке $M$, то она непрерывна в этой точке и
  имеет частные производные: $(diff z)/(diff x) = A$, $(diff x)/(diff y) = B$.

/ Достаточное условие дифференцируемости функции: Если $z = f(x;y)$ имеет частные производные $z'_x$ и $z'_y$ в точке $M$, то она
  дифференцируема в этой точке и её _полный дифференциал_ выражается в следующей
  форме: $ dif z = (diff z)/(diff x) d x + (diff z)/(diff y) d y $

== Применение полного дифференциала в приближённых вычислениях

$
  Delta z approx dif z
$

$
  f(x + Delta x; y + Delta y) approx f(x; y) + f'_x (x;y) Delta x + f'_y (x;y) Delta y
$

== Дифференциал высшего порядка

$
  dif^n x = ((diff z)/(diff x) dif x + (diff z) / (diff y) dif y)^n, quad n in cal(N)
$

#experiment()[
  $
    dif^2 z = dif (dif z) = dif ((diff z) / (diff x) dif x + (diff z)/(diff y) dif y) = \ = ((diff z) / (diff x) dif x + (diff z)/(diff y) dif y)'_x dif x + ((diff z) / (diff x) dif x + (diff z)/(diff y) dif y)'_y dif x = \ = (diff^2 z)/(diff x^2) dif x^2 + 2(diff^2 z)/(diff y diff x) dif y dif x + (diff^2z)/(diff y ^2 )
  $
]


= Дифференцирование сложных функций

Пусть $z = f(x,y)$, $x = x(t)$, $y = y(t)$, то тогда $z = f(x(t); y(t)) quad (x;y) in D$:

$
  (dif z)/(dif t) = (diff z)/(diff x) dot (dif x)/(dif y) + (diff z)/(diff y) dot (dif y) / (dif t) \
  (dif z)/(dif x) = (diff z)/(diff x) + (diff z)/(diff y) dot (dif y)/(dif x)
$

Пусть $z = f(x, y)$, $x = x(u; v)$, $y = y(u;v)$, тогда:

$
  (diff z)/(diff u) = (diff z)/(diff x) dot (diff x)/(diff u) + (diff z)/(diff y) dot (diff y)/(diff u) \
  (diff z)/(diff v) = (diff z)/(diff x) dot (diff x)/(diff v) + (diff z)/(diff y) dot (diff y)/(diff v)
$

= Полная производная

#example(title: [Пример])[
  $
    z = ln (x^2 + y^2) quad x = u dot v, space y = u/v \

    (diff z)/(diff u) = (diff z)/(diff x) dot (diff x)/(diff u) + (diff z)/(diff y) dot (diff y)/(diff u) \

    (diff x)/(diff v) = (diff z)/(diff x) dot (diff x)/(diff v) + (diff z)/(diff y) dot (diff y)/(diff v) \

    "Подставим для решения нашего примера:"\
    (diff z)/(diff u) = (2x)/(x^2 y^2) dot v + (2y)/(x^2 + y^2) dot 1/v = (2 u v)/(u^2 v^2 + u^2/v^2) dot v + (2u)/(v(u^2 v^2 + u^2/v^2)) dot 1/v = \ 
     = (2 u v^4 + 2u)/ (u^2v^4 + u^2) = 2/u \

    (diff z)/(diff v) = (2x)/(x^2 + y^2) dot u - (2y)/(x^2+y^2) dot u/v^2= ... = 2(v^4 -1)/((v^4 + 1)v)
  $

  ```
  Решение может быть не верным
  ```
]


