% Ho va Ten: Nguyen Xuan Huy
% MSSV: 1452015
% Lop: K14VP
% KTGK ngay 23/12/2016

%1 a>

makeList(A, B, _, []):- A > B.
makeList(A, B, S, [T|Q]):- A =< B, H is A + S, makeList(H, B, S, Q), T is A.

%1 b>

graph([], _, []).
graph([H|T], P, [H1|X]) :- calcu(H, P, H2), graph(T, P, X), H1 = (H, H2).

calcu(A, F, B):- G =..[F, A, B], call(G).

f(X, Y):- Y is X*X.

%2
sortby(L, F, R):- sort(0, F, L, R).

