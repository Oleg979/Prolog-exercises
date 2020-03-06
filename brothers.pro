property(mill).
property(house).
property(cat).
property(money).

age(ivan, young).
age(danila, middle).
age(gavrila, older).

anotherBrother(A, A1) :- age(_, A), age(_, A1), not(A = A1).
inheritOthers(X, P) :- anotherBrother(X, Y), inherits(Y, P).

inherits(older, mill).
inherits(middle, house).
inherits(young, Y) :- property(Y), not(inheritOthers(young, Y)).

inheritsByName(P, Y) :- age(P, A), inherits(A, Y).

