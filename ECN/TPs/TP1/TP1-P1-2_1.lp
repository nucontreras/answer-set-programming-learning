% p(N, N*N + N + 41) :- N+1=1..11.
% p(N,N*N+N+41) :- N=-10..10, N>=0.  % Il fait la même chose que la ligne précédente

p(M,N) :- N=1..4, N=2*M.  % Qu'est que M? M est une variable de 1 jusqu'au infini?
