# Chapter 4: Maps

Uses: [Chapters 1–3](03-relations.md).

A map assigns to each element of one set exactly one element of another. Maps are
needed *before* numbers: the successor $n \mapsto n + 1$, and addition and
multiplication, are all maps. In Part 3, the *functions* of calculus will be
special maps between sets of real numbers. To keep the two apart, this project
says **map** for the general notion.

---

## Maps as relations

**Definition 4.1 (Map).** A *map* $f$ from $A$ to $B$, written $f \colon A \to B$,
is a relation $f \subseteq A \times B$ such that every element of $A$ is related
to exactly one element of $B$:
$$\forall a \in A\; \exists! b \in B\; (a, b) \in f.$$
That unique $b$ is the *value* of $f$ at $a$, written $f(a)$. We also write $a
\mapsto f(a)$. $A$ is the *domain* of $f$ and $B$ its *codomain*. "Mapping" and
"function" are synonyms in most texts.

So a map *is* its graph: the set of all pairs $(a, f(a))$.

**Theorem 4.2 (Equality of maps).** For maps $f, g \colon A \to B$:
$$f = g \;\Leftrightarrow\; \forall a \in A\; f(a) = g(a).$$

*Proof.* ($\Rightarrow$) Substitution. ($\Leftarrow$) Let $p \in f$. Since $f
\subseteq A \times B$, $p = (a, b)$ with $a \in A$, and $b = f(a)$ by uniqueness
of values. Then $b = g(a)$, so $p = (a, g(a)) \in g$. So $f \subseteq g$, and by
symmetry $g \subseteq f$. Use 2.3. $\blacksquare$

**Theorem 4.3 (Defining maps by a rule).** If $P(a, b)$ is a predicate such that
for every $a \in A$ there is exactly one $b \in B$ with $P(a, b)$, then there is
exactly one map $f \colon A \to B$ with $P(a, f(a))$ for all $a \in A$.

*Proof.* $f := \lbrace (a, b) \in A \times B \mid P(a, b) \rbrace$ exists by
Separation and is a map by the hypothesis. Uniqueness follows from 4.2.
$\blacksquare$

This is what justifies writing "let $f \colon A \to B$, $a \mapsto \dots$".

**Definition 4.4 (Set of maps).** $B^A := \lbrace f \in \mathcal{P}(A \times B)
\mid f \text{ is a map from } A \text{ to } B \rbrace$.

*Example.* $\mathrm{id}_A \colon A \to A$ (3.6) is a map with $\mathrm{id}_A(a) =
a$. For any $A$ there is exactly one map $\varnothing \to A$, namely the empty
relation. The condition "for every $a \in \varnothing$" is vacuously true.

## Images and preimages

**Definition 4.5.** Let $f \colon A \to B$, $X \subseteq A$ and $Y \subseteq B$.
- *Image* of $X$: $f[X] := \lbrace b \in B \mid \exists a \in X\; f(a) = b
  \rbrace$.
- *Preimage* of $Y$: $f^{-1}[Y] := \lbrace a \in A \mid f(a) \in Y \rbrace$.
- *Restriction* to $X$: $f|_X := f \cap (X \times B)$. This is a map $X \to B$.

Square brackets keep the image of a *subset* $X$ apart from the value at an
*element*. In some cases $X$ is both a subset and an element of $A$; that
happens with the natural numbers.

## Injective, surjective, bijective

