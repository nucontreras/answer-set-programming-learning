% To run with this command: clingo quadratic.lp 0

% If we don't add the '#const' constants in the code, we must run the code with
% the command: clingo -c a=1 -c b=1 -c c=41 -c n=10 quadratic.lp

#const a=1.
#const b=1.
#const c=41.
#const n=10.

p(N, a * N * N + b * N + c) :- N = 0..n.
