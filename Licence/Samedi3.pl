% Author:
% Date: 11/19/2016

accLongeur([], A, A).
accLongeur([_|Q], A, L) :- Anew is A + 1, accLongeur(Q, Anew, L).

longeur(Liste, Longeur) :- accLongeur(Liste, 0, Longeur).

% Min 2 version
min_sacc([T], T).
min_sacc([T|Q], A) :- min_sacc(Q, Temp), T =< Temp, A is T .
min_sacc([T|Q], A) :- min_sacc(Q, Temp), T > Temp, A is Temp.

min_acc([], A, A).
min_acc([T|Q], A, Min) :- T >= A, min_acc(Q, A, Min).
min_acc([T|Q], A, Min) :- T < A, min_acc(Q, T, Min).
min_generale([T|Q], Min) :- min_acc(Q, T, Min).

% Max 2 version
max_sacc([T], T).
max_sacc([T|Q], A) :- min_sacc(Q, Temp), T >= Temp, A is T .
max_sacc([T|Q], A) :- min_sacc(Q, Temp), T < Temp, A is Temp.

max_acc([], A, A).
max_acc([T|Q], A, Min) :- T =< A, max_acc(Q, A, Min).
max_acc([T|Q], A, Min) :- T > A, max_acc(Q, T, Min).
max_generale([T|Q], Min) :- max_acc(Q, T, Min).

% ScalarMult
scalarMult(_, [], []).
scalarMult(A, [T|Q], [TR|QR]) :- TR is A*T, scalarMult(A, Q, QR).

% dotProduct 2 version
dotProduct_sacc([], [], 0).
dotProduct_sacc([T1|Q1], [T2|Q2], R) :- dotProduct(Q1, Q2, R1), R is R1 + T1 * T2.

dotProduct_acc([], [], A, A).
dotProduct_acc([T1|Q1], [T2|Q2], A, R) :- A1 is A + T1 * T2, dotProduct_acc(Q1, Q2, A1, R).
dotProduct([T1|Q1], [T2|Q2], R) :- dotProduct_acc([T1|Q1], [T2|Q2], 0, R).


