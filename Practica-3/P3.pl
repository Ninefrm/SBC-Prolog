%menu
entrada(paella).
entrada(gazpacho).
entrada(consome).
carne(filete_de_cerdo).
carne(pollo_asado).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(nueces_con_miel).
postre(naranja).
%valor calorico de una racion
calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filete_de_cerdo, 400).
calorias(pollo_asado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces_con_miel, 500).
calorias(naranja, 50).
%****************Reglas*******************
%plato_principal(P) P es un plato principal si es carne
plato_principal(P):- carne(P).
plato_principal(P):- pescado(P).
comida_completa(Entrada, Principal, Postre):-entrada(Entrada),plato_principal(Principal), postre(Postre).

postres(P):-
    postre(P).

