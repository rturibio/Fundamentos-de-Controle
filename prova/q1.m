clear all
close all
clc

 gs = zpk([], [-3 -7],1)
 mp = 20/100
 x=((log(mp))/pi)^2
 qsi = sqrt(x/(x+1))
 
 c1 = zpk([-0.1],[0],1)
 c2 = zpk([-0.5],[-0.1],1)
 c3 = zpk([-0.24],[-0.01],1)
 c4 = zpk([-0.01],[-1],1)
 
 gc2 = gs*c2
 gc3 = gs*c3
 
 %fazer limite kp/limite funcao tranferencia
 
 kgc2 = 420
 
 kgc3 = 87
 
 %verificar intercecao
 rlocus(gc2)
 sgrid(qsi,0)
 
 %verificar intercecao
 rlocus(gc3)
 sgrid(qsi,0)
 
 %o que bater o K e o certo
 
 x = tf([1 0.1],[ 1 0.0002 1 0])
 