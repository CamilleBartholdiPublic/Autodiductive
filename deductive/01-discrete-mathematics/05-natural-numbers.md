# Chapter 5: Natural numbers

Uses: [Chapters 1–4](04-maps.md).

We now construct the numbers $0, 1, 2, 3, \dots$ out of sets. The idea, due to
von Neumann, is to let **each number be the set of all numbers before it**:
$$0 := \varnothing, \quad 1 := \lbrace 0 \rbrace, \quad 2 := \lbrace 0, 1
\rbrace, \quad 3 := \lbrace 0, 1, 2 \rbrace, \quad \dots$$
Then the number $n$ has exactly $n$ elements, "$m$ is smaller than $n$" can simply
mean $m \in n$, and passing to the next number means adding the number itself as
a new element.

Then we prove that these sets behave the way numbers should. The famous *Peano
axioms*, induction included, come out as **theorems**. So do addition,
multiplication and order, with all the usual laws.

---

## Construction

**Definition 5.1 (Successor).** The *successor* of a set $x$ is $S(x) := x \cup
\lbrace x \rbrace$.

**Definition 5.2 (Inductive set).** A set $I$ is *inductive* if $\varnothing \in
I$ and $x \in I \Rightarrow S(x) \in I$ for every $x$.

An inductive set contains $\varnothing$, $S(\varnothing)$,
$S(S(\varnothing))$, and so on. None of the axioms so far guarantees that such a
set exists. Every set we have built so far is finite. So we need a new axiom:

**Axiom 5.3 (Infinity).** There is an inductive set.

**Definition 5.4 (The natural numbers).** Let $I_0$ be an inductive set (5.3), and
$$\mathbb{N} := \lbrace x \in I_0 \mid x \in I \text{ for every inductive set } I
\rbrace.$$
The elements of $\mathbb{N}$ are the *natural numbers*.

$\mathbb{N}$ doesn't depend on which $I_0$ we picked: if $I_1$ is another
inductive set, any $x$ in every inductive set is in $I_0$ and in $I_1$, so both
choices give the same elements. Two facts follow directly from the definition:

- **$\mathbb{N}$ is inductive.** $\varnothing$ lies in every inductive set. If $x$
  lies in every inductive set, so does $S(x)$.
- **$\mathbb{N}$ is contained in every inductive set.** That is how its elements
  were chosen.

So $\mathbb{N}$ is the *smallest* inductive set. **Numerals** are defined as
$$0 := \varnothing,\; 1 := S(0),\; 2 := S(1),\; 3 := S(2),\; 4 := S(3),\; 5 :=
S(4),\; 6 := S(5),\; 7 := S(6),\; 8 := S(7),\; 9 := S(8).$$
Indeed $1 = \varnothing \cup \lbrace \varnothing \rbrace = \lbrace 0 \rbrace$, $2
= \lbrace 0 \rbrace \cup \lbrace 1 \rbrace = \lbrace 0, 1 \rbrace$, and so on.
Positional notation like $10, 11, \dots$ needs division with remainder and
waits until Chapter 10. *In this project $0 \in \mathbb{N}$.*

## Induction

**Theorem 5.5 (Principle of induction).** Let $X \subseteq \mathbb{N}$ with
1. $0 \in X$, and
2. $n \in X \Rightarrow S(n) \in X$ for all $n \in \mathbb{N}$.

Then $X = \mathbb{N}$.

Equivalently, for a predicate $P$: if $P(0)$ holds (*base case*) and $P(n)
\Rightarrow P(S(n))$ holds for every $n \in \mathbb{N}$ (*induction step*, with
*induction hypothesis* $P(n)$), then $P(n)$ holds for all $n \in \mathbb{N}$.

*Proof.* By 1 and 2, $X$ is inductive (any $x$ with $x \in X$ lies in
$\mathbb{N}$). So $\mathbb{N} \subseteq X$ (5.4), and $X \subseteq \mathbb{N}$ is
given. For the predicate form, apply this to $X := \lbrace n \in \mathbb{N} \mid
P(n) \rbrace$. $\blacksquare$

