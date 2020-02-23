% Author:  NGUYEN Xuan Huy
% Date: 12/26/2017

hhs:- X = [H,U,I,T,S,E,Z],
      Domaine = [0,1,2,3,4,5,6,7,8,9],
      affectation(X, Domaine),
      H > 0, S > 0,
      2 * (1000*H + 100*U + 10*I + T) =:= 10000*S + 1000*E + 100*I + 10*Z + E,
      write(X).

affectation([], _).
affectation([T|Q], D):- choix(T, D, Dnew), affectation(Q, Dnew).

choix(X, [X|R], R).
choix(Y, [X|R], [X|Rs]):- choix(Y, R, Rs).

valeur(X) :- member(X,[0,1,2,3,4,5,6,7,8,9]).
hhs2([H,U,I,T,S,E,Z]) :- valeur(H), H=\=0,
                         valeur(S), S=\=0, S=\=H,
                         valeur(T), not(member(T,[H,S])),
                         valeur(E), not(member(E,[T,H,S])), R1 is ((2*T - E)/10),
                         valeur(I), not(member(I,[E,T,H,S])),
                         valeur(Z), not(member(Z,[I,E,T,H,S])), R2 is ((2*I + R1 - Z) /10),
                         valeur(U), not(member(U,[Z,I,E,T,H,S])), R3 is ((2*U + R2 - I) /10),
                         2*H + R3 =:= E + 10*S.
                         
/* HUIT + HUIT = SEIZE
listevariable([H,U,I,T,S,E,Z]).
testcontraintes([H,U,I,T,S,E,Z]) :- H > 0, S > 0, 2 * (1000*H + 100*U + 10*I + T) =:= 10000*S + 1000*E + 100*I + 10*Z + E.
*/

/* UN + UN + NEUF = ONZE */
listevariable([_,_,_,_,_,_]).
/* pas besoin de les nommer, juste besoin de savoir leur nombre */
testcontraintes([U,N,E,F,O,Z]) :- U > 0, N > 0, O > 0,
                                  2 * (10*U + N) + 1000*N + 100*E + 10*U + F =:= 1000*O + 100*N + 10*Z + E.

crypt :- listevariable(X),
         Domaine = [0,1,2,3,4,5,6,7,8,9],
         affectation(X, Domaine),
         testcontraintes(X), write(X).

sous-liste(L1,L2) :- append(_,L3,L2), append(L1,_,L3).

catalogue(rome, 40, hotel, 240).
catalogue(rome, 40, camping, 170).
catalogue(rome, 40, habitant, 80).
catalogue(londres, 20, hotel, 200).
catalogue(londres, 20, camping, 180).
catalogue(londres, 20, habitant, 76).
catalogue(tunis, 40, hotel, 300).
catalogue(tunis, 25, camping, 160).
catalogue(tunis, 25, habitant, 84).

voyage(Ville, Duree, TypeHebergement, Cout) :- catalogue(Ville, PrixTransport,TypeHebergement , CoutH),
                                               Cout is Duree*CoutH + PrixTransport.

voyage_eco(Ville, Duree, TypeHebergement, Cout, CoutMax) :- catalogue(Ville, PrixTransport,TypeHebergement , CoutH),
                                                            Cout is Duree*CoutH + PrixTransport, Cout=<CoutMax.
                                                            
couleur(vert).
couleur(jaune).
couleur(rouge).
coloriage(C1, C2, C3, C4) :- couleur(C1), couleur(C2), couleur(C3), couleur(C4),
                             C1\=C2, C1\=C3, C1\=C4,
                             C2\=C3, C3\=C4.
/*
coloriage(C1, C2, C3, C4) :- couleur(C1), couleur(C2), C1\=C2,
                             couleur(C3), C1\=C3, C2\=C3,
                             couleur(C4), C1\=C4, C3\=C4.
                             */