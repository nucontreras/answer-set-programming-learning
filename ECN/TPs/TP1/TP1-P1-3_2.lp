parent(lucie,robert). parent(robert,mattis). parent(robert,anna).

% X est sibling de Y si Z est le parent de X et Y.
sibling(X,Y) :- parent(Z,X), parent(Z,Y).

#show sibling/2.
