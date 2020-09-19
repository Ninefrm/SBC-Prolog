% clausuas % 
%relaciones (más de un argumento) 
amigo(pedro, antonio). 
amigo(pedro, flora). 
amigo(pedro, juan). 
amigo(pedro, vicente). 
amigo(luis, felipe). 
amigo(luis, maria). 
amigo(luis, vicente). 
amigo(carlos, paloma). 
amigo(carlos, lucia). 
amigo(carlos, vicente). 
amigo(carlos, juan).
amigo(fernando, eva). 
amigo(fernando, pedro). 

%propiedad(un argumento) 
millonario(pedro). 
millonario(antonio). 
millonario(flora). 
millonario(felipe). 
millonario(lucia). 

mexicano(eva). 
mexicano(pedro).
mexicano(luis). 
mexicano(flora). 
mexicano(felipe).
mexicano(lucia). 

soltero(pedro).
soltero(flora). 
soltero(eva). 
soltero(luis). 
casado(felipe,maria). 
casado(carlos,lucia). 

hermano(carlos,maria). 
hermano(pedro,luis). 

padre_de(carlos, fernando). 
padre_de(antonio, maria). 
padre_de(antonio, carlos).

%%rules

padremillonario(X) :-
    padre_de(Y, X),       
    millonario(Y).

mexicanomillonariosoltero(X) :-
    millonario(X),
    soltero(X),
    mexicano(X).

mexicanomillonariocasado(X, Y) :-
    millonario(X),
    casado(X, Y),
    mexicano(X).

amigodelamigo(X) :-
    amigo(Y,X),
    amigo(Y, Z),
    soltero(Z),
    millonario(Z).

millonaria(X) :-
    casado(?, X),
    millonario(X).

cunadomillonario(X) :-
    casado(X, Y),
    hermano(Y, Z),
    millonario(Z).    

amigosmillonarios(X):-
    amigo(X,Y),
    write(Y),
    millonario(X),
    millonario(Y).

nueramillonaria(X) :-
    padre_de(X, Y),
    casado(Y, Z),
    millonario(Z).