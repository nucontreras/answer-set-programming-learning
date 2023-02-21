ville (brest ; rennes ; nantes ; paris ; lille).
villep (brest, 140). villep (rennes, 200). villep (nantes, 300).
villep (lille, 230). villep (paris, 2300).
metro (rennes ; paris ; lille).

ville_choisie(X) :- ville(X), not metro(X).

% #hide ville.
#maximize {Y@1,X : ville_choisie(X), villep(X,Y) }.
% #show ville_choisie/1.
