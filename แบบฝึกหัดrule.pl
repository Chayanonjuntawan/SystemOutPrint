:-use_module(fact,[]).

one:- write('Enter the county name:'), read(A), fact:value(A, B), nl,
write(A), write(' in the state "'), write(B),write('"'), write('.'), nl.

two:- write('Enter source: '), read(A), fact:source( A), nl,
write('This source is Cause dust'), write('.'), nl.

three(X,Y):- fact:value(X, Y).