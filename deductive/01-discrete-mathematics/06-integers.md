# Chapter 6: Integers

Uses: [Chapters 1–5](05-natural-numbers.md).

In $\mathbb{N}$, $3 - 5$ doesn't exist. We build a larger system where it does.

**The idea.** Every integer should be a difference $a - b$ of natural numbers,
but we can't write $a - b$ yet. So we use the pair $(a, b)$ as a stand-in for
"$a - b$". Different pairs stand for the same difference: $(0, 2)$, $(1, 3)$,
$(5, 7)$ all mean "$-2$". When do $(a, b)$ and $(c, d)$ mean the same thing?
When $a - b = c - d$, that is, when $a + d = c + b$. The last equation uses only
addition, which we have. So we *define* an integer as a class of pairs under that
equation.

---

## Construction

**Definition 6.1.** On $\mathbb{N} \times \mathbb{N}$ let
$$(a, b) \sim (c, d) \;:\Leftrightarrow\; a + d = c + b.$$

**Lemma 6.2.** $\sim$ is an equivalence relation.

*Proof.* Reflexive: $a + b = a + b$. Symmetric: $a + d = c + b \Rightarrow c + b =
a + d$. Transitive: let $a + d = c + b$ and $c + f = e + d$. Adding the equations
and rearranging (5.12) gives $(a + f) + (c + d) = (e + b) + (c + d)$. Cancel $c +
d$ (5.12.5): $a + f = e + b$, i.e. $(a, b) \sim (e, f)$. $\blacksquare$

**Definition 6.3 (The integers).** $\mathbb{Z} := (\mathbb{N} \times
\mathbb{N})/{\sim}$. Its elements are the *integers*. We write $[a, b]$ for the
class of $(a, b)$. Think of it as "$a - b$".

By 3.9, $[a, b] = [c, d] \Leftrightarrow a + d = c + b$.

## Arithmetic

The definitions below come from asking what $(a - b) + (c - d)$, $-(a - b)$ and
$(a - b)(c - d)$ *would* be, and writing the answer as a difference without
using subtraction.

**Definition 6.4 (Operations).** For integers $[a, b]$, $[c, d]$:
$$\begin{aligned}
[a, b] + [c, d] &:= [a + c,\; b + d], \\
-[a, b] &:= [b, a], \\
[a, b] \cdot [c, d] &:= [ac + bd,\; ad + bc].
\end{aligned}$$
We also define $0 := [0, 0]$, $1 := [1, 0]$, and *subtraction* $x - y := x + (-y)$.

These use representatives, so they are only valid definitions once they're shown
to be well-defined (3.12, 4.3):

**Lemma 6.5.** The right-hand sides of 6.4 don't depend on the choice of
representatives.

*Proof.* Let $(a, b) \sim (a', b')$, i.e. $a + b' = a' + b$, and $(c, d) \sim
(c', d')$, i.e. $c + d' = c' + d$.

*Addition.* We need $(a + c) + (b' + d') = (a' + c') + (b + d)$. That is the sum
of the two hypotheses, rearranged.

*Negation.* We need $b + a' = b' + a$. That is the first hypothesis, read
backwards.

*Multiplication.* First change only the first factor. We need
$(ac + bd) + (a'd + b'c) = (a'c + b'd) + (ad + bc)$. By 5.12 and 5.14, the left
side is $(a + b')c + (b + a')d$, and the right side is $(a' + b)c + (b' + a)d$.
These are equal because $a + b' = a' + b$. The formula is symmetric in the two
pairs ($ca + db = ac + bd$ and $cb + da = ad + bc$), so the same argument covers
changing the second factor. Changing both is one change after the other.
$\blacksquare$

**Definition 6.6 (Commutative ring).** A *commutative ring* is a set $R$ with two
binary operations $+$ and $\cdot$ and two elements $0, 1 \in R$ such that for all
$x, y, z \in R$:

| | Addition | Multiplication |
|---|---|---|
| Associative | $(x + y) + z = x + (y + z)$ | $(xy)z = x(yz)$ |
| Commutative | $x + y = y + x$ | $xy = yx$ |
| Neutral element | $x + 0 = x$ | $x \cdot 1 = x$ |
| Inverse | for each $x$ there is $-x$ with $x + (-x) = 0$ | (not required) |
| Distributive | $x(y + z) = xy + xz$ | |

$\mathbb{N}$ is not a commutative ring: additive inverses are missing.

**Theorem 6.7.** $\mathbb{Z}$, with the operations of 6.4, is a commutative ring,
and $0 \neq 1$.

*Proof.* Write $x = [a, b]$, $y = [c, d]$, $z = [e, f]$. Every law reduces to laws
of $\mathbb{N}$ (5.12, 5.14) applied to the components.

