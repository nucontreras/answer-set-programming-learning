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

% Grafo 2

arco(d, c).

% Grafo 3

% arco(c, a).
% arco(a, f).
% arco(f, d).


% Vamos a definir alcanzable_k(X, Y, K) tal que el nodo Y es alcanzable desde X en K pasos.

alcanzable_k(X, Y, 1) :- arco(X, Y).
alcanzable_k(X, Y, K + 1) :- arco(X, Z), alcanzable_k(Z, Y, K).

% Lo anterior funciona si es que el grafo no tiene ciclos.

% En el caso de que el grafo tenga ciclos, el grounding que haría clingo caería en un loop infinito.

% Ahora, se definirá alcanzable_sin(X, Y, U) tal que el nodo Y es alcanzable desde X sin pasar por U.

alcanzable_sin(X, Y, Z) :- arco(X, Y), X != Z, Y != Z, nodo(Z).

% Se agrega X != Z, Y != Z ya que sino existiría el caso alcanzable_sin(b,a,a) por ejemplo.

alcanzable_sin(X, Y, Z) :- arco(X, U), X != Z, alcanzable_sin(U, Y, Z), nodo(U).
alcanzable_sin(X, Y, Z) :- arco(U, Y), U!=Z, alcanzable_sin(X, U, Z), node(Z).

% Se agrega X != Z en la segunda definición ya que sino puede ocurrir alcanzable_sin(a,c,a).

% La idea del ejemplo anterior es comprender el uso del operador != .

% Para que muestre el output como queremos.
% #show alcanzable_k/3.
#show alcanzable_sin/3.