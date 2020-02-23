% Author:     NGUYEN Xuan Huy
% Date: 11/7/2017

/* les hommes */
homme(alphonse).
homme(bernard).
homme(cedric).
homme(david).
homme(fabien).
homme(gerard).
homme(hubert).
homme(jules).
homme(kevin).
homme(lucien).

/* les femmes */
femme(charlotte).
femme(daniela).
femme(eloise).
femme(marie).
femme(nathalie).
femme(ophelie).
femme(stephanie).
femme(violette).
femme(zoe).

/* les relations de parente */
/* avec enfant(X,Y) signifie que X est enfant de Y */
enfant(alphonse,bernard).
enfant(alphonse,eloise).
enfant(cedric,fabien).
enfant(cedric,nathalie).
enfant(daniela,kevin).
enfant(daniela,charlotte).
enfant(fabien,lucien).
enfant(fabien,marie).
enfant(gerard,lucien).
enfant(gerard,marie).
enfant(nathalie,lucien).
enfant(nathalie,zoe).
enfant(ophelie,hubert).
enfant(ophelie,marie).
enfant(stephanie,alphonse).
enfant(stephanie,violette).
enfant(violette,zoe).
enfant(violette,jules).
enfant(zoe,bernard).
enfant(zoe,eloise).


/*
  * PARTIE 1
  * Q1 -> Q6 questions
*/

/*Q1*/
estHomme(X) :- homme(X).

/*Q2*/
sontEnfants(X, Y) :-  enfant(X, Y).

/*Q3*/
estParent(X, Y) :- enfant(Y, X).
coupleHommeFemmeAyantEnfantEnsemble(X, Y) :- enfant(Z, X), enfant(Z, Y), homme(X), femme(Y).

/*Q4*/
pere(X, Y) :- enfant(Y, X), homme(X).
mere(X, Y) :- enfant(Y, X), femme(X).
grand_parent(X, Y) :- enfant(Y, Z), enfant(Z, X).
grand_pere(X, Y) :- grand_parent(X, Y), homme(X).
grand_mere(X, Y) :- grand_parent(X, Y), femme(X).

/*Q5*/

/*Q6*/
ancetre(X, Y) :- estParent(X, Y).
ancetre(X, Y) :- estParent(X, Z), ancetre(Z, Y).

/*
  * PARTIE 2
  * Q7 -> Q9
*/

/*Q7*/
estPair(0).
estPair(X) :- X > 0, X1 is X - 2, estPair(X1).

/*Q8*/
factorielle(1, 1).
factorielle(X, R) :- X > 0, X1 is X - 1, factorielle(X1, R1), R is X * R1.

/*Q9*/
fibonacci(1, 1).
fibonacci(2, 1).
fibonacci(X, R) :- X > 0, X1 is X - 1, X2 is X - 2, fibonacci(X1, R1), fibonacci(X2, R2), R is R1 + R2.

/*
  * PARTIE 3
  * Q10 -> Q20
*/
/*Q10*/
affichage([X]) :- write(X).
affichage([T|Q]) :- write(T), affichage(Q).

/*Q11*/
inverse([], Z, Z).
inverse([T|Q], R, Acc) :- inverse(Q, R, [T|Acc]).
affichageInv([T|Q]) :- inverse([T|Q], R, []), affichage(R).

/*Q12*/
premier([T|_]) :- write(T).

/*Q13*/
premier([T|_], X) :- X is T.

/*Q14*/
dernierSansAppend([X]) :- write(X).
dernierSansAppend([_|Q]) :- dernierSansAppend(Q).

dernierAppend([_|Q]) :- append([], Q, R), dernierSansAppend(R).

/*Q15*/
dernierSansAppend([X], R) :- R is X.
dernierSansAppend([_|Q], R) :- dernierSansAppend(Q, R).





