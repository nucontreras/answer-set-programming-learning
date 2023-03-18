{labelV(I,S):signe(S)} = 1 :- vertex(I).
labelV(I,S) :- observedV(I,S).

{receive(I,S):signe(S)} = 1 :- vertex(I).

receive(I,up) :- observedE(J,I,S), labelV(J,S).
receive(I,down) :- observedE(J,I,S), labelV(J,T), S!=T.

:- labelV(I,S), not receive(I,S).

#show receive/2.
