% La idea de este problema es resolver la sucesión de fibonacci

#const n = 20.
numero(1..n).

% f(0) = 0
fibonacci(0, 1).
% f(1) = 1
fibonacci(1, 1).
% f(n) = f(n - 1) + f(n - 2)
fibonacci(N, N1 + N2) :- fibonacci(N - 1, N1), fibonacci(N - 2, N2), N > 1, numero(N).

% Para buscar
buscar(N) :- fibonacci(N, N1), N1 = 21.

#show fibonacci/2.
% #show buscar/1.