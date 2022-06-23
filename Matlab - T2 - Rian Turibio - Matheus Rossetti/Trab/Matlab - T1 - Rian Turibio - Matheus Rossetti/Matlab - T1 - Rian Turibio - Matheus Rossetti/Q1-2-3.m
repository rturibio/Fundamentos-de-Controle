clear all
close all
clc

c1 = (0.1)/9
c2 = 1/9
r1 = sqrt(9/10)
r2 = 9
l1 = nthroot(9,3)

sistf = tf([1] , [(r1*c1*c2*l1)  (r1*r2*c1*c2+l1*c2)  (r1*c1+r1*c2+r2*c2) 1])

syszpk = zpk(sistf)

mf = feedback(sistf,1)
%figure(1)
%stepplot(syszpk) 

%figure(2)
%pzmap(syszpk)

figure(3)
stepplot(mf)

figure(4)

Kd1=0.5535;
Kp1=2.90;
Ki1=3.795;
s=tf('s');
C= Kp1 +Ki1/s +Kd1*s

mfc=feedback(C*syszpk,1)
stepplot(mfc,'-r')

figure(5)

Kd2=2.369;
Kp2=65.814;
Ki2=449.242;
s=tf('s');
C2= Kp2 +Ki2/s +Kd2*s

mfc2=feedback(C2*syszpk,1)
stepplot(mfc2,'-g')

figure(6)
stepplot(mf,mfc,'-r',mfc2,'-g' )