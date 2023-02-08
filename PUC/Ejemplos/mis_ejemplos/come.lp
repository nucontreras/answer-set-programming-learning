
come_carne(mimo).
come_vegetales(mimo).

omnivoro(X) :- come_carne(X), come_vegetales(X).
