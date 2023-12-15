clear; clc;

x = -10:0.1:10;
y = taylor(x, [0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1]);
%plot(x, y);
z = sin(x); % pravy sin(x)
osa = 0*x;
plot(x, [y;z;osa]); 
%axis([-7, 7, -2, 2]); % zaklinadlo

mySinus(202)
sin(202)

function y = taylor(x, a)
% x = vektor x
% a = koeficienty ve formě vektoru
% y = výsledná funkce
    y = 0;
    delka_vektoru = length(a);
    for i=1:delka_vektoru
        y = y + a(i) / factorial(i-1) * x.^(i-1);
    end
end

function y = mySinus(x)
    z = floor(x/2/pi);
    x = x-z*2*pi;
    y = taylor(x, [0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1]);
end

