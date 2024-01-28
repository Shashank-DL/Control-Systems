K=5;
num = [60*K 300*K];
den = [1 6.2 -53.8 1];

sys = tf(num, den);

% Plot the Nyquist plot
figure;
nyquist(sys);
grid on;

% Add labels to the plot
title('Nyquist Plot');
xlabel('Real Axis');
ylabel('Imaginary Axis');
