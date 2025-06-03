= Дифференцирование неявной функции

$ F(x;y;z) = 0 $

Найдём: $(diff z)/(diff x), (diff z)/(diff y)$

$ z = f(x;y) $

$ F(x, y, f(x;y)) $

$
  x - "const" quad (diff F(x; y; f(x; y)))/(diff x) = (diff F)/(diff x) + (diff F)/(diff z) dot (diff z)/(diff x)=0\

  y - "const" quad (diff F(x; y; f(x; y)))/(diff y) = (diff F)/(diff y) + (diff F)/(diff z) dot (diff z)/(diff y)=0\
$

тогда приходим к следующему:

$
  z'_x = (diff z)/(diff x) = - F'_x/F'_z\
  z'_y = (diff z)/(diff y) = - F'_y/F'_z
$

Если $F(x; y) = 0$, то 

$
  y'_x = (F'_x)/(F'_y)
$

