num = [2.1 100.005 5];
den = [0.001 1 0];
controller = tf(num,den)

% Specify the PID controller gains
Kp = 100;
Ki = 5;
Kd = 2;

% Create the PID controller transfer function
%controller = pid(Kp, Ki, Kd);

% Connect the controller and plant in series to create a closed-loop system
%
% Simulate the step response of the closed-loop system
t = 0:0.1:20;
S = step(controller, t);

figure
plot(S)
stepinfo(S)
% Add labels to the plot
title('Step Response with PID Controller');
xlabel('Time (sec)');
ylabel('Output');
