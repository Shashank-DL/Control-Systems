
K = 5;
% num = [60*K 300*K];
% den = [1 6.2 -53.8+60*K 300*K+1];
num = [60*K 300*K];
den = [1 6.2 6.2 301];
sys = tf(num,den);
closed_loop=feedback(sys,1,-1);

figure
rlocus(closed_loop)
