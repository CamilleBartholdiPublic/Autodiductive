# Chapter 3: Relations

Uses: [Chapters 1–2](02-sets.md).

Sets don't care about order: $\lbrace a, b \rbrace = \lbrace b, a \rbrace$. To
compare, combine or map objects, we need a pair in which one element comes
*first*. Then we use pairs to say when objects are *related*, and from that we
get the two most important kinds of relations: **equivalences** and **orders**.

---

## Ordered pairs

**Definition 3.1 (Ordered pair, Kuratowski).**
$$(a, b) := \lbrace \lbrace a \rbrace, \lbrace a, b \rbrace \rbrace.$$
$a$ is the *first component* and $b$ the *second component*.

This exists by Pairing (2.10). The definition is only useful because of the
following property, which is all we will ever use about pairs:

**Theorem 3.2 (Characteristic property of pairs).**
$$(a, b) = (c, d) \;\Leftrightarrow\; a = c \land b = d.$$

*Proof.* ($\Leftarrow$) Substitution.

($\Rightarrow$) Assume $\lbrace \lbrace a \rbrace, \lbrace a, b \rbrace \rbrace =
\lbrace \lbrace c \rbrace, \lbrace c, d \rbrace \rbrace$.

*Step 1: $a = c$.* $\lbrace a \rbrace$ is an element of the left side, so of the
right side: $\lbrace a \rbrace = \lbrace c \rbrace$ or $\lbrace a \rbrace = \lbrace
c, d \rbrace$. In both cases $c \in \lbrace a \rbrace$, so $c = a$.

*Step 2, case $a = b$.* Then $(a, b) = \lbrace \lbrace a \rbrace, \lbrace a
\rbrace \rbrace = \lbrace \lbrace a \rbrace \rbrace$. The element $\lbrace c, d
\rbrace$ of the right side must equal $\lbrace a \rbrace$, so $d \in \lbrace a
\rbrace$, so $d = a = b$.

*Step 2, case $a \neq b$.* $\lbrace a, b \rbrace$ is an element of the right side
$\lbrace \lbrace a \rbrace, \lbrace a, d \rbrace \rbrace$ (using $c = a$). It is
not $\lbrace a \rbrace$, since $b \in \lbrace a, b \rbrace$ but $b \notin \lbrace a
\rbrace$. So $\lbrace a, b \rbrace = \lbrace a, d \rbrace$. Then $b \in \lbrace a,
d \rbrace$ and $b \neq a$, so $b = d$. $\blacksquare$

**Definition 3.3 (Tuples).** $(a, b, c) := ((a, b), c)$, and generally
$(a_1, \dots, a_{n+1}) := ((a_1, \dots, a_n), a_{n+1})$. Applying 3.2 repeatedly,
two tuples are equal iff their components are equal one by one.

## Cartesian products

**Theorem 3.4.** For sets $A, B$ there is a unique set whose elements are exactly
the pairs $(a, b)$ with $a \in A$ and $b \in B$.

*Proof.* We need a set we already have that contains all such pairs, so that
Separation can pick them out. Let $a \in A$ and $b \in B$. Then $\lbrace a
\rbrace \subseteq A \cup B$ and $\lbrace a, b \rbrace \subseteq A \cup B$, so both
are elements of $\mathcal{P}(A \cup B)$. Hence $(a, b) \subseteq \mathcal{P}(A
\cup B)$, i.e. $(a, b) \in \mathcal{P}(\mathcal{P}(A \cup B))$. Now let
$$A \times B := \lbrace p \in \mathcal{P}(\mathcal{P}(A \cup B)) \mid \exists a \in
A\; \exists b \in B\; p = (a, b) \rbrace.$$
Uniqueness is by Extensionality. $\blacksquare$

**Definition 3.5 (Cartesian product).** The set from 3.4 is the *Cartesian
product* $A \times B$. We write $A^2 := A \times A$.

## Relations

**Definition 3.6 (Relation).** A *relation from $A$ to $B$* is a subset $R
\subseteq A \times B$. We write $x \mathrel{R} y$ for $(x, y) \in R$. A *relation
on $A$* is a relation from $A$ to $A$.

Its *domain* and *range* are
$$\operatorname{dom} R := \lbrace x \in A \mid \exists y\; x \mathrel{R} y
\rbrace, \qquad \operatorname{ran} R := \lbrace y \in B \mid \exists x\; x
\mathrel{R} y \rbrace.$$
Its *inverse* is $R^{-1} := \lbrace (y, x) \in B \times A \mid x \mathrel{R} y
\rbrace$, a relation from $B$ to $A$.

