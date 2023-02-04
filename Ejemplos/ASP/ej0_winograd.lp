
% el bolso es un contenedor
% X es un contenedor si X es un bolso
% Si X es un bolso, entonces X es un contenedor

es_contenedor(X) :- bolso(X).  % :- es 'entonces' al revés. % Se lee X es un contenedor si X es un bolso.

bolso(b1).  % b1 es un bolso.
bolso(b2).  % b2 es un bolso.

adorno(llavero).  % llavero es un adorno.
adorno(sandwich).  % sandwich es un adorno.

mas_chico(sandwich, b2).  % sandwich es más chico que el bolso b2. 
mas_chico(llavero, b1).  % llavero es más chico que el bolso b1.

% X cabe en Y si X es mas chico que Y e Y es un 'contenedor'.
cabe(X,Y) :- mas_chico(X,Y), es_contenedor(Y).