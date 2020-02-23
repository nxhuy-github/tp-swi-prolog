% TD4
% 1452015  - Nguyen Xuan Huy
% 1452023  - Pham Quoc Hoai Nam

%1
s1 --> l1, s1, r1.
s1 --> [].
l1 --> [a].
r1 --> [b].
/*
  s1([a,a,b,b],[]).
  s1([a,a,b,b,b],[]). : false
  s1([],[]).
*/

%2
s2 --> l2, s2, r2.
s2 --> l2, r2.
l2 --> [a].
r2 --> [b].
/*
  s2([],[]). : false
  s2([a,b],[]).
  s2([a,a,a,b,b,b],[]).
*/

%3
s3 --> l3, s3, r3.
s3 --> [].
l3 --> [a].
r3 --> [b, b].
/*
  s3([], []).
  s3([a,b,b],[]).
  s3([a,b,b,b],[]). : false
  s3([a,b],[]). : false
*/

%4
s4 --> l4, s4.
s4 --> [].
l4 --> [a,a].
/*
  s4([],[]).
  s4([a,a],[]).
  s4([a],[]). : false
*/

%5
s5 --> a, s5, d.
s5 --> s6.
s5 --> [].
s6 --> b, s6, c.
s6 --> [].
a --> [a].
b --> [b,b].
c --> [c,c].
d --> [d].
/*
  s5([a,b,b,b,b,c,c,c,c,d],[]).
  s5([a,a,b,b,b,b,c,c,c,c,d,d],[]).
  s5([],[]).
*/

%6
prop --> [p].
prop --> [q].
prop --> [r].
prop --> n, prop.
prop --> l, prop, ad, prop, r.
prop --> l, prop, o, prop, r.
prop --> l, prop, i, prop, r.
n --> [not].
l --> ['('].
r --> [')'].
ad --> [and].
o --> [or].
i --> [implies].
/*
  prop([not, '(', p, implies, q, ')'], []).
*/

%7
s7 --> np(Nombre),vp(Nombre).
np(Nombre) --> det(Nombre),n1(Nombre).
vp(Nombre) --> v(Nombre),np(_).
vp(Nombre) --> v(Nombre).
det(_) --> [the].
det(sin) --> [a].
n1(sin) --> [woman].
n1(sin) --> [man].
n1(sin) --> [apple].
n1(sin) --> [pear].
n1(plu) --> [pears].
n1(plu) --> [men].
v(sin) --> [eats].
v(plu) --> [eat].
/*
  s7([a, man, eats, the, pears],[]).
  s7([the, men, eat, the, pears],[]).
  s7([the, men, eats, a, pear],[]). : false
*/
%7*
/*s_7 --> sn(Nombre),sv(Nombre).
sn(Nombre) --> det1(Nombre),np(Nombre).
sv(Nombre) --> vt(Nombre).
sv(Nombre) --> vi(Nombre).
det1(_) --> [the].
det1(sin) --> [a].
v1(Nombre) --> [Mot], {lexique(Mot, v1, Mot, Nombre)}.
v2(Nombre) --> [Mot], {lexique(Mot, v2, Mot, Nombre)}.
v3(Nombre) --> [Mot], {lexique(Mot, v3, Mot, Nombre)}.
v4(Nombre) --> [Mot], {lexique(Mot, v4, Mot, Nombre)}.
lexique(eat, v1, apple, plu).
lexique(eat, v1, pear, plu).
lexique(eats, v2, apple, sin).
lexique(eats, v2, pear, plu).
lexique(like, v3, apple, plu).
lexique(like, v3, pear, plu).
lexique(likes, v4, apple, sin).
lexique(likes, v4, pear, plu).
*/

%8 PALINDROM PAIR
s8 --> a8, s8, a8.
s8 --> b8, s8, b8.
s8 --> [].
a8 --> [a].
b8 --> [b].
/*
  s8([a,b,b,a],[]).
  s8([a,b,a],[]). : false
*/

%9 PALINDROM IMPAIR
s9 --> a9, s9, a9.
s9 --> b9, s9, b9.
s9 --> [a].
s9 --> [b].
a9 --> [a].
b9 --> [b].
/*
  s9([a,b,a],[]).
  s9([a,b,a,b,a],[]).
  s9([a,b,b,a],[]). : false
  s9([],[]). : false
*/

%10 PAIR-PAIR
s10 --> a10, a10, s10.
s10 --> b10, b10, s10.
s10 --> a10, b10, x.
s10 --> b10, a10, x.
s10 --> [].
x --> a10, a10, x.
x --> b10, b10, x.
x --> a10, b10, s10.
x --> b10, a10, s10.
a10 --> [a].
b10 --> [b].
/*
  s10([a,b,a,b],[]).
  s10([a,b,a,b,a,b,a,b,a,b],[]). : false
  s10([a,b,a,b,a,b,a,b],[]).
*/
