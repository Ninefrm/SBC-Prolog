hombre(juan).
hombre(jj).
hombre(pepe).
hombre(luis).
hombre(carlos).

mujer(laura).
mujer(julia).
mujer(eva).
mujer(karla).
mujer(lupe).

cabello_rubio(juan).
cabello_rubio(julia).
cabello_rubio(lupe).

cabello_rojo(karla).
cabello_rojo(jj).

cabello_oscuro(carlos).
cabello_oscuro(eva).
cabello_oscuro(luis).

le_gusta(jj,juan).
le_gusta(pepe,laura).
le_gusta(juan,eva).

actor_actriz(jj).
actor_actriz(pepe).
actor_actriz(eva).

ingeniero(julia).
ingeniero(karla).
ingeniero(luis).

cantante(lupe).
cantante(carlos).

amigo_de(lupe,carlos).
amigo_de(juan,eva).
amigo_de(pedro,julia).
amigo_de(karla,lupe).
amigo_de(eva,jj).
amigo_de(luis,carlos).
amigo_de(karla,eva).
amigo_de(jj,juan).
amigo_de(pepe,lupe).
amigo_de(pepe,jj).
amigo_de(pepe,juan).
amigo_de(laura,juan).
amigo_de(laura,jj).


%%rules

legustan(X):-
    le_gusta(X, Y),
    cabello_oscuro(Y).

legustanrubios(X):-
    le_gusta(X, Y),
    cabello_rubio(Y).

pelirrojas(X):-
    mujer(X),
    cabello_rojo(X).

amigoscantantes(X, Y):-
    amigo_de(X,Y),
    cantante(X),
    cantante(Y).

cantantecabellooscuroyamigodeuningeniero(X):-
    cantante(X),
    cabello_oscuro(X),
    amigo_de(Y,X),
    ingeniero(Y),
    write(Y).

amigodeeva(X):-
    amigo_de(X, eva),
    amigo_de(Y, X),
    actor_actriz(Y),
    cabello_rojo(Y),
    write(X), 
    write.

amigosencomun(X):-
    le_gusta(X,Y),
    amigo_de(Y, Z),
    amigo_de(X, Z).

amigoshibridos(X):-
    hombre(X),
    mujer(Y),
    amigo_de(X,Y),
    write(Y).

amigosdecantanteoscuro(X,Y):-
    amigo_de(X, Y),
    amigo_de(X, Z),
    amigo_de(Y, Z),
    cantante(Z),
    cabello_oscuro(Z),
    (hombre(X),
    hombre(Y);
    mujer(X),
    mujer(Y)).
