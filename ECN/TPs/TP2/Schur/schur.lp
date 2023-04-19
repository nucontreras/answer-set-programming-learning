% clingo --const k=4 --const n=45 schur.lp -t4

% #const k = 2.
% #const n = 4.

{in(I, 1..k)} 1 :- I=1..n.  % I belongs to the first subset,

:- in(I,X), in(J,X), in(I+J,X).

#show in/2.