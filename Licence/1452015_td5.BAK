% Author:
% Date: 12/13/2016

%1
complex_term(X) :- nonvar(X), functor(X, _, A), A > 0.

termtype(Term, term) :- termtype(Term, simple_term).
termtype(Term, term) :- termtype(Term, complex_term).
termtype(Term, simple_term) :- termtype(Term, constant).
termtype(Term, simple_term) :- termtype(Term, variable).
termtype(Term, constant) :- termtype(Term, atom).
termtype(Term, constant) :- termtype(Term, nombre).

termtype(Term, nombre) :- integer(Term).
termtype(Term, atom) :- atom(Term).
termtype(Term, complex_term):- complex_term(Term).

/*
  termtype(dead(zed), X). complex_term, term
  termtype(mia, X). simple_term, atom, term, constant
*/

%2
nonVarInList([]).
nonVarInList([T|Q]) :- groundItem(T), nonVarInList(Q).
groundItem(Term) :- nonvar(Term), Term =..[_|Q], nonVarInList(Q).

/*
  groundItem(french(spain(mac), le_bic_mac)).    true
  groundItem(french(spain(X), le_bic_mac)). false
  groundItem(mia). true
  groundItem(french(X, le_bic_mac)). false
*/

%3
:- op(300, xfx, [are, is_a]).
:- op(300, fx, likes).
:- op(200, xfy, and).
:- op(100, fy, famous).

/*
  1. true, is_a(X, witch).
  2. true, are(and(harry, and(ron, hermione)), friend).
  3. false
  4. true, is_a(dumbledore,famous(wizard)).
*/

%4
:-op(200,fx, not).
:-op(300,xfx, and).
:-op(300,xfx, or).
:-op(400,xfx,implies).
