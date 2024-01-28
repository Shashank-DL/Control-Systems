num = [60 300];
den = [1 6.2 -53.8 1];
plant = tf(num,den);

% Specify the PID controller gains
Kp = 100;
Ki = 5;
Kd = 2;

% Create the PID controller transfer function
controller = pid(Kp, Ki, Kd);

% Connect the controller and plant in series to create a closed-loop system
sys_cl = feedback(controller * plant, 1);

% Simulate the step response of the closed-loop system
t = 0:0.1:20;
S = step(sys_cl, t);

figure
plot(S)
stepinfo(S)
% Add labels to the plot
title('Step Response with PID Controller');
xlabel('Time (sec)');
ylabel('Output');

damp(sys_cl)
