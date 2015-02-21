function [tau, next] = next_reaction (x,prop)

w = prop(x);
    
    %Frekvens
    beta = sum(w);
    
    %Inter event time
    u1 = rand;
    tau = -log(u1)/beta;

%Nästa rxn
    w_norm = w./beta; %Normalisering av w
    u2 = rand; %Likformigt slumptal
    
    % find corresponding reaction
    jfr = [0;cumsum(w_norm)];
    g = u2 < jfr;
    j = find(g);
    
    next = j(1) - 1;