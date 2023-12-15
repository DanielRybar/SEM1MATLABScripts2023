clear; clc;

x = [-2;-1;0;1;2];
y = [3.9; 1.1; -0.1; 0.9; 4.1]; % nepresne hodnoty, melo by to byt x^2
a = regrese(x, y, 2);
xx = -2:0.1:2;
yy = polynom(xx, a);
plot(xx, yy, "m", "LineWidth", 1.5);
hold on;
plot(x, y, "bo"); % body chci vykreslit jako modra kolecka

function a = regrese(x, y, s)
    M = x.^(s:-1:0);
    a = M \ y;
end

function y = polynom(x, a)
% x = vektor x
% a = koeficienty ve formě vektoru
% y = výsledná funkce
    y = 0;
    delka_vektoru = length(a);
    for i=1:delka_vektoru
        y = y + a(i)*x.^(delka_vektoru - i);
    end
end