% Nom et Prenom: NGUYEN Xuan Huy
% Numero Etudiant: 11419771
% Date: 1/9/2018

% Exercice 1
pairs([], [], []).
pairs([T|Q], [T|Lpairs], Limpairs):- T mod 2 =:= 0, pairs(Q, Lpairs, Limpairs).
pairs([T|Q], Lpairs, [T|Limpairs]):- T mod 2 =\= 0, pairs(Q, Lpairs, Limpairs).

% Exercice 2
sommebis([], X, X).
sommebis([T|Q], X, R):- integer(T), Xnew is X + T, sommebis(Q, Xnew, R).
sommebis([T|Q], X, R):- not(integer(T)), sommebis(Q, X, R).
somme(L, R):- sommebis(L, 0, R).

% Exercice 3
compress([], X, X).
compress([T|Q], X, R):- not(member(T, X)), compress(Q, [T|X], R).
compress([T|Q], X, R):- member(T, X), compress(Q, X, R).

retournesansdoublon(L, LR):- compress(L, [], LR).

% Exercice 4
affectation([], _).
affectation([T|Q], D):- choix(T, D, Dnew), affectation(Q, Dnew).

choix(X, [X|Q], Q).
choix(X, [Y|Q], [Y|R]):- choix(X, Q, R).

listvariables([_,_,_,_,_,_,_,_,_,_]).
testcontraint([G, E, R, A, L, D, O, N, B, T]):- G =\= 0, D =\= 0,
                                                R1 is D + 10*L + 100*A + 1000*R + 10000*E + 100000*G,
                                                R2 is D + 10*L + 100*A + 1000*N + 10000*O + 100000*D,
                                                R3 is T + 10*R + 100*E + 1000*B + 10000*O + 100000*R,
                                                R3 =:= R1 + R2.
                                                
crypt:- listvariables(X), Domain = [0,1,2,3,4,5,6,7,8,9], affectation(X, Domain), testcontraint(X), write(X).

% Exercice 5
recherche(Ef, Ef, _, []):-!.
recherche(Ec, Ef, Letats,[Op|Lop]):- operateur(Ec, Op, Es),
                                     not(member(Es, Letats)),
                                     write(Ec), write(' '), write(Op), write(' '), write(Es), nl,
                                     recherche(Es, Ef, [Es|Letats], Lop).
remplace(L1, L2, L, R):- append(Deb, L3, L),
                         append(L1, Fin, L3),
                         append(Deb, L2, L4),
                         append(L4, Fin, R).
                         
operateur(E1, r1, E2) :- remplace([N, N], [], E1, E2).
operateur(E1, r2, E2) :- remplace([M, N], [N, M], E1, E2), MmN is abs(M - N), MmN > 1.
operateur(E1, r3, E2) :- remplace([M, N, M], [N, M, N], E1, E2), N =:= M - 1.

etat_initial([3,4,1,3,2,4,2,3,4,1]).
etat_final([]).

resoudre(Sol):- etat_initial(Ei), etat_final(Ef), recherche(Ei, Ef, [Ei], Sol).

% Exercice 6
inscrits(lif1, [marc, jean, paul, pierre, anne, sophie, thierry, jacques]).
inscrits(lif2, [anne, pierre, emilie, antoine, juliette]).
inscrits(lif3, [juliette, antoine, thierry, jean, edouard]).
inscrits(lif4, [andre, olivier, beatrice]).
inscrits(lif5, [edouard, paul, pierre, emilie]).
inscrits(lif6, [andre, beatrice, amelie]).

variables([lif1, lif2, lif3, lif4, lif5, lif6]).
valeurs([1,2,3,4,5,6]).

construit([], _, X, X).
construit([T|Q], D, X, R):- append(X, [[T, D]], Xnew), construit(Q, D, Xnew, R).

domaines(L):- variables(X), valeurs(V), construit(X, V, [], L).

moncheck([], _).
moncheck([T|Q], L):- not(member(T, L)), moncheck(Q, L).

consistants([_,X], [_,Y]):- X =\= Y.
consistants([X1,V1], [X2,V2]):- V1 =:= V2, inscrits(X1, D1), inscrits(X2, D2), moncheck(D1, D2).



