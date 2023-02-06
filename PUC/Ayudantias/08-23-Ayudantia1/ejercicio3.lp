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

% Grafo 1 con más aristas

arco(d, c).
arco(c, a).
arco(e, b).
arco(f, c).

% Se define alcanzable(X, Y) tal que Y es alcanzable desde X.

alcanzable(X, Y) :- arco(X, Y).
alcanzable(X, Y) :- arco(X, Z), alcanzable(Z, Y).

% Se define super_alcanzable(X) tal que X es alcanzable desde todos los nodos.
% Una forma más fácil de ver el problema es analizarlo desde el lado contrario.
% Así, se define no_super_alcanzable(X) tal que el nodo X no es alcanzable desde algún nodo Y (basta 1 sólo caso y ya sirve).
% Clave notar el cambio en el orden de las variables en not alcanzable(Y, X).

no_super_alcanzable(X) :- not alcanzable(Y, X), Y != X, nodo(X), nodo(Y).

% Así, definir super_alcanzable(X) queda de la siguiente manera:

super_alcanzable(X) :- not no_super_alcanzable(X), nodo(X).

% Para que muestre el output como queremos.
%#show no_super_alcanzable/1.
#show super_alcanzable/1.