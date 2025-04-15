#import "@preview/gentle-clues:1.1.0": *
#import "@preview/physica:0.9.5": *

= Дифференциальное уравнение

/ Дифференциальное уравнение: уравнение связывающее активные элементы их функции и производные.

Если независимая переменная одна, то уравнение называется _обыкновенным_.

Если независимых переменный две или более, то диф. уравнения называется _частным производной_.

Наивысшей порядок производной входящих в уравнение называется порядком _дифференциального уравнения_.

Решением _дифференциального уравнения_ называется такая диф. функция $y = phi(x)$,
которая при установки в уравнение, вместо неизвестной функции обращает его в
тождество.

+ Общим решением _дифференциального уравнения_ первого порядка $y' = f(x;y) in D$ называется
  функция $y = phi (x; C)$, которое является решением данного уравнения при любом
  значении константы $C$.

+ Для любого начального условия $y(x_0) = y_0$, что $(x_0, y_0) in D$, существует
  единственное значение $C = C_0$, при котором $y = phi (x; C_0)$ удовлетворяет
  заданному начальному условию.

Всякое решение равное $y = phi (x; C_0)$ получавшиеся из общего решения $y = phi (x ; C)$ называется
частным решением.

Задача в которой требуется найти частное решение называется задачей _Коши_.

На плоскости $O x y$ график всякого решения $y; = f(x, y)$, называется
интегральной кривой этого уравнения общего решения $y = phi (x; C)$.

#memo(
  title: [Теорема Коши],
)[
  Если функция $f(x, y)$ непрерывна и имеет частные производные $frac(diff f, diff y) in D$,
  то решением $y' = f(x,y)$, при условии $y(x_0) = y_0$ существует и единственное.
  То есть через точку $(x_0, y_0)$ проходит единственная интегральная кривая,
  данного уравнения.
]

Дифференциальное уравнение вида $f_1(x) phi_1(y) dif x + f_2(x) phi_2(y) dif y = 0$,
то называется уравнением с разделяющимися переменными.

Поделим:

$
  frac(f_1(x), f_2(x)) dif x + frac(phi_2(y), phi_1(y)) dif y = 0 \
  integral(frac(f_1(x), f_2(x)) dif x) + integral(frac(phi_2(y), phi_1(y)) dif y) = C
$

#example(title: "Пример 1")[
  $
    x(y^2-4) dif x + y dif y = 0 \

    x dif x + y/(y^2-4) dif y = 0 \

    integral(x dif x) + integral(y/(y^2-4) dif y) = C \

    x^2/2 + 1/2 ln |y^2-4| = C \

    x^2 + ln |y^2-4| = C \

    ln (y^2 - 4) / C = -x^2\

    y^2 - 4 = C e^(-x^2) \
  $
]
#example(
  title: "Пример 2",
)[

  Найти частный интеграл уравнения $y' cos x = y/ln(y)$, при условии $y(0) =1$:

  $
    y' = frac(dif y, dif x) \
    frac(dif y, dif x) cos x = frac(y, ln y) \

    cos x dif y = y/ln(y) dif x \

    ln(y)/y dif y = frac(dif x, cos x) \

    integral(ln(y)/y dif y) = integral(dif x, cos x) \

    ln(y)^2/2 = ln abs(tg (x/2 + pi/4)) + C \

    (0; 1): 0 = ln abs(tg(pi/4)) + C \

    0 = С \
  $

  Ответ: $ln(y)^2/2 = ln abs(tg (x/2 + pi/4)) $

]

== Однородные дифференциальные уравнения

`generated by AI`

Однородной функцией называется функция $f(x,y)$, если $f(t x, t y) = t^n f(x,y)$

Дифференциальное уравнение $y' = f(x,y)$ называется _однородным_, если $f(x,y)$ -
однородная функция нулевого порядка:

$f(t x, t y) = f(x,y)$ для любого $t$

Решение этого уравнения сводится к уравнению с разделяющимися переменными с
помощью замены:

$y = u x$ или $y = v x$, где $u = u(x)$ или $v = v(x)$

