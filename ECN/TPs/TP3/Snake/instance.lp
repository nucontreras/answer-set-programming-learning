% grille partiellement remplie de chiffres de 3 x 3

given(1,1,6).
given(2,2,2).
given(2,3,8).
given(3,1,1).


#const n=3.
% R: row
% C: col

% Creation of the puzzle
% initially every square of the grid is filled with a number between 1 and n*n.
1{puzzle(R,C,1..n*n)}1 :- R=1..n, C=1..n.

R1 = R2 :- puzzle(R1,_, X), puzzle(R2,_, X).  % the same row
C1 = C2 :- puzzle(_, C1, X), puzzle(_, C2, X).  % the same col
% different squares are filled with different numbers.

(R1 - R2) ** 2 + (C1 - C2) ** 2 <= 2 :- puzzle(R1, C1, X), puzzle(R2, C2, X + 1).
% consecutive numbers connect horizontally, vertically, or diagonally.

:- given(R,C, X ), not puzzle(R,C, X ).
% achieved : given/3 is a subset of filled/3.

#show puzzle/3.