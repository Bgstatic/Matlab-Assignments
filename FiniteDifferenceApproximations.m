
%Question-4
clear; clc; close all                         % Bilgehan Geçici 150117072
                                                        
% Main Function and its first and second derivatives.
mainFunction = @(x) x.^3-2*x+4;
firstDerivative = @(x) 3*x.^2 -2; % First derivative.
secondDerivative = @(x) 6*x; % Second derivative.

h = 0.25; %h value for difference calculation.

% First derivative finite difference approximations
firstDerivativeBackward = @(x) (mainFunction(x) - mainFunction(x-h))/ h; % Backward difference 
firstDerivativeForward = @(x) (mainFunction(x+h) - mainFunction(x))/ h; % Forward difference
firstDerivativeCentered = @(x) (mainFunction(x+h) - mainFunction(x-h))/(2*h); % Centered difference

% Second derivative finite difference approximations
secondDerivativeBackward = @(x) (mainFunction(x) - 2*mainFunction(x-h)+mainFunction(x-2*h))/(h^2); % Backward difference  
secondDerivativeForward = @(x) (mainFunction(x+2*h) - 2*mainFunction(x+h)+mainFunction(x))/(h^2); % Forward difference
secondDerivativeCenctered = @(x) (mainFunction(x+h) - 2*mainFunction(x)+mainFunction(x-h))/(h^2); % Centered difference

% Plot the given function and its derivates with finite difference approximations
interval = -2:0.1:2;

% Divide the plot section to three subplots.
subplot(1,3,1)
% Plot the main function.
plot(interval, mainFunction(interval))  
title('Main Function')

subplot(1,3,2)
% Plot the main function's first derivative finite difference approximations
plot(interval, firstDerivative(interval), 'r--o', interval, firstDerivativeBackward(interval), 'b', interval, firstDerivativeForward(interval), 'y', interval, firstDerivativeCentered(interval) , 'g')
legend('First Derivative', 'Backward Approximation', 'Forward Approximation', 'Centered Approximation')
title('First derivative of main function and its approximations')

subplot(1,3,3)
% Plot the main function's second derivative finite difference approximations
plot(interval, secondDerivative(interval), 'r--o', interval, secondDerivativeBackward(interval), 'b', interval, secondDerivativeForward(interval), 'y', interval, secondDerivativeCenctered(interval) , 'g')
legend('Second Derivative', 'Backward Approximation', 'Forward Approximation', 'Centered Approximation')
title('Second derivative of main function and its approximations')