% Hardik Chhabra 2020UEA6504
clc; 
close all; 
clear all;

num1 = [1 2];
den1 = conv([1 1], [1 -1]);
g1 = tf(num1, den1);
subplot(211)
nyquist(g1)


num2 = [1];
den2 = conv([1 0], [1 2 2]);
g2 = tf(num2, den2);
subplot(212)
nyquist(g2)

% saveas(gcf,'NYQUIST.png')