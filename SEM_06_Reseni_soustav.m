clear; clc;

A = [1 2 3; 4 5 6; 7 8 9]
B = [1 4 7; 2 5 8; 3 6 9]

% soucet
A+B
% soucin
A*B
B*A

M = [2 1 0 0; 1 2 1 0; 0 1 2 1; 0 0 1 2]
b = [3;4;4;3]
x = [1;1;1;1];
M*x

Mi = inv(M) % udelame si inverzni matici k M
Mi*b
Mi*M

x = M \ b % operator pro Gaussovu eliminaci

D = [1 2; 2 1]
det(D) % ruzne od 0 - ma reseni
det(M) % ruzne od 0 - ma reseni

F = [1 2; 1 2]
det(F) % 0 - nema reseni

% ------

syms x y
maticeA = [-5 -16; 8 16]
maticeB = [8 8; -5 -8]

X = A \ B

%AX = B


