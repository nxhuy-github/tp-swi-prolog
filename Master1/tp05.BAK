% Author: NGUYEN Xuan Huy
% Date: 12/16/2017

% Question 1
:- dynamic vrai/1, faux/1, marque/1.

regle(r1):- si([a, b]), alors([c]).
regle(r2):- si([c, non(d)]), alors([f]).
regle(r3):- si([f, b]), alors([e]).
regle(r4):- si([f, a]), alors([non(g)]).
regle(r5):- si([non(g), f]), alors([b]).
regle(r6):- si([a, h]), alors([l]).

raz :- retractall(vrai(_)), retractall(faux(_)).

faits([]).
faits([non(T)|Q]) :- faux(T), !, faits(Q).
faits([non(T)|Q]) :- !, assert(faux(T)), faits(Q).
faits([T|Q]) :- vrai(T), !, faits(Q).
faits([T|Q]) :- assert(vrai(T)), faits(Q).

saturer :- assert(vrai(changement)), while.
while :- vrai(changement), retractall(vrai(changement)), for, while.
while.
for :- clause(regle(N), (si(LP), alors(LC))),
         not(marque(N)),
          myCheck(LP),
          write(N), nl,
          faits(LC),
          change,
          assert(marque(N)), fail.  % moi them "fail" 12/30/2017
for.

change:- vrai(changement), !.
change:- assert(vrai(changement)).

myCheck([]).
myCheck([non(T)|Q]):- !, faux(T), myCheck(Q).
myCheck([T|Q]):- vrai(T), myCheck(Q).




