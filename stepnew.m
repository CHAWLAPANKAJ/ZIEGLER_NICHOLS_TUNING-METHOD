clear all,clc
s=tf('s')
Kcr=3;
plant=Kcr/(s^3 + 3*s^2 + s);
feed=1;
TFp= feedback(plant*feed,1);
step(TFp)