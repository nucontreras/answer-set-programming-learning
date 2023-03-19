% SEND + MORE = MONEY

letter(s;e;n;d).
letter(m;o;r;e).
letter(m;o;n;e;y).
values(0..9).

% All letters with differents values
{x(L,N) : values(N)} = 1 :- letter(L).

% Creating a equation system.
smm :- 
    x(s,S), x(e,E), x(n,N), x(d,D),
    x(m,M), x(o,O), x(r,R), x(y,Y), 
    M > 0, 
    S > 0,
    (S*1000 + E*100 + N*10 + D*1) + (M*1000 + O*100 + R*10 + E*1) == M*10000 + O*1000 + N*100 + E*10 + Y*1.

:- not smm.  % It must be true.

#show x/2.