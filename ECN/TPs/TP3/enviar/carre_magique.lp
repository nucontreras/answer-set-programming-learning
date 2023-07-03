% Carré magique

% la somme des nombres dans chaque rangée,
% chaque colonne, et chacune des deux diagonales est égale à la même "constante magique".


% Constants
#const n = 3.  % size
#const magic_c = (n ** 3 + n) / 2.

% Creation of the puzzle as in snake problem
{magic(R,C,1..n*n)} = 1 :- R=1..n, C=1..n.

% Each value is given to a single square (like snake problem)
:- magic(R1,_, X), magic(R2,_, X), R1 != R2 .
:- magic(_, C1, X), magic(_, C2, X), C1 != C2 .

% The sum of each row is magic_c.
:- #sum {X : magic(R,_, X)} != magic_c, R=1..n.

% The sum of each col is magic_c.
:- #sum {X : magic(_,C, X)} != magic_c, C=1..n.

% The sum of each diagonal is magic_c.
:- #sum {X : magic(R,R, X)} != magic_c.
:- #sum {X : magic(R, n +1 -R, X)} != magic_c.

#show magic/3.