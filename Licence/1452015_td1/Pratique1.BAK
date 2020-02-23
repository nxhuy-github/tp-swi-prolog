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