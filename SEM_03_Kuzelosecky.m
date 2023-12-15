clear; clc;

% KRUZNICE
% S(3,3), r = 4
x = -1:0.1:7;
y = 3+sqrt(16-(x-3).^2); % nutna tecka pred mocninou
plot(x,y);
hold on % nesmaze graf, primaluje nova data (zaklinadlo)
y = 3-sqrt(16-(x-3).^2);
plot(x,y);
axis equal % jednotka na ose x bude stejne velka jako na y (zaklinadlo)

% parametricky predpis
alfa = 0:0.01:2*pi; % od 0 do 2pi
x = 3+4*cos(alfa);
y = 3+4*sin(alfa);
plot(x,y);

% polarni souradnice
fi = 0:0.01:2*pi; % od 0 do 2pi
ro = 4*fi./fi;
polar(fi, ro);


% HYPERBOLA
ro = 1./sqrt(cos(fi).^2 - sin(fi).^2); % nutne tecky
polar(fi, ro);