%Kommandofil för den stokastiska simuleringen av den cirkadiska rytmen.

clear all;
close all;

%Parametrar (alla har enhet h^(-1), utom gammavariablerna som 
%istället har mol^(-1) h^(-1) )
alphaA = 50;
alphapA = 500;
alphaR = 0.01;
alphapR = 50;
betaA = 50;
betaR = 5;
deltaMA = 10;
deltaMR = 0.5;
deltaA = 1;
%deltaR = 0.2;
deltaR = 0.08;
gammaA = 1;
gammaR = 1;
gammaC = 2;
thetaA = 50;
thetaR = 100;

%En allokerad vektor som innehåller problemets samtliga 
%parametrar, samt elementens betydelser
b = zeros(15,1);
b(1) = alphaA;
b(2) = alphapA;
b(3) = alphaR;
b(4) = alphapR;
b(5) = betaA;
b(6) = betaR;
b(7) = thetaA;
b(8) = thetaR;
b(9) = gammaA;
b(10) = gammaR;
b(11) = gammaC;
b(12) = deltaMR;
b(13) = deltaMA;
b(14) = deltaA;
b(15) = deltaR;

%Begynnelsevärden (enhet mol)
DA = 1;
DR = 1;
DpA = 0;
DpR = 0;
MA = 0;
A = 0;
MR = 0;
R = 0;
C = 0;
y0 = [A;C;DA;DpA;DR;DpR;MA;MR;R]';

%Start
t0 = 0;
tf = 200;
t = t0;
y = y0;
nr = nr_vilar();
element = 200;
T = linspace(t0,tf,element);
A = zeros(element,1);
R = zeros(element,1);
A(1) = y0(1);
R(1) = y0(9);
i = 2;

%Algoritm

while t < tf;
    
    %Propensiteter
    w = prop_vilar(y,b);
    
    %Frekvens
    beta = sum(w);
    
    %Inter event time
    u1 = rand;
    tau = -log(u1)/beta;
    
    %Nästa rxn
    w2 = w./beta;
    u2 = rand;
    jfr = [0;cumsum(w2)];
    g = u2 < jfr;
    j = find(g);
    
    if t > T(i);
        A(i) = y(1);
        R(i) = y(9);
        i = i + 1;
    end
    
    %Uppdatera systemet
    y = y + nr(j(1)-1,:);
    t = t + tau;
    
end

A(end) = y(1);
R(end) = y(9);


plot(T,A);
hold on
plot(T,R);
hold off
title('Genetisk oscillator')
xlabel('Tid (h)')
ylabel('Antal molekyler (mol)')
legend('A','R')