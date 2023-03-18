% Number of queens
#const n=14.

% Size of the board
row(1..n).
col(1..n).

% Place queens in all board cells
{queen(I,J) : row(I), col(J)}.

% restriction of n queens
:- not { queen(I,J) } = n.  

% queens must not be in the same col.
:- queen(I,J), queen(I,JJ), J != JJ.  % Why is != instead of == if is a constraint?

% queens must not be in the same row.
:- queen(I,J), queen(II,J), I != II.

% queens must not be in the same diagonal.
:- queen(I,J), queen(II,JJ), (I,J) != (II,JJ), I-J == II-JJ.
:- queen(I,J), queen(II,JJ), (I,J) != (II,JJ), I+J == II+JJ.

% (a) Il y a une dame dans la position (1; 1)
% :- not queen(1,1).

% (b) Il n’y a pas des dames dans le carré de 4 x 4 au mileu du damier

:- queen(4,4).

#show queen/2.