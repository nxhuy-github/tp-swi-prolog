% Nguy?n Xuân Huy 1452015
% TD3

%1 Puissant
puissant_acc(X, 0, A, R) :- X > 0, R is A.
puissant_acc(X, Y, A, R) :- X > 0, Y >= 0, Anew is A * X, Y1 is Y - 1, puissant_acc(X, Y1, Anew, R).
puissant(X, Y, R) :- puissant_acc(X, Y, 1, R).

/*
      puissant(2, 3, R): 8
      puissant(1, 10, R): 1
      puissant(0, 1, R): false
      puissant(-2, 0, R): false
*/

%2 Fibonaci
fibo(X, A, _, X, A).
fibo(X, A, Y, I, R) :- I < X, Anew is A + Y, Ynew is A, Inew is I + 1,fibo(X, Anew, Ynew, Inew, R).
fibo_acc(X, R) :- X > 0, fibo(X, 1, 0, 1, R).
fibo_acc(X, R) :- X =:= 0, R = 0.

/*
     fibo_acc(0, R): 0
     fibo_acc(1, R): 1
     fibo_acc(2, R): 1
     fibo_acc(20, R): 6765
     fibo_acc(-1, R): false
*/

%3 Somme des impaires
somme_impaire([], A, A).
somme_impaire([T|Q], A, R) :-X is mod(T, 2), X =\= 0, Anew is A + T, somme_impaire(Q, Anew, R).
somme_impaire([T|Q], A, R) :-X is mod(T, 2), X =:= 0, Anew is A + 0, somme_impaire(Q, Anew, R).
somme_ip([T|Q], R) :- somme_impaire([T|Q], 0, R).

/*
     some_ip([1,2,3,4,5], R): 9
     some_ip([2,4,6,8], R): 0
*/

%4 Somme des paires
somme_paire([], A, A).
somme_paire([T|Q], A, R) :-X is mod(T, 2), X =\= 0, Anew is A + 0, somme_paire(Q, Anew, R).
somme_paire([T|Q], A, R) :-X is mod(T, 2), X =:= 0, Anew is A + T, somme_paire(Q, Anew, R).
somme_p([T|Q], R) :- somme_paire([T|Q], 0, R).

/*
     some_p([1,2,3,4,5], R): 6
     some_p([1,3,5,7], R): 0
*/

%5 Nombre des paires
nombre_paire([], A, A).
nombre_paire([T|Q], A, R) :-X is mod(T, 2), X =\= 0, Anew is A + 0, nombre_paire(Q, Anew, R).
nombre_paire([T|Q], A, R) :-X is mod(T, 2), X =:= 0, Anew is A + 1, nombre_paire(Q, Anew, R).
nombre_p([T|Q], R) :- nombre_paire([T|Q], 0, R).
/*
     nombre_p([1,2,3,4,5], R): 2
     nombre_p([2,4,6,8], R): 4
     nombre_p([1,3,5,7,9], R): 0
*/