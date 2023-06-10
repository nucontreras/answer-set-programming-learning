#const k=3.
% dist/3 : Instance, pr´edicat dist(X,Y,M) liste de distances M entre les objets X et Y
cluster(1..k).
objet(X) :- dist(X,_,_).

1{att(C,X):cluster(C)}1 :- objet(X).
distance(X,Y,M,C) :- att(C,X), att(C,Y), X<Y, cluster(C), dist(X,Y,M).

diam(D) :- D = #max{distance(X,Y,M,C) : cluster(C) : dist(X,Y,M)=M}.