
A = [10 2 -1; -3 -6 2; 1 1 5]; % Coefficiant Matrix.
b = [27 -61.5 -21.5]; % Right side of the equations.
x0 = [1 1 1]; % initial guess
tol = 5e-2; % 5 relative error.
maxit = 50; % Maximum iteration.
x = GaussSeidel(A,b,tol,50);
disp(x)
