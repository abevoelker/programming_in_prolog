/* Exercise 2.1 */

pilots(A, london) = pilots(london, paris).
/* Goal fails - the 2nd elements in each "pilots" structure, "london" and
   "paris" respectively, do not unify */

point(X, Y, Z) = point(X1, Y1, Z1).
/* Goal succeeds - X co-refers with X1, Y with Y1, Z with Z1. */

letter(C) = word(letter).
/* Goal fails */

noun(alpha) = alpha.
/* Goal fails */

'student' = student.
/* Goal succeeds - it seems the single quotes are not themselves part of
   quote-escaped term names */

f(X, X) = f(a, b).
/* Goal fails - X first takes value "a", then fails when needs to unify
   with value "b" */

f(X, a(b, c)) = f(Z, a(Z, c)).
/* Goal succeeds - X co-refers with Z; then Z instantiates to value "b", so X
   and Z both refer to value "b" */
