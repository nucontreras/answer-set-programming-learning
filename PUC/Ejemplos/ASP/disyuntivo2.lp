% Se introducen conjuntos.

%p :- r.
%r.

% abajo pedimos el modelo intersectado con el
% conjunto {u,t,s} tenga cardinalidad mayor o igual a 1
% y menor o igual a 2

%2{u;t;s}1 :- p.

% abajo pedimos el modelo intersectado con el
% conjunto {y1,y2,y3,y4} tenga cardinalidad 1
%4{y1;y2;y3;y4}4.


% abajo pedimos el modelo intersectado con el
% conjunto {y1,y2,y3,y4} tenga cardinalidad mayor o igual a 3
% y menor o igual a 3
3{y1;y2;y3;y4}5. % Con ; escoge al menos n entre los elementos de los cuales a lo más m son verdaderos.


% El primer número es 'al menos m literales' y el último valor es 'a lo más m' deben ser ciertos.'