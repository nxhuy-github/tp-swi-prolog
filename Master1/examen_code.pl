% Author: NGUYEN Xuan Huy
% Date: 1/1/2018

% 2014 ss1
pairs([],[],[]).
pairs([X|L],[X|L1],L2) :- X mod 2 =:= 0, !, pairs(L,L1,L2).
pairs([X|L],L1,[X|L2]) :- pairs(L,L1,L2).

recherche(Ef, Ef, _, []):- !.
recherche(Ec,Ef,Letats,[Op|Lop]) :- operateur(Ec,Op,Es),
                                  not(member(Es,Letats)),
                                  /*not(interdit(Es)),*/
                                  write(Ec),write(' '),write(Op),write(' '),write(Es),nl,
                                  recherche(Es,Ef,[Es|Letats],Lop).

resoudre(Sol) :- initial(Ei),final(Ef),recherche(Ei,Ef,[Ei],Sol).

/* Trong L, thay L1 bang L2, ket qua luu vào R*/
remplace(L1,L2,L,R) :- append(Deb,L3,L),
                       append(L1,Fin,L3),
                       append(Deb,L2,L4),
                       append(L4,Fin,R).
initial([3,4,1,3,2,4,2,3,4,1]).
final([]).

operateur(E1,r1,E2) :- remplace([N,N],[],E1,E2).
operateur(E1,r2,E2) :- remplace([M,N],[N,M],E1,E2), MmN is abs(M-N), MmN>1.
operateur(E1,r3,E2) :- remplace([M,N,M],[N,M,N],E1,E2), N =:= M-1.

% 2015 ss1 tour HaNoi
% 2016 ss1
permute([],[]).
permute(L,[X|L2]) :- member(X,L), enleve(X,L,L1), permute(L1,L2).

enleve(_,[],[]).
enleve(X,[X|L],L) :- !.
enleve(X,[Y|L],[Y|L1]) :- enleve(X,L,L1).

triangle([N1,N2,N3,N4,N5,N6]) :- permute([1,2,3,4,5,6], [N1,N2,N3,N4,N5,N6]),
                               M1 is N1+N2+N3,
                               M2 is N1+N6+N5,
                               M3 is N3+N4+N5,
                               M1==M2,
                               M2==M3.
