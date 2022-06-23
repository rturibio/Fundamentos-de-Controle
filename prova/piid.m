clear all
close all
clc

k=1

t1= 0.250 %28.3%
t2= 0.325 %63.2%

t = (-3*t1/2) + (3*t2/2)

o = t2-t

kp=1.2*(o/t)^-1

ti=t*(2.0*(o/t))

td=t*(0.5*(o/t))

ki=(kp/ti)

kd=(kp*td)