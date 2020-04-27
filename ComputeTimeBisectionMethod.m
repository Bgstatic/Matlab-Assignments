%Question-6
clear; clc; close all          %Bilgehan Geçici 150117072
 
                            % Compute Time with Bisection Method.
                
% Parameters.
m_0 = 160000;
u = 1800;
q = 2600;
g = 9.81;
v = 750;

% Function whose root we'll approximate.
mainFunction = @(t) v-u*log(m_0./(m_0-q*t))+g*t;

% Initial guesses.
xLower = 10;
xUpper = 50;
Ead = 0.01;

% Bisection method
root = bisection(mainFunction, xLower, xUpper, Ead);
fprintf('Due to the Bisection method:\n');
fprintf('\tRoot is : %g\n', root);