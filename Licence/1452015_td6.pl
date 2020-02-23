% Author:
% Date: 12/20/2016

% Tour de HaNoi
move(1, A, B, _):- write('di chuyen 1 dia tren cung tu tru '), write(A), write(' den tru '), write(B), nl.
move(N, A, B, C):- N > 1, M is N - 1, move(M, A, C, B), move(1, A, B, C), move(M, C, B, A).
/*
  move(3, 'Trai', 'Giua', 'Phai').
  move(4, 'Trai', 'Giua', 'Phai').
*/

% Problème du zèbre
voisin(A, B, [A, B | _]).
voisin(A, B, [B, A | _]).
voisin(A, B, [_ | Q]) :- voisin(A, B, Q).

avant(A, B, [A, B |  _]).
avant(A, B, [_ | Q]) :- avant(A, B, Q).

myprint([A]) :- write(A).
myprint([T|Q]) :- write(T), nl, myprint(Q).

maisons([maison(_,_,_,_,_),maison(_,_,_,_,_),maison(_,_,_,_,_),maison(_,_,_,_,_),maison(_,_,_,_,_)]).

zebre :-  maisons(Maisons),
Maisons = [maison(_,norvegien,_,_,_) | _],
voisin(maison(_, norvegien,_,_,_), maison(bleue, _,_,_,_), Maisons),
Maisons = [_,_,maison(_,_,_,lait,_) | _],
member(maison(rouge,anglais,_,_,_), Maisons),
member(maison(vert,_,_,cafe,_), Maisons),
member(maison(jaune,_,_,_,kool), Maisons),
avant(maison(vert,_,_,_,_), maison(blanche,_,_,_,_), Maisons),
member(maison(_,espagnol,chien,_,_), Maisons),
member(maison(_,ukrainien,_,the,_), Maisons),
member(maison(_,japonais,_,_,craven), Maisons),
member(maison(_,_,escargot,_,oldgold), Maisons),
member(maison(_,_,_,vin,gitane), Maisons),
voisin(maison(_,_,_,_,chesterfield), maison(_,_,renard,_,_), Maisons),
voisin(maison(_,_,_,_,kool), maison(_,_,cheval,_,_), Maisons),
member(maison(_,_,zebre,_,_), Maisons),
member(maison(_,_,_,eau,_), Maisons),
myprint(Maisons).

/*
maison(jaune,norvegien,renard,eau,kool)
maison(bleue,ukrainien,cheval,the,chesterfield)
maison(rouge,anglais,escargot,lait,oldgold)
maison(vert,japonais,zebre,cafe,craven)
maison(blanche,espagnol,chien,vin,gitane)
*/


