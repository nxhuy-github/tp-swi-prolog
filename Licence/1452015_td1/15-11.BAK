% Author:
% Date: 11/15/2016

%1
tous_a([]).
tous_a([a|Q]) :- tous_a(Q).

%2
remplacer_a_b_c([], []).
remplacer_a_b_c([a|Q1], [b|Q2]) :- remplacer_a_b_c(Q1, Q2).
remplacer_a_b_c([b|Q1], [c|Q2]) :- remplacer_a_b_c(Q1, Q2).
remplacer_a_b_c([c|Q1], [a|Q2]) :- remplacer_a_b_c(Q1, Q2).

%3
prefixe([], _).
prefixe([Pre|Q1], [Pre|Q2]) :- prefixe(Q1, Q2).

%4
suffixe(X, X).
suffixe([X|Queue], [_|Queue2]) :- suffixe([X|Queue], Queue2).

%5

/*sousListe([X|Q1], [Y|Q2]) :- prefixe([X|Q1], [Y|Q2]).
sousListe([X|Q1], [Y|Q2]) :- suffixe([X|Q1], [Y|Q2]).
sousListe([X|Q1], [Y|Q2]) :- suffixe(_, [Y|Q2]), prefixe([X|Q1], _).
sousListe([X|Q1], [Y|Q2]) :- prefixe(_, [Y|Q2]), suffixe([X|Q1], _).  */

sousListe([X|Q1], [Y|Q2]) :- suffixe(_, [Y|Q2]), prefixe([X|Q1], _).

%6
/*aplatir([], []).
aplatir([X|Q1], [Y|Q2]) :-       */

%-----------------------------******ARITHMÉTIQUE******--------------------------%
longeur([], 0).
longeur([_|Q], L) :- longeur(Q, L1), L is L1 + 1.

double([], []).
double([X|Q], [Y|Q1]) :- double(Q, Q1), Y is X*2.

sum([], 0).
sum([X|Q], S) :- sum(Q, S1), S is S1+X.