#example(
  title: "Пример 3",
)[
  $
    y' = (x^2 + y^2)/(x y)
  $

  Проверим на однородность: $f(t x, t y) = (t^2 x^2 + t^2 y^2)/(t x t y) = (x^2 + y^2)/(x y) = f(x,y)$

  Сделаем замену $y = u x$:

  $
    u + x u' = (x^2 + u^2 x^2)/(x u x) = (1 + u^2)/(u) \
    x u' = (1 + u^2)/u - u \
    x u' = (1 - u^3)/u \
    frac(u, 1-u^3) dif u = frac(dif x, x) \
    integral(frac(u, 1-u^3) dif u) = ln|x| + C
  $
]

Дифференциальное уравнение вида $P(x,y)dif x + Q(x,y) dif y = 0$ называется
однородным, если функции $P(x,y)$ и $Q(x,y)$ являются однородными функциями
одного и того же измерения.

#example(
  title: "Пример 4",
)[
  Найти общий интеграл выражения:

  $
    (x^2 + 2x y ) dif x + x y dif y = 0
    \
    P(x, y)= x^2 + 2x y
    \
    Q(x, y) = x y
  $
  $P$ и $Q$ однородные функции, поэтому можем сделать подстановку:

  $
    y = u dot x \
    dif y = x dif u + u dif x
  $

  Подставим:

  $
    (x^2 + 2x^2 u ) dif x + x^2 u (x dif u + u dif x) = 0
    \
    x^2 dif x + 2x^2 u dif x + x^2 u^2 dif x + x^3 u dif u = 0
    \
    (1 + 2u + u^2) dif x + x u dif u = 0 \
    frac(dif x, x) + frac(u dif u, (u + 1)^2) = 0 \
    ln abs(x) + integral frac((u + 1)dif(u+1), (u+1)^2) - integral (dif(u + 1) / (u + 1)^2) = C \
    ln |x| + ln |u + 1| + 1/(u + 1) = C
  $

  Подставим вместо $u = y/x$:

  $
    ln |x| + ln abs(y/x + 1) + 1/(y/x + 1) = C \
    ln |y +x| + x/(y + x) = C
  $

]

== Линейные диф. уравнения первого порядка

Уравнение вида $y' + P(x) dot y = Q(x)$ называется линейным.

```
y и y' входят в первых степенях не перемножаясь между собой
```

Если $Q(x) != 0$, то это _неоднородное_, иначе _однородное_. Могут
использоваться сокращения [ЛНДУ][ЛОДУ].

При $Q(x) = 0$, то:

$
  (dif y)/y + P(x)dif x = C
  \
  ln abs(y) = - integral P(x) dif x + ln C
$

Общее решение неоднородного диф. уравнения, можно найти используя _метод Лагранжа_,
т.е. $ y = C(x) + e^(- integral p(x) dif x)$.

$
  C'(x) e^(- integral p(x) dif x) = Q(x) \
$

Но также можно интегрировать по _методу Бернулли_.

#memo(
  title: [Метод Бернулли],
)[
  - Вводим подстановку $y = u dot v$
  - Выражаем $y' = u'v + u v'$
  - Получим $u'v + u v' + P(x) u v = Q(x)$
  - $u (v' + P(x) v) + u'v = Q(x)$
  - Одна из неизвестных функций $u$ или $v$ выбирается произвольно за $v$ принимают
    любое частное решение уравнения $v' + P(x) v = 0$
]

#example(title: "Пример")[
  Найти общее решение уравнения:

  $
    y' + (8 y)/x = x^2\

    y = u v \
    y' = u'v + u v' \
    (dif u)/(dif x)v + (dif v)/(dif x) u \
    (dif u)/(dif x) v + (dif v)/(dif x) u + (8 u v)/x = x^2
    \
    (dif u)/(dif x) v + u (dv(v, x) + 8v/x) = x^2
    \
    dd(v)/v = - 8 dd(x)/x \
    ln v = - 8 ln x \
    ln v = ln 1/x^8 \
    v = 1/x^8
  $

]

