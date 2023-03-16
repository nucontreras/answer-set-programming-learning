% SEND + MORE = MONEY

letter(s;e;n;d).
letter(m;o;r;e).
letter(m;o;n;e;y).

values(0..9).

x(L, N) :- letter(L), values(N).
% TO DO: add 0 restriction.


% chaude(V) :- t(V,T1), t(rennes,T2), T1>T2.

% :- #sum {N : x(L, N)} = .

#show x/2.