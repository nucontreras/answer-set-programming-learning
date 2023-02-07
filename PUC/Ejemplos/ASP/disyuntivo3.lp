nodo(a).
nodo(b).
nodo(c).

color(rojo).
color(azul).
color(verde).


% lo de abajo es lo mismo que
% 1{pintado(a,rojo);pintado(a,verde);pintado(a,azul)}1
3{pintado(a,C) : color(C)} 5.  % ojo que no lo separan con ;, lo separan con :
