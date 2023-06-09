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


% Exercice 1.1
#const n = 3.

% Define all directions for adjacent vertices
adjacent(X,Y) :- edge(X,Y).
adjacent(X,Y) :- edge(Y,X).

% Creation of a complement graph.
% https://stackoverflow.com/questions/41191313/asp-clingo-splitting-graph-to-n-cliques
cedge(X,Y):- not adjacent(X,Y); node(X); node(Y); X<Y.

% Create a set with n elements of G
n {clique(X) : node(X)} n. 
:- clique(X), clique(Y), cedge(X, Y).

#show clique/1.