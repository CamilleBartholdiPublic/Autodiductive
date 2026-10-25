# Chapter 7: Rational numbers

Uses: [Chapters 1–6](06-integers.md).

In $\mathbb{Z}$, $2x = 1$ has no solution. We repeat the trick of Chapter 6, now
for division: a rational number is what a quotient $a / b$ of integers *would*
be. As a stand-in we use the pair $(a, b)$ with $b \neq 0$. Two pairs mean the
same quotient when $a / b = c / d$, that is, when $ad = cb$. That equation only
uses multiplication, which we have.

---

## Construction

**Definition 7.1.** Let $\mathbb{Z}^\ast := \mathbb{Z} \setminus \lbrace 0
\rbrace$. On $\mathbb{Z} \times \mathbb{Z}^\ast$ let
$$(a, b) \approx (c, d) \;:\Leftrightarrow\; ad = cb.$$

**Lemma 7.2.** $\approx$ is an equivalence relation.

*Proof.* Reflexive and symmetric are clear. Transitive: let $ad = cb$ and $cf =
ed$. Multiplying the first by $f$ gives $adf = cbf = (cf)b = edb$, i.e. $(af)d =
(eb)d$. Since $d \neq 0$, cancellation in $\mathbb{Z}$ (6.11.2) gives $af = eb$.
$\blacksquare$

This is where Chapter 6 pays off: without "no zero divisors", $\approx$ would not
be transitive.

**Definition 7.3 (The rationals).** $\mathbb{Q} := (\mathbb{Z} \times
\mathbb{Z}^\ast)/{\approx}$. We write $\dfrac{a}{b}$ or $a/b$ for the class of
$(a, b)$, with *numerator* $a$ and *denominator* $b$.

So $\dfrac{a}{b} = \dfrac{c}{d} \Leftrightarrow ad = cb$.

**Lemma 7.4 (Expanding fractions).** $\dfrac{ak}{bk} = \dfrac{a}{b}$ for $k \neq
0$. In particular $\dfrac{-a}{-b} = \dfrac{a}{b}$, so every rational number has a
representative with positive denominator.

*Proof.* $(ak)b = a(bk)$. Take $k = -1$ for the second claim, and use 6.10 for the
third. $\blacksquare$

## Arithmetic

**Definition 7.5 (Operations).**
$$\frac{a}{b} + \frac{c}{d} := \frac{ad + cb}{bd}, \qquad -\frac{a}{b} :=
\frac{-a}{b}, \qquad \frac{a}{b} \cdot \frac{c}{d} := \frac{ac}{bd},$$
with $0 := 0/1$ and $1 := 1/1$. The denominators are allowed: $b, d \neq 0$ gives
$bd \neq 0$ by 6.11.1.

**Lemma 7.6.** The operations of 7.5 are well-defined.

*Proof.* Let $ab' = a'b$. We change the first argument. Both formulas are
symmetric in the two arguments, so that is enough.

*Addition.* We need $(ad + cb)(b'd) = (a'd + cb')(bd)$. The left side is $ab'dd +
cbb'd$, the right side is $a'bdd + cb'bd$. They are equal because $ab' = a'b$.

*Multiplication.* $(ac)(b'd) = (ab')cd = (a'b)cd = (a'c)(bd)$.

*Negation.* $(-a)b' = -(ab') = -(a'b) = (-a')b$. $\blacksquare$

**Definition 7.7 (Field).** A *field* is a commutative ring with $0 \neq 1$ in
which every $x \neq 0$ has a *multiplicative inverse* $x^{-1}$ with $x \cdot
x^{-1} = 1$. In a field, $x / y := x \cdot y^{-1}$ for $y \neq 0$.

**Theorem 7.8.** $\mathbb{Q}$ is a field.

*Proof.* Let $x = a/b$, $y = c/d$, $z = e/f$. Commutativity of both operations is
built into the formulas.

*Associativity of $+$.* Both $(x + y) + z$ and $x + (y + z)$ come out as
$\dfrac{adf + cbf + ebd}{bdf}$.

*Associativity of $\cdot$.* Both sides are $\dfrac{ace}{bdf}$.

*Neutral elements.* $\dfrac{a}{b} + \dfrac{0}{1} = \dfrac{a \cdot 1 + 0 \cdot
b}{b \cdot 1} = \dfrac{a}{b}$, and $\dfrac{a}{b} \cdot \dfrac{1}{1} =
\dfrac{a}{b}$.

*Additive inverse.* $\dfrac{a}{b} + \dfrac{-a}{b} = \dfrac{ab + (-a)b}{bb} =
\dfrac{0}{bb} = \dfrac{0}{1}$, since $0 \cdot 1 = 0 \cdot bb$.

