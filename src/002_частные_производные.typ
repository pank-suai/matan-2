#import "@preview/frame-it:1.2.0": *

#let (abstract, example) = frames(abstract: ("Замечание", gray), example: ("Пример"))

#let (theorem,) = frames(kind: "theorem", theorem: ("Теорема", rgb("#c1e0ff"),))





== Частные производные

#grid(
  columns: (1fr, 2fr),
  image(
    "images/004_область_на_плоскости_и_две_точки_с_одинаковым_y_координатой.png",
  ),
  [

    $
      z = f(x, y)
    $

    #align(center)[Назовём $Delta z_x$ частным приращением по $x$]

    $
      Delta z_x = f(x + Delta x, y) - f(x, y) \

      Delta z_y = f(x, y + Delta y) - f(x, y) \

      Delta z = f(x + Delta x, y + Delta y) - f(x, y)
    $

  ],
)

/ : Если при $Delta x arrow 0$ отношение частного приращения аргумента $(Delta z_x) /
  (Delta x)$ имеет конечный предел, то этот предел называется *частной производной
  функции* $z = f(x,y)$, по независимой переменной $x$ в точке $(x, y)$ и
  обозначается $(diff z)/(diff x)$:

$
  z'_x = frac(diff z, diff x) = lim_(Delta x -> 0) frac(Delta z_x, Delta x) \

  z'_y = frac(diff z, diff y) = lim_(Delta x -> 0) frac(Delta z_y, Delta y) \
$

Если $U = f(x_1, x_2, dots, x_n)$, то:

$
  frac(diff U, diff x_k) = lim_(Delta x_k -> 0) frac(
    f(x_1, x_2, ..., x_(k-1), x_k + Delta x_k, x_(k+1), ..., x_n) - f(x_1, x_2, ..., x_(k-1), x_k, x_(k+1), ..., x_n),
    Delta x_k,

  ).
$

#abstract[
  Так как в $Delta z_x$ вычисляется в неизменном значении переменной $y$,
  аналогично и в $Delta z_y$ (только там неизменен $x$), то определение частной
  производной можно сформулировать так: частной производной по $x$ называется
  обычная производная функции по $x$, вычисленная в предположении, что $y$ --- постоянная.
  (аналогично можно сформулировать и для другой переменной)
]

Из замечания следует, что правила вычисления частных производных совпадают с
правилами, доказанными для функции одной переменой.

=== Геометрический смысл частных производных функций двух переменных

#image("images/005_касательная_плоскость_и_нормаль_к_поверхности_в_точке.png")

- $S$ -- поверхность заданная уравнением $z=f(x,y)$, где $f(x,y)$ -- функция,
  непрерывная в некоторой области $D$ и имеющая производные по $x$ и $y$.

- $N_0(x_0, y_0, f(x_0, y_0))$: Это точка на поверхности S, в которой мы
  рассматриваем частные производные

- тангенсы углов касательных ($alpha$ и $beta$) и есть частные производные
  функции, что и является геометрическим смыслом

== Дифференцируемость и полный дифференциал функции

Пусть $z = f(x; y)$ определена в области $D$. Возьмём точку $M(x;y) in D$, то
функция $f(x, y)$ будет *дифференцируемой в точке $M$*, если её приращение можно
составить в следующем виде:

$
  Delta z = A dot Delta x + B dot Delta y + alpha Delta x + beta dot Delta y \

  alpha = alpha (Delta x; Delta y) arrow 0\
  beta = beta (Delta x; Delta y) arrow 0 \

  "при" Delta x arrow 0 quad Delta y arrow 0\
  d z = A dot Delta x + B dot Delta y \
  Delta x = d x quad Delta y = d y
$ <fulldif>



/ Необходимое условие дифференцируемости функции: Если $z = f(x; y)$ дифференцируема в точке $M$, то она непрерывна в этой точке и
  имеет частные производные: $(diff z)/(diff x) = A$, $(diff x)/(diff y) = B$.

/ Достаточное условие дифференцируемости функции: Если $z = f(x;y)$ имеет частные производные $z'_x$ и $z'_y$ в точке $M$, то она
  дифференцируема в этой точке и её _полный дифференциал_ выражается в следующей
  форме: $ dif z = (diff z)/(diff x) d x + (diff z)/(diff y) d y $



