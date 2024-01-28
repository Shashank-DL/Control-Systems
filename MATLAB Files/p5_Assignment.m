global num denom zeta om_n
global tstep tstop

tstep=0.001;
tstop=10;

num=[ 25];
sim('sim_2_2')
denom=[1 2*zeta*om_n om_n.^2];
plot(time,yout,'b',time,ref,'r')

grid