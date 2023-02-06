% El objetivo del problema de las N reinas es posicionar N reinas en un tablero
% de N x N de tal manera que ninguna de las reinas pueda atacar a otra.

% Para ejecutar el programa, clingo n_queens.lp
% Para ejecutar el programa y ver todos los modelos, clingo n_queens.lp -n 0

% Definimos n como el número de reinas. 

#const n=8.

% Se define el tablero.

row(1..n).
col(1..n).

% Creamos una regla tal que se posicionen cualquier número de reinas en el tablero.

{ queen(X, Y) : col(X), row(Y) }.

% Ahora, hay que restringir a que sean N reinas, no más, no menos.

n_queen :- n { queen(X, Y) } n.
:- not n_queen.  % Esto no lo entiendo.

% :- not n { queen(X, Y) } n. También se pudo haber definido así.

% Si ejecutamos el programa, veremos que están las n reinas, pero que están
% en posiciones tal que si se pueden atacar entre ellas.

% Entonces, para lograr que no se ubiquen en posiciones donde se puedan atacar entre ellas
% hay que definir reglas tal que no se puedan atacar de forma horizontal, vertical y diagonal.

% Horizontal: Mismo Y, distinto X.

horizontal(Y) :- queen(X, Y), queen(X1, Y), X != X1.
:- horizontal(Y), row(Y).

% :- queen(X1, Y), queen(X2, Y), X1 != X2. También se pudo haber definido así.

% Vertical: Mismo X, distinto Y.

vertical(X) :- queen(X, Y), queen(X, Y1), Y != Y1.
:- vertical(X), col(X).

% :- queen(X, Y1), queen(X, Y2), Y1 != Y2. También se pudo haber definido así.

% Diagonal que baja hacia la derecha

right_diagonal(Z) :- queen(X, Y), queen(X1, Y1), X1 == X + Z, Y1 == Y - Z, col(Z), row(Z).
:- right_diagonal(Z), col(Z), row(Z).

% :- queen(X, Y), queen(X1, Y1), (X, Y) != (X1, Y1), X + Y == X1 + Y1. % También se pudo haber definido así.

% Diagonal que baja hacia la izquierda

left_diagonal(Z) :- queen(X, Y), queen(X1, Y1), X1 == X - Z, Y1 == Y - Z, col(Z), row(Z).
:- left_diagonal(Z), col(Z), row(Z).

% :- queen(X, Y), queen(X1, Y1), (X, Y) != (X1, Y1), X - Y == X1 - Y1. % También se pudo haber definido así.

% Para mostrar bien el output.
#show queen/2.