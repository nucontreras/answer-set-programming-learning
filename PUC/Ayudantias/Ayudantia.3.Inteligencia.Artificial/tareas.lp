% El objetivo de este ejercicio es organizar las tareas que debe realizar
% una persona en un día.

% Se define el inicio y término del día.
#const inicio = 8.
#const termino = 20.

% Horas disponibles
horas(inicio..termino).

% Tareas a realizar
tareas(deporte; comer; comprar; trabajar; siesta).

% Duración de cada tarea
duracion(deporte, 3).
duracion(comer, 2).
duracion(comprar, 2).
duracion(trabajar, 2).
duracion(siesta, 1).

% Se define que tareas se hacen antes que otras
antes(comer, deporte).
antes(siesta, trabajar).

% Regla tal que cada tarea se haga una vez y tenga una hora de inicio y término
1 { tarea(T, I, F): horas(I), horas(F) } 1 :- tareas(T).

% Regla tal que la tarea dure lo que tiene que durar, no más, no menos.
:- tarea(T, I, F), duracion(T, D), I + D != F.

% Regla tal que las tareas terminen como máximo a la hora de término
:- tarea(T, I, F), F > termino.

% Regla para que dos tareas no se intercalen entre ellas.
% Se puede de varias formas:

2 { no_intercalar(T1, T2); no_intercalar(T2, T1) } 2 :- tarea(T1, I1, F1), tarea(T2, I2, F2), F1 <= I2.

% Esta también sirve:
% no_intercalar(T1, T2) :- tarea(T1, I1, F1), tarea(T2, I2, F2), F1 <= I2.
% no_intercalar(T1, T2) :- tarea(T1, I1, F1), tarea(T2, I2, F2), F2 <= I1.

% Y esta también:
% no_intercalar(T1, T2) :- tarea(T1, I1, F1), tarea(T2, I2, F2), F1 <= I2.
% no_intercalar(T1, T2) :- no_intercalar(T2, T1).

% Se pone <= ya que si no realmente habrian horas que no se usan. 
% Por ejemplo T1 de 14 a 15 y T2 de 16 a 17 si es que no fuera <=.

% En el segundo caso se definen esas 2 reglas y no sólo una ya que sino el programa
% es insatisfacible.

% Entonces, para obligar a que lo anterior se cumpla
:- tareas(T1), tareas(T2), T1 != T2, not no_intercalar(T1, T2).

% Regla para cumplir con el orden de qué tareas se hacen antes
:- antes(T1, T2), tarea(T1, I1, F1), tarea(T2, I2, F2), I2 < F1.

#show tarea/3.