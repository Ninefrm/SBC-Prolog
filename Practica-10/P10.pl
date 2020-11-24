
imprimir([A|B]) :-
  write(A),
  write('\n'),
  imprimir(B).

primer_elemento([X|Y], T) :- 
    (X is T, write(T + " si es igual"); write("No son iguales")).

conc_ele_lista(X, [Z|Y], [Q|S]):-
    conc_ele_lista(X, Y, S).