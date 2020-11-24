dynamic papa/1, esPadre/1, hijo/2.
%dinamicos%
esPadre(juan).
esPadre(jose).

hijo(juan, jose).
papa(X):-esPadre(X).