=== Уравнение Бернулли

Уравнение вида $y' + P(x) y = Q(x) y^m$ называется _уравнением Бернулли_, где $m in.not (0, 1)$.

$
  z = y^(1-m)\
  1/(1-m) z' + P(x)y = Q(x)\

  y' = Q(x)y^m - P(x)y \
  z' + (1-m)P(x)z = (1-m)Q(x)
$

== Линейные неоднородные диф. уравнения

Уравнение вида:

$
  y'' + p y' + q y = 0
$

$p$ и $q$ --- постоянные, то тогда это уравнение называется ЛОДУ с постоянными
коэффициентами.

Уравнение вида --- характеристическое уравнение:

$
  k^2 + p k + q = 0
$

В зависимости от корней характеристического уравнения,получаем решения:
1. Корня действительные и различны ($D > 0$):

  $
    y = C_1 e^(k_1 x) + C_2 e^(k_2 x)
  $
2. Корни действительные и равны ($k=k_1=k_2,space D = 0$):
  $
    y = (C_1 x + C_2) e^(k_1 x)
  $
3. Корни комплексные ($k = alpha plus.minus beta i$):
  $
    y = e^(alpha x) (C_1 cos(beta x) + C_2 sin(beta x))
  $

#example(title: "Пример 1")[
  Найти общее решение уравнения:

  $
      &y'' + y' -2y = 0\
      &k^2 + k - 2 = 0\
      &k_1 = 1, k_2 = -2\
      &y = C_1 e^(x) + C_2 e^(-2 x)\
  $
]

#example(title: "Пример 2")[
  Найти общее решение уравнения:

  $
    y'' + 4y' + 4y = 0\
    k^2 + 4k + 4 = 0\
    k_1 = k_2 = -2\
    y = (C_1 x + C_2) e^(-2 x)\
  $
]

#example(title: [Пример 3])[
  Найти общее решение уравнения:

  $
    y'' + 2y' + 5y = 0\
    k^2 + 2k + 5 = 0\
    k = -1 plus.minus 2i\
    y = e^(-x) (C_1 cos(2x) + C_2 sin(2x))\
  $
]

Общее решение ЛНДУ (линейного неоднородного дифференциального уравнения):

$
  y'' + p y' + q y = f(x)
$

Определяется по формуле:

$
  y = y_"оо" + y_"чн"
$
где:
- $y_"оо"$ --- общее решение соответствующего однородного уравнения
- $y_"чн"$ --- частное решение неоднородного уравнения.

== Метод неопределенных коэффициентов

Метод неопределенных коэффициентов для нахождения частного решения ($y_"чн"$ второго
порядка с постоянными коэффициентами, когда правая часть имеет постоянный вид)

+ $f(x) = e^(a x) P_n (x)$

  - a -- действительное число
  - $P_n (x)$ -- многочлен степени $n$.

  + Частное решение находится по правой части:

    $
      y_"чн" = e^(a x) dot Q_n(x)
    $
    - $a$ -- не корень характеристического уравнения
    - $Q_n(x)$ -- многочлен степени $n$ с неопределенными коэффициентами которые подлежат определению
  + Может иметь вид:

    $
      y_"чн" = x e^(a x) Q_n(x)
    $
    - $a$ -- простой характеристический корень ($y = k_1!=k_2$)
  + 
    
    $
      y_"чн" = x^2 dot e^(a x) Q_n(x)
    $

    
    - $a$ -- кратный корень характеристического уравнения ($y = k_1=k_2$)
    - Коэффициенты многочлена $Q_n(x)$ определяются методом _"Неопределенных коэффициентов"_.

