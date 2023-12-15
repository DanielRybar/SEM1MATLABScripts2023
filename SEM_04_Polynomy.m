clear; clc;

x = -2:0.1:2;
y = x-1;
plot(x,y);
z = 0*x;
plot(x, [y;z]); % osa x

y = x.^2-1;
plot(x, [y;z]); % osa x

y = x.^3-x.^2-x+1;
plot(x, [y;z]); % osa x

y = polynom(x, [-1, 1, 1, -1]);
plot(x, [y;z]); % osa x

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