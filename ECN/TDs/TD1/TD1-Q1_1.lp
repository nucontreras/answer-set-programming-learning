fly(X) :- bird(X), not ab(X).
bird(X) :- penguin(X).
ab(X) :- penguin(X).
penguin(X).
