clear; clc; close all;

%x = 0:0.1:2;
%y = 5*x + 5;
%x = -1:0.001:1;
%y = sqrt(1-x.^2);
alfa = 0:0.002:pi;
x = cos(alfa);
y = sin(alfa);
2*integral(x, y)
plot(x,y);
axis equal;

x = 0:0.1:2;
y = x;
z = zintegruj(x, y,1);
figure;
plot(x,z);
%axis equal;
%format long

x = 0:0.01:2*pi;
y=cos(x);
z=zintegruj(x,y,1);
figure;
plot(x,z);
hold on;
Z = sin(x);
%plot(x, Z);

y = -sin(x);
z = zintegruj(x,y,1);
figure;
plot(x,z);
Z = cos(x);
hold on;
%plot(x,Z);


function z = integral(x, y)
    z = 0;
    for i=2:length(x)
        z = z + 0.5*abs(x(i)-x(i-1))*(y(i-1)+y(i));
    end
end

function z = zintegruj(x,y,c)
    z = zeros(1,length(x)); % prealokace
    z(1) = c;
    for i=2:length(x)
        z(i) = z(i-1) + 0.5*abs(x(i)-x(i-1))*(y(i-1)+y(i));
    end
end