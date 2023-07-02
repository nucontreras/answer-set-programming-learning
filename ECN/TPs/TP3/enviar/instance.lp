% grille partiellement remplie de chiffres de 3 x 3

given(1,1,6).
given(2,2,2).
given(2,3,8).
given(3,1,1).

% Remplir la grille de sorte que les numéros consécutifs se connectent (comme
% un serpent) verticalement, horizontalement ou en diagonale.


% Size of the puzzle
#const n=3.
% R: row
% C: col

% Creation of the puzzle n x n
% The board is filled with numbers from 1 to n * n. This last part is just for creating the instance.
{puzzle(R,C,1..n*n)} = 1 :- R=1..n, C=1..n.

% Each value is given to a single square
:- puzzle(R1,_, X), puzzle(R2,_, X), R1 != R2.
:- puzzle(_, C1, X), puzzle(_, C2, X), C1 != C2.

% Connections: horizontally, vertically, or diagonally.
% Pitagoras
(R1 - R2) ** 2 + (C1 - C2) ** 2 <= 2 :- puzzle(R1, C1, X), puzzle(R2, C2, X+1).

% Add init positions to the puzzle.
:- given(R,C,X), not puzzle(R,C,X).

#show puzzle/3.