+ $ f(x) = e^(a x) [P_n(x) cos b x + Q_m(x) sin b x] $ или $ f(x) = e^(a x) P_n(x) cos b x quad [f(x) = e^(a x ) Q_m(x) sin b x] $
  + $y_"чн" = e^(a x) [R_k (x) cos b x + F_k (x) sin b x]$, если $a + b i$ не совпадает с одним из корней характеристического уравнения
    - $a + b i$ - комплексный корень характеристического уравнения
    - $k$ -- степень многочлена $R_k (x)$ и $F_k (x)$
    - $R_k (x)$ и $F_k (x)$ -- многочлены степени $k$ с неопределенными коэффициентами которые подлежат определению
  + $y_"чн" = x e^(a x) [R_k (x) cos b x + F_k (x) sin b x]$, если $a + b i$ совпадает с одним из корней характеристического уравнения

/ Задача Коши для диф. уравнения второго порядка: задача нахождения $y_x$ удовлетворяющего начальным условиям $y(x_0) = y_0$ и $y'(x_0) = y'_0$.

#example(title: "Пример 1")[
  Решить задачу Коши:

  $
    &y'' - 4y' + 4y = x e ^ (2x), quad y(0)=0, quad y'(0) = 0 \
    &y  = y_"оо" + y_"чн" \
    & y'' - 4y' + 4y = 0 \
    &k^2 - 4k + 4 = 0 \
    &k_1 = k_2 = 2 \
    &y_"оо" = (C_1 x + C_2) e^(2x) \
    &"Найдём частное решение" \
    &y_"чн" = x^2 e^(2x) (A x + B) = e^2x (A x^3 + B x^2) \
    &y'"_чн" = 2e^(2x) (A x^3 + B x^2) + e^(2x) (3 A x^2 + B x) \
    & y''_"чн" = 4e^(2x) (A x^3 + B x^2) + 2 e^(2x) (3 A x^2 + 2 B x)+ \ 
    & + 2 e^(2x) (3A x^2 + 2 B x) + e^(2x) (6 A x^2 + 4 B x) \
    & "Запишем без e^(2x)" \
    & 4 A x^3 + 4 B x^2 + 6 A x^2 + 4 B x + 6 A x^2 + 4 B x + 6 A x + 2 B - \  
    &- 8 A x^3 - 8 B x^2 - 12 A x^2 - 8 B x + 4 A x + 4 V x^2 = x \
    & 6A x + 2B = x \
    & 6A = 1, 2B = 0 \
    & A = 1/6, B = 0 \
    & y_"чн" = 1/6 e^(2x) x^3 \
    & y = C_1 x e^(2x) + C_2 e^(2x) + 1/6 e^(2x) x^3 \
    & "Подставим начальные условия" \
    & y(0) = C_2 = 0 \
    &"Доделать"
    //& y' = C_1 (e ^(2x) + 2x e^(2x)) + 1/6 \
  $
]

= Система диф. уравнений

/ Система диф. уравнений: система диф. уравнений, в которой входят несколько уравнений:
$
  cases(
    y_1' = f_1(x, y_1, y_2, ...), \
    y_2' = f_2(x, y_1, y_2, ...), \
    ... \
    y_n' = f_n (x, y_1, y_2, ...)
  )
$

Система диф. уравнений называется _нормальной_
если в ней нет производных по $y_i$ и $y_i$ не зависят от $y'_i$.

Система диф. уравнений называется _линейной_, если в ней нет произведений $y_i$ и $y'_i$.

Система диф. уравнений называется _однородной_, если в ней нет свободных членов.

Решением системы диф. уравнений называется совокупность n-функций $y_i = y_i(x)$, превращающую систему в тождество.

#memo(title: [Задача Коши])[
  Найти решение системы диф. уравнений, удовлетворяющее начальным условиям:
  
  $
    y_1 = b_1\
    y_2 = b_2 quad "при" x = x_0 \
    ...\
    y_n = b_n\

  $
]

Наиболее распространённым методом решения систем диф. уравнений является метод _исключения неизвестных функций_.

Методом исключения $(n-1)$ неизвестных функций системы диф. уравнений, можно привести к дифференциальному уравнению $n$-ого порядка относительно одной из функций $y_n$.

Сведение может быть достигнуто дифференцированием одного из уравнений системы и исключением всех неизвестных функций кроме одной.