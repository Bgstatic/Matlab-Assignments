% Question-8

clear; clc; close all          %Bilgehan Geçici 150117072

%% Graphically Represent the function.

mainFunction = @(x) x.^3-6*x.^2+11*x-6.1;
interval = 0.5:0.1:3.5;

plot(interval,mainFunction(interval));

%% Newton Raphson Method. (Iterate 3 times.)

xInitial = 3.5;
approxError = 0;

derivate =  @(x) 3*x.^2 - 12*x + 11;

for i=1:3
% Update the values.
xValue = xInitial - ((mainFunction(xInitial) / derivate(xInitial)));
error = abs((xValue - xInitial) / xInitial);
xInitial = xValue;
if error <= approxError
    break;
end  
end
root = xInitial;
fprintf("Due to the Newton Raphson Method, the root is " + root);
fprintf("\n");

%% Secant Method. (Iterate 3 times.)

x0 = 2.5;
x1 = 3.5;
 if mainFunction(x0)* mainFunction(x1)>0 
    disp('Enter valid interval !!!')
 else
     
for i=1:3 
    % Update the values.
    x2 = x1 - (mainFunction(x1))*((x1 - x0)/(mainFunction(x1) - mainFunction(x0)));
    error=abs((x1-x0) / x1);
     x0=x1;        
     x1=x2;
    if error <= approxError
        break
     
    end
     root=x2;
    
end
fprintf("\nDue to the Secant Method, the root is " + root);
fprintf("\n");

 end
%%  Modified Secant Method (Iterate 3 times.)

x0 = 3.5;
steps = 0.01;
approxError = 0;

for i=1:3
    % Update the values.
     x1 = x0 - (steps*x0*mainFunction(x0) / (mainFunction(x0 + steps*x0) - mainFunction(x0)));
     error=abs((x1-x0) / x1);
     x0 = x1;
     if error <= approxError
       break
     end 
     root = x1;
end
fprintf("\nDue to the Modified Secant Method, the root is " + root);
fprintf("\n");

%% Determine All Roots

mainFunction = @(x) x.^3-6*x.^2+11*x-6.1;
p = [1 -6 11 -6.1];
roots = roots(p);
roots = roots';
fprintf("\nAll roots of the function are:");
disp(roots);