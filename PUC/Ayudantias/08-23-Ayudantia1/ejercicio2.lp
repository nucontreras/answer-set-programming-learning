% Nodos

nodo(a).
nodo(b).
nodo(c).
nodo(d).
nodo(e).
nodo(f). 

% Grafo 1

arco(a, b).
arco(c, b).
arco(b, d).
arco(d, e).
arco(f, e).
arco(a, d).

% Se define alcanzable(X, Y) tal que Y es alcanzable desde X.

alcanzable(X, Y) :- arco(X, Y).
alcanzable(X, Y) :- arco(X, Z), alcanzable(Z, Y).  % también se podría colocar arco(z,y).

% Colores

color(rojo).
color(verde).

color_arco(a, b, rojo).  % Haber puesto arco(X, Y) está de más.
color_arco(b, d, rojo).
color_arco(c, b, verde).
color_arco(d, e, verde).
color_arco(f, e, verde).
color_arco(a, d, verde).

% Se define alcanzable(X, Y, C) tal que Y es alcanzable desde X por aristas de color C.

alcanzable_color(X, Y, C) :- alcanzable(X, Y), color_arco(X, Y, C), color(C).
alcanzable_color(X, Y, C) :- alcanzable(X, Z), color_arco(X, Z, C), color(C), alcanzable_color(Z, Y, C).

% Se define alcanzable_solo_color(X, Y, C) tal que Y es alcanzable desde X por aristas sólo del color C y no de otro color.

alcanzable_solo_color(X, Y, C) :- alcanzable_color(X, Y, C), not alcanzable_color(X, Y, Cp), C!=Cp, color(C), color(Cp).

% Para que muestre el output como queremos.
% #show alcanzable_color/3.
#show alcanzable_solo_color/3.