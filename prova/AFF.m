clear all
close all
clc


sistf = tf([ -1 -91] , [-112  -370 -781 ],1 )

syszpk = zpk(sistf)

mf = feedback(sistf,1)
