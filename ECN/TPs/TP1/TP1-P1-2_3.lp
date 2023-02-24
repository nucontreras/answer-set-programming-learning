% Expected output: p(0,1; 1,-1; 2,1; 3,-1; 4,1).
% Solution:
p(N, (-1)**N) :- N=0..4.

% Expected output: p(1,1) p(2,1) p(2,2) p(3,1) p(3,2) p(3,3) p(4,1) p(4,2) p(4,3) p(4,4).
