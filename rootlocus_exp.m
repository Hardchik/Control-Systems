% Hardik Chhabra 2020UEA6504
clc; 
close all; 
clear all;

num1 = [1 1];
den1 = conv([1 0],[.5 1]);
g1 = tf(num1, den1);
subplot(211)
rlocus(g1)

num2 = [1];
den2 = poly([0 -1 -2]);
g2 = tf(num2, den2);
subplot(212)
rlocus(g2)

% saveas(gcf,'RootLocus.png')