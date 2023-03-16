adjacent(X,Y) :- edge(X,Y).
adjacent(X,Y) :- edge(Y,X).

number_of_edges(N/2) :- N = #count{1,X,Y : adjacent(X,Y)}.

degree(X,D) :- node(X), D= #count{1,Y : adjacent(X,Y)}.

#show degree/2.
#show number_of_edges/1.
