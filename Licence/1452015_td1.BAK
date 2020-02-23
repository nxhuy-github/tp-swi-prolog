% Nguyen Xuan Huy
% TD1

male(paul).
male(mathias).
male(albert).
male(sylvain).
male(francois).

female(helene).
female(sylvie).
female(christine).
female(catherine).
female(nathalie).

parent_of(paul, christine).
parent_of(helene, christine).
parent_of(paul, sylvain).
parent_of(helene, sylvain).

parent_of(mathias, catherine).
parent_of(sylvie, catherine).

parent_of(albert, francois).
parent_of(christine, francois).

parent_of(sylvain, nathalie).
parent_of(catherine, nathalie).

%a
husband_of(Husband, Person):- father_of(Husband, Y), mother_of(Person, Y).
wife_of(Wife, Person):- father_of(Person, Y), mother_of(Wife, Y).
%b
brother_of(Brother, Person):- parent_of(X, Brother), parent_of(X, Person), male(Brother).
sister_of(Sister, Person):- parent_of(X, Sister), parent_of(X, Person), female(Sister).
%c
father_of(Father, Child):- parent_of(Father, Child), male(Father).
mother_of(Mother, Child):- parent_of(Mother, Child), female(Mother).
%d
grand_father_of(GrandFather, Child):- father_of(GrandFather, X), parent_of(X, Child).
grand_mother_of(GrandMother, Child):- mother_of(GrandMother, X), parent_of(X, Child).
%e
child_of(Child, Person):- parent_of(Person, Child).
son_of(Child, Person):- parent_of(Person, Child), male(Child).
daughter_of(Child, Person):- parent_of(Person, Child), female(Child).
%f
aunt_of(Aunt, Person):- sister_of(Aunt, X), parent_of(X, Person).
uncle_of(Uncle, Person):- brother_of(Uncle, X), parent_of(X, Person).

