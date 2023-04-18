% Hardik Chhabra 2020UEA6504
clc;
close all;
clear all;

num = [1];
den = [1 4];
g = tf(num, den);
h1 = tf(1,1);
h2 = tf(1, [1,2]);
t1 = feedback(g,h1);
t2 = feedback(g,h2);

subplot(211)
step(t1, 'b')
subplot(212)
step(t2, 'b')

% saveas(gcf,'exp1.png')