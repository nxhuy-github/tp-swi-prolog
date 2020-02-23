% Author: NGUYEN Xuan Huy
% Date: 12/12/2017

initial(entree).
final(sortie).
interdit(minotaure).
operateur(E1,[E1,E2],E2) :- couloir(E1,E2).
operateur(E1,[E1,E2],E2) :- couloir(E2,E1).
couloir(entree, thesee).
couloir(entree, ariane).
couloir(thesee, minotaure).
couloir(thesee,sombre).
couloir(claire, sombre).
couloir(claire, sortie).
couloir(minotaure, sortie).
couloir(ariane, claire).
couloir(sombre,sortie).

% Question 1
rechPf(Ec, Ec, _, []).
rechPf(Ec, Ef, L1, [Opx|L2]):- operateur(Ec, Opx, Es),
                         not(interdit(Es)),
                         not(member(Es, L1)),
                         append(L1, [Es], L1bis),
                         rechPf(Es, Ef, L1bis, L2).

% Question 2
resoudre(S):- initial(Ei), final(Ef), rechPf(Ei, Ef, [], S).

% Question 3
operateur_cruches([B5, B8], remplir5, [5, B8]) :- B5 < 5.
operateur_cruches([B5, B8], vider5, [0, B8]) :- B5 > 0.
operateur_cruches([B5, B8], remplir8, [B5, 8]) :- B8 < 8.
operateur_cruches([B5, B8], vider8, [B5, 0]) :- B8 > 0.
operateur_cruches([B5, B8], tranverser8vers5, [A5, 0]) :- T is 5 - B5, B8 =< T, A5 is B5 + B8.
operateur_cruches([B5, B8], tranverser8vers5, [5, A8]) :- T is 5 - B5, B8 > T, A8 is B8 - T.
operateur_cruches([B5, B8], tranverser5vers8, [0, A8]) :- T is 8 - B8, B5 =< T, A8 is B5 + B8.
operateur_cruches([B5, B8], tranverser5vers8, [A5, 8]) :- T is 8 - B8, B5 > T, A5 is B5 - T.

rechPf_cruches(Ec, Ec, _, []).
rechPf_cruches(Ec, Ef, L1, [Opx|L2]):- operateur_cruches(Ec, Opx, Es),
                         not(member(Es, L1)),
                         rechPf_cruches(Es, Ef, [Es|L1], L2).

initial_cruches([0, 0]).
final_cruches([_, 4]).
final_cruches([4, _]).
resoudre_cruches(S):- initial_cruches([B5, B8]), final_cruches([A5, A8]), rechPf_cruches([B5, B8], [A5, A8], [], S).

% Question 6: Tour HaNoi
deplace(1, D, _, A) :-
    write('Deplacement du disque du socle '),
    write(D),
    write(' vers le socle '),
    write(A),
    nl.
deplace(N, D, T, A) :-
    N > 1,
    M is N - 1,
    deplace(M, D, A, T),
    deplace(1, D, T, A),
    deplace(M, T, D, A).
hanoi(N) :- deplace(N, a, b, c).




