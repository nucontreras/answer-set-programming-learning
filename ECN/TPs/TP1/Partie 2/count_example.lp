% addEmployee("tjb1998", "eva", "mcdowell", "ra", 55000, 20).
% addEmployee("tjb1987x", "ben", "xena", "cdt", 68000, q50).
% addEmployee("tjb2112", "ryoko", "hakubi", "ra", 63000, 60).
% addEmployee("tjb1987", "ben", "croshaw", "cdt", 60000, 90).
% addEmployee("tjb3300m", "amane", "mauna", "ma", 61000, 105).


% getType(P, X) :- addEmployee(X, _, _, P, _, _).

% type(P) :- addEmployee(_, _, _, P, _, _).

% result(P, S) :- S = #count{ I : getType(P,I)}, type(P).

% #show result/2.