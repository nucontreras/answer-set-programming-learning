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
3{inscrire(C) : cours(C,_,_)}6.

% Question 2
% Le nombre de domaines éligibles, associées à tous les cours inscrits, doit être supérieur (stricte) à 10.

:- #count {C,D : inscrire(C), cours(C,D,_) } <= 10.  

% #show inscrire/1.

% Question 3
% parmi les n cours éligibles du domaine 2, il peut s’inscrire à tous ou à n - 1
:- 2 <= #count {C,0 : not inscrire(C), cours(C,2,_)}.  % I add a 0 in order to count the C's with the same value. 
% I count all courses that they aren't of domain 2. This quantity couldn't be greater than or equal to 2. 
% i.e, the quantity of courses that don't have domain 2 must be 1 or 0.

% #show inscrire/1.

% Question 4
% Le nombre total des cours qui appartiennent aux domaines 3 et 4 doit être inférieur stricte à 6.
:- 6 <= #count {C,0 : inscrire(C), cours(C,3,_); C,1 : inscrire(C), cours(C,4,_)}.
% ; = et

% #show inscrire/1.

% Question 5
% Prédicat heures(C,T) qui permettra d’obtenir les cours C associés aux heures T.
heures(C,T) :- cours(C,_,T).

% #show heures/2.

% Question 6
% La somme d’heures doit être comprise entre 18 et 20.
heures_max(20).
:- not M-2 <= #sum {H,C : inscrire(C), heures(C,H)} <= M, heures_max(M).

#show inscrire/1.

% Question 7
% Chaque cours inscrit doit représenter un investisement supérieur (stricte) à 2 heures par
% semaine et inférieur (stricte) à 6 heures par semaine.

% * Each instance of 'cours' with the same ID have the same numbers of hours.
:- #min {T,C : inscrire(C), heures(C,T)} <= 2.
:- 6 <= #max {T,C : inscrire(C), heures(C,T)}.

