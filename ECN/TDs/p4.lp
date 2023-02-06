people(ms_Scarlet;colonel_Mustard). % Créer deux instances de la même classe.
poc(kitchen; hall; diningroom).
weapon(revolver;candlestick).

% Specifier qu'il a un seul assasin, avec une seule arme et dans un seul endroit
% Par iteration on choisi une seule instance pour chaque classe.
1{murderer(X):people(X)}1.
1{weapon_of_crime(Y):weapon(Y)}1.
1{place_of_crime(W):poc(W)}1.

% Declarer ce qu'on deduit de nos cartes
:- place_of_crime(kitchen).  % Il ne peut pas être kitchen
place_of_crime(hall) :- murderer(colonel_Mustard), not weapon_of_crime(revolver).
weapon_of_crime(candlestick).  % L'arme est candlestick

#show place_of_crime/1.
#show weapon_of_crime/1.
#show murderer/1.
