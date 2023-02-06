on(a,b).  % fait : objets constantes a,b - relation on
on(b,c).  % fait dans la BC

above(X,Y) :- on(X,Y).  % déduction: variables X, Y
above(X,Y) :- on(X,Z), above(Z,Y).  % déduction
