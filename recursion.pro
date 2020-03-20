% ancestors
parent(ivan, dima).
parent(ivan, masha).
parent(oleg, ivan).
parent(andrey, oleg).

ancestor(X, Y) :- parent(X, Y), !.
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% factorial
fact(1, 1).
fact(X, Y) :- X > 1, X1 is X - 1, fact(X1, Y1), Y is X * Y1.

% X in pow of Y
pow(_, 0, 1) :- !.
pow(X, Y, R) :- Y1 is Y - 1, pow(X, Y1, R1), R is X * R1.

% X in pow of N, N - 1, N - 2, ... + X
pow_sum(X, 1, X) :- !.
pow_sum(X, N, R) :- pow(X, N, R1), N1 is N - 1, pow_sum(X, N1, R2), R is R1 + R2.