Induction is not a new law of logic. It follows from the way $\mathbb{N}$ was
built: as the *smallest* inductive set, it has no room for anything that isn't
reached from $0$ by successors.

**Lemma 5.6 (Shape of natural numbers).** For every $n \in \mathbb{N}$:
1. $n \subseteq \mathbb{N}$: every element of a natural number is a natural number.
2. $n$ is *transitive*: $m \in n \Rightarrow m \subseteq n$.
3. $n \notin n$.

*Proof.* Each by induction on $n$.
1. $0 = \varnothing \subseteq \mathbb{N}$. If $n \subseteq \mathbb{N}$, then
   $S(n) = n \cup \lbrace n \rbrace \subseteq \mathbb{N}$, because $n \in
   \mathbb{N}$.
2. $0$ has no elements, so the condition holds vacuously. Assume $n$ is
   transitive and let $m \in S(n)$. Then $m \in n$ or $m = n$. If $m \in n$, then
   $m \subseteq n \subseteq S(n)$. If $m = n$, then $m = n \subseteq S(n)$.
3. $0 \notin 0$, since $0$ has no elements. Assume $n \notin n$, and suppose $S(n)
   \in S(n)$. Then $S(n) \in n$ or $S(n) = n$. If $S(n) = n$, then $n \in S(n) =
   n$. If $S(n) \in n$, then $S(n) \subseteq n$ by 2, and $n \in S(n)$ gives $n
   \in n$. Both contradict the induction hypothesis. $\blacksquare$

**Theorem 5.7 (Peano axioms).**
1. $0 \in \mathbb{N}$.
2. $n \in \mathbb{N} \Rightarrow S(n) \in \mathbb{N}$. So $S$ restricts to a map
   $S \colon \mathbb{N} \to \mathbb{N}$.
3. $S(n) \neq 0$ for every $n \in \mathbb{N}$.
4. $S$ is injective: $S(m) = S(n) \Rightarrow m = n$.
5. Induction (5.5).

*Proof.* 1, 2: $\mathbb{N}$ is inductive. 3: $n \in S(n)$, so $S(n) \neq
\varnothing$.

4: Let $S(m) = S(n)$ and suppose $m \neq n$. Since $m \in S(m) = S(n) = n \cup
\lbrace n \rbrace$ and $m \neq n$, we get $m \in n$. In the same way $n \in m$.
By transitivity (5.6.2), $m \in n$ gives $m \subseteq n$, and with $n \in m$ that
gives $n \in n$, contradicting 5.6.3. $\blacksquare$

**Corollary 5.8 (Predecessor).** Every $n \in \mathbb{N}$ with $n \neq 0$ is $S(p)$
for exactly one $p \in \mathbb{N}$, the *predecessor* of $n$.

*Proof.* Existence, by induction on the statement "$n = 0$ or $n = S(p)$ for some
$p \in \mathbb{N}$": it holds for $0$, and for $S(n)$ with $p := n$. Uniqueness:
5.7.4. $\blacksquare$

## Recursion

Induction *proves* statements about all $n$. Recursion *defines* things for all
$n$: give the value at $0$, and a rule that turns the value at $n$ into the value
at $S(n)$. That this defines a map at all is a theorem.

**Theorem 5.9 (Recursion theorem).** Let $A$ be a set, $a \in A$, and $g \colon A
\to A$ a map. Then there is exactly one map $h \colon \mathbb{N} \to A$ with
$$h(0) = a \qquad\text{and}\qquad h(S(n)) = g(h(n)) \quad \text{for all } n \in
\mathbb{N}.$$

*Proof.* *Idea:* $h$ should be the smallest relation that contains $(0, a)$ and
is closed under the step $(n, x) \mapsto (S(n), g(x))$. Then we show this
relation is a map.

Call $R \subseteq \mathbb{N} \times A$ *closed* if $(0, a) \in R$ and $(n, x) \in
R \Rightarrow (S(n), g(x)) \in R$. Then $\mathbb{N} \times A$ is closed. Let $h$
be the intersection of all closed relations (2.12, over the nonempty set of closed
elements of $\mathcal{P}(\mathbb{N} \times A)$). Then $h$ is closed as well, and
$h \subseteq R$ for every closed $R$.

