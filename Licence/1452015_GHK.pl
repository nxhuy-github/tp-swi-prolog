% Ho va Ten: Nguyen Xuan Huy
% MSSV: 1452015
% Lop: K14VP
% KTGK ngay 02/12/2016

% Cau 1
max_acc([], A, A).
max_acc([T|Q], A, Min) :- T =< A, max_acc(Q, A, Min).
max_acc([T|Q], A, Min) :- T > A, max_acc(Q, T, Min).
my_max([T|Q], Min) :- max_acc(Q, T, Min).

% Cau 2
remove([], _, []).
remove([T|Q], A, R) :- A =:= T, remove(Q, A, R).
remove([T|Q], A, [TR|QR]) :- A =\= T, TR is T, remove(Q, A, QR).

% Cau 3
inverse_acc([], A, A).
inverse_acc([T|Q], A, R) :- inverse_acc(Q, [T|A], R).
inverse(L1, L2) :- inverse_acc(L1, [], L2).

binary_a(0, [0]).
binary_a(1, [1]).
binary_a(L, [T|Q]) :- T is L mod 2, A is L div 2, A > 0, binary_a(A, Q).
binary(L, R) :- binary_a(L, R1), inverse(R1, R).

% Cau 4


% Cau 5
permute([], []).
permute([T|Q], L) :- permute(Q, L1), select(T, L, L1).