*Distributivity.* Using 7.4 with $k = b$:
$$xy + xz = \frac{ac}{bd} + \frac{ae}{bf} = \frac{acbf + aebd}{bdbf} =
\frac{(acf + aed)\,b}{(bdf)\,b} = \frac{a(cf + ed)}{bdf} = x(y + z).$$

*$0 \neq 1$.* $0/1 = 1/1$ would mean $0 = 1$ in $\mathbb{Z}$.

*Multiplicative inverse.* First, $a/b = 0$ iff $a \cdot 1 = 0 \cdot b$ iff $a =
0$. So if $x = a/b \neq 0$, then $a \neq 0$, and $b/a$ is a rational number with
$\dfrac{a}{b} \cdot \dfrac{b}{a} = \dfrac{ab}{ba} = \dfrac{1}{1}$. $\blacksquare$

All of Lemma 6.8 holds in $\mathbb{Q}$, since only ring laws were used there.
Also, a field has no zero divisors: if $xy = 0$ and $x \neq 0$, then $y =
x^{-1}xy = 0$.

## $\mathbb{Z}$ inside $\mathbb{Q}$

**Theorem 7.9 (Embedding).** The map $j \colon \mathbb{Z} \to \mathbb{Q}$, $a
\mapsto a/1$, is injective, preserves $+$, $\cdot$, $0$ and $1$, and satisfies
$$\frac{a}{b} = j(a) \cdot j(b)^{-1} \quad \text{for all } a \in \mathbb{Z},\; b
\in \mathbb{Z}^\ast.$$

*Proof.* $a/1 = a'/1$ iff $a = a'$. Next, $\dfrac{a}{1} + \dfrac{c}{1} =
\dfrac{a + c}{1}$ and $\dfrac{a}{1} \cdot \dfrac{c}{1} = \dfrac{ac}{1}$. Finally
$j(b)^{-1} = 1/b$ by 7.8, and $\dfrac{a}{1} \cdot \dfrac{1}{b} = \dfrac{a}{b}$.
$\blacksquare$

As before, **we identify $a$ with $a/1$**, so $\mathbb{N} \subseteq \mathbb{Z}
\subseteq \mathbb{Q}$. The theorem then says the class $a/b$ *is* the quotient $a
\cdot b^{-1}$. The notation is justified.

## Order

**Lemma 7.10.** Let $\dfrac{a}{b} = \dfrac{a'}{b'}$ with $b, b' > 0$. Then $a \ge 0
\Leftrightarrow a' \ge 0$.

*Proof.* We have $ab' = a'b$. In $\mathbb{Z}$, the product of a positive and a
negative number is negative: if $p > 0$ and $n < 0$, then $p(-n) \ge 0$ by 6.13.3,
and $p(-n) \neq 0$ by 6.11, so $pn < 0$. Now if $a \ge 0$, then $ab' \ge 0$, so
$a'b \ge 0$. With $b > 0$, $a' < 0$ is impossible. The converse follows by
symmetry. $\blacksquare$

**Definition 7.11 (Order on $\mathbb{Q}$).** A rational number $x$ is
*nonnegative*, $x \ge 0$, if $x = a/b$ with $b > 0$ and $a \ge 0$. By 7.4 and
7.10 this doesn't depend on the representative. Let $x \le y :\Leftrightarrow y
- x \ge 0$.

**Theorem 7.12 ($\mathbb{Q}$ is an ordered field).** $\le$ is a total order on
$\mathbb{Q}$, $x \le y \Rightarrow x + z \le y + z$, and $0 \le x \land 0 \le y
\Rightarrow 0 \le xy$. On $\mathbb{Z}$ it agrees with the order of Chapter 6.

*Proof.* Let $\mathbb{Q}_{\ge 0}$ be the set of nonnegative rationals. Its
properties:
- *Closed under $+$ and $\cdot$:* for $b, d > 0$ and $a, c \ge 0$, the sum
  $\dfrac{ad + cb}{bd}$ and the product $\dfrac{ac}{bd}$ have nonnegative
  numerators and positive denominators.
- *For every $x$, $x \ge 0$ or $-x \ge 0$:* write $x = a/b$ with $b > 0$. Then $a \ge
  0$ or $-a \ge 0$.
- *$x \ge 0$ and $-x \ge 0$ only for $x = 0$:* that would need $a \ge 0$ and $-a \ge
  0$, so $a = 0$.

The proof of 6.13 used only these three properties of $\mathbb{N} \subseteq
\mathbb{Z}$, so it goes through word for word. On $\mathbb{Z}$: $a/1 \ge 0$ iff $a
\ge 0$. $\blacksquare$

## Two properties of $\mathbb{Q}$