*$h$ is a map.* We show by induction on $n$: there is exactly one $x$ with $(n, x)
\in h$.

- $n = 0$. We have $(0, a) \in h$. Suppose $(0, b) \in h$ with $b \neq a$. Then
  $h' := h \setminus \lbrace (0, b) \rbrace$ is still closed. It contains $(0,
  a)$, and every pair $(S(n), g(x))$ produced by the step differs from $(0, b)$
  because $S(n) \neq 0$ (5.7.3). That contradicts $h \subseteq h'$, since $(0, b)
  \notin h'$.
- Step. Assume $x$ is the only element with $(n, x) \in h$. Since $h$ is closed,
  $(S(n), g(x)) \in h$. Suppose $(S(n), y) \in h$ with $y \neq g(x)$. Then $h' :=
  h \setminus \lbrace (S(n), y) \rbrace$ is still closed. It contains $(0, a)$.
  If $(k, z) \in h'$ and $(S(k), g(z)) = (S(n), y)$, then $S(k) = S(n)$, so $k =
  n$ (5.7.4), so $z = x$ by the induction hypothesis, so $y = g(x)$, which is
  false. Again $h \subseteq h'$ fails, a contradiction.

Since $h$ is closed, $h(0) = a$ and $h(S(n)) = g(h(n))$.

