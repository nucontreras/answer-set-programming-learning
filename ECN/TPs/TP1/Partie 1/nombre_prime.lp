#const n = 10.

compose(N) :- N=1..n, I=2..N-1, N\I = 0.
prime(N) :- N=2..n, not compose(N).

#show prime/1.