*Examples on a set $A$.* The *identity* $\mathrm{id}_A := \lbrace (x, x) \mid x \in
A \rbrace$ (formally $\lbrace p \in A^2 \mid \exists x \in A\; p = (x, x)
\rbrace$). The empty relation $\varnothing$. The full relation $A^2$. On
$\mathcal{P}(A)$, the relation $\subseteq$, meaning the set $\lbrace (X, Y) \in
\mathcal{P}(A)^2 \mid X \subseteq Y \rbrace$.

**Definition 3.7 (Properties of relations).** A relation $R$ on $A$ is
- *reflexive* if $\forall x \in A\; x \mathrel{R} x$,
- *symmetric* if $\forall x, y \in A\; (x \mathrel{R} y \Rightarrow y \mathrel{R}
  x)$,
- *antisymmetric* if $\forall x, y \in A\; (x \mathrel{R} y \land y \mathrel{R} x
  \Rightarrow x = y)$,
- *transitive* if $\forall x, y, z \in A\; (x \mathrel{R} y \land y \mathrel{R} z
  \Rightarrow x \mathrel{R} z)$,
- *irreflexive* if $\forall x \in A\; \lnot(x \mathrel{R} x)$.

## Equivalence relations

An equivalence relation says when two objects are "the same in the respect we
care about". It is the main tool of the number constructions: integers and
rationals are both *equivalence classes*.

**Definition 3.8 (Equivalence relation).** A relation $\sim$ on $A$ that is
reflexive, symmetric and transitive. For $a \in A$, the *equivalence class* of $a$
is
$$[a] := \lbrace x \in A \mid x \sim a \rbrace.$$
The *quotient set* is the set of all classes:
$$A/{\sim} := \lbrace C \in \mathcal{P}(A) \mid \exists a \in A\; C = [a]
\rbrace.$$
Any $x \in C$ is a *representative* of the class $C$.

**Lemma 3.9.** Let $\sim$ be an equivalence relation on $A$ and $a, b \in A$.
1. $a \in [a]$.
2. $[a] = [b] \;\Leftrightarrow\; a \sim b$.
3. Either $[a] = [b]$ or $[a] \cap [b] = \varnothing$.

*Proof.*
1. Reflexivity.
2. ($\Rightarrow$) $a \in [a] = [b]$, so $a \sim b$. ($\Leftarrow$) Let $x \in
   [a]$, so $x \sim a$. With $a \sim b$ and transitivity, $x \sim b$, so $x \in
   [b]$. So $[a] \subseteq [b]$. By symmetry $b \sim a$, and the same argument
   gives $[b] \subseteq [a]$. Use 2.3.
3. Suppose $[a] \cap [b] \neq \varnothing$, with some $x$ in both. Then $x \sim a$
   and $x \sim b$, so $a \sim x$ (symmetry) and $a \sim b$ (transitivity). By 2,
   $[a] = [b]$. $\blacksquare$

So every element sits in exactly one class, and *which* representative we use to
name a class doesn't matter.

**Definition 3.10 (Partition).** A *partition* of $A$ is a set $\Pi$ of nonempty
subsets of $A$ such that every $x \in A$ lies in exactly one $C \in \Pi$.

**Theorem 3.11 (Equivalences are partitions).**
1. If $\sim$ is an equivalence relation on $A$, then $A/{\sim}$ is a partition
   of $A$.
2. If $\Pi$ is a partition of $A$, then $x \sim_\Pi y :\Leftrightarrow \exists C
   \in \Pi\; (x \in C \land y \in C)$ defines an equivalence relation on $A$
   whose classes are exactly the elements of $\Pi$.

*Proof.*
1. Every class $[a]$ is nonempty, since it contains $a$ (3.9.1). Every $x \in A$
   is in the class $[x]$, and if $x \in [a]$ and $x \in [b]$, then $[a] = [b]$ by
   3.9.3.
