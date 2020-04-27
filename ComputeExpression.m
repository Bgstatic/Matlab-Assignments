% Question-2

clear; clc; close all          %Bilgehan Geçici 150117072

k = 1:1:10; % k value.
X = 10.^-k;  % X value
Y = X.*(((2./X + X) - X) - 1./X); % Y value; 
disp("Y values: ");
disp(Y);

% Exact Y values = [1 1 1 1 1 1 1 1 1 1]
% We can clearly see that if k value increases Y value does not change. 
% k value is not a dependent variable for Y values.

