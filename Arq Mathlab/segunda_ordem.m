% UFSC - Fundamentos de Controle (EES 7374)
% Exerc�cio sistemas de segunda ordem resposta subamortecida
% Data: 10/09/2020

clear all
close all
clc

% teste varia��o do wn
qsi=0.5
wn=5
exemplo0505=tf([wn^2],[1 2*qsi*wn wn^2])
wn=10
exemplo0510=tf([wn^2],[1 2*qsi*wn wn^2])
wn=20
exemplo0520=tf([wn^2],[1 2*qsi*wn wn^2])

figure
hold on
pzmap(exemplo0505)
pzmap(exemplo0510)
pzmap(exemplo0520)

figure
hold on
step(exemplo0505)
step(exemplo0510)
step(exemplo0520)

% teste varia��o do qsi
clear all
wn=5
qsi=0.1
exemplo0105=tf([wn^2],[1 2*qsi*wn wn^2])
qsi=0.4
exemplo0405=tf([wn^2],[1 2*qsi*wn wn^2])
qsi=0.6
exemplo0805=tf([wn^2],[1 2*qsi*wn wn^2])

figure
hold on
pzmap(exemplo0105)
pzmap(exemplo0405)
pzmap(exemplo0805)

figure
hold on
step(exemplo0105)
step(exemplo0405)
step(exemplo0805)

% teste varia��o da parte imagin�ria dos polos
clear all
sigma=0.5
wd=0.5
exemplo0505=zpk([],[-sigma+wd*i -sigma-wd*i],abs(-sigma+wd*i)^2)
wd=1
exemplo0510=zpk([],[-sigma+wd*i -sigma-wd*i],abs(-sigma+wd*i)^2)
wd=1.5
exemplo0515=zpk([],[-sigma+wd*i -sigma-wd*i],abs(-sigma+wd*i)^2)

figure
hold on
pzmap(exemplo0505)
pzmap(exemplo0510)
pzmap(exemplo0515)

figure
hold on
step(exemplo0505)
step(exemplo0510)
step(exemplo0515)

% teste varia��o da parte real dos polos
clear
wd=4
sigma=0.5
exemplo0504=zpk([],[-sigma+wd*i -sigma-wd*i],abs(-sigma+wd*i)^2)
sigma=1
exemplo1004=zpk([],[-sigma+wd*i -sigma-wd*i],abs(-sigma+wd*i)^2)
sigma-1.5
sigma=1.5
exemplo1504=zpk([],[-sigma+wd*i -sigma-wd*i],abs(-sigma+wd*i)^2)

figure
hold on
pzmap(exemplo0504)
pzmap(exemplo1004)
pzmap(exemplo1504)

figure
hold on
step(exemplo0504)
step(exemplo1004)
step(exemplo1504)