*Addition* is associative and commutative because it is componentwise. $x + 0 =
[a + 0, b + 0] = x$. $x + (-x) = [a + b, b + a] = [0, 0]$, since $(a + b) + 0 = 0
+ (b + a)$.

*Multiplication.* Commutative: shown in the proof of 6.5. Neutral: $x \cdot 1 =
[a \cdot 1 + b \cdot 0,\; a \cdot 0 + b \cdot 1] = [a, b]$. Associative: expanding
both sides with distributivity in $\mathbb{N}$,
$$\begin{aligned}
(xy)z &= [ac + bd,\; ad + bc] \cdot [e, f] = [ace + bde + adf + bcf,\; acf + bdf + ade + bce], \\
x(yz) &= [a, b] \cdot [ce + df,\; cf + de] = [ace + adf + bcf + bde,\; acf + ade + bce + bdf].
\end{aligned}$$
The components agree term by term.

*Distributive:*
$$\begin{aligned}
x(y + z) &= [a, b] \cdot [c + e,\; d + f] = [ac + ae + bd + bf,\; ad + af + bc + be], \\
xy + xz &= [ac + bd,\; ad + bc] + [ae + bf,\; af + be],
\end{aligned}$$
which has the same components.

$0 \neq 1$: $[0, 0] = [1, 0]$ would mean $0 + 0 = 1 + 0$, i.e. $0 = 1 = S(0)$,
against 5.7.3. $\blacksquare$

**Lemma 6.8 (Consequences of the ring laws).** In every commutative ring:
1. The additive inverse is unique: if $x + y = 0$, then $y = -x$.
2. $x \cdot 0 = 0$.
3. $(-x)y = -(xy)$, and $(-x)(-y) = xy$.
4. $-(-x) = x$ and $-(x + y) = (-x) + (-y)$.
5. $x + z = y + z \Rightarrow x = y$.

*Proof.*
1. $y = y + (x + (-x)) = (y + x) + (-x) = 0 + (-x) = -x$.
2. $x \cdot 0 = x(0 + 0) = x \cdot 0 + x \cdot 0$. Add $-(x \cdot 0)$ to both sides:
   $0 = x \cdot 0$.
3. $(-x)y + xy = ((-x) + x)y = 0 \cdot y = 0$, so $(-x)y = -(xy)$ by 1. Then
   $(-x)(-y) = -(x(-y)) = -(-(xy))$, which is $xy$ by 4.
4. $(-x) + x = 0$, so $x = -(-x)$ by 1. And $(x + y) + ((-x) + (-y)) = 0$.
5. Add $-z$ to both sides. $\blacksquare$

Since only the ring laws are used, 6.8 holds equally for $\mathbb{Q}$, and later
for $\mathbb{R}$, $\mathbb{C}$ and matrix rings. Proving things *once, from the
laws* is the main gain of naming a structure.

## $\mathbb{N}$ inside $\mathbb{Z}$

**Theorem 6.9 (Embedding).** The map $\iota \colon \mathbb{N} \to \mathbb{Z}$, $n
\mapsto [n, 0]$, is injective and satisfies
$$\iota(m + n) = \iota(m) + \iota(n), \qquad \iota(mn) = \iota(m)\,\iota(n),
\qquad \iota(0) = 0, \qquad \iota(1) = 1.$$
Moreover, every integer is a difference of embedded natural numbers:
$[a, b] = \iota(a) - \iota(b)$.

*Proof.* Injective: $[m, 0] = [n, 0]$ means $m + 0 = n + 0$. Next, $[m, 0] + [n, 0]
= [m + n, 0]$, and $[m, 0] \cdot [n, 0] = [mn + 0, m \cdot 0 + 0 \cdot n] = [mn,
0]$. Finally $\iota(a) - \iota(b) = [a, 0] + [0, b] = [a, b]$. $\blacksquare$

So $\iota$ copies $\mathbb{N}$, with its arithmetic, into $\mathbb{Z}$. **From now
on we identify $n$ with $\iota(n)$** and treat $\mathbb{N}$ as a subset of
$\mathbb{Z}$. Strictly speaking, the set $2 = \lbrace 0, 1 \rbrace$ and the class
$[2, 0]$ are different sets. Nothing we do will depend on which one we use,
because $\iota$ preserves all the structure. Under this identification the
construction says what we wanted: the class $[a, b]$ *is* $a - b$.

**Corollary 6.10 (Normal form).** Every integer $x$ satisfies exactly one of
$$x = n \text{ for some } n \in \mathbb{N} \setminus \lbrace 0 \rbrace, \qquad x
= 0, \qquad x = -n \text{ for some } n \in \mathbb{N} \setminus \lbrace 0
\rbrace,$$
and $n$ is unique.

