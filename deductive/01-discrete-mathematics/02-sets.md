# Chapter 2: Sets

Uses: [Chapter 1](01-logic.md).

We now fix the world that logic talks about. It contains a single kind of object,
**sets**, and a single basic relation, **membership**: for objects $x$ and $A$,
$x \in A$ is a proposition ("$x$ is an element of $A$"). We write $x \notin A$
for $\lnot (x \in A)$.

There is nothing else: no numbers, no points, no symbols. Every mathematical
object in this project, including numbers, pairs, maps and later functions and
vectors, will be *a set built in a specific way*.

What we may assume about sets is fixed by the axioms of **Zermelo–Fraenkel set
theory (ZF)**. They are introduced one at a time, each where it is first needed.

---

## Equality of sets

**Axiom 2.1 (Extensionality).** Two sets with the same elements are equal:
$$\forall A\, \forall B\; \bigl( \forall x\, (x \in A \Leftrightarrow x \in B)
\Rightarrow A = B \bigr).$$

So a set is *nothing more* than its elements. Order and repetition don't count:
$\lbrace a, b \rbrace = \lbrace b, a \rbrace = \lbrace a, a, b \rbrace$, once these
are defined (2.10).

**Definition 2.2 (Subset).** $A \subseteq B \;:\Leftrightarrow\; \forall x\, (x \in A
\Rightarrow x \in B)$. We say $A$ is a *subset* of $B$. A *proper subset*,
$A \subsetneq B$, is one with $A \subseteq B$ and $A \neq B$.

**Theorem 2.3.** For all sets $A, B, C$:
1. $A \subseteq A$.
2. If $A \subseteq B$ and $B \subseteq C$, then $A \subseteq C$.
3. $A = B$ if and only if $A \subseteq B$ and $B \subseteq A$.

*Proof.*
1. For any $x$, $x \in A \Rightarrow x \in A$ is a tautology.
2. Let $x \in A$. Then $x \in B$ because $A \subseteq B$, and then $x \in C$
   because $B \subseteq C$ (chaining, 1.6).
3. If $A = B$, then 1 gives both inclusions by substitution. Conversely, the two
   inclusions together say $\forall x\, (x \in A \Leftrightarrow x \in B)$ (1.4),
   so $A = B$ by Extensionality. $\blacksquare$

Part 3 is *the* standard way to prove two sets equal: show each is contained in
the other.

## The empty set

**Axiom 2.4 (Empty set).** There is a set with no elements:
$\exists E\; \forall x\; x \notin E$.

**Theorem 2.5.** There is exactly one set with no elements.

*Proof.* Existence is Axiom 2.4. If $E$ and $E'$ both have no elements, then
$x \in E \Leftrightarrow x \in E'$ holds for every $x$, since both sides are false.
So $E = E'$ by Extensionality. $\blacksquare$

**Definition 2.6.** This unique set is the *empty set*, written $\varnothing$.

**Corollary 2.7.** $\varnothing \subseteq A$ for every set $A$.

*Proof.* $x \in \varnothing \Rightarrow x \in A$ is true for every $x$, because its
hypothesis is always false (vacuous truth, 1.2). $\blacksquare$

## Forming subsets

**Axiom 2.8 (Separation).** For every set $A$ and every predicate $P(x)$ there is
a set whose elements are exactly the elements of $A$ that satisfy $P$:
$$\exists B\; \forall x\; \bigl( x \in B \Leftrightarrow (x \in A \land P(x))
\bigr).$$
By Extensionality, $B$ is unique. We write it
$$\lbrace x \in A \mid P(x) \rbrace.$$

This is really one axiom for each predicate $P$: an *axiom schema*. The predicate
may mention other sets as parameters.

Separation only carves subsets out of a set we *already have*. That restriction
is essential:

**Theorem 2.9 (Russell).** There is no set that contains every set.

*Proof.* Suppose $V$ were such a set. By Separation, form
$R = \lbrace x \in V \mid x \notin x \rbrace$. Since $R$ is a set, $R \in V$.
Then
$$R \in R \;\Leftrightarrow\; (R \in V \land R \notin R) \;\Leftrightarrow\; R
\notin R,$$
a proposition equivalent to its own negation. That is a contradiction. $\blacksquare$

So "the collection of all sets" is not a set. Collections like that are sometimes
called *classes*. We only use them as a way of speaking, never as objects.

## Building larger sets

**Axiom 2.10 (Pairing).** For all $a, b$ there is a set whose elements are
exactly $a$ and $b$. By Extensionality it is unique, written $\lbrace a, b
\rbrace$. We write $\lbrace a \rbrace := \lbrace a, a \rbrace$, the *singleton*
of $a$.

So $x \in \lbrace a, b \rbrace \Leftrightarrow (x = a \lor x = b)$, and $x \in
\lbrace a \rbrace \Leftrightarrow x = a$.

**Axiom 2.11 (Union).** For every set $\mathcal{F}$ there is a set whose elements
are exactly the elements of the elements of $\mathcal{F}$. It is unique, written
$$\bigcup \mathcal{F}, \qquad x \in \bigcup \mathcal{F} \;\Leftrightarrow\; \exists
F \in \mathcal{F}\; x \in F.$$

