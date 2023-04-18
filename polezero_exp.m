% Hardik Chhabra 2020UEA6504
clc; 
close all; 
clear all;

num = [1 4 3];
den = conv([1 5], [3 4 7]);
g = tf(num, den);
[z, p, k] = tf2zp(num, den);
pzmap(g)

p = [-2 1];
z= [-1];
k=7;
[num, den] = zp2tf(z', p', k);
g = tf(num, den)

% saveas(gcf,'PoleZero.png')