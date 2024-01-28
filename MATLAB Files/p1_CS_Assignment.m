global x
global tstep tstop

tstep=0.001;
tstop=10;

num=[2 -1 2];
denom=[1 -1 1];
g = tf(num,denom)
%sim('q5_CS_Assignment')
%plot(time,yout,'b',time,ref,'r')

grid
