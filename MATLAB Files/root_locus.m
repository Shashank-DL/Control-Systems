num = [1 4/3];
p = 12; 
den = [1 p 0 0];
G = tf(num, den)
rlocus(G);
xlabel('Real Axis');
ylabel('Imaginary Axis');
rlocfind(G)
