function b = parameters_vilar ( )

b = zeros(15,1);

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