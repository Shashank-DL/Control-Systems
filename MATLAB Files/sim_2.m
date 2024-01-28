global num denom
global tstep tstop

tstep=0.001;
tstop=10;
num=[0 25];
denom=[1 2 20];
sim('sim_2_2')
plot(time,yout,'b',time,ref,'r')
grid
