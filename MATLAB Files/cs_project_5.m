K=5;
num = [60*K 300*K];
den = [1 6.2 -53.8 1];

open_loop = tf(num, den);
closed_loop = feedback(open_loop, 1, -1);

% Plot the Bode plot
figure;
bode(open_loop);
grid on;

% Calculate the phase margin and gain margin
[Gm, Pm, Wcg, Wcp] = margin(open_loop);

% Display the phase margin and gain margin
fprintf('Phase Margin: %.2f degrees\n', Pm);
fprintf('Gain Margin: %.2f dB\n', 20*log10(Gm));
