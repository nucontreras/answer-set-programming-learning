% La idea de este problema es resolver un paseo familiar tal que:
% Si va el papá, la mamá también.
% Alguno de sus dos hijos, Pedro o Juan, debe ir.
% Si va el papá, su hijo Diego no va, y viceversa.
% Si va Diego, va Juan, sino, no van.
% Si va Pedro, Juan y el papá también van.

% Personas
personas(papa; mama; pedro; juan; diego).

% Se quedan o van
valor(va; queda).

% Una persona puede tener sólo un valor
1 { resultado(P, V): valor(V) } 1 :- personas(P).

% Si va el papá, la mamá también.
resultado(mama, va) :- resultado(papa, va).

% Alguno de sus dos hijos, Pedro o Juan, debe ir.
1 { resultado(pedro, va); resultado(juan, va) }.

% Si va el papá, su hijo Diego no va, y viceversa.
{ resultado(papa, va); resultado(diego, va) } 1.

% Si va Diego, va Juan, sino, no van.
:- resultado(diego, V), resultado(juan, V1), V != V1.

% Si va Pedro, Juan y el papá también van.
2 { resultado(papa, va); resultado(juan, va) } 2 :- resultado(pedro, va).

#show resultado/2.

