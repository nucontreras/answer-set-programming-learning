% A ----- B
% |\     /|
% | E---F |
% | |  /| |
% | | / | |
% | H---G |
% |/     \|
% D-------C



node(a;b;c;d;e;f;g;h).
edge(a,b; a,e; a,d). edge(b,c; b,f). edge(c,d; c,g).
edge(d,h). edge(e,f). edge(f,g; f,h).
edge(g,h). edge(h,e).


adjacent(X,Y) :- edge(X,Y).
adjacent(X,Y) :- edge(Y,X).

number_of_edges(N/2) :- N = #count{1,X,Y : adjacent(X,Y)}.

degree(X,D) :- node(X), D= #count{1,Y : adjacent(X,Y)}.

#show degree/2.
#show number_of_edges/1.
