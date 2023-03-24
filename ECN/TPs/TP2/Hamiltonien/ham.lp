% Run: clingo ham.lp graph.lp 0 

% Génerer.
% Chaque sommet en C est adjacent à exactement deux autres sommets.
{in(X,Y) : edge(X,Y)} = 1 :- node(X).  % All possible paths from X
{in(X,Y) : edge(X,Y)} = 1 :- node(Y).  % All possible paths to Y

% Définir
% Écrire une règle pour introduire la notion être accesible pour un sommet du graphe.
accesible(Y) :- in(X,Y), accesible(X).

% Tester
% Chaque sommet en C est accesible par un sommet donné u0.
#const u0 = 3.
accesible(Y) :- in(u0,Y).
:- node(Y), not accesible(Y).

% Affichage de la sortie.
#show in/2.