parent(lucie,robert). parent(robert,mattis). parent(robert,anna).

% X est grandparent de  si X est parent de Y et Y et parent de Z.
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).

#show grandparent/2.
