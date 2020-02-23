% Author:
% Date: 12/24/2016

% Exercice 1
sits_right_of(natalia, ron).
sits_right_of(ron, hermione).
sits_right_of(hermione, harry).
sits_right_of(harry, colin).
sits_right_of(colin, seamus).
sits_right_of(seamus, angelina).
sits_right_of(angelina, ginny).
sits_right_of(ginny, dean).
sits_right_of(dean, dennis).
sits_right_of(dennis, lee).
sits_right_of(lee, george).
sits_right_of(george, fred).
sits_right_of(fred, alisia).
sits_right_of(alisia, neville).
sits_right_of(neville, lavender).
sits_right_of(lavender, parvati).
sits_right_of(parvati, katie).
sits_right_of(katie, natalie).

sits_left_of(X, Y) :- sits_right_of(Y, X).

are_neighbors_of(X, Y, Z) :- sits_right_of(Y, Z), sits_left_of(X, Z).

next_to_each_other(X, Y) :- sits_right_of(X, Y).
next_to_each_other(X, Y) :- sits_left_of(X, Y).

a_la_table(X, Y) :- X = Y, write(Y), nl.
a_la_table(X, Y) :- X \= Y, write(X), nl, sits_right_of(X, Z), a_la_table(Z, Y).
on_the_table(X) :- sits_right_of(X, Y), a_la_table(Y, X).

entre(X, X, []).
entre(X, Y, [T|Q]) :- X \= Y, sits_right_of(X, A), A \= Y, T = A, entre(A, Y, Q).
entre(X, Y, R) :- X \= Y, sits_right_of(X, A), A = Y, entre(A, Y, R).

% Exercice 2

split1([],[],[]).
split1([T|Q], [R1|Q1], P) :- T >= 0, R1 is T, split1(Q, Q1, P).
split1([T|Q], P, [R1|Q1]) :- T < 0, R1 is T, split1(Q, P, Q1).

split2([],[],[]).
split2([T|Q], [R1|Q1], P) :- A is T mod 2, A =:= 0, R1 is T, split2(Q, Q1, P).
split2([T|Q], P, [R1|Q1]) :- A is T mod 2, A =\= 0, R1 is T, split2(Q, P, Q1).

% Exercice 3

my_subset([], _).
my_subset([T|Q], P) :- member(T, P), my_subset(Q, P).

intersect([], _, []).
intersect([T|Q], M, [TR|QR]) :- member(T, M), TR is T, intersect(Q, M, QR).
intersect([T|Q], M, R) :- not(member(T, M)), intersect(Q, M, R).

my_union([], X, X).
my_union([T|Q], M, [TR|QR]) :- not(member(T, M)), TR is T, my_union(Q, M, QR).
my_union([T|Q], M, R) :- member(T, M), my_union(Q, M, R).

difference([], _, []).
difference([T|Q], M, P) :- member(T, M), difference(Q, M, P).
difference([T|Q], M, [TR|QR]) :- not(member(T, M)), TR is T, difference(Q, M, QR).

% Exercice 4
map([], []).
map([T|Q], [TR|QR]) :- T >= 65, T =< 77, TR is T + 13, map(Q, QR).         /*A --> M*/
map([T|Q], [TR|QR]) :- T >= 78, T =< 90, TR is T - 13, map(Q, QR).         /* N --> Z*/
map([T|Q], [TR|QR]) :- T >= 97, T =< 109, TR is T + 13, map(Q, QR).        /*a --> m*/
map([T|Q], [TR|QR]) :- T >= 110, T =< 122, TR is T - 13, map(Q, QR).       /*n --> Z*/
map([T|Q], [TR|QR]) :- T =:= 32, TR is T, map(Q, QR).                       /* khoang trang(space) */

rot13([], []).
rot13(A, R) :- atom_codes(A, L), map(L, LR), atom_codes(R, LR).

% Exercice 5
smm :-
        X = [S,E,N,D,M,O,R,Y],
        Digits = [0,1,2,3,4,5,6,7,8,9],
        assign_digits(X, Digits),
        M > 0,
        S > 0,
                  1000*S + 100*E + 10*N + D +
                  1000*M + 100*O + 10*R + E =:=
        10000*M + 1000*O + 100*N + 10*E + Y,
        write(X).

my_select(X, [X|R], R).
my_select(X, [Y|Xs], [Y|Ys]):- my_select(X, Xs, Ys).

assign_digits([], _List).
assign_digits([D|Ds], List):- my_select(D, List, NewList), assign_digits(Ds, NewList).
