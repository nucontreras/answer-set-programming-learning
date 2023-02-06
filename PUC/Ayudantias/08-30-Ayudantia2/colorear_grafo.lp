% El objetivo del problema es colorear los nodos de un grafo tal que dos nodos conectados
% por un arco no tengan el mismo color.

% Definimos los nodos

nodo(1..6).

% Los arcos
arco(1,2). 
arco(1,3). 
arco(1,5). 
arco(2,3). 
arco(2,4). 
arco(2,6). 
arco(3,4). 
arco(3,5). 
arco(4,5).
arco(5,6).

% Colores

color(rojo).
color(verde).
color(azul).

% Definimos la regla tal que cada nodo tenga un color cumpliendo lo pedido.

1 { nodo_color(N, C): color(C) } 1 :- nodo(N).

% Y finalmente la regla que nos obliga a que si hay un arco entre los nodos estos no sean del mismo color.

:- nodo_color(X, C), nodo_color(Y, C), arco(X, Y).  % esta es una restricción. 
% Hace que no se creen elementos en el conjunto tal que no cumplen con las reglas dadas.

% Para mostrar bien el output.  
#show nodo_color/2.