#theorem["Если дифференцируема, то непрерывна" ][

  / Теорема: Если функция $z = f(x, y)$ дифференцируема в некоторой точке, то она непрерывна
    в этой точке.

  / Доказательство: Если в точке $(x, y)$ $z = f(x,y)$ дифференцируема, то полное приращение, можно
    представить в виде @fulldif, где $A$ и $B$ -- постоянны, $alpha, beta -> 0$, при $Delta x, Delta y -> 0$,
    откуда следует, что $lim Delta z = 0$, что означает, что в точке $(x, y)$ $z = f(x, y)$ непрерывна
]

#theorem[
  "Если дифференцируема, то имеет частные производные"
][

  / Теорема: Если функция $z = f(x, y)$ дифференцируема в некоторой точке, то она имеет в
    этой точке частные производные $(diff z)/(diff x)$ и $(diff z)/(diff y)$.

  / Доказательство: Если в точке $(x, y)$ $z = f(x,y)$ дифференцируема, то полное приращение, можно
    представить в виде @fulldif. Взяв $Delta x != 0, Delta y = 0$, получим: $ Delta z_x = A Delta x + alpha(Delta x, 0)Delta x $
    делим на $Delta x$:

    $ (Delta z_x)/(Delta x) = A + alpha(Delta x, 0) $

    Так как $A$ не зависит от $Delta x$, а $alpha (Delta x, 0) -> 0$, при $Delta x arrow 0$,
    то

    $
      A = lim_(Delta x -> 0) (Delta z_x)/(Delta x)
    $ <shit>


    @shit является определением частной производной, аналогично можно прийти к y.
  / Следует: $Delta z = (diff z)/(diff x) Delta x + (diff z)/(diff y) Delta y + alpha Delta x + Beta Delta y$

  / Замечание: Теорема утверждает существование частных производных только в точке $(x, y)$ но
    ничего не говорит о непрерывности их в этой точке, а так-же об их поведении в
    окрестности точки $(x, y)$ .
]


=== Применение полного дифференциала в приближённых вычислениях


$
  Delta z approx dif z
$ <pribl_1> 

$
  f(x + Delta x; y + Delta y) approx f(x; y) + f'_x (x;y) Delta x + f'_y (x;y) Delta y
$ <pribl_2>




#example[
  Если в точке $(x,y)$ $z = f(x,y)$ дифференцируема и $dif z != 0$ (в точке $(x,y)$), то полное приращение:

  $
    Delta z = (diff z)/(diff x) Delta x + (diff z)/(diff y) Delta y + alpha(Delta x, Delta y)Delta x + beta(Delta x, Delta y)Delta y 
  $ 

  отличается от своей линейной части 

  $
    dif z = (diff z)/(diff x)Delta x + (diff z)/(diff y) Delta y
  $

  лишь на сумму последних слагаемых, которые при $Delta x, Delta y -> 0$ являются бесконечно малыми более высокого порядка, чем слагаемы линейной части, поэтому если $dif z != 0$, то он является главной части приращения функции и имеет вид @pribl_1. При постановки же точки $(x_0, y_0)$ в формулу полного дифференциала, то получим @pribl_2.
]


== Частные производные высших порядков

Частные производные вида:

$
  frac(diff f(x;y), diff x), quad frac(diff f(x;y), diff y) \
  (x;y) in D
$

Возьмём производную второго порядка по $x$ и по $y$:

$
  (diff^2 z)/(diff x^2), (diff^2 z)/(diff x diff y), (diff^2 z)/(diff y^2), (diff^2 z)/(diff y diff x)
$

или

$
  z''_(x x), z''_(x y), z''_(y y), z''(y x)
$

/ Теорема Шварца: Если частные производные высшего порядка непрерывны, то смешанные производного
  одного порядка отличающиеся лишь порядком дифференцирования равны между собой.

$
  (diff^2 z) / (diff x diff y) = (diff^2 z) / (diff y diff x) \
  (diff^3 z) / (diff y diff x diff y) = (diff^3 z)/ (diff x diff y diff y) = (diff^3 z)/ (diff y diff y diff x)
$

== Дифференциал высшего порядка

// Тут можно добавить подробностей, но его нет в вопросах на экзамен и ощущение что этого и так достаточно

$
  dif^n z = ((diff z)/(diff x) dif x + (diff z) / (diff y) dif y)^n, quad n in cal(N)
$

#abstract(
  )[
  $
    dif^2 z = dif (dif z) = dif ((diff z) / (diff x) dif x + (diff z)/(diff y) dif y) = \ = ((diff z) / (diff x) dif x + (diff z)/(diff y) dif y)'_x dif x + ((diff z) / (diff x) dif x + (diff z)/(diff y) dif y)'_y dif y = \ = (diff^2 z)/(diff x^2) dif x^2 + 2(diff^2 z)/(diff y diff x) dif y dif x + (diff^2z)/(diff y ^2 ) d y^2
  $
]

