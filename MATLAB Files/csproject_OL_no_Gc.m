clear all
close all
clc

Gd = tf([150],[1]);
Ge = tf([600],[1,1]);
Gv = tf([0.5],[5,1]);
Gm = tf([1],[0.2,1]);

num = [60 300];
den = [1 6.2 -53.8 1];

open_loop = tf(num, den)
%closed_loop = feedback(open_loop, 1, -1) % for positive feedback
% closed_loop_1 = feedback(Ge*Gv, Gm, -1)

% Find the open-loop poles and zeroes
ol_zeroes = zero(open_loop)
ol_poles = pole(open_loop);
disp('Open-loop poles:');
disp(ol_poles);
disp('Open-loop zeroes:');
disp(ol_zeroes);

t = linspace(0,100,1000);
figure('Position', [0 0 1000 800]);
grid on
subplot(2,2,1);
x = step(open_loop,t);
plot(x);
xlabel('Time [sec]');
ylabel('Speed [kph]');
title('Response to a Setpoint Change');

subplot(2,2,2);
sim('cs_proj_ol_step')
 plot(time,yout,'b',time,ref,'r')
 xlabel('Time [sec]');
 ylabel('Speed [kph]');
 title('Response to a step input');
 grid on

 subplot(2,2,3);
 sim('cs_proj_ol_ramp')
 plot(time,yout,'b',time,ref,'r')
 xlabel('Time [sec]');
 ylabel('Speed [kph]');
 title('Response to a ramp input');
grid on
stepinfo(x)
