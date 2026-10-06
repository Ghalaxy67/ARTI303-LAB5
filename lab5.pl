male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham, herb).
parent(abraham, homer).
parent(mona, homer).
parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).
parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).
parent(selma, ling).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X).
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X).
grandfather(X, Z) :- parent(X, Y), parent(Y, Z), male(X).
aunt(X, Y) :- parent(Z, Y), sister(X, Z).
uncle(X, Y) :- parent(Z, Y), brother(X, Z).
cousin(X, Y) :- parent(A, X), parent(B, Y), parent(G, A), parent(G, B).
ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).
