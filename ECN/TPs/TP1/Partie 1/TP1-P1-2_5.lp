#const c=rennes.

t(rennes,4). t(nantes,5). t(marseille,8). t(paris,2).

chaude(C) :- t(C,T1), t(c,T2), T1>T2.

#show chaude/1.
