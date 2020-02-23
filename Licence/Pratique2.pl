% Author:
% Date: 11/4/2016

supplier('S1', 'Smith', 20, 'Londres').
supplier('S2', 'Jones', 10, 'Paris').
supplier('S3', 'Blacke', 30, 'Paris').
supplier('S3', 'Strange', 30, 'Rome').

/*
supplier(_,Name,_,City), City\='Paris'.
supplier(_,Name,_,City), City\='Paris', City \='Londres'.
supplier(_,Name, Status,_), Status >= 5, Status =< 15.
 */
 
product('P1', 'Nut', 'Red', 12, 'Londres').
product('P2', 'Bolt', 'Green', 17, 'Paris').
product('P3', 'Screm', 'Blue', 17, 'Rome').
product('P4', 'Screw', 'Red', 14, 'Londres').

maxstatus(Name):- supplier(_, Name, M, _), not(cohang(M)).
cohang(M):- supplier(_,_,X,_), X > M.
/*
product(_, Name, Color, Weight,_), Color = 'Green', Weight > 15.
maxstatus(Name).
 */
 
 supplies('S1', 'P1', 300).
 supplies('S1', 'P2', 200).
 supplies('S1', 'P3', 400).
 supplies('S2', 'P1', 300).
 supplies('S2', 'P2', 400).
 supplies('S3', 'P2', 200).
 
 suppliesP1P2(S) :- supplies(S, 'P1', _), supplies(S, 'P2', _).
 
 suppliesProduct(S, X1, X2) :- supplies(S, X1, _), supplies(S, X2, _).
 
 suppliesProducts(S, [P]) :- supplies(S, P, _).
 suppliesProducts(S, [P | T]) :- supplies(S, P, _), suppliesProducts(S, T).
 
 suppliesProductsName(Name, P) :- suppliesProducts(S, P), supplier(S, Name, _, _).
 
 nameP(Name, [Pro]) :- supplier(S, Name, _, _), product(P, Pro, _, _, _),supplies(S, P, _).
 nameP(Name, [Pro | T]) :- supplier(S, Name, _, _), product(P, Pro, _, _, _), supplies(S, P, _), nameP(Name, T).
 
 colorP(Name, Color) :- supplier(S, Name, _, _), product(P, _, Color, _, _), supplies(S, P, _).
 
 colorDifP(Name, [Color]) :- supplier(S, Name, _, _), product(P, _, Color, _, _), supplies(S, P, _).
 colorDifP(Name, [Color | T]) :- supplier(S, Name, _, _), product(P, _, Color, _, _), supplies(S, P, _), colorDifP(Name, T).