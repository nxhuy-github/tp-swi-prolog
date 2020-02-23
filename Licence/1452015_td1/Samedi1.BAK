% Author:
% Date: 11/5/2016

%1
/*word(determiner, a).
word(determiner, every).
word(noun, criminal).
word(noun, 'bing kahuna burger').
word(verb, eats).
word(verb, likes).

sentence(Word1, Word2, Word3, Word4, Word5):- word(determiner, Word1),
                                              word(noun, Word2),
                                              word(verb, Word3),
                                              word(determiner, Word4),
                                              word(noun, Word5).  */

%2
/*word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

crossword(H1, H2, H3, V1, V2, V3):- word(H1, _, X, _, Y, _, Z, _),
                                    word(H2, _, T, _, U, _, V, _),
                                    word(H3, _, M, _, N, _, O, _),
                                    word(V1, _, X, _, T, _, M, _),
                                    word(V2, _, Y, _, U, _, N, _),
                                    word(V3, _, Z, _, V, _, O, _).     */

%3
/*line(1, 4).
line(4, 5).
line(5, 3).
line(5, 6).
line(6, 3).
line(3, 2).
line(3, 7).
line(7, 8).

chemin(X, Y):- line(X, Y).
chemin(X, Y):- line(X, Z), chemin(Z, Y).  */

%4
/*child(martha, charlotte).
child(charlotte, caroline).
child(caroline, laura).
child(laura, rose).

%descend(X, Y):- child(X, Y).
descend(X, Y):- child(X, Z), descend(Z, Y).
%descend(X, Y):- descend(Z, Y), child(X, Z). => out of local stack.
descend(X, Y):- child(X, Y).     */

%5: successeur
num(0).
num(succ(X)):- num(X).

%6: addition
add(0, X, X).
add(succ(X), Y, succ(Z)):- add(X, Y, Z).

%7: multiplication
mult(0, _, 0).
mult(succ(X), Y, Z):- add(Z1, Y, Z), mult(X, Y, Z1).
%mult(succ(X), Y, Z):- mult(X, Y, Z1), add(Z1, Y, Z).