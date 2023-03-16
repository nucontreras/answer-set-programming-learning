% A ----- B
% |\     /|
% | E---F |
% | |  /| |
% | | / | |
% | H---G |
% |/     \|
% D-------C



node(a;b;c;d;e;f;g;h).
edge(a,b; a,e; a,d). edge(b,c; b,f). edge(c,d; c,g).
edge(d,h). edge(e,f). edge(f,g; f,h).
edge(g,h). edge(h,e).
