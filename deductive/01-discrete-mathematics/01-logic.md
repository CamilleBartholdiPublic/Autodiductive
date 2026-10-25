# Chapter 1: Logic

Logic is the starting point, and it can't be constructed from anything earlier.
It is the set of rules we agree to reason by. Everything after this chapter is
built using these rules, and only these rules.

We use **classical logic**: every statement is either true or false, never both
and never neither.

---

## Propositions

**Definition 1.1 (Proposition).** A *proposition* is a statement that is either
true or false. Its *truth value* is $\mathrm{T}$ (true) or $\mathrm{F}$ (false).

*Examples.* "Every set is a subset of itself" is a proposition. "$x$ is a subset of
$y$" is not, since its truth depends on $x$ and $y$. That kind of statement is
handled under *Predicates and quantifiers* below.

We write propositions as $P, Q, R, \dots$

## Connectives

New propositions are formed from old ones with *connectives*. A connective is
defined by its truth table: the truth value of the new proposition for every
possible truth value of its parts.

**Definition 1.2 (Connectives).**

| $P$ | $Q$ | $\lnot P$ | $P \land Q$ | $P \lor Q$ | $P \Rightarrow Q$ | $P \Leftrightarrow Q$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| T | T | F | T | T | T | T |
| T | F | F | F | T | F | F |
| F | T | T | F | T | T | F |
| F | F | T | F | F | T | T |

- $\lnot P$ (*not* $P$, negation)
- $P \land Q$ ($P$ *and* $Q$, conjunction)
- $P \lor Q$ ($P$ *or* $Q$, disjunction). This is the inclusive "or": it is true
  when both are true.
- $P \Rightarrow Q$ (*if* $P$ *then* $Q$, implication). $P$ is the *hypothesis*
  and $Q$ the *conclusion*.
- $P \Leftrightarrow Q$ ($P$ *if and only if* $Q$, equivalence), often written
  "$P$ iff $Q$".

*Remark on implication.* $P \Rightarrow Q$ only claims: *whenever $P$ is true, $Q$
is true as well.* It makes no claim when $P$ is false, so it counts as true then
(rows 3 and 4). This is called *vacuous truth*: "every element of the empty
collection is red" is true, because no element can contradict it.

**Definition 1.3 (Tautology, contradiction, equivalence).** A compound
proposition is a *tautology* if it is true for every assignment of truth values
to its parts, and a *contradiction* if it is false for every assignment. Two
compound propositions $A$ and $B$ are *logically equivalent*, written
$A \equiv B$, if $A \Leftrightarrow B$ is a tautology, so they have the same
truth table.

**Theorem 1.4 (Basic laws).** For all propositions $P, Q, R$:

| Law | Statement |
|---|---|
| Double negation | $\lnot\lnot P \equiv P$ |
| Excluded middle | $P \lor \lnot P$ is a tautology |
| Non-contradiction | $P \land \lnot P$ is a contradiction |
| Commutativity | $P \land Q \equiv Q \land P$, $\quad P \lor Q \equiv Q \lor P$ |
| Associativity | $(P \land Q) \land R \equiv P \land (Q \land R)$, $\quad$ same for $\lor$ |
| Distributivity | $P \land (Q \lor R) \equiv (P \land Q) \lor (P \land R)$ |
| | $P \lor (Q \land R) \equiv (P \lor Q) \land (P \lor R)$ |
| De Morgan | $\lnot(P \land Q) \equiv \lnot P \lor \lnot Q$, $\quad \lnot(P \lor Q) \equiv \lnot P \land \lnot Q$ |
| Implication as "or" | $P \Rightarrow Q \equiv \lnot P \lor Q$ |
| Contrapositive | $P \Rightarrow Q \equiv \lnot Q \Rightarrow \lnot P$ |
| Negated implication | $\lnot(P \Rightarrow Q) \equiv P \land \lnot Q$ |
| Equivalence | $P \Leftrightarrow Q \equiv (P \Rightarrow Q) \land (Q \Rightarrow P)$ |

*Proof.* Each law is checked by writing out the truth table of both sides for all
$2$, $4$ or $8$ assignments and comparing them row by row. We show one case,
De Morgan's first law:

| $P$ | $Q$ | $P \land Q$ | $\lnot(P \land Q)$ | $\lnot P$ | $\lnot Q$ | $\lnot P \lor \lnot Q$ |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| T | T | T | **F** | F | F | **F** |
| T | F | F | **T** | F | T | **T** |
| F | T | F | **T** | T | F | **T** |
| F | F | F | **T** | T | T | **T** |

The bold columns agree. The other laws are checked the same way. $\blacksquare$

*Warning.* The **converse** $Q \Rightarrow P$ is *not* equivalent to
$P \Rightarrow Q$. Take $P$ false and $Q$ true: then $P \Rightarrow Q$ is true and
$Q \Rightarrow P$ is false.

## Valid inference

**Definition 1.5 (Valid inference).** An inference from premises
$A_1, \dots, A_n$ to a conclusion $B$ is *valid* if
$(A_1 \land \dots \land A_n) \Rightarrow B$ is a tautology. In that case, whenever
all premises are true, the conclusion is true too.

**Theorem 1.6 (Basic inference rules).** The following inferences are valid:

| Rule | Premises | Conclusion |
|---|---|---|
| Modus ponens | $P$, $\;P \Rightarrow Q$ | $Q$ |
| Modus tollens | $\lnot Q$, $\;P \Rightarrow Q$ | $\lnot P$ |
| Chaining | $P \Rightarrow Q$, $\;Q \Rightarrow R$ | $P \Rightarrow R$ |
| Cases | $P \lor Q$, $\;P \Rightarrow R$, $\;Q \Rightarrow R$ | $R$ |
| Contradiction | $\lnot P \Rightarrow (Q \land \lnot Q)$ | $P$ |

