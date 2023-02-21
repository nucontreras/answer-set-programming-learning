cout(taxi1,client1,10). cout(taxi2,client1,8). cout(taxi3,client1,12).
cout(taxi1,client2,11).
cout(taxi2,client2,15). cout(taxi3,client2,13). cout(taxi1,client3,7).
cout(taxi2,client3,7). cout(taxi3,client3,10).

% Identier les taxis et les clients
taxi(X) :- cout(X,_,_).
client(Y) :- cout(_,Y,_).

% Un taxi par client et un client par taxi
1{sol(T,C):client(C)}1:- taxi(T).
1{sol(T,C):taxi(T)}1:- client(C).

% {sol(T,C):taxi(T),client(C)}=3.
% :- sol(T,C1), sol(T,C2).
% :- sol(T1,C), sol(T2,C).

% #show sol/2.

% Minimiser le cout d’affectation
#minimize {Z, T, C, sol(T, C):cout(T, C, Z)}.
#show sol/2.
% minimize prende la première valeur 
