% Define the transfer function
K=5;
num = [60*K 300*K];
den = [1 6.2 -53.8 1];

sys = tf(num, den);
closed_loop = feedback(open_loop, 1, -1);
% Plot the open-loop Bode plot
figure;
bode(sys);
grid on;

% Add labels to the plot
title('Open-Loop Bode Plot');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');

% Add a phase axis to the plot
ax1 = gca;
ax2 = axes('Position',get(ax1,'Position'),'XAxisLocation','top','YAxisLocation','right','Color','none');
set(ax2,'XScale','log');
set(ax2,'XLim',get(ax1,'XLim'));
set(ax2,'XTick',logspace(-1,3,5));
set(ax2,'XTickLabel',{'0.1','1','10','100','1000'});
set(ax2,'YLim',[-180 180]);
set(ax2,'YTick',-180:90:180);
set(ax2,'YTickLabel',{'180','-90','0','90','180'});
ylabel('Phase (deg)');

% Calculate the phase margin and gain margin
[Gm, Pm, Wcg, Wcp] = margin(sys);

% Display the phase margin and gain margin
fprintf('Phase Margin: %.2f degrees\n', Pm);
fprintf('Gain Margin: %.2f dB\n', 20*log10(Gm));