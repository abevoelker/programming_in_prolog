## Programming in Prolog exercises

My solutions to [Programming in Prolog][] (5th ed) by Clocksin and Mellish. Code written in SWI-Prolog.

## Book Notes

### Chapter 3

#### List cons operator

The book has examples of cons-ing lists together using the `.` cons operator like so:

```
a(.(1,.(2,.(3,[])))).
```

The `.` cons operator is part of the ISO Prolog standard.

However, if using **SWI-Prolog** (which doesn't adhere to the ISO standard), the list cons operator [has changed to `[|]`][swi-cons-change] in order to allow using `.` for dicts.

Therefore under SWI-Prolog the above cons example would be written:

```
a('[|]'(1,'[|]'(2,'[|]'(3,[])))).
```

[Programming in Prolog]: https://www.worldcat.org/title/programming-in-prolog/oclc/51752491
[swi-cons-change]: https://www.swi-prolog.org/pldoc/man?section=ext-lists
