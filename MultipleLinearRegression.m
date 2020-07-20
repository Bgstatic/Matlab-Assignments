% Multi Linear Regression with Least Square Method.

clc, clear, close all
x1 = [0 0 1 2 0 1 2 2 1]'; % x1 values.
x2 = [0 2 2 4 4 6 6 2 1]'; % x2 values.
y = [14 21 11 12 23 23 14 6 11]'; % y values.
m = ones(9,1); 
Z = [m x1 x2]; 
a0 = (Z'*Z)\(Z'*y); 
yp = Z*a0; 

%SSR -> Sum-of-Squares Regression
%SST -> Sum-of-Squares Total
%SSE -> Sum-of-Squares Error

SSR = sum((yp - y).^2); 
SST = sum((y - mean(y)).^2);
SSE = SST-SSR;
SSE = SSE /100;
corrCoef = (SST - SSR)/SST; % Correlation Coefficient.  
r = sqrt(corrCoef);
syx = sqrt(SSR/(length(y)-3));
disp(syx)
disp(SSE)
disp(corrCoef)

