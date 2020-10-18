write("Hola mundo").
write(Hola mundo).
write(hola_mundo).
write(hola).

leer(NOMBRE):-write("Nombre: "), read(NOMBRE), write("Hola "), write(NOMBRE).
leer:-write("Nombre: "), read(NOMBRE), write("Hola "), write(NOMBRE).

regla(A):-
    A is abs(1),
    writeln(A),
    B is sign(2),
    writeln(B),
    C is min(3,5),
    writeln(C),
    D is max(4,10),
    writeln(D),
    E is random(5),
    writeln(E),
    F is round(6),
    writeln(F),
    G is integer(7),
    writeln(G),
    H is float(8),
    writeln(H),
    I is sqrt(9),
    writeln(I),
    J is sin(10),
    writeln(J),
    Q is cos(110),
    writeln(Q),
    K is tan(120),
    writeln(K),
    L is log(13),
    writeln(L),
    M is log10(14),
    writeln(M),
    N is exp(15),
    writeln(N).

sumar_3_y_duplicar(X,Y):-Y is (X+3)*2.
sumar(Y):-Y is (10+3)*2.