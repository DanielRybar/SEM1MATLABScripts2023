clc; clear;

x = -5:0.1:5; % vektor od -5 do 5, krok po 0,1
y = sin(x); % priradi k tomu hodnoty
plot(x,y); % vykresli graf

y = cos(x);
plot(x,y);

y = tan(x);
plot(x,y);

y = cot(x);
plot(x,y);