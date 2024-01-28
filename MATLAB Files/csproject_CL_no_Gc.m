clear all
close all
clc

global K

Gd = tf([150],[1]);
Ge = tf([600],[1,1]);
Gv = tf([0.5],[5,1]);
Gm = tf([1],[0.2,1]);

K=1;
num = [60*K 300*K];
den = [1 6.2 -53.8 1];

open_loop = tf(num, den)
closed_loop = feedback(open_loop, 1, -1) % for positive feedback
%closed_loop_1 = feedback(Ge*Gv, Gm, -1)

t = linspace(0,100,1000);
figure('Position', [0 0 1000 800]);

subplot(2,2,1);
[yr,t] = step(closed_loop,t);
plot(t,yr);
xlabel('Time [sec]');
ylabel('Speed [kph]');
title('Response to a Setpoint Change');

% subplot(2,2,2);
% sim('cs_proj_cl_step')
% plot(time,yout,'b',time,ref,'r')
% xlabel('Time [sec]');
% ylabel('Speed [kph]');
% title('Response to a step input');
% grid
% 
% subplot(2,2,3);
% sim('cs_proj_cl_ramp')
% plot(time,yout,'b',time,ref,'r')
% xlabel('Time [sec]');
% ylabel('Speed [kph]');
% title('Response to a ramp input');
% grid

subplot(2,2,4);
pzmap(closed_loop)
