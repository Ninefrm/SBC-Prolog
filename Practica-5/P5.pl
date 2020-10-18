%Completar las siguientes reglas en prolog y mostrar los resultados de sus consultas.

%1-funcion mayor_que/3, el argumento 3 regresa el número mayor de los tres argumentos
mayor_que(X,Y,N):-
    (X > Y,
        N is X;
    Y > X,
        N is Y).

%2-leer_duplica/0 lee un numero y muestra su valor duplicado (pista, tienes que usar los comandos read y write)
leer_duplica:-
    read(N),
    Valor is N*2,
    write(Valor).

%3-es par/0, que indica si un numero leído es par o no%
espar:-
    read(N),
    Check is mod(N,2),
    (Check == 0, write("Par")
    ; Check == 1, write("No par")).
%4-calcular el porcentaje/1 de ganados sobre una pequeña base de conocimiento%
porcentaje(N):-
    ganados(N,X),
    jugados(N, Y),
    Prom is (X*100/Y),
    write(Prom).
ganados(juan,7).
ganados(susana,6).
ganados(pedro,2).
ganados(rosa,5).

jugados(juan,13).
jugados(susana,7).
jugados(pedro,3).
jugados(rosa,10).

%5-regla que indique un valor en la regla fibonacci%
%indice: 0 1 2 3 4 5 6 7 8 9 10
%valor: 0 1 1 2 3 5 8 13 21 34 55
%fibo/2 primer argumento: indice, segundo valor de la serie%
fibo(0,0).
fibo(1,1).
fibo(N,X) :-
    N > 1,
    N1 is N-1,
    fibo(N1,X1),
    N2 is N-2,
    fibo(N2,X2),
    X is X1+X2.