% control constants
Kc = 0.01;
tauI = 10;

% control transfer function
Gc = Kc*tf([tauI,1],[tauI,0]);

% model transfer functions
Gd = tf([150],[1]);
Ge = tf([600],[1,1]);
Gv = tf([0.5],[5,1]);
Gm = tf([1],[0.2,1]);

Hyr = Gv*Ge*Gc/(1+Gv*Ge*Gc*Gm);
Hyd = -Gv*Gd/(1+Gv*Ge*Gc*Gm);
Hur = Gc/(1+Gc*Gm*Gv*Ge);
Hud = Gc*Gm*Gv*Gd/(1+Gc*Gm*Gv*Ge);

disp(Hyr)
disp(Hyd)
disp(Hur)
disp(Hud)

t = linspace(0,100,1000);
figure('Position', [0 0 1000 800]);

subplot(2,2,1);
x = step(Hyr,t)
plot(t,yr);
xlabel('Time [sec]');
ylabel('Speed [kph]');
title('Response to a Setpoint Change');

stepinfo(x)
