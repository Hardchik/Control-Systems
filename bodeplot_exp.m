% Hardik Chhabra 2020UEA6504
clc; 
close all; 
clear all;

num = [1 1];
den = conv([1 0],[.5 1]);
g = tf(num, den);
bode(g)
margin(g)

% saveas(gcf,'BodePlot.png')