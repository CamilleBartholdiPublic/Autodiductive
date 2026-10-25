# Deductive sciences

A deductive science does not look at the world. It fixes a small number of
starting rules (axioms) and constructs everything else from them. Whatever it
proves is true *relative to those axioms*, with no observation involved.

## The one rule

**Nothing may be used before it has been constructed.**

Each chapter only uses definitions and theorems from earlier chapters, or from
earlier in the same chapter. When a later topic needs something new, the new
thing gets its own definition first. This makes the whole project a single chain
that can be read, and checked, from the start.

## Where the chain starts

Something has to come first, and it can't be constructed from anything before it.
Autodiductive starts with:

1. **Classical logic**: the rules of correct reasoning
   ([Chapter 1](01-discrete-mathematics/01-logic.md)). It is the language that
   everything else is written in.
2. **Set theory (ZF axioms)**: one kind of object, the *set*, and one relation
   between objects, *membership* ($\in$)
   ([Chapter 2](01-discrete-mathematics/02-sets.md)).

Everything after that is constructed: pairs, relations, maps, then the numbers
$\mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q} \subset \mathbb{R}$, then
sequences, functions, calculus, linear algebra, and on from there.

## Conventions

- Results are numbered per chapter: **Definition 3.4** is the fourth numbered
  item of Chapter 3. Axioms, definitions, theorems, lemmas and corollaries all
  share one counter, so references are easy to find.
- *Theorem* means an important result, *lemma* a stepping stone, *corollary* a
  direct consequence.
- Every proof ends with $\blacksquare$.
- References like (2.5) point to item 5 of Chapter 2.
- Exercises are optional. Nothing later depends on them.
- Examples and remarks may mention things that come later, to motivate or
  illustrate. Definitions and proofs never use them.

## Parts

1. [Discrete mathematics](01-discrete-mathematics/README.md)
2. Real numbers, sequences and series (planned)
3. Functions and calculus (planned)
4. Linear algebra (planned)