**Definition 2.12 (Union, intersection, difference).** For sets $A, B$:
$$A \cup B := \bigcup \lbrace A, B \rbrace, \qquad
A \cap B := \lbrace x \in A \mid x \in B \rbrace, \qquad
A \setminus B := \lbrace x \in A \mid x \notin B \rbrace.$$
For a *nonempty* set $\mathcal{F}$, pick any $F_0 \in \mathcal{F}$ and let
$$\bigcap \mathcal{F} := \lbrace x \in F_0 \mid \forall F \in \mathcal{F}\; x \in
F \rbrace.$$
This doesn't depend on the choice of $F_0$: any element of every $F \in
\mathcal{F}$ is in particular in $F_0$. Sets $A, B$ are *disjoint* if $A \cap B =
\varnothing$.

Unwinding the definitions:
$x \in A \cup B \Leftrightarrow x \in A \lor x \in B$,
$x \in A \cap B \Leftrightarrow x \in A \land x \in B$,
$x \in A \setminus B \Leftrightarrow x \in A \land x \notin B$.

Finite sets with more elements can now be written down:
$\lbrace a, b, c \rbrace := \lbrace a, b \rbrace \cup \lbrace c \rbrace$, and so on.

*Remark.* $\bigcap \varnothing$ is left undefined on purpose. "The set of all $x$
in every $F \in \varnothing$" would contain every set, which Theorem 2.9 forbids.

**Theorem 2.13 (Algebra of sets).** For all sets $A, B, C$:

| Law | Statement |
|---|---|
| Commutativity | $A \cup B = B \cup A$, $\quad A \cap B = B \cap A$ |
| Associativity | $(A \cup B) \cup C = A \cup (B \cup C)$, $\quad$ same for $\cap$ |
| Distributivity | $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$ |
| | $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$ |
| De Morgan | $C \setminus (A \cup B) = (C \setminus A) \cap (C \setminus B)$ |
| | $C \setminus (A \cap B) = (C \setminus A) \cup (C \setminus B)$ |
| Absorption | $A \cup (A \cap B) = A$, $\quad A \cap (A \cup B) = A$ |
| Inclusion | $A \subseteq B \Leftrightarrow A \cup B = B \Leftrightarrow A \cap B = A$ |

*Proof.* Each law turns into the matching law of logic (1.4) once we unwind
membership. For example, for the first distributive law and any $x$:
$$\begin{aligned}
x \in A \cap (B \cup C)
&\Leftrightarrow x \in A \land (x \in B \lor x \in C) \\
&\Leftrightarrow (x \in A \land x \in B) \lor (x \in A \land x \in C) \\
&\Leftrightarrow x \in (A \cap B) \cup (A \cap C).
\end{aligned}$$
So the two sets have the same elements and are equal by Extensionality. For the
first De Morgan law:
$x \in C \land \lnot(x \in A \lor x \in B) \Leftrightarrow (x \in C \land x \notin
A) \land (x \in C \land x \notin B)$. The remaining laws work the same
way. $\blacksquare$

**Axiom 2.14 (Power set).** For every set $A$ there is a set whose elements are
exactly the subsets of $A$. It is unique, written $\mathcal{P}(A)$:
$$X \in \mathcal{P}(A) \;\Leftrightarrow\; X \subseteq A.$$

*Example.* $\mathcal{P}(\varnothing) = \lbrace \varnothing \rbrace$, and
$\mathcal{P}(\lbrace \varnothing \rbrace) = \lbrace \varnothing, \lbrace
\varnothing \rbrace \rbrace$. Note $\varnothing \neq \lbrace \varnothing \rbrace$:
the first has no elements, the second has one.

So from nothing, the empty set, we already get infinitely many different sets:
$\varnothing$, $\lbrace \varnothing \rbrace$, $\lbrace \lbrace \varnothing \rbrace
\rbrace$, $\lbrace \varnothing, \lbrace \varnothing \rbrace \rbrace$, $\dots$
In Chapter 5 some of them become the natural numbers.

## The remaining axioms

ZF has four more axioms:

- **Infinity** guarantees a set containing all natural numbers. It is introduced
  in [Chapter 5](05-natural-numbers.md), where it is needed.
- **Replacement** says the image of a set under a definable rule is a set.
  Nothing in Part 1 needs it. It will be introduced when it is.
- **Foundation** says every nonempty set $A$ has an element disjoint from $A$. It
  rules out sets like $x \in x$. Part 1 doesn't need it; Lemma 5.6 proves
  $n \notin n$ for natural numbers directly.
- **Choice** (which turns ZF into ZFC) is not used in Part 1. Whenever it is used
  later, that will be stated.

## Exercises

1. Prove $A \setminus (A \setminus B) = A \cap B$.
2. Prove $A \subseteq B \Rightarrow \mathcal{P}(A) \subseteq \mathcal{P}(B)$.
3. Write out the elements of $\mathcal{P}(\lbrace \varnothing, \lbrace \varnothing
   \rbrace \rbrace)$. How many are there?
4. Show that for every set $A$ there is a set not in $A$. (Hint: adapt the proof of
   Theorem 2.9.)

---

Previous: [Chapter 1: Logic](01-logic.md) · Next: [Chapter 3: Relations](03-relations.md)
