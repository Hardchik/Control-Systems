% Hardik Chhabra - 2020UEA6504
Kp = 1;
Ki = 0.5;
Kd = 0.2;
num = [Kd, Kp, Ki];
den = [1, 2, 3, 4];

sys = tf(num, den)

figure;
bode(sys)

figure;
subplot(311)
step(sys)

subplot(312)
impulse(sys)

subplot(313)
pzmap(sys)