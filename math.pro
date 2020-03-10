fromTo(X, Y) :- write(X), nl, X1 is X + 1, X < Y, fromTo(X1, Y).
fromTo(X, X).

sum(0, 0).
sum(X, Sum) :- X1 is X - 1, sum(X1, Sum1), Sum is X + Sum1.

fact(1, 1).
fact(X, Y) :- X > 1, X1 is X - 1, fact(X1, Y1), Y is X * Y1.

pow(_, 0, 1).
pow(X, Y, R) :- Y > 0, Y1 is Y - 1, pow(X, Y1, R1), R is X * R1.

isEven(0).
isEven(X) :- X > 0, X1 is X - 1, not(isEven(X1)).

edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(e, k).
edge(d, h).
edge(c, f).

way(X, X).
way(X, Y) :- edge(X, Y).
way(X, Y) :- edge(X, Z), way(Z, Y).


