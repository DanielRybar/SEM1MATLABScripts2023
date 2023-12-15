clear; clc;

%newton(1.5, @log, 1E-6, 100, 1E-8)
x = newton(pi/2, @sin, 1E-6, 100, 1E-8)
x / pi

x = -2*pi:0.01:2*pi;
y = sin(x);
z = zderivuj(x,y);
figure;
plot(x,z);
hold on;
zz = cos(x);
plot(x, zz);


function x = newton(x0, g, eps, maxiter, delta)
    x = x0; % pocatecni expertuv odhad
    it = 0;
    
    while (abs(g(x)) > eps && it < maxiter)
        x = x - g(x) * delta / (g(x+delta) - g(x));
    end
    
    if (it >= maxiter)
        x = NaN;
    end
end


function z = zderivuj(x, y)
    z(length(x)) = NaN;
    for i=1:length(x)-1
        z(i) = (y(i+1) - y(i)) / (x(i+1) - x(i));
    end
end