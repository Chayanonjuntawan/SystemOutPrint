:-use_module(fact,[]).

start:- write('Country:'), read(A), fact:capital(B, A), nl,
write(B), write(' is a capital of '), write(A), write('.'), nl.

end:- write('Country or Capital:'), nl,
 read(A), process(A).
process(A):- fact:capital(B, A), output(B, A).
process(A):- fact:capital(A, B), output(A, B).
output(X, Y):- write(X), write(' is the capital of '), write(Y), write('.'), nl.