libro_de_familia(esposo(nombre(antonio,garcia,fernandez),
profesion(arquitecto),
salario(300000)),
esposa(nombre(ana,ruiz,lopez),
profesion(docente),
salario(120000)),
domicilio(guadalajara)).

libro_de_familia(esposo(nombre(luis,alvarez,garcia),
profesion(arquitecto),
salario(400000)),
esposa(nombre(ana,romero,soler),
profesion(sus_labores),
salario(0)),
domicilio(guadalajara)).

libro_de_familia(esposo(nombre(bernardo,bueno,martinez),
profesion(docente),
salario(120000)),
esposa(nombre(laura,rodriguez,millan),
profesion(medico),
salario(250000)),
domicilio(tlaquepaque)).

libro_de_familia(esposo(nombre(miguel,gonzales,ruiz),
profesion(empresario),
salario(400000)),
esposa(nombre(belen,salguero,cuevas),
profesion(sus_labores),
salario(0)),
domicilio(zapopan)).

profesion(X):-
    libro_de_familia(esposo(_,profesion(X),_),_,_).

profesion(X):-
    libro_de_familia(_,esposa(_,profesion(X),_),_,_).

primer_apellido(X):-
    libro_de_familia(esposo(nombre(_,X,_),_,_),_,_).

primer_apellido(X):-
    libro_de_familia(_,esposa(nombre(_,X,_),_,_),_).

guadalajara(X):-
    libro_de_familia(esposo(X,_,_),_,domicilio(guadalajara)).

guadalajara(X):-
    libro_de_familia(_,esposa(X,_,_),domicilio(guadalajara)).

ingresos_familiares(X):-
    libro_de_familia(esposo(_,_,salario(N1)),esposa(_,_,salario(N2)),_), X is N1+N2.

pareja(X,Y):-
    libro_de_familia(esposo(nombre(X,_,_),_,_),esposa(nombre(Y,_,_),_,_),_).

sueldo(X,Y):-
    libro_de_familia(esposo(X,_,salario(Y)),_,_).

sueldo(X,Y):-
    libro_de_familia(_,esposa(X,_,salario(Y)),_).