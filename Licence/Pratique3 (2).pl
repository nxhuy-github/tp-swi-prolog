% Author:
% Date: 11/18/2016

mywrite([]).
mywrite([H|T]) :- write(H), mywrite(T).

/*line(X, 0).
line(X, Y) :- Y > 0, Y1 is Y - 1, line(X, Y1), R is X*Y, mywrite([Y, *, X, =, R, '\n']).
cuuchuong(X) :- line(X, 10).   */

%ver1
/*
myfor(X, Min, I) :- I =:= Min, indong(X, I).
myfor(X, Min, I) :- I > Min, I1 is I - 1, myfor(X, Min, I1), indong(X, I).
indong(X, I):- Z is X*I, mywrite([I, '*', X, '=', Z, '\n']).
cuuchuong(X):- myfor(X, 1, 10).   */

%ver2
myfor(_, Min, Max) :- Min > Max.
myfor(X, Min, Max) :- Min =< Max, I is Max - 1, myfor(X, Min, I), indong(X, Max).
indong(X, I):- Z is X*I, mywrite([I, '*', X, '=', Z, '\n']).
cuuchuong(X):- myfor(X, 1, 10).

myprint_min_max(Min, Max) :- Min > Max.
myprint_min_max(Min, Max) :- Min =< Max, I is Max - 1, myprint_min_max(Min, I), mywrite([Max, ' ']).

myprint_max_min(Max, Min) :- Min > Max.
myprint_max_min(Max, Min) :- Min =< Max, I is Min + 1, myprint_max_min(Max, I), mywrite([Min, ' ']).