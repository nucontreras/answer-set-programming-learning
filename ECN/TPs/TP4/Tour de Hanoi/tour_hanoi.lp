% Prédicats
tour(a;b;c).
disque(1..4).
conf_init(1..4,a).
conf_objectif(1..4,c).
deplacements(15).


% Gènerer
conf_actual(D,T,0) :- conf_init(D,T).

% check goal situation in n = 15
ngoal(N) :- conf_actual(D,T,N), not conf_objectif(D,T).
:- ngoal(N), deplacements(N).

{deplacer(D,T,1..N) : disque(D), tour(T)} <= N :- deplacements(N).
% % Init conditions : % si on peut passer de la configuration initiale d'ecrite par le prédicat conf init à la configuration finale (conf objectif)
% :- deplacer(1..4,a, 1).
% :- conf_objectif(D,T), not deplacer(D,T,_).
% % TODO: agregar un predicado con la conf_actual

% % {deplacer(D,T,M) : M=1} = 1:- conf_init(D, T).
% % :- conf_init(D, T), not deplacer(D,T,1).

% % Définir
% % on ne peut déplacer plus d’un disque à la fois

% :- deplacer(D,T,M), deplacer(D1,T1,M), D != D1, T != T1.
% % :- deplacer(D,T,M), deplacer(D,T1,M), T != T1.

% % not return inmediately.

% :- deplacer(D,T2,M + 2), deplacer(D,T0,M), T2 == T0.

% % on ne peut placer un disque que sur un autre disque plus grand que lui ou sur un emplacement vide.

% :- deplacer(D,T,M + 1), deplacer(D0,T,M), D <= D0.

% % N continue
% time(1..N) :- deplacements(N).
% % :- deplacer(_,_, N), not deplacer(_,_, N+1), N=2...D, deplacements(D).
% % deplacer(_,_,N+1) :- deplacer(_,_,N).
% :- deplacer(_,_,T+1), not deplacer(_,_,T), time(T), time(T + 1).

% % Tester


#show deplacer/3.
% #show conf_actual/2.