**Theorem 7.13 (Archimedean property).** For every $x \in \mathbb{Q}$ there is an
$n \in \mathbb{N}$ with $x < n$.

*Proof.* Write $x = a/b$ with $b > 0$, so $b \ge 1$. If $a \le 0$, then $x \le 0 <
1$. If $a > 0$, take $n := a + 1$. Then
$$n - x = \frac{(a + 1)b - a}{b} = \frac{a(b - 1) + b}{b},$$
and the numerator is at least $b > 0$. So $x < n$. $\blacksquare$

**Theorem 7.14 (Density).** If $x < y$ in $\mathbb{Q}$, then $x < \dfrac{x + y}{2} <
y$. So between any two rational numbers there is another one, and hence
infinitely many.

*Proof.* $2 = 1 + 1 > 0$. Then $x < y$ gives $2x = x + x < x + y$ and $x + y < y + y
= 2y$. Multiply by $\tfrac12 > 0$. $\blacksquare$

## The gap

$\mathbb{Q}$ looks complete: it's a field, it's ordered, and it's dense. But it
has holes.

**Theorem 7.15 ($\sqrt 2$ is irrational).** There is no $q \in \mathbb{Q}$ with
$q^2 = 2$.

*Proof.* Suppose $q^2 = 2$. Replacing $q$ by $-q$ if needed, we may assume $q >
0$. Then $1 < q < 2$: $0 < q \le 1$ would give $q^2 \le q \le 1$, and $q \ge 2$
would give $q^2 \ge 4$.

Write $q = a/b$ with $b > 0$. Then $bq = a$ is a natural number, so the set
$$X := \lbrace m \in \mathbb{N} \mid m > 0 \text{ and } mq \in \mathbb{N} \rbrace$$
is nonempty. By well-ordering (5.20) it has a least element $m$. Let $m' := mq -
m = m(q - 1)$. Then:
- $m'$ is an integer, as a difference of two natural numbers, and $m' > 0$ because
  $q > 1$. So $m' \in \mathbb{N}$, $m' > 0$.
- $m' q = mq^2 - mq = 2m - mq$ is an integer, and it is positive because $m' > 0$
  and $q > 0$. So $m'q \in \mathbb{N}$.
- $m' < m$, because $q - 1 < 1$.

So $m' \in X$ and $m' < m$, contradicting the choice of $m$. $\blacksquare$

The proof uses only order and well-ordering; it needs no divisibility. So the set
$\lbrace q \in \mathbb{Q} \mid q > 0,\; q^2 < 2 \rbrace$ is bounded above (by $2$),
but its least upper bound would have to be $\sqrt 2$, which isn't in $\mathbb{Q}$.
This is where **Part 2** starts. It constructs the real numbers $\mathbb{R}$ by
filling exactly these gaps, using sequences, i.e. maps $\mathbb{N} \to \mathbb{Q}$
(4.12), or cuts of $\mathbb{Q}$. From there come limits, series, functions and
calculus.

## Summary of the number constructions

| Set | Built from | Element | Means | Gains |
|---|---|---|---|---|
| $\mathbb{N}$ | $\varnothing$, successor | $\lbrace 0, 1, \dots, n-1 \rbrace$ | $n$ | counting, induction, recursion |
| $\mathbb{Z}$ | pairs in $\mathbb{N} \times \mathbb{N}$ | $[a, b]$ | $a - b$ | subtraction |
| $\mathbb{Q}$ | pairs in $\mathbb{Z} \times \mathbb{Z}^\ast$ | $a/b$ | $a \cdot b^{-1}$ | division |
| $\mathbb{R}$ | Part 2 | | | limits, completeness |

## Exercises

1. Show that $\mathbb{Q}$ is the smallest field containing $\mathbb{Z}$, in this
   sense: if $F$ is a field and $\varphi \colon \mathbb{Z} \to F$ is injective and
   preserves $+$, $\cdot$ and $1$, then $a/b \mapsto \varphi(a)\varphi(b)^{-1}$ is a
   well-defined injective map $\mathbb{Q} \to F$ that preserves $+$ and $\cdot$.
2. Show that for $x, y \in \mathbb{Q}$ with $0 < x$ there is $n \in \mathbb{N}$
   with $y < nx$.
3. Adapt the proof of 7.15 to show there is no rational $q$ with $q^2 = 3$.
4. Let $S := \lbrace q \in \mathbb{Q} \mid q > 0,\; q^2 < 2 \rbrace$. Show that for
   every $s \in S$ there is a larger element of $S$. (Try $s + h$ with a suitable
   small rational $h > 0$.)

---

Previous: [Chapter 6: Integers](06-integers.md) · Up: [Part 1](README.md)
