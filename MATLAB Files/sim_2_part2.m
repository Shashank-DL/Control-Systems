global num denom zeta om_n
global tstep tstop

tstep=0.001;
tstop=10;
%om_n=5;
zeta=0.1;

num=[0 25];
sim('sim_2_2')

%for om_n= 1:5
%    denom=[1 2*zeta*om_n om_n.^2];
%end
plot(time,yout,'b',time,ref,'r')
hold on
for om_n= 1:5
    denom=[1 2*zeta*om_n om_n.^2];
end
plot(time,yout,'b',time,ref,'r')

grid

% G1(s) = 1/s+p. Compare in terms of rise time and steady state value the
% step responses of this system for different values of p. Choose
% p=0.5,1,2, and 10. (Rise tme is the time taken to attain 90% of the final
% steady state value)
% a) locate the pole if it is a fast response
% c) the effect of an additional pole G3(s)= 10/s^2+2s+10 in cascade with a
% first order system G4(s)=p/s+p. Repeat b for different values of p
% 5,10,20. compare with b.







