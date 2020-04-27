%Question-7

% Fixed Point Method.

clear; clc; close all          %Bilgehan Geçici 150117072

% f = @(x) sin(sqrt(x))-x;
g = @(x) sin(sqrt(x));

% initial guess
x0 = 0.5;
approxError = 0.01;

error0 = 1; 
index = 0;
fprintf('Index      Root         Next Root      ApproxError      Error Rate');
fprintf('\n');

while error0>approxError 
  x1 = g(x0); % Get x1 value
  error1 = 100*abs((x1-x0)/x1); % Get the error value.
  
  if index>0
    fprintf('%d     %11.6f     %10.6f       %8.2f%%      %12.8f\n', index, x0, x1, error1, error1 / error0);
  else
    fprintf('%d     %11.6f     %10.6f       %8.2f%%      \n', index, x0, x1, error1);
  end
  % Update the error and x values.
  error0 = error1;
  x0 = x1;
  index = index+1;  
end

fprintf('\nThe approximation of the root is %g with an approximate error of %g%%.\n', x0, error0);