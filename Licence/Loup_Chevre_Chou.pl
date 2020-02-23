% Author:
% Date: 12/16/2016

checkQC(A,B,C,_) :- B = C, A = B.
checkQC(A,B,_,D) :- B = D, A = B.
checkQC(_,B,C,_) :- B \== C.
checkQC(_,B,_,D) :- B \== D.

check(X, Y) :- X = 0, Y = 0.
/*
quaCau(1,1,1,1,_,_).
quaCau(A,B,C,D, T) :- X2 is 1, A2 is (1 - A), checkQC(A2, B, C, D), quaCau(A2, B, C, D, X2, X).
quaCau(A,_,C,D, T) :- X2 is 2, A2 is (1 - A), checkQC(A2, A2, C, D), quaCau(A2, A2, C, D, X2, X).
quaCau(A,B,_,D, T) :- X2 is 3, A2 is (1 - A), checkQC(A2, B, A2, D), quaCau(A2, B, A2, D, X2, X).
quaCau(A,B,C,_, T) :- X2 is 4, A2 is (1 - A), checkQC(A2, B, C, A2), quaCau(A2, B, C, A2, X2, X).
quaSong(_,_,_,_) :- quaCau(0,0,0,0, _).
  */
%----------------------
op(1,0).
op(0,1).
start(s(0,0,0,0)).
goal(s(1,1,1,1)).

move(s(N1,D,S,B),s(N2,D,S,B)):-op(N1,N2).
move(s(N1,N1,S,B),s(N2,N2,S,B)):-op(N1,N2).
move(s(N1,D,N1,B),s(N2,D,N2,B)):-op(N1,N2).
move(s(N1,D,S,N1),s(N2,D,S,N2)):-op(N1,N2).

unsafe(s(N,D,D,_)) :- op(N, D).
unsafe(s(N,D,_,D)) :- op(N, D).
safe(S) :- not(unsafe(S)).

path(S1,S2,L1,L2):-move(S1,S2), safe(S2), not(member(S2,L1)), L2 =[S2|L1].
path(S1,S2,L1,L2):-move(S1,S3), safe(S3), not(member(S3,L1)), path(S3,S2,[S3|L1],L2).

printSolution([]).
printSolution([S|T]):-printSolution(T),nl,printState(S).

printState(s(N,D,S,B)):-write(N),write(D),write(S),write(B).

solution(L):-start(S),goal(G),path(S,G,[S],L), printSolution(L).
