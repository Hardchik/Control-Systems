% Hardik Chhabra - 2020UEA6504
den = [1 5 6 2];
num = [0 0 0 10];
G = tf(num, den); % G = 10/(1s^3+5s^2+6s+2s^0);

% x' = Ax+By
% y' = Cx+Dy
[A B C D] = tf2ss(num, den)

A2 = [-5 -6 -2; 1 0 0; 0 1 0];
B2 = [1;0;0];
C2 = [0 0 10];
D2 = 0;
[num2 den2] = ss2tf(A2, B2, C2, D2)