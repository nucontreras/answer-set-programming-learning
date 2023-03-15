enfant(Y,X) :- parent(X,Y).  % Y est l'enfant de X si X est parent de Y.
parent(lucie,robert; robert,mattis; robert,anna).

#show enfant/2.
