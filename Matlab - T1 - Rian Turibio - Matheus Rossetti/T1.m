clear all
close all
clc


c1 = (0.1)/4
c2 = 1/4
r1 = sqrt(4/10)
r2 = sqrt(4)
l1 = nthroot(4,3)

sis = tf([1] , [(r1*c1*c2*l1)  (r1*r2*c1*c2+l1*c2)  (r1*c1+r1*c2+r2*c2) 1])

figure(1)
stepplot(sis) 
figure(2)
pzmap(sis)