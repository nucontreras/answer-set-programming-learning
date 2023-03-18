% Nodes
node(1..6).

% (Directed) Edges
edge(1,2; 1,3; 1,4).
edge(2,4; 2,5; 2,6).
edge(3,1; 3,4; 3,5).
edge(4,1; 4,2).
edge(5,3; 5,4; 5,6).
edge(6,2; 6,3; 6,5).

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