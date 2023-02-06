star(1,5). cost(1,170). star(2,4). cost(2,140). star(3,3). cost(3,90).
star(4,3). cost(4,75). star(5,2). cost(5,60).
main_street(4).

{hotel(1..5) }=1.
noisy :- hotel(X), main_street(X).

#minimize{ 1@3, noisy }.
% #minimize{ Y/Z@2,X : hotel(X), cost(X,Y), star(X,Z) }.
% #maximize{ Y@1,X : hotel(X), star(X,Y) }.

#show hotel/1.
#show main_street/1.
#show noisy/0.

% je n'ai pas bien compris le @ dans le minimize
