%Donnees : un graphe avec une coloration donne
signe(down;up).
vertex(rpsP;fnr;arcA;rpmC).
observedV(rpsP,up).

observedE(fnr,rpsP,down). observedE(fnr,rpmC,up).
observedE(arcA,fnr,down). observedE(arcA,rpmC,down).

