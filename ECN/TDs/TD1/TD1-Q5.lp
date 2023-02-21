ville (brest; rennes; nantes; paris; lille).  % nom de différents villes
villep (brest, 140). villep (rennes, 200). villep (nantes, 300).  % associer à ville son nombre d'habitants
villep (lille, 230). villep (paris, 2300).
metro (rennes; paris; lille).  % indiquer qu'une ville dispose d'un métro

ville_choisie(X) :- ville(X), not metro(X).  % les villes sans métro

#maximize {Y@1,X : ville_choisie(X), villep(X,Y) }.  % choisir la ville avec plus d'habitants
#show ville_choisie/1.
%  Comment afficher seulement Nantes?
