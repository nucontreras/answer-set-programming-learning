% premier argument un numéro identifant le cours
% dernier argument le nombre d’heures par semaine du cours
% Le deuxième argument correspond
% au domain : 1 pour informatique théorique, 2 pour informatique pratique, 3 pour informatique
% technique et 4 pour informatique appliquée.

cours(1,1,5). cours(1,2,5).
cours(2,1,4). cours(2,2,4).
cours(3,1,6). cours(3,3,6).
cours(4,1,3). cours(4,3,3). cours(4,4,3).
cours(5,1,4). cours(5,4,4).
cours(6,2,2). cours(6,3,2).
cours(7,2,4). cours(7,3,4). cours(7,4,4).
cours(8,3,5). cours(8,4,5).

% Question 1 
% TO DO:  to do this with count or sum
% To see : https://stackoverflow.com/questions/34114375/count-aggregates-in-clingo
3{inscrire(C) : cours(C,_,_)}6.
% #show inscrire/1.

% Question 2
% result(P, S) :- S = #count{ I : getType(P,I)}, type(P).
n_domain(S) :- S = #count{ D : cours(C,D,_)}, inscrire(C).
% :- n_domain(S), S > 10.
#show n_domain/1.

% Question 3

% Question 4

% Question 5

% Question 6

% Question 7

% Question 8


% Examples to understand

% Example 1 #count
% addEmployee("tjb1998", "eva", "mcdowell", "ra", 55000, 20).
% addEmployee("tjb1987x", "ben", "xena", "cdt", 68000, q50).
% addEmployee("tjb2112", "ryoko", "hakubi", "ra", 63000, 60).
% addEmployee("tjb1987", "ben", "croshaw", "cdt", 60000, 90).
% addEmployee("tjb3300m", "amane", "mauna", "ma", 61000, 105).


% getType(P, X) :- addEmployee(X, _, _, P, _, _).

% type(P) :- addEmployee(_, _, _, P, _, _).

% result(P, S) :- S = #count{ I : getType(P,I)}, type(P).

% #show result/2.

% Example 2 #sum
% food_a(bagel, 245).
% food_a(sandwich, 200).
% food_a(salad,300).
% food(bagel).
% food(sandwich).
% food(salad).

% % allow any combination of foods to be selected
% { selected(P) } :- food(P).
% % sum calories on selected foods
% total(S) :- S = #sum{ I : food_a(P,I), selected(P) }.
% % limit total calories
% :- total(S), S>=500.

% #show selected/1.
% #show total/1.

% Example 3