% Run: 
% 1) clingo ham.lp min.lp costs.lp graph.lp
% 2) clingo ham.lp min.lp costs.lp graph.lp --opt-bound=k --opt-mode=enum 0

% Optimize
#minimize {C,X,Y : in(X,Y), cost(X,Y,C)}.