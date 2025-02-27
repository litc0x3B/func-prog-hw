### 1) Дайте определение объекта в $\lambda$-исчислении.
Пусть есть изначально заданный набор переменных $v = \lbrace x, y, z, \dots\rbrace$ \
Тогда объекты (λ-термы) — это:
- Переменные: $x \in v$
- Абстракции: $\lambda x.M$ (где $M$ — терм, $x$ — переменная)
- Применения: $(M N)$ (где $M, N$ — термы)

### 2) Ответьте на вопрос:
1. Пусть $I(x) = x$, чему равно $I$?\
$I = \lambda x.x$

1. Пусть $f(x) = 3 + x^3$, чему равно $f$?\
$f = \lambda x.3 + x^3$

### 3) Восстановите скобки в выражении (аргумент в скобки брать не нужно!):
1. $y \; z \; x \equiv ((y \; z) \; x)$
2. $y \; (z \; x) \; x \; (x \; z) \equiv (((y \; (z \; x)) \; x) \; (x \; z))$
3. $(y \; (z \; x) \; x \; y) \; z \; (x \; x) \equiv (((((y \; (z \; x)) \; x) \; y) \; z) \; (x \; x))$

### 4) Опустите лишние скобки:
$(x \; (y \; z) \; y \; z) \; ((z \; y) \; ((x \; x) \; y \; z)) \; y \equiv x \; (y \; z) \; y \; z \; (z \; y \; (x \; x \; y \; z)) \; y$


### 5) Запишите постулат α
Постулат α (α-эквивалентность):  $\lambda x.M \equiv \lambda y.[x \mapsto y]M$

### 6) Запишите постулат β
Постулат β (β-редукция):  $(\lambda x.M)N \rightarrow [x \mapsto N]M$

### 7) Редуцируйте выражения:
1. $[y \mapsto 3](x + 1) = x + 1$
2. $(\lambda x.x)M = M$
3. $(\lambda x.y)M = y$
4. $(\lambda xyz.x(yz))(zy)(ux) = \lambda w.(zy)((ux)w)$
5. $(\lambda x.N)M = [x \mapsto M]N$ (прямая подстановка, если нет конфликтов связывания)
6. $(\lambda xy.xyx)MN = N M N$
7. $f(4)$, где $f(x) = x^2 + 2$ \
$4^2 + 2 = 18$.
8. $g \; 4 \; 3$, где $g = \lambda yx.x * 3 + ((\lambda x.1 + x^3)y)$\
$g \; 4 \; 3 = 3 * 3 + ((\lambda x.1 + x^3)4) = 9 + 1 + 4^3 = 74$.
### 8) Ответьте на вопрос:
1. Пусть $K \; x \; y = x$, чему равно $K$?\
$K = \lambda xy.x$

2. Пусть $S \; x \; y \; z = x \; z \; (y \; z)$, чему равно $S$?\
$S = \lambda xyz.xz(yz)$

3. Пусть $((\circ \; f) \; g)x = f(g(x))$, чему равно $\circ$?\
$\circ = \lambda fgx.f(gx)$

### 9) Определите множество свободных и множество связанных переменных ($FV(M)$ и $BV(M)$) для терма:
1. $x$\
$FV(x) = \lbrace x\rbrace$, $BV(x) = \emptyset$.

2. $4 + 5$\
$FV(4 + 5) = \emptyset$, $BV(4 + 5) = \emptyset$.

3. $\lambda z.z$\
$FV(\lambda z.z) = \emptyset$, $BV(\lambda z.z) = \lbrace z\rbrace$.

4. $\lambda y.z$\
$FV(\lambda y.z) = \lbrace z\rbrace$, $BV(\lambda y.z) = \lbrace y\rbrace$.

5. $\lambda y.x + y$\
$FV(\lambda y.x + y) = \lbrace x\rbrace$, $BV(\lambda y.x + y) = \lbrace y\rbrace$.

6. $(\lambda xy.x + y)y$\
$FV((\lambda xy.x + y)y) = \lbrace y\rbrace$, $BV = \lbrace x, y\rbrace$.

7. $(\lambda y.x + y) \; 4 * ((\lambda y.y^x - (\lambda z.z)z) \; 2)$\
$FV = \lbrace x, z\rbrace$, $BV = \lbrace y, z\rbrace$.

### 10) Определите функцию:
1. $FV(M)$\
Рекурсивно:  
   - $FV(x) = \lbrace x\rbrace$  
   - $FV(\lambda x.M) = FV(M) \setminus \lbrace x\rbrace$  
   - $FV(MN) = FV(M) \cup FV(N)$

2. $BV(M)$\
Рекурсивно:  
   - $BV(x) = \emptyset$  
   - $BV(\lambda x.M) = \lbrace x\rbrace \cup BV(M)$  
   - $BV(MN) = BV(M) \cup BV(N)$

3. $V(M)$\
$V(M) = FV(M) \cup BV(M)$.

### 11) Определите функцию подстановки $[x \mapsto N]M$
Рекурсивно:  
- $[x \mapsto N]x = N$  
- $[x \mapsto N]y = y$, если $x \neq y$  
- $[x \mapsto N](\lambda y.M) = \lambda y.[x \mapsto N]M$, если $y \neq x$ и $y \notin FV(N)$ (α-преобразование, если нужно)  
- $[x \mapsto N](PQ) = ([x \mapsto N]P)([x \mapsto N]Q)$