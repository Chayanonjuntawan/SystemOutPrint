parent(christopher,arthur).
parent(christopher,victoria).
parent(penelope,arthur).
parent(penelope,victoria).
parent(andrew,james).
parent(andrew,jannifer).
parent(christine,james).
parent(christine,jannifer).
parent(victoria,colin).
parent(victoria,chalotte).
parent(james,colin).
parent(james,chalotte).
parent(roberto,emilio).
parent(roberto,lucia).
parent(maria,emilio).
parent(maria,lucia).
parent(pierro,maria).
parent(pierro,angela).
parent(trancesca,macro).
parent(trancesca,angela).
parent(lucia,alfonso).
parent(lucia,sophia).
parent(macro,alfonso).
parent(macro,sophia).
male(christopher).
male(andrew).
male(arthur).
male(james).
male(charles).
male(colin).
male(roberto).
male(pierro).
male(emilio).
male(macro).
male(tomaso).
male(alfonso).
female(penelope).
female(christine).
female(margaret).
female(victoria).
female(jannifer).
female(chalotte).
female(maria).
female(francesca).
female(gine).
female(lucia).
female(angela).
female(sophia).

grandparent(X,Y):- parent(X,Z),parent(Z,Y).
farther(X,Y):- male(X) ,parent(X,Y).
can_marry(X,Y):- not(sibling(X,Y)), like(X,Y).
sibling(X,Y):- parent(Z,X), parent(Z,Y), X\=Y.
like(arthur,margaret).