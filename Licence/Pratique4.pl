% Author:
% Date: 11/25/2016

f(0, 1).
f(N, F) :- Nnew is N - 1, Nnew >= 0, f(Nnew, F1), F is F1*N.

f_acc(0, _, _, 1).
f_acc(N, N, A, F) :- F is A * N.
f_acc(N, I, A, F) :- Anew is I * A, Inew is I + 1, Inew =< N, f_acc(N, Inew, Anew, F).
fac(N, F) :- f_acc(N, 1, 1, F).

power(_, 0, 1).
power(X, N, V) :- Nnew is N - 1, Nnew >= 0, power(X, Nnew, Vnew), V is Vnew * X.

mysum([], 0).
mysum([T|Q], S) :- mysum(Q, Snew), S is Snew + T.

mysum_f([], []).
mysum_f([T|Q], [TS|QS]) :- mysum_f(Q, QS), f(T, TS).

fibo(0, 1).
fibo(1, 1).
fibo(N, F) :- N1 is N - 1, N2 is N - 2, N1 >= 0, N2 >= 0, fibo(N1, F1), fibo(N2, F2), F is F1 + F2.

fibo_HHD(0, 1).
fibo_HHD(1, 1).
fibo_HHD(N, F) :- N >= 2, fibo_hhd(2, [1,1], N, F).
fibo_hhd(I, L, N, F) :- I is N + 1, L = [F|_].
%fibo_hhd(I, [F|_], N, F) :- I is N + 1.
fibo_hhd(I, L, N, F) :- I < N + 1, I1 is I + 1, L = [H1, H2|_], H is H1 + H2, L1 = [H|L], fibo_hhd(I1, L1, N, F).
%fibo_hhd(I, [H1, H2|T], N, F) :- I < N + 1, I1 is I + 1, H is H1 + H2, fibo_hhd(I1, [H, H1, H2|T], N, F).