== Дифференцирование сложных функций

=== Переменные функции зависят от некоторого единого аргумента

Пусть $z = f(x,y)$, $x = x(t)$, $y = y(t)$, то тогда $z = f(x(t); y(t)) quad (x;y) in D$.

#theorem[

  / Теорема: Если в точке $t$ существуют производные $(dif x)/(dif t) = x'(t)$ и $(dif y)/(dif t) = y'(t)$ и при соответствующих значениях $x = x(t), y = y(t)$, функция $f(x,y)$ дифференцируема, то сложная функция $z = f(x(t), y(t))$ в точке $t$ имеет производную
  $ (dif z)/(dif t) = (diff z)/(diff x) dot (dif x)/(dif t) + (diff z)/(diff y) dot (dif y) / (dif t) $ <dif>



  / Доказательство: Дадим $t$ приращение $Delta t$. Тогда $x$ и $y$ получат приращения $Delta x, Delta y$. В результате этого при $(Delta x)^2 + (Delta y)^2 != 0$ $z = f(x, y)$ также получит некоторое приращение $Delta z$, которое в силу дифференцируемости $z$ в точке $(x,y)$ может быть представлено в виде 
    $
      Delta z = (diff z)/(diff x) Delta x + (diff z)/ (diff y) + alpha Delta x + beta Delta y
    $
    где $alpha, beta -> 0$, при $Delta x, Delta y -> 0$

    $alpha " и " beta$  непрерывны при $Delta x = Delta y = 0$.


    Рассмотрим отношение:
    $
      (Delta z)/(Delta t) = (diff z)/(diff x) dot (Delta x)/(Delta t) + (diff z)/(diff y) dot (Delta y)/(Delta t) + alpha (Delta x)/(Delta t) + beta (Delta y)/(Delta t)
    $ <shit2>



    Каждое слагаемое имеет множитель (частные производные), который имеет предел при $Delta t$, тогда существуют пределы:

    $
      lim_(Delta t -> 0) (Delta x)/(Delta t) = (dif x)/(dif t) = x'(t)
    $ (аналогично и по $y$)

    Так как производные существуют, то в точке $t$ существует непрерывность, тогда $Delta t -> 0 => alpha, beta -> 0$, таким образом  @shit2 равна:

    $
       (dif z)/(dif t) =(diff z)/(diff x) dot (Delta x)/(Delta t) + (diff z)/(diff y) dot (Delta y)/(Delta t)
    $
]

=== Только один из аргументов функции является функцией от другого аргумента функции

$
  z = f(x, y), quad y = phi(x)
$


Тогда просто используя @dif и $x equiv t$, получим:

$
  (dif z)/(dif x) = (diff z)/(diff x) + (diff z)/(diff y) dot (dif y)/(dif x)
$

=== Аргументы функции -- функции с двумя переменными

Рассмотрим теперь дифференцирование сложной функции нескольких переменных. Пусть
$ z = f(x, y) $, где $x = x(u, v)$, $y = y(u, v)$,
$u$ и $v$ — независимые переменные.

Будем предполагать, что $f(x, y)$, $x(u, v)$, $y(u, v)$ имеют непрерывные частные производные по всем своим аргументам. Найдем выражения для производных $frac(partial z, partial u)$ и $frac(partial z, partial v)$.

Дадим $u$ приращение $Delta u$, оставив $v$ неизменным, тогда функции $x$ и $y$ получат частные приращения $Delta_u x$ и $Delta_u y$, функция $z$ получит приращение $Delta_u z$, тогда

$ frac(partial z, partial u) = lim_(Delta u -> 0) frac(Delta_u z, Delta u) = lim_(Delta u -> 0) frac(f'_x Delta_u x + f'_y Delta_u y + w, Delta u) $

где $w = alpha Delta_u x + beta Delta_u y$, и

$ = f'_x dot lim_(Delta u -> 0) frac(Delta_u x, Delta u) + f'_y dot lim_(Delta u -> 0) frac(Delta_u y, Delta u) + lim_(Delta u -> 0) frac(w, Delta u) = f'_x frac(partial x, partial u) + f'_y frac(partial y, partial u) $

Итак,
#rect[
$ frac(partial z, partial u) = frac(partial z, partial x) dot frac(partial x, partial u) + frac(partial z, partial y) dot frac(partial y, partial u) $

$ frac(partial z, partial v) = frac(partial z, partial x) dot frac(partial x, partial v) + frac(partial z, partial y) dot frac(partial y, partial v) $
]


