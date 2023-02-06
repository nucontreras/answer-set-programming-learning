% El objetivo del problema es resolver un sudoku dado.

% Definimos el tablero de manera general.

row(1..9).
col(1..9).
value(1..9).

% Tablero inicial field(X, Y, value), X es col e Y es row.
% Este es el tablero con las posiciones iniciales que entrega el juego.

field(2, 1, 7).
field(7, 1, 5).
field(9, 1, 2).

field(1, 2, 6).
field(5, 2, 3).
field(6, 2, 2).
field(8, 2, 9).

field(2, 3, 8).
field(4, 3, 6).
field(9, 3, 1).

field(2, 4, 5).
field(6, 4, 9).
field(9, 4, 8).

field(1, 5, 4).
field(4, 5, 1).
field(6, 5, 7).
field(8, 5, 2).

field(3, 6, 6).
field(6, 6, 3).
field(7, 6, 9).
field(9, 6, 5).

field(1, 7, 8).
field(3, 7, 1).
field(5, 7, 7).

field(2, 8, 3).
field(4, 8, 8).
field(7, 8, 6).

field(1, 9, 2).
field(4, 9, 5).
field(6, 9, 1).
field(7, 9, 4).

% Reglas

% Regla 1: completar los espacios con números entre 1 y 9.

1 { field(X, Y, N): value(N) } 1 :- col(X), row(Y). % Dado un N que solo varia entre los valores que puede tener.

% Regla 2: no se pueden repetir números en una misma fila.

:- field(X, Y, N), field(X1, Y, N), X != X1.  % este ayuda para mi tarea.

% Regla 3: no se pueden repetir números en una misma columna.

:- field(X, Y, N), field(X, Y1, N), Y != Y1.

% Regla 4: en un mismo cuadrante no puede haber números repetidos.

% Verificar por cuadrantes.
% Primero hay que definir si son del mismo cuadrante

value_quadrant_x(0..2).
value_quadrant_y(0..2).

same_quadrant(X, Y, X1, Y1) :- X > 3 * N, X <= 3 * (N + 1), X1 > 3 * N, X1 <= 3 * (N + 1), Y > 3 * N1
    , Y <= 3 * (N1 + 1), Y1 > 3 * N1, Y1 <= 3 * (N1 + 1)
    , value_quadrant_x(N), value_quadrant_y(N1), col(X), col(X1), row(Y), row(Y1).

% Luego, definimos la regla tal que se cumpla lo pedido

:- same_quadrant(X, Y, X1, Y1), X != X1, Y != Y1, field(X, Y, N), field(X1, Y1, N).

% Regla 5: la solución es única.

% Para mostrar el output
#show field/3.