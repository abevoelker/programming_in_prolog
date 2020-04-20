/* Exercise 1.1 */

/* (Completed on paper) */


/* Exercise 1.2 */

/* Additional answers can be obtained by pressing the semicolon (;)
   button on the keyboard. The one additional answer is "alice",
   because we don't have a rule to exclude someone from being a
   sibling to themselves. */


/* Exercise 1.3 */

/* My solutions: */

is_mother(X) :- mother(X, _).
is_father(X) :- father(X, _).
is_son(X) :- male(X), parent(_, X).
sister_of(X, Y) :- female(X), parent(Z, X), parent(Z, Y).
grandpa_of(X, Y) :- father(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), diff(X, Y).

/* My test data: */

male(bobby).
father(don, bobby).
parent(don, bobby).
mother(betty, bobby).
parent(betty, bobby).

female(sally).
father(don, sally).
parent(don, sally).
mother(betty, sally).
parent(betty, sally).

father(don_sr, don).
parent(don_sr, don).


/* Exercise 1.4 */

/* The existing sister_of rule can allow someone to be a sister to themselves
   because there is no rule saying that X and Y need to be bound to different
   values. Therefore they can take on the same value. I would use the diff
   predicate from exercise 1.3 to fix the sister_of rule like so: */

sister_of(X, Y) :-
  female(X),
  parents(X, M, F),
  parents(Y, M, F),
  diff(X, Y).
