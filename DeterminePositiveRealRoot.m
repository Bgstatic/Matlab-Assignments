%Question-5
clear; clc; close all                         % Bilgehan Geçici 150117072

% Graphically Represent the function. 
mainFunction = @(x) log(x.^2) - 0.7;
interval = 0:1:20;
plot(interval,mainFunction(interval))

% Bisection method with three iterations.

xLower = 0.5;
xUpper = 2;

for i = 1:3 % Iterate bisection method for three times.
    
 functionLower = mainFunction(xLower); % Lower part.
 functionUpper = mainFunction(xUpper); % Upper part.
 middle = (xLower+xUpper)/2; % Middle part.
 functionMiddle = mainFunction(middle); % Middle part's function.
 
 grid on
 hold on
 
 %Plot the points.
 plot (middle,functionMiddle, 'or')
 % Update the lower and upper parts.
 
if(functionLower * functionMiddle > 0)
    
 xLower = middle;
 
else
     
 xUpper = middle;
 
 end
end

grid off
hold off

% False-position method with three iterations.
grid on
hold on

for i = 1:3
 % Evaluate xFalseValue.
 xFalseValue = xUpper - ((mainFunction(xUpper) * (xLower - xUpper))/(mainFunction(xLower) - mainFunction(xUpper)));
  
 % Update the lower and upper parts.
 if (mainFunction(xLower) * mainFunction(xFalseValue) <0)
     
 xUpper = xFalseValue;
 
 else
     
 xLower = xFalseValue;
 
 end
 % Plot the points.
 plot(xFalseValue, mainFunction(xFalseValue), '*k')
 %legend("False Position Method");
 
end

grid off
hold off