2. Reflexive: $x$ lies in some $C \in \Pi$. Symmetric: the definition is
   symmetric in $x, y$. Transitive: if $x, y \in C$ and $y, z \in C'$, then $y$
   is in both $C$ and $C'$, so $C = C'$ by uniqueness, and $x, z \in C$. For the
   classes: let $C$ be the element of $\Pi$ containing $a$. Then $x \sim_\Pi a$
   iff $x$ and $a$ share an element of $\Pi$, iff $x \in C$ (uniqueness again).
   So $[a] = C$, and every $C \in \Pi$ arises this way because $C \neq
   \varnothing$. $\blacksquare$

**Definition 3.12 (Well-defined).** Often we define something on classes by
using a representative: "for a class $C$, pick $a \in C$ and let $f(C) :=
\dots a \dots$". This is a valid definition only if the result is the same for
*every* choice of representative. Proving that is called *showing that the
definition is well-defined*. We will do it many times in Chapters 6 and 7.

## Orders

**Definition 3.13 (Partial and total order).** A relation $\le$ on $A$ is a
*partial order* if it is reflexive, antisymmetric and transitive. Then $(A, \le)$
is a *partially ordered set*. It is a *total order* (or *linear order*) if in
addition any two elements are comparable:
$$\forall x, y \in A\; (x \le y \lor y \le x).$$
We write $x < y$ for $x \le y \land x \neq y$, and $x \ge y$ for $y \le x$.

*Example.* $\subseteq$ on $\mathcal{P}(A)$ is a partial order by 2.3. It is not
total in general: on $\mathcal{P}(\lbrace a, b \rbrace)$ with $a \neq b$, neither
$\lbrace a \rbrace \subseteq \lbrace b \rbrace$ nor $\lbrace b \rbrace \subseteq
\lbrace a \rbrace$.

**Lemma 3.14.** If $\le$ is a partial order, then $<$ is irreflexive and
transitive. Conversely, if $<$ is an irreflexive transitive relation on $A$, then
$x \le y :\Leftrightarrow x < y \lor x = y$ is a partial order.

*Proof.* Irreflexivity of $<$ is built into its definition. Transitivity: if $x <
y < z$, then $x \le z$. If $x = z$, then $x \le y$ and $y \le x$, so $x = y$ by
antisymmetry, contradicting $x < y$. So $x < z$.

Conversely, $\le$ is reflexive by definition. Transitivity follows by cases on
which side of each "or" holds. Antisymmetry: if $x \le y$, $y \le x$ and $x \neq
y$, then $x < y < x$, so $x < x$ by transitivity, contradicting irreflexivity.
$\blacksquare$

**Definition 3.15 (Bounds).** Let $(A, \le)$ be partially ordered and $S \subseteq
A$.
- $m \in S$ is a *least element* of $S$ if $m \le s$ for all $s \in S$, and a
  *greatest element* if $s \le m$ for all $s \in S$.
- $u \in A$ is an *upper bound* of $S$ if $s \le u$ for all $s \in S$, and a
  *lower bound* if $u \le s$ for all $s \in S$. $S$ is *bounded above* (below) if
  it has an upper (lower) bound.
- A least element of the set of upper bounds of $S$ is a *supremum* $\sup S$. A
  greatest element of the set of lower bounds is an *infimum* $\inf S$.

**Lemma 3.16.** A set has at most one least element. So $\sup S$ and $\inf S$
are unique when they exist.

*Proof.* If $m$ and $m'$ are least elements of $S$, then $m \le m'$ and $m' \le
m$, so $m = m'$ by antisymmetry. The same works for greatest elements. $\blacksquare$

Suprema become central in Part 2: the real numbers are constructed so that
*every* nonempty set bounded above has a supremum, which the rationals lack.

**Definition 3.17 (Well-order).** A total order $\le$ on $A$ is a *well-order* if
every nonempty subset of $A$ has a least element.

## Exercises

1. Show that $(a, b, c) = (a', b', c')$ iff $a = a'$, $b = b'$, $c = c'$.
2. Show $A \times (B \cup C) = (A \times B) \cup (A \times C)$.
3. On a set $A$, is the empty relation reflexive? Symmetric? Transitive? (Watch
   out when $A = \varnothing$.)
4. Find an example showing that "symmetric and transitive" does not imply
   reflexive.
5. In $(\mathcal{P}(A), \subseteq)$, show that every $\mathcal{F} \subseteq
   \mathcal{P}(A)$ has supremum $\bigcup \mathcal{F}$.

---

Previous: [Chapter 2: Sets](02-sets.md) · Next: [Chapter 4: Maps](04-maps.md)