*Proof.* Again by truth tables. For modus ponens: $(P \land (P \Rightarrow Q))
\Rightarrow Q$ could only be false if $Q$ is false and $P \land (P \Rightarrow Q)$
is true. Then $P$ is true, and $P \Rightarrow Q$ with $P$ true and $Q$ false is
false. That is a contradiction, so the implication is never false. The others
are similar. $\blacksquare$

## Predicates and quantifiers

**Definition 1.7 (Predicate).** A *predicate* is a statement $P(x)$ containing a
*variable* $x$, which becomes a proposition once a specific object is put in for
$x$. Predicates can contain several variables: $P(x, y)$.

**Definition 1.8 (Quantifiers).**
- $\forall x\; P(x)$ ("for all $x$, $P(x)$") is true iff $P(a)$ is true for every
  object $a$.
- $\exists x\; P(x)$ ("there exists $x$ with $P(x)$") is true iff $P(a)$ is true
  for at least one object $a$.
- $\exists! x\; P(x)$ ("there is exactly one $x$ with $P(x)$") abbreviates
  $$\exists x\; \bigl( P(x) \land \forall y\; (P(y) \Rightarrow y = x) \bigr).$$

The variable after a quantifier is *bound*: $\forall x\, P(x)$ and
$\forall y\, P(y)$ say the same thing. A variable that isn't bound is *free*.

*Equality.* Our logic includes the symbol $=$. The statement $a = b$ means $a$ and
$b$ are the same object. It satisfies $a = a$, and if $a = b$ then anything true
of $a$ is true of $b$ (*substitution*). From these two rules: $a = b \Rightarrow
b = a$ and $(a = b \land b = c) \Rightarrow a = c$.

**Theorem 1.9 (Negating quantifiers).**
$$\lnot \forall x\; P(x) \;\equiv\; \exists x\; \lnot P(x), \qquad
\lnot \exists x\; P(x) \;\equiv\; \forall x\; \lnot P(x).$$

*Proof.* $\forall x\, P(x)$ is false exactly when some object $a$ makes $P(a)$
false, which means $\lnot P(a)$ is true for some $a$. That is the first
equivalence. For the second, apply the first to the predicate $\lnot P$ and use
double negation: $\lnot \forall x\, \lnot P(x) \equiv \exists x\, \lnot\lnot
P(x) \equiv \exists x\, P(x)$. Negating both sides gives the claim. $\blacksquare$

*Example.* The negation of "every set has an element" is "some set has no
element".

**Remark 1.10 (Order of quantifiers matters).** Quantifiers of the same kind can
be swapped: $\forall x\, \forall y\, P(x,y) \equiv \forall y\, \forall x\,
P(x,y)$, and the same for $\exists$. Mixed quantifiers cannot. In general
$$\exists y\, \forall x\; P(x,y) \;\Rightarrow\; \forall x\, \exists y\; P(x,y)$$
holds, but the converse doesn't. "For every number there is a bigger one" is
true for the natural numbers. "There is a number bigger than every number" is
false.

**Notation.** *Bounded quantifiers* abbreviate common patterns:
$$\forall x \in A\; P(x) \;:\Leftrightarrow\; \forall x\, (x \in A \Rightarrow
P(x)), \qquad \exists x \in A\; P(x) \;:\Leftrightarrow\; \exists x\, (x \in A
\land P(x)).$$
The symbol $:\Leftrightarrow$ means "is defined to mean". Likewise $:=$ means
"is defined to be". Their negations follow Theorem 1.9:
$\lnot \forall x \in A\, P(x) \equiv \exists x \in A\, \lnot P(x)$.

## Proof methods

A **proof** is a finite chain of statements. Each one is an axiom, a definition,
a result already proved, an assumption made for the proof, or follows from
earlier statements by a valid inference. These are the standard patterns:

**Direct proof** of $P \Rightarrow Q$: assume $P$, derive $Q$.

**Contrapositive** of $P \Rightarrow Q$: assume $\lnot Q$, derive $\lnot P$.
Valid by Theorem 1.4.

**Contradiction** for $P$: assume $\lnot P$, derive some statement together with
its negation. Valid by Theorem 1.6.

**Cases**: if $P_1 \lor \dots \lor P_n$ holds and $R$ follows from each $P_i$,
then $R$ holds.

**Equivalence** $P \Leftrightarrow Q$: prove $P \Rightarrow Q$ and
$Q \Rightarrow P$ separately.

**Universal statement** $\forall x\, P(x)$: let $x$ be *arbitrary*, assuming
nothing about it, and prove $P(x)$.

**Existence** $\exists x\, P(x)$: name a specific object $a$ and prove $P(a)$.
Alternatively, prove it by contradiction.

**Uniqueness** in $\exists! x\, P(x)$: prove existence, then assume $P(x)$ and
$P(y)$ and derive $x = y$.

**Induction** will be added in [Chapter 5](05-natural-numbers.md). There it is a
theorem, proved from the axioms, not a new rule of logic.

## Exercises

1. Show by truth table that $(P \Rightarrow Q) \land (P \Rightarrow R) \equiv P
   \Rightarrow (Q \land R)$.
2. Is $(P \Rightarrow Q) \Rightarrow R$ equivalent to $P \Rightarrow (Q \Rightarrow
   R)$? Prove or give a counterexample.
3. Write the negation of $\forall \varepsilon\, \exists \delta\, \forall x\;
   (P(x, \delta) \Rightarrow Q(x, \varepsilon))$ without a $\lnot$ in front of a
   quantifier. (This shape comes back in calculus.)

---

Next: [Chapter 2: Sets](02-sets.md)
