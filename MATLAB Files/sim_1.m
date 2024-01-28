clear all
close all
clc

global R L C 
global tstop tstep

tstep=0.001;
tstop=10;

%R=33;
%R=66;
R=99;
L=0.1;
C=0.01;

sim('sim_1_1')
plot(time,vcout)
grid
