% Ejemplo oscuridad.

%oscuro :- corte_de_luz.
%oscuro :- apago_luz.
%apago_luz.
%corte_de_luz.

% Ejemplo con variables.

p :- r.
r :- s.
s.

t :- s,r.

u :- v.
v :- u.
v.
