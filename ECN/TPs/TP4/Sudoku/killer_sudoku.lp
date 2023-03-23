% Run: clingo killer_sudoku.lp instance_sudoku.lp instance_sudoku_killer_1.lp 0

#const n = 9.

row(1..n).
col(1..n).
value(1..n).

% Remplir une grille de taille 9 x 9
1 { state(X, Y, Z): value(Z) } 1 :- col(X), row(Y).

% Une série de chiffres tous différents, qui ne se trouvent jamais plus d’une fois sur une même ligne et dans une même colonne
:- state(X, Y, Z), state(X1, Y, Z), X != X1.  % if there is a state with the same value in the same col, it has to be in the same row.
:- state(X, Y, Z), state(X, Y1, Z), Y != Y1.  % if there is a state with the same value in the same row, it has to be in the same col.


% Les chiffres ne se trouvent jamais plus d’une fois sur une même (parmi les 9 possibles) sous-grille de taille 3 x 3.
value_quadrant_x(0..2).
value_quadrant_y(0..2).

same_quadrant(X, Y, X1, Y1) :- X > 3 * Z, X <= 3 * (Z + 1), X1 > 3 * Z, X1 <= 3 * (Z + 1), Y > 3 * Z1
    , Y <= 3 * (Z1 + 1), Y1 > 3 * Z1, Y1 <= 3 * (Z1 + 1)
    , value_quadrant_x(Z), value_quadrant_y(Z1), col(X), col(X1), row(Y), row(Y1).

:- same_quadrant(X, Y, X1, Y1), X != X1, Y != Y1, state(X, Y, Z), state(X1, Y1, Z).

zone_quant(I,Q) :- Q = #count{1,X,Y : zone(X, Y, I)}, zone_sum(I,_).  % number of instances of each zone
{field(X, Y, Z, I) : state(X, Y, Z)} = Q :- zone_quant(I, Q).

:- zone(X,Y,I), not field(X, Y, _, I).

:- #sum {Z,X,Y :field(X,Y,Z,I)} != S, zone_sum(I,S).

% #show zone_quant/2.
% #show field/4.
#show state/3.