# Part 1: Discrete mathematics

Discrete mathematics deals with objects that are separate and can be counted:
truth values, finite collections, whole numbers, fractions. It comes first
because the rest of mathematics is built on it. The real numbers, and with them
functions, series and calculus, are constructed from the rational numbers, and
those are constructed here.

## Chapters

| # | Chapter | Constructs | Depends on |
|---|---------|------------|------------|
| 1 | [Logic](01-logic.md) | propositions, connectives, quantifiers, proof methods | none |
| 2 | [Sets](02-sets.md) | the ZF axioms, subsets, union, intersection, power set | 1 |
| 3 | [Relations](03-relations.md) | ordered pairs, Cartesian products, equivalence relations, orders | 1–2 |
| 4 | [Maps](04-maps.md) | maps as relations, injective/surjective/bijective, composition, inverses | 1–3 |
| 5 | [Natural numbers](05-natural-numbers.md) | $\mathbb{N}$, induction, recursion, $+$, $\cdot$, $<$ | 1–4 |
| 6 | [Integers](06-integers.md) | $\mathbb{Z}$ as differences of natural numbers | 1–5 |
| 7 | [Rational numbers](07-rational-numbers.md) | $\mathbb{Q}$ as quotients of integers | 1–6 |

## The idea of the construction

```
logic ─► sets ─► ordered pairs ─► relations ─► maps
                                       │          │
                                       ▼          ▼
                   equivalence classes      recursion
                                       │          │
                                       ▼          ▼
            ℚ ◄── pairs of integers ◄── ℤ ◄── pairs of naturals ◄── ℕ = {∅, {∅}, {∅,{∅}}, …}
```

- A **natural number** is a particular set: $0 = \varnothing$, $1 = \lbrace 0 \rbrace$,
  $2 = \lbrace 0, 1 \rbrace$, and so on. Each number is the set of all numbers
  before it.
- An **integer** is what a difference $a - b$ of natural numbers *would* be. Since
  subtraction doesn't exist yet, we use the pair $(a, b)$ and treat two pairs as
  equal when they *would* give the same difference.
- A **rational number** is built the same way from a quotient $a / b$ of integers.

## Planned chapters for Part 1

These come after the number constructions, using what is already in place:

- 8. Finite and infinite sets, cardinality (counting, Cantor's theorem)
- 9. Combinatorics (sums, products, binomial coefficients)
- 10. Divisibility and primes (Euclid's algorithm, unique factorization)
- 11. Graphs