*Proof.* Let $x = [a, b]$. If $b \le a$, then $a = b + d$ (5.18.1), and $[a, b] = [d,
0] = d$, since $a + 0 = d + b$. If $a < b$, then $b = a + d$ with $d \neq 0$, and
$[a, b] = [0, d] = -d$, since $a + d = 0 + b$. The cases are exclusive and $n$ is
unique: $[n, 0] = [m, 0]$ gives $n = m$, and $[n, 0] = [0, m]$ gives $n + m = 0$,
so $n = m = 0$ (5.12.6). $\blacksquare$

## No zero divisors

**Theorem 6.11.** For $x, y \in \mathbb{Z}$:
1. $xy = 0 \Rightarrow x = 0 \lor y = 0$.
2. $xz = yz \land z \neq 0 \Rightarrow x = y$ (cancellation).

A commutative ring with $0 \neq 1$ and property 1 is called an *integral domain*.

*Proof.* 1. By 6.10, $x = \pm m$ and $y = \pm n$ with $m, n \in \mathbb{N}$. By
6.8.3 and 6.9, $xy = \pm mn$. If $xy = 0$, then $mn = 0$ (because $-k = 0$ only
for $k = 0$), so $m = 0$ or $n = 0$ (5.14.7).
2. $(x - y)z = xz - yz = 0$ by distributivity and 6.8.3. Since $z \neq 0$, 1 gives
$x - y = 0$, so $x = y$. $\blacksquare$

## Order

**Definition 6.12 (Order on $\mathbb{Z}$).** $x \le y \;:\Leftrightarrow\; y - x
\in \mathbb{N}$. An integer $x$ is *positive* if $x > 0$ and *negative* if $x < 0$.

In representatives: $[a, b] \le [c, d] \Leftrightarrow a + d \le c + b$ (see
Exercise 1).

**Theorem 6.13 ($\mathbb{Z}$ is an ordered ring).**
1. $\le$ is a total order on $\mathbb{Z}$.
2. $x \le y \Rightarrow x + z \le y + z$.
3. $0 \le x \land 0 \le y \Rightarrow 0 \le xy$.
4. On $\mathbb{N}$, this order agrees with the order of Chapter 5.

*Proof.* We use that $\mathbb{N}$ is closed under $+$ and $\cdot$ (6.9), and that
$n \in \mathbb{N}$ and $-n \in \mathbb{N}$ together force $n = 0$ (6.10).
1. Reflexive: $x - x = 0 \in \mathbb{N}$. Antisymmetric: if $y - x \in \mathbb{N}$
   and $x - y = -(y - x) \in \mathbb{N}$, then $y - x = 0$. Transitive: $z - x = (z
   - y) + (y - x)$. Total: by 6.10, $y - x$ or $-(y - x) = x - y$ lies in
   $\mathbb{N}$.
2. $(y + z) - (x + z) = y - x$.
3. $xy \in \mathbb{N}$ when $x, y \in \mathbb{N}$.
4. For $m, n \in \mathbb{N}$: $m \le n$ in $\mathbb{N}$ iff $n = m + d$ for some $d
   \in \mathbb{N}$ (5.18.1), iff $n - m \in \mathbb{N}$. $\blacksquare$

Familiar rules follow from 6.13. For example $x \le y \Leftrightarrow -y \le
-x$, and $x \le y \land 0 \le z \Rightarrow xz \le yz$. Exercise 3 asks for
proofs.

## What is still missing

In $\mathbb{Z}$ every equation $a + x = b$ has exactly one solution, $x = b - a$.
But $2x = 1$ has none: $2x$ is $0$ for $x = 0$, at least $2$ for $x > 0$, and
negative for $x < 0$. [Chapter 7](07-rational-numbers.md) adds the missing
quotients.

## Exercises

1. Show $[a, b] \le [c, d] \Leftrightarrow a + d \le c + b$.
2. Define $|x| := x$ if $0 \le x$ and $|x| := -x$ otherwise. Prove $|xy| = |x|\,|y|$
   and $|x + y| \le |x| + |y|$ (*triangle inequality*).
3. Prove from 6.13: $x \le y \Rightarrow -y \le -x$; $x \le y \land 0 \le z
   \Rightarrow xz \le yz$; $0 \le x^2$ for all $x$; $0 < 1$.
4. Why does the construction need *ordered* pairs? Try using unordered pairs
   $\lbrace a, b \rbrace$ instead of $(a, b)$ and find where it breaks. (Compare
   "$3 - 5$" and "$5 - 3$".)

---

Previous: [Chapter 5: Natural numbers](05-natural-numbers.md) · Next: [Chapter 7: Rational numbers](07-rational-numbers.md)
