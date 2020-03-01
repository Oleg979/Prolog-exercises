works(tom, dvornik).
works(pete, engineer).
works(john, professor).

needEducation(dvornik, no).
needEducation(engineer, bachelor).
needEducation(professor, phd).

hasEducation(M, E) :- works(M, P), needEducation(P, E).

gradation(no, 1).
gradation(bachelor, 2).
gradation(phd, 3).

canWork(P1, P2) :- P1 = P2, !.
canWork(P1, P2) :- needEducation(P1, E1), needEducation(P2, E2), 
    			   gradation(E1, G1), gradation(E2, G2), ((G1 >= G2); E1 = E2), !.

canManWork(M, P) :- works(M, P1), canWork(P1, P).
