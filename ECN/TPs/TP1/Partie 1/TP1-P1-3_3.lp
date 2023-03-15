parent(lucie,robert). parent(robert,mattis). parent(robert,anna).

ancetre(X,Y) :- parent(X,Y).
ancetre(X,Z) :- ancetre(X,Y), ancetre(Y,Z).

#show ancetre/2.
