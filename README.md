# Autodiductive
Autodiductive aims to look at sciences in a completely new way: There is no separation between math, physics, chemistry, biology or even psychology. Sciences instead are entirely separated into deductive sciences and inductive sciences. In deductive ones you construct the world, in inductive ones you look at the world and construct a fitting model

## The book

Autodiductive is written as one LaTeX book in two parts:

| Part | Content | Status |
|------|---------|--------|
| I. Deduction | introduction; 1 Logic, 2 Sets, 3 Relations, 4 Maps, 5 Natural numbers, 6 Integers, 7 Rational numbers | in progress |
| II. Induction | introduction | planned |

In the deductive part nothing is used before it has been constructed: it starts
from classical logic and the Zermelo–Fraenkel axioms and builds ℕ, ℤ and ℚ from
sets. Next come the real numbers, sequences and series, functions and calculus,
and linear algebra.

## Building

Requires a TeX distribution with `latexmk` (e.g. TeX Live).

```
make          # writes build/autodiductive.pdf
make clean
```

## Layout

```
book/
  autodiductive.tex     main file: the two parts and their chapters
  preamble.tex          packages, theorem environments, notation
  deduction/            introduction and chapters of Part I
  induction/            introduction (and later chapters) of Part II
```