**Definition 4.6.** A map $f \colon A \to B$ is
- *injective* if different inputs have different values: $\forall a, a' \in A\;
  (f(a) = f(a') \Rightarrow a = a')$;
- *surjective* if every element of $B$ is a value: $\forall b \in B\; \exists a \in
  A\; f(a) = b$, i.e. $f[A] = B$;
- *bijective* if it is both. Then every $b \in B$ is the value of exactly one
  $a \in A$.

## Composition

**Theorem 4.7 (Composition).** For maps $f \colon A \to B$ and $g \colon B \to C$
there is a unique map $g \circ f \colon A \to C$ with
$$(g \circ f)(a) = g(f(a)) \quad \text{for all } a \in A.$$

*Proof.* Apply 4.3 to the predicate $P(a, c) :\Leftrightarrow c = g(f(a))$.
$\blacksquare$

**Theorem 4.8.** For $f \colon A \to B$, $g \colon B \to C$, $h \colon C \to D$:
1. $h \circ (g \circ f) = (h \circ g) \circ f$ (associativity).
2. $f \circ \mathrm{id}_A = f = \mathrm{id}_B \circ f$.
3. If $f$ and $g$ are injective (surjective, bijective), then so is $g \circ f$.

*Proof.* 1 and 2: both sides have the same value at every $a$, namely
$h(g(f(a)))$ and $f(a)$ respectively. Use 4.2.

3, injective: if $g(f(a)) = g(f(a'))$, then $f(a) = f(a')$ because $g$ is
injective, and then $a = a'$ because $f$ is injective. Surjective: for $c \in C$
pick $b \in B$ with $g(b) = c$, then $a \in A$ with $f(a) = b$. Then $(g \circ
f)(a) = c$. Bijective: combine both. $\blacksquare$

**Theorem 4.9 (Inverse map).** A map $f \colon A \to B$ is bijective if and only
if there is a map $g \colon B \to A$ with
$$g \circ f = \mathrm{id}_A \quad\text{and}\quad f \circ g = \mathrm{id}_B.$$
In that case $g$ is unique. It is called the *inverse* $f^{-1}$, and it equals
the inverse relation of $f$ (3.6). It is also bijective, with $(f^{-1})^{-1} =
f$.

*Proof.* ($\Rightarrow$) Since $f$ is bijective, every $b \in B$ is $f(a)$ for
exactly one $a \in A$. So by 4.3 there is a map $g \colon B \to A$ with $f(g(b))
= b$, and its graph is $\lbrace (b, a) \mid f(a) = b \rbrace$, the inverse
relation. For $a \in A$, $g(f(a))$ is the unique $a'$ with $f(a') = f(a)$, and
that is $a$ itself.

($\Leftarrow$) Injective: $f(a) = f(a')$ gives $a = g(f(a)) = g(f(a')) = a'$.
Surjective: $b = f(g(b))$.

Uniqueness: if $g'$ also works, then $g' = g' \circ \mathrm{id}_B = g' \circ (f
\circ g) = (g' \circ f) \circ g = \mathrm{id}_A \circ g = g$ by 4.8. The last
claim holds because the defining equations are symmetric in $f$ and $g$.
$\blacksquare$

## Maps on quotient sets

When we construct $\mathbb{Z}$ and $\mathbb{Q}$, arithmetic is first defined on
representatives and then moved to classes. This theorem makes that precise.

**Theorem 4.10 (Inducing a map on a quotient).** Let $\sim$ be an equivalence
relation on $A$, and $f \colon A \to B$ a map that respects $\sim$:
$$a \sim a' \;\Rightarrow\; f(a) = f(a').$$
Then there is exactly one map $\bar f \colon A/{\sim} \to B$ with $\bar f([a]) =
f(a)$ for all $a \in A$.

*Proof.* For a class $C \in A/{\sim}$ we need exactly one $b$ with $b = f(a)$ for
some $a \in C$. There is at least one, because $C$ is nonempty (3.11). There is
at most one: if $a, a' \in C$, then $a \sim a'$ (3.9), so $f(a) = f(a')$. Now
apply 4.3. Uniqueness follows from 4.2, because every class is of the form $[a]$.
$\blacksquare$

The hypothesis "$f$ respects $\sim$" is exactly the statement that $\bar f$ is
well-defined (3.12).

## Operations

**Definition 4.11 (Binary operation).** A *binary operation* on a set $A$ is a
map $\ast \colon A \times A \to A$. We write $a \ast b$ for $\ast((a, b))$. It is
- *associative* if $(a \ast b) \ast c = a \ast (b \ast c)$ for all $a, b, c$,
- *commutative* if $a \ast b = b \ast a$ for all $a, b$.

An element $e \in A$ is *neutral* for $\ast$ if $e \ast a = a = a \ast e$ for all
$a$. A neutral element is unique when it exists: if $e, e'$ are both neutral,
then $e = e \ast e' = e'$.

**Definition 4.12 (Families and sequences).** A *family* of elements of $X$
indexed by $I$ is a map $x \colon I \to X$, written $(x_i)_{i \in I}$ with $x_i :=
x(i)$. When $I$ is the set of natural numbers (Chapter 5) it is called a
*sequence*. Sequences are the starting point of analysis in Part 2.

## Exercises

1. Let $f \colon A \to B$ and $X, X' \subseteq A$. Show $f[X \cup X'] = f[X] \cup
   f[X']$ and $f[X \cap X'] \subseteq f[X] \cap f[X']$. Find an example where the
   inclusion is strict. Show it is an equality when $f$ is injective.
2. Show that preimages preserve everything: $f^{-1}[Y \cap Y'] = f^{-1}[Y] \cap
   f^{-1}[Y']$, and the same for $\cup$ and $\setminus$.
3. If $g \circ f$ is injective, must $f$ be injective? Must $g$ be?
4. Show: for $A \neq \varnothing$, $f \colon A \to B$ is injective iff there is a
   $g \colon B \to A$ with $g \circ f = \mathrm{id}_A$.

---

Previous: [Chapter 3: Relations](03-relations.md) · Next: [Chapter 5: Natural numbers](05-natural-numbers.md)
