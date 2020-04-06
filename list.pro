reverse([]).
reverse([H|T]) :- reverse(T), write(H), write(', ').

pairs([X]) :- write(X), !.
pairs([X,Y]) :- write(X - Y), nl.
pairs([X,Y|T]) :- write(X - Y), nl, pairs(T).

dropLast([_]) :- !.
dropLast([H|T]):- write(H), dropLast(T).

len([], 0).
len([_|T], R) :- len(T, R1), R is 1 + R1.

product([], 1).
product([H|T], R) :- product(T, R1), R is H * R1.

productNonNull([], 1).
productNonNull([H|T], R) :- H \= 0, productNonNull(T, R1), R is H * R1, !.
productNonNull([H|T], R) :- H = 0, productNonNull(T, R).

sumPositive([], 0).
sumPositive([H|T], R) :- H > 0, sumPositive(T, R1), R is H + R1, !.
sumPositive([H|T], R) :- H < 0, sumPositive(T, R).

firstAndLastSum_Helper([X], X):- !.
firstAndLastSum_Helper([_|T], R) :- firstAndLastSum_Helper(T, R).
firstAndLastSum([H|T], R) :- firstAndLastSum_Helper(T, R1), R is H + R1. 

numOfOccurs(_, [], 0) :- !.
numOfOccurs(X, [X|T], R) :- numOfOccurs(X, T, R1), R is 1 + R1, !.
numOfOccurs(X, [H|T], R) :- X \= H, numOfOccurs(X, T, R).

intersect([], _, 0) :- !. 
intersect([H|T], L, R) :- numOfOccurs(H, L, R1), intersect(T, L, R2), R is R1 + R2. 


