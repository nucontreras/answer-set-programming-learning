% Código basado en problema sobre 'Bodegas'- Inteligencia Artificial - Segundo semestre 2019 - Puc

#const ymax = 5.
#const xmax = 5.

fila(1..ymax).
columna(1..xmax).

color(verde, 3, 1).
color(verde, 4, 1).
color(azul, 5, 1).
color(azul, 5, 3).
color(blanco, 5, 4).
color(blanco, 4, 5).
color(amarillo, 3, 3).
color(amarillo, 3, 4).
color(morado, 3, 5).
color(morado, 2, 4).


#const bound = 9.
time(1..bound).

1{cor(C)}1 :- color(C, Y, X).
1{on(C, Y, X, 0) : color(C, Y, X)}1 :- cor(C).

color_fin(C, Y, X) :- cor(C), color(C, Y, X), not on(C, Y, X, 0).

action(up).
action(down).
action(right).
action(left).

on(C, Y, X+1, T) :- exec(C, right, T-1), on(C, Y, X, T-1), time(T).
on(C, Y, X-1, T):- exec(C, left, T-1), on(C, Y, X, T-1), time(T).
on(C, Y-1, X, T) :- exec(C, up, T-1), on(C, Y, X, T-1), time(T).
on(C, Y+1, X, T) :- exec(C, down, T-1), on(C, Y, X, T-1), time(T).
on(C, Y, X, T) :- exec(C, wait, T-1), on(C, Y, X, T-1), time(T).

pintado(Y, X) :- on(C, Y, X, T), time(T).
pintado(Y, X) :- on(C, Y, X, 0).
color_pintado(Y, X, T) :- on(C, Y, X, T), time(T), not color_pintado(Y, X, To), To < T, time(To).
color_pintado(Y, X, 0) :- on(C, Y, X, 0).

1{exec(C, Ac, T-1) : action(Ac)}1 :- cor(C), time(T), not llegada(C, T-1).
exec(C, wait, T-1) :- cor(C), time(T), llegada(C, T-1).

camino(C, Y, X, Y2, X2) :- on(C, Y, X, T-1), on(C, Y2, X2, T), not llegada(C, T-1).

llegada(C, T) :- on(C, Y, X, T), color_fin(C, Y, X).
:- on(C, Y, X, T), not fila(Y).
:- on(C, Y, X, T), not columna(X).
:- on(C, Y, X, T), on(C2, Y, X, To), C2 != C.
:- on(C, Y, X, T), color_pintado(Y, X, To), T > To, not llegada(C, T), cor(C).
:- not llegada(C, bound), cor(C).
:- not pintado(Y, X), fila(Y), columna(X).

#show camino/5.
