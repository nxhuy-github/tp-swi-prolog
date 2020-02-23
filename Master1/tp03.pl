% Author:  NGUYEN Xuan Huy
% Date: 12/5/2017

% Question 1
animal(chevre).
animal(loup).
herbivore(chevre).
cruel(loup).

carnivore(X):- animal(X), cruel(X).
mange(X, Y):- mange_herbe(X, Y).
mange(X, Y):- mange_viande(X, Y).
mange(X, Y):- mange_herbivore(X, Y).
mange_herbe(X, Y):- herbivore(X), Y = 'herbe'.
mange_viande(X, Y):- carnivore(X), Y = 'viande'.
mange_herbivore(X, Y):- carnivore(X), herbivore(Y).
boire(X, Y):- boire_eau(X, Y).
boire_eau(X, Y):- herbivore(X), Y = 'eau'.
boire_eau(X, Y):- carnivore(X), Y = 'eau'.
consomme(X, Y):- mange(X, Y).
consomme(X, Y):- boire(X, Y).

% Question 2
domain(0, [0]).
domain(P, [T|Q]):- P > 0, T is P, R is P - 1, domain(R, Q).

monnaie(ArgentDonne, Prix, ArgentRendu, P2, P1, P10, P20, P50):- ArgentDonne >= Prix, Delta is ArgentDonne - Prix,
                                                                 domain(P2, DP2), domain(P1, DP1), domain(P10, DP10), domain(P20, DP20), domain(P50, DP50),
                                                                 member(NP2, DP2), member(NP1, DP1), member(NP10, DP10), member(NP20, DP20), member(NP50, DP50),
                                                                 200*NP2 + 100*NP1 + 10*NP10 + 20*NP20 + 50*NP50 =:= Delta,
                                                                 ArgentRendu = [NP2, NP1, NP10, NP20, NP50].
monnaie(ArgentDonne, Prix, _, _, _, _, _, _):- ArgentDonne < Prix, write('ArgentDonne < Prix').


% Question 3 finish: 1/4/2018

/* METHODE 1*/
affectation([], _).
affectation([T|Q], D):- choix(T, D, Dnew), affectation(Q, Dnew).

choix(X, [X|Dnew], Dnew).
choix(X, [Y|Drest], [Y|Dnew]):- choix(X, Drest, Dnew).

generer_tester(R):- X = [X11, X12, X13, X21, X22, X23, X31, X32, X33],
                   Domain =  [1,2,3,4,5,6,7,8,9],
                   affectation(X, Domain),
                   R1 is (X11 + X12 + X13), R2 is (X21 + X22 + X23), R3 is (X31 + X32 + X33),
                   R4 is (X11 + X21 + X31), R5 is (X12 + X22 + X32), R6 is (X13 + X23 + X33),
                   R7 is (X11 + X22 + X33), R8 is (X13 + X22 + X31),
                   R1 =:= R2, R2 =:= R3, R3 =:= R4, R4 =:= R5, R5 =:= R6, R6 =:= R7, R7 =:= R8,
                   R = [X11, X12, X13, X21, X22, X23, X31, X32, X33].
carre(S):- generer_tester(S).

/* METHODE 2*/
valeur(X) :- member(X,[1,2,3,4,5,6,7,8,9]).
generer_tester2([X11, X12, X13, X21, X22, X23, X31, X32, X33]):- valeur(X11),
                                                                 valeur(X12), X12 =\= X11,
                                                                 valeur(X13), not(member(X13, [X11, X12])), R1 is (X11 + X12 + X13),
                                                                 valeur(X21), not(member(X21, [X11, X12, X13])),
                                                                 valeur(X22), not(member(X22, [X11, X12, X13, X21])),
                                                                 valeur(X23), not(member(X23, [X11, X12, X13, X21, X22])), R2 is (X21 + X22 + X23),
                                                                 valeur(X31), not(member(X31, [X11, X12, X13, X21, X22, X23])), R4 is (X11 + X21 + X31),
                                                                 valeur(X32), not(member(X32, [X11, X12, X13, X21, X22, X23, X31])), R5 is (X12 + X22 + X32),
                                                                 valeur(X33), not(member(X33, [X11, X12, X13, X21, X22, X23, X31, X32])), R3 is (X31 + X32 + X33),R6 is  (X13 + X23 + X33),
                                                                 R7 is (X11 + X22 + X33), R8 is (X13 + X22 + X31),
                                                                 R1 =:= R2, R2 =:= R3, R3 =:= R4, R4 =:= R5, R5 =:= R6, R6 =:= R7, R7 =:= R8.
carre2(S):- generer_tester2(S).

/* METHODE 3*/
listvariables([_,_,_,_,_,_,_,_,_]). /* juste besoin de savoir le nombre d'argument */
testcontraintes([X11, X12, X13, X21, X22, X23, X31, X32, X33]):- R1 is (X11 + X12 + X13),
                                                                 R2 is (X21 + X22 + X23),
                                                                 R3 is (X31 + X32 + X33),
                                                                 R4 is (X11 + X21 + X31),
                                                                 R5 is (X12 + X22 + X32),
                                                                 R6 is (X13 + X23 + X33),
                                                                 R7 is (X11 + X22 + X33),
                                                                 R8 is (X13 + X22 + X31),
                                                                 R1 =:= R2, R2 =:= R3, R3 =:= R4, R4 =:= R5, R5 =:= R6, R6 =:= R7, R7 =:= R8.
carre3:- listvariables(X), Domain =  [1,2,3,4,5,6,7,8,9], affectation(X, Domain), testcontraintes(X), write(X).


