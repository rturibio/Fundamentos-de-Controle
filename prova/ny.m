clear all
close all
clc

k=1

s = tf('s')
G = (0.5*k*(s+4)*(s+7)) / ((s-2)*(s-5))
nyquist(G, 'red')

[Gm,Pm,Wcg,Wcp]=margin(G);

margens=[20*log10(Gm),Pm,Wcg,Wcp]