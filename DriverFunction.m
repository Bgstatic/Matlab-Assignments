
%% Define main function.
mainFunction = @(x) 4*x - 1.8*x.^2 + 1.2*x.^3 - 0.3*x.^4;

%% Minimize the main function.
minimizeFunction = @(x) -mainFunction(x);

%% Golden-section method

xLower = -2;
xUpper = 4;
relativeError = 1; 
% Golden Search Function called.
[xMin,fx,ApproxError,iteration]=GoldenSectionSearch(minimizeFunction,xLower,xUpper,relativeError);

%% Parabolic Interpolation Method

x1 = 1.75;
x2 = 2;
x3 = 2.5;
maxIteration = 5;

% Parabolic Interpolation called.
[x_pi,gx_pi]=ParabolicInterpolation(minimizeFunction,x1,x2,x3,maxIteration);

%% Plot the functions and results.
x = 1:0.01:3;
subplot(1,2,1)
plot(x, mainFunction(x), xMin, -fx , 'kd', 'MarkerSize', 15);
title('Golden Section Search');
drawnow
hold on
subplot(1,2,2)
plot(x_pi,-gx_pi, 'o', 'MarkerSize', 15);
title('Parabolic Interpolation');
