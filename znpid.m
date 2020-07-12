clear all,clc
s=tf('s')
Kcr=3;
Pcr=6.28;
k=0.6*Kcr;
plant=k/(s^3 + 3*s^2 + s);
feed=1;
TFp= feedback(plant*feed,1);
subplot(2,1,1)
step(TFp)
%%
kp=0.6*Kcr;
Ti=0.5*Pcr;
Td=0.125*Pcr;
controller = kp*(1 + 1/(s*Ti) + Td*s);
TFpc = feedback(controller*plant*feed,1);
subplot(2,1,2)
step(TFpc)