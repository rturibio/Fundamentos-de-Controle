% UFSC - Fundamentos de Controle (EES 7374)
% Exerc�cio erro em regime permanente - 7.1 - Nise
% Data: 22/09/2020

clear all
close all
clc

% Defini��o do sistema
sistema=zpk([-20 -30],[0 -25 -35],10)
sistema_mf=feedback(sistema,1)

% refer�ncia do tipo degrau
step(15*sistema_mf)

% refer�ncia do tipo rampa
t=0:0.01:1;
ramp=15*t;
[y,t]=lsim(sistema_mf,ramp,t);

figure
hold on
plot(t,ramp,'-r')
plot(t,y,'-b')

figure
hold on
plot(t,ramp'-y)

% refer�ncia do tipo par�bola
parab=15*t.^2;
[yp,t]=lsim(sistema_mf,parab,t);

figure
hold on
plot(t,parab,'-r')
plot(t,yp,'-b')

figure
hold on
plot(t,parab-yp)