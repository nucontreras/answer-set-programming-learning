p(X, Y, Z) :- p(X, Y, U), h(X, Y), t(Z, U, r).
h(X, U) :- p(X, Y, U), h(X, Y), t(Z, U, r).
p(0, 0, b).
h(0, 0).
t(a, b, r).
