#const k=3.
block(a). block(b). block(c). block(d).
object(X) :- block(X). object(s). time(0..k-1).
triple(X,Y,Z) :- block(X), object(Y;Z), X!=Y, X!=Z, Y!=Z.
{move(X,Y,Z,T) : triple(X,Y,Z)}1 :- time(T).