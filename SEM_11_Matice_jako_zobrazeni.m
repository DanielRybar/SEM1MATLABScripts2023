clear; clc; close all;

x = [0,1, 0.9, 1, 0.9];
y = [0,0, 0.1, 0, -0.1];
figure;
%plot(x, y);
%axis equal;

zobraz(jednanula, "r");
hold on;
zobraz(zvetsi(jednanula, 2), "g");
zobraz(posun(jednanula, [2;1]), "b")
zobraz(otoc(jednanula, 45), "m");
zobraz(otoc(posun(zvetsi(jednanula, 1.5), [1; 0]), 45), "c");
zobraz(vektorrofi(3,pi/3), "k");

figure;
hold on;
zobraz(vektor([2;1]), "r");
zobraz(vektor([2;-1]), "r");
zobraz(vektor([-2;-1]), "r");
zobraz(vektor([-2;1]), "r");
zobraz(vektor([0; 1]), "r");
zobraz(vektor([0; -1]), "r");

figure;
hold on;
zobraz(domecek, "b");
S45 = 1/sqrt(2)*[1 -1; 1 1];
zobraz(S45*domecek, "r");
%E = [1 0; 0 1];
%zobraz(E*domecek, "m"); % nic to neudelalo, kresli puvodni domecek (identita)
D = [2 0; 0 4];
zobraz(D*domecek, "m");
zobraz(D*(S45*domecek), "g");
% zobraz(D*S45*domecek, "y");
% hold off;

figure;
hold on;
zobraz(domecek, "m");
F = [3 1; 1 3];
zobraz(F*domecek, "g");
zobraz(vektor(F*[-1;1]), "r");
[a,b] = eig(D);
%zobraz(inv(S45)*D*S45*domecek, "b");
% set(gca,"Color","k");

function X = jednanula
    X = [0,1, 0.9, 1, 0.9; 0,0, 0.1, 0, -0.1];
end

function zobraz(X, color)
    x=X(1,:);
    y=X(2,:);
    plot(x,y, color, "LineWidth", 1.5);
    axis equal;
end

function Y = zvetsi(X,k)
    Y = k*X;
end

function Y = posun(X, x0) % x0 je vektor
    %Y(1,:) = X(1,:)+x0(1);
    %Y(2,:) = X(2,:)+x0(2);
    Y = X+x0;
end

function Y = otoc(X, uhel)
    mat = [cos(uhel) -sin(uhel); sin(uhel) cos(uhel)];
    % proti smeru hod. rucicek
    Y = mat * X;
end

function Y = vektorrofi(ro,fi)
    Y=otoc(zvetsi(jednanula,ro), fi);
end

function X = vektor(x0) 
    fi = atan(x0(2) / x0(1));
    if x0(1) < 0
        fi = fi + pi;
    end
    ro = sqrt(x0(2)^2+x0(1)^2);
    X = vektorrofi(ro, fi);
end

function X=domecek
    X = [0 1 0 1 0 0 0.5 1 1; 0 0 1 1 0 1 1.5 1 0];
end