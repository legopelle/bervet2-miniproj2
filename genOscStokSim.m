%Kommandofil för den stokastiska simuleringen av den cirkadiska rytmen.

clear all;
close all;

%Initialdata
t0 = 0;
tf = 200;
element = 200;

b = parameters_vilar(); %Parametrar
nr = nr_vilar(); %Stökiometrimatris
prop = @(x) prop_vilar(x,b); %Propensitetsfunktion

%Begynnelseantal
DA = 1;
DR = 1;
DpA = 0;
DpR = 0;
MA = 0;
A = 0;
MR = 0;
R = 0;
C = 0;

x0 = [A;C;DA;DpA;DR;DpR;MA;MR;R]';

%Start
t = t0; %Time
x = x0; %State

T = linspace(t0,tf,element); %time grid
A = zeros(element,1); %Allocate A grid
R = zeros(element,1); %and R grid
A(1) = x0(1); % First A grid point
R(1) = x0(9); % First R grid point
i = 2; % Next index of next grid point

%Algoritm

while t < tf; %Simulate until final time
    
    %Propensiteter
    
    
    [tau, next] = next_reaction(x, prop); %Next reaction
    
    if t > T(i);
        A(i) = x(1);
        R(i) = x(9);
        i = i + 1;
    end
    
    %Uppdatera systemet
    x = x + nr(next,:); %Uppdatera state
    t = t + tau;%uppdaetra tid
    
end

%Efter loopen måste sista värdena sättas maanuellt
A(end) = x(1);
R(end) = x(9);

%Plot
plot(T, A, T, R);
title('Genetisk oscillator')
xlabel('Tid (h)')
ylabel('Antal molekyler')
legend('A','R')