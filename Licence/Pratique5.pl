% Author:
% Date: 12/9/2016

%1
selectpos([], []).
selectpos([T|Q], [TR|QR]):- T > 0, TR is T, selectpos(Q, QR).
selectpos([T|Q], R):- T =< 0, selectpos(Q, R).

%2
selectneg([], []).
selectneg([T|Q], [TR|QR]):- T < 0, TR is T, selectneg(Q, QR).
selectneg([T|Q], R):- T >= 0, selectneg(Q, R).

%3
selecteven([], []).
selecteven([T|Q], [TR|QR]):- T mod 2 =:= 0, TR is T, selecteven(Q, QR).
selecteven([T|Q], R):- T mod 2 =\= 0, selecteven(Q, R).

%4
selectodd([], []).
selectodd([T|Q], [TR|QR]):- T mod 2 =\= 0, TR is T, selectodd(Q, QR).
selectodd([T|Q], R):- T mod 2 =:= 0, selectodd(Q, R).

%5
selectsqr([],[]).
selectsqr([T|Q], [TR|QR]):-  A is round(sqrt(T)), B is A^2, T =:= B, TR is T, selectsqr(Q, QR).
selectsqr([T|Q], R):-  A is round(sqrt(T)), B is A^2, T =\= B, selectsqr(Q, R).

%6
my_select([], _, []).
my_select([H|T], P, [H|X]) :- checked(H, P), my_select(T, P, X).
my_select([H|T], P, X) :- not(checked(H,P)), my_select(T, P, X).

%checked(X, pos):- X > 0.
%checked(X, neg):- X < 0.
%checked(X, sqr):- X >= 0, Y is round(sqrt(X)), Y * Y =:= X.

map([], _, []).
map([T|Q], O, [TR|QR]):- calcu(T, O, TR), map(Q, O, QR).

sqr(X,Y):- Y is X * X.

%*************** META PREDICATS **********************

checked(X, P):- G =..[P, X], call(G).

calcu(X, O, Y):- G =..[O, X, Y], call(G).

%*****************************************************
