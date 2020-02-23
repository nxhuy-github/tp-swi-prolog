% Author: NGUYEN Xuan Huy
% Date: 1/2/2018

element(X, [X|_]):- !.
element(X, [_|L]):- element(X, L).

sous-ensemble([], _).
sous-ensemble([X|L1], L2):- member(X, L2), sous-ensemble(L1, L2).

compresse([], []).
compresse([X], [X]).
compresse([X, X|Q], R):- compresse([X|Q], R).
compresse([X, Y|Q], [X|R]):- Y \= X, compresse([Y|Q], R).

inverse([], []).
inverse([T|Q], L):- inverse(Q, R), append(R, [T], L).

sous_liste(L1,L2) :- append(_,L3,L2), append(L1,_,L3).

longueur([],0).
longueur([_|Y],N) :- longueur(Y,M), N is M+1.

palindrom([]).
palindrom([_]).
palindrom([T|Q]):- append(L, [T], Q), palindrom(L).

rang_pair([], []).
rang_pair([_], []).
rang_pair([_, Y|Q], [Y|L]):- rang_pair(Q, L).

indice(X,[X|_],1).
indice(X,[Y|L],N) :- X\==Y, indice(X,L,Nm1), N is Nm1+1.

remplace(_, _, [], []).
remplace(X, Y, [X|L], [Y|R]):- remplace(X, Y, L, R).
remplace(X, Y, [Z|L], [Z|R]):- X \== Z, remplace(X, Y, L, R).

partage([],_,[],[]).
partage([Y|L],X,[Y|L1],L2) :- Y<X, partage(L,X,L1,L2).
partage([Y|L],X,L1,[Y|L2]) :- Y>=X, partage(L,X,L1,L2).

somme(L,R) :- sommebis(L,1,R).
sommebis([],_,0).
sommebis([X|L],I,S2) :- J is I+1, sommebis(L,J,S1), S2 is X*I+S1.