*Uniqueness.* If $h'$ also satisfies both equations, then $h(n) = h'(n)$ by
induction: $h(0) = a = h'(0)$, and $h(n) = h'(n)$ gives $h(S(n)) = g(h(n)) =
g(h'(n)) = h'(S(n))$. Use 4.2. $\blacksquare$

Often the step also needs to know $n$, for example for $n! = n \cdot (n-1)!$. The
stronger form follows from the simple one:

**Corollary 5.10 (Recursion with index).** Let $a \in A$ and $g \colon \mathbb{N}
\times A \to A$. Then there is exactly one $h \colon \mathbb{N} \to A$ with $h(0) =
a$ and $h(S(n)) = g(n, h(n))$.

*Proof.* Apply 5.9 to the set $\mathbb{N} \times A$, the start value $(0, a)$ and
the step $G(n, x) := (S(n), g(n, x))$. This gives $H \colon \mathbb{N} \to
\mathbb{N} \times A$. By induction, the first component of $H(n)$ is $n$: write
$H(n) = (n, h(n))$. Then $H(S(n)) = G(n, h(n)) = (S(n), g(n, h(n)))$, which says
exactly $h(S(n)) = g(n, h(n))$. Uniqueness again by induction. $\blacksquare$

## Addition

**Definition 5.11 (Addition).** Fix $m \in \mathbb{N}$. By 5.9 (with $A =
\mathbb{N}$, $a = m$, $g = S$) there is exactly one $h_m \colon \mathbb{N} \to
\mathbb{N}$ with $h_m(0) = m$ and $h_m(S(n)) = S(h_m(n))$. Let $m + n := h_m(n)$.
By 4.3 this defines an operation $+ \colon \mathbb{N} \times \mathbb{N} \to
\mathbb{N}$, characterised by
$$\text{(A1)}\quad m + 0 = m, \qquad\qquad \text{(A2)}\quad m + S(n) = S(m + n).$$

In particular $m + 1 = m + S(0) = S(m + 0) = S(m)$. **From now on we write $n + 1$
for $S(n)$.** (A2) then reads $m + (n + 1) = (m + n) + 1$.

*Example.* $2 + 2 = 2 + S(1) = S(2 + 1) = S(S(2)) = S(3) = 4$.

**Theorem 5.12 (Laws of addition).** For all $k, m, n \in \mathbb{N}$:
1. $0 + n = n$
2. $S(m) + n = S(m + n)$
3. $m + n = n + m$ (commutativity)
4. $(k + m) + n = k + (m + n)$ (associativity)
5. $k + n = m + n \Rightarrow k = m$ (cancellation)
6. $m + n = 0 \Rightarrow m = 0 \land n = 0$

*Proof.* All by induction on $n$, using (A1) and (A2) at each step.
1. $0 + 0 = 0$. If $0 + n = n$, then $0 + S(n) = S(0 + n) = S(n)$.
2. $S(m) + 0 = S(m) = S(m + 0)$. If it holds for $n$: $S(m) + S(n) = S(S(m) + n) =
   S(S(m + n)) = S(m + S(n))$.
3. $m + 0 = m = 0 + m$ by 1. If $m + n = n + m$, then $m + S(n) = S(m + n) = S(n +
   m) = S(n) + m$ by 2.
4. $(k + m) + 0 = k + m = k + (m + 0)$. If it holds for $n$: $(k + m) + S(n) =
   S((k + m) + n) = S(k + (m + n)) = k + S(m + n) = k + (m + S(n))$.
5. $n = 0$: by (A1). Step: $k + S(n) = m + S(n)$ means $S(k + n) = S(m + n)$, so $k
   + n = m + n$ by 5.7.4, so $k = m$ by the induction hypothesis.
6. (No induction needed.) If $n \neq 0$, then $n = S(p)$ (5.8), and $m + n = S(m +
   p) \neq 0$ (5.7.3). So $n = 0$, and then $m = m + 0 = 0$. $\blacksquare$

By associativity, brackets in sums like $k + m + n$ can be left out.

## Multiplication

**Definition 5.13 (Multiplication).** Fix $m$. By 5.9 (with $a = 0$ and $g(x) = x
+ m$) define $m \cdot n$ by
$$\text{(M1)}\quad m \cdot 0 = 0, \qquad\qquad \text{(M2)}\quad m \cdot S(n) = m
\cdot n + m.$$
We write $mn$ for $m \cdot n$, and products are evaluated before sums: $mn + m$
means $(mn) + m$.

**Theorem 5.14 (Laws of multiplication).** For all $k, m, n \in \mathbb{N}$:
1. $0 \cdot n = 0$
2. $S(m) \cdot n = mn + n$
3. $mn = nm$ (commutativity)
4. $k(m + n) = km + kn$ and $(m + n)k = mk + nk$ (distributivity)
5. $(km)n = k(mn)$ (associativity)
6. $1 \cdot n = n = n \cdot 1$ ($1$ is neutral)
7. $mn = 0 \Rightarrow m = 0 \lor n = 0$

*Proof.* By induction on $n$ except 6 and 7, using (M1), (M2) and 5.12.
1. $0 \cdot 0 = 0$. If $0 \cdot n = 0$: $0 \cdot S(n) = 0 \cdot n + 0 = 0$.
2. $S(m) \cdot 0 = 0 = m \cdot 0 + 0$. If it holds for $n$:
   $$\begin{aligned}
   S(m) \cdot S(n) &= S(m) \cdot n + S(m) = (mn + n) + S(m) = mn + (n + S(m)) \\
   &= mn + S(n + m) = mn + S(m + n) = mn + (m + S(n)) \\
   &= (mn + m) + S(n) = m \cdot S(n) + S(n).
   \end{aligned}$$
3. $m \cdot 0 = 0 = 0 \cdot m$ by 1. If $mn = nm$: $m \cdot S(n) = mn + m = nm + m =
   S(n) \cdot m$ by 2.
4. $k(m + 0) = km = km + 0 = km + k \cdot 0$. If it holds for $n$: $k(m + S(n)) = k
   \cdot S(m + n) = k(m + n) + k = (km + kn) + k = km + (kn + k) = km + k \cdot
   S(n)$. The second form follows by 3.
5. $(km) \cdot 0 = 0 = k \cdot 0 = k(m \cdot 0)$. If it holds for $n$: $(km) \cdot
   S(n) = (km)n + km = k(mn) + km = k(mn + m) = k(m \cdot S(n))$, using 4.
6. $n \cdot 1 = n \cdot S(0) = n \cdot 0 + n = 0 + n = n$, and $1 \cdot n = n$ by 3.
7. If $m \neq 0$ and $n \neq 0$, write $m = S(p)$ and $n = S(q)$ (5.8). Then $mn =
   mq + m = mq + S(p) = S(mq + p) \neq 0$. $\blacksquare$

## Order

**Definition 5.15 (Order).** For $m, n \in \mathbb{N}$:
$$m < n \;:\Leftrightarrow\; m \in n, \qquad m \le n \;:\Leftrightarrow\; m < n
\lor m = n.$$

So $n = \lbrace m \in \mathbb{N} \mid m < n \rbrace$: a natural number is the set
of its predecessors, as promised. (Elements of $n$ are natural numbers by
5.6.1.)

**Lemma 5.16.** For all $m, n \in \mathbb{N}$:
1. $m < S(n) \Leftrightarrow m \le n$
2. $\lnot (n < 0)$
3. $0 \le n$
4. $m < n \Rightarrow S(m) \le n$

*Proof.* 1: $m \in n \cup \lbrace n \rbrace \Leftrightarrow m \in n \lor m = n$.
2: $0 = \varnothing$ has no elements.
3: by induction. $0 \le 0$, and $0 \le n$ gives $0 < S(n)$ by 1.
4: by induction on $n$. For $n = 0$ there is nothing to show (2). Assume it holds
for $n$ and let $m < S(n)$, so $m \le n$ by 1. If $m = n$, then $S(m) = S(n)$. If $m
< n$, then $S(m) \le n$ by the induction hypothesis, so $S(m) < S(n)$ by 1.
$\blacksquare$

**Theorem 5.17 ($\le$ is a total order).** $<$ is irreflexive and transitive on
$\mathbb{N}$, and **trichotomy** holds: for all $m, n$ exactly one of
$$m < n, \qquad m = n, \qquad n < m$$
is true. Consequently $\le$ is a total order on $\mathbb{N}$ (3.13).

*Proof.* Irreflexive: $n \notin n$ (5.6.3). Transitive: if $k \in m$ and $m \in
n$, then $m \subseteq n$ (5.6.2), so $k \in n$.

*At least one* holds, by induction on $n$ (for fixed $m$). For $n = 0$: $0 \le m$
by 5.16.3, so $0 = m$ or $0 < m$. Step: assume one of the three holds for $n$. If
$m < n$ or $m = n$, then $m \le n$, so $m < S(n)$ by 5.16.1. If $n < m$, then $S(n)
\le m$ by 5.16.4. Either way one of the three holds for $S(n)$.

*At most one* holds: $m < n$ together with $m = n$ or with $n < m$ would give $m <
m$ by transitivity, against irreflexivity.

By 3.14, $\le$ is a partial order, and trichotomy makes it total. $\blacksquare$

**Theorem 5.18 (Order and arithmetic).** For all $k, m, n \in \mathbb{N}$:
1. $m \le n \Leftrightarrow \exists d \in \mathbb{N}\; n = m + d$, and this $d$ is
   unique. It is written $n - m$ (*difference*).
2. $m < n \Leftrightarrow \exists d \in \mathbb{N}\; n = m + S(d)$.
3. $m < n \Rightarrow m + k < n + k$.
4. $m < n \land k \neq 0 \Rightarrow mk < nk$.

*Proof.*
1. ($\Leftarrow$) By induction on $d$: $m \le m + 0$. If $m \le m + d$, then $m + d
   < S(m + d) = m + S(d)$ (5.16.1), so $m < m + S(d)$ by transitivity.
   ($\Rightarrow$) By induction on $n$. If $m \le 0$, then $m = 0$ (5.16.2), and $d
   = 0$ works. Assume the claim for $n$, and let $m \le S(n)$. If $m = S(n)$, take
   $d = 0$. Otherwise $m < S(n)$, so $m \le n$ (5.16.1), so $n = m + d$ for some
   $d$, and $S(n) = S(m + d) = m + S(d)$.
   Uniqueness: $m + d = m + d'$ gives $d = d'$ by 5.12.3 and 5.12.5.
2. ($\Rightarrow$) $S(m) \le n$ (5.16.4), so by 1 $n = S(m) + d = m + S(d)$ by
   5.12.2. ($\Leftarrow$) $m \le m + d < S(m + d) = n$ by 1 and 5.16.1.
3. By 2, $n = m + S(d)$, so $n + k = (m + k) + S(d)$ by 5.12.3–4. Use 2 again.
4. By 2, $n = m + S(d)$, so $nk = mk + S(d)k$. Since $k \neq 0$ and $S(d) \neq 0$,
   $S(d)k \neq 0$ (5.14.7), so $S(d)k = S(e)$ for some $e$ (5.8). Use 2.
   $\blacksquare$

**Corollary 5.19 (Cancellation).** $m + k < n + k \Rightarrow m < n$. And if $k
\neq 0$: $mk = nk \Rightarrow m = n$, and $mk < nk \Rightarrow m < n$.

*Proof.* Each time, compare $m$ and $n$ by trichotomy (5.17). The cases other
than the claimed one contradict the hypothesis by 5.18.3–4. For example, if $mk =
nk$ but $m < n$, then $mk < nk$, contradicting irreflexivity. $\blacksquare$

## Well-ordering

**Theorem 5.20 (Well-ordering principle).** Every nonempty subset of
$\mathbb{N}$ has a least element. So $(\mathbb{N}, \le)$ is well-ordered (3.17).

*Proof.* Let $X \subseteq \mathbb{N}$ have no least element. We show $X =
\varnothing$. Let
$$Y := \lbrace n \in \mathbb{N} \mid \forall m < n\; m \notin X \rbrace$$
be the set of $n$ such that no number below $n$ is in $X$. We show $Y$ is
inductive. $0 \in Y$ vacuously (5.16.2). Let $n \in Y$. If $n$ were in $X$, it
would be the least element of $X$: for $x \in X$, $x < n$ is impossible because
$n \in Y$, so $n \le x$ by trichotomy. So $n \notin X$. Then no $m \le n$ is in
$X$, i.e. no $m < S(n)$ (5.16.1). So $S(n) \in Y$.

By induction $Y = \mathbb{N}$. Every $n \in \mathbb{N}$ satisfies $n < S(n)$ and
$S(n) \in Y$, so $n \notin X$. $\blacksquare$

**Corollary 5.21 (Strong induction).** Let $P$ be a predicate such that for every
$n \in \mathbb{N}$,
$$\bigl( \forall m < n\; P(m) \bigr) \Rightarrow P(n).$$
Then $P(n)$ holds for every $n \in \mathbb{N}$.

*Proof.* Suppose $X := \lbrace n \in \mathbb{N} \mid \lnot P(n) \rbrace$ is
nonempty, and let $n$ be its least element (5.20). Every $m < n$ is outside $X$, so
$P(m)$ holds for all $m < n$. The hypothesis gives $P(n)$, contradicting $n \in
X$. $\blacksquare$

The case $n = 0$ has no $m < 0$, so it requires proving $P(0)$ outright. Strong
induction lets the step use *all* smaller cases, not only the previous one. It
will be used for prime factorization (Chapter 10).

## What is still missing

$\mathbb{N}$ has addition and multiplication with all the familiar laws, and an
order compatible with both. But the equation $m + x = n$ only has a solution $x
\in \mathbb{N}$ when $m \le n$ (5.18.1). There is no $x$ with $1 + x = 0$.
[Chapter 6](06-integers.md) builds a larger number system where subtraction always
works.

## Exercises

1. Prove $2 \cdot 3 = 6$ from the definitions, citing each step.
2. Prove: there is no $m$ with $n < m < n + 1$.
3. Use 5.9 to define powers $m^0 := 1$, $m^{S(n)} := m^n \cdot m$. Prove $m^{a + b}
   = m^a m^b$ and $(m^a)^b = m^{ab}$.
4. Use 5.10 to define the factorial $0! := 1$, $S(n)! := n! \cdot S(n)$. Compute
   $4!$.
5. Use 5.10 to define, for a sequence $(x_i)_{i \in \mathbb{N}}$ in $\mathbb{N}$,
   the partial sums $s_0 := 0$, $s_{S(n)} := s_n + x_n$ (that is, $s_n = x_0 +
   \dots + x_{n-1}$). Prove that $2 s_{n+1} = n(n + 1)$ when $x_i = i$.
6. Show that $\mathbb{N}$ has no greatest element.

---

Previous: [Chapter 4: Maps](04-maps.md) · Next: [Chapter 6: Integers](06-integers.md)
