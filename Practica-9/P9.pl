transporte(roma,20000).
transporte(londres,25000).
transporte(tunez,15000).
alojamiento(hotel,roma,2500).
alojamiento(hotel,londes,1500).
alojamiento(hotel,tunez,1000).
alojamiento(hostal,roma,1500).
alojamiento(hostal,londes,1000).
alojamiento(hostal,tunez,800).
alojamiento(camping,roma,1000).
alojamiento(camping,londres,500).
alojamiento(camping,tunez,500).
viaje(W,X,Y,Z):-transporte(W,A),
alojamiento(Y,W,C),
B is C*X,
Z is A+B.

tiene_sintoma(alicia,cansancio).
sintoma_de(fiebre,gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).
elimina(vitaminas,cansancio).
elimina(aspirinas,fiebre).
elimina(jarabe,tos).
enfermo_de(manuel,gripe).
enfermo_de(X,Y):-tiene_sintoma(X,Z),sintoma_de(Z,Y). 
alivia(X,Y):-elimina(X,A),sintoma_de(A,Y).
recetar_a(X,Y):-enfermo_de(Y,A),alivia(X,A).

horoscopo(aries,21,3,21,4).
horoscopo(tauro,21,4,21,5).
horoscopo(geminis,21,5,21,6).
horoscopo(cancer,21,6,21,7).
horoscopo(leo,21,7,21,8).
horoscopo(virgo,21,8,21,9).
horoscopo(libra,21,9,21,10).
horoscopo(escorpio,21,10,21,11).
horoscopo(sagitario,21,11,21,12).
horoscopo(capricornio,21,12,21,1).
horoscopo(acuario,21,1,21,2).
horoscopo(piscis,21,2,21,3).
mes(1,31,1).
mes(1,28,2).
mes(1,30,3).
mes(1,31,4).
mes(1,30,5).
mes(1,31,6).
mes(1,30,7).
mes(1,31,8).
mes(1,30,9).
mes(1,31,10).
mes(1,30,11).
mes(1,31,12).
signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2), 
mes(FD, LD, Mes),
( (Mes=M1,Dia>=D1, FD=<Dia, LD>=Dia) ; (Mes=M2,Dia=<D2, FD=<Dia, LD>=Dia) ).

