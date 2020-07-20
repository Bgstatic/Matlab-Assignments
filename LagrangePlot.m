
% Question-3.b

clc,close all  clear
x = -1:0.5:1;
y= 1./(1+25*x.^2);
[P,R,S] = lagrange(x,y);
xx= -1:0.1:1;
plot(xx,lagrange(x,y,xx));