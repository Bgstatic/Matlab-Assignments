% Question-3.d

clc, clear,close all
x = -1:0.5:1;
y= 1./(1+25*x.^2);
xx = linspace(-1,1);
yy = spline(x,y,xx);
plot(x,y,'bd',xx,yy)