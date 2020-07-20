%% Plots
                                          
% Fminsearch
x=linspace(0,5,40); % x values.
y=linspace(-1,5,40); % y values.
[X,Y] = meshgrid(x,y); % meshgrid function called return 2-D array.
mainFunction = 2*X.^2 +3*Y.^2 - 4.*X.*Y - Y -3*X;

subplot(1,2,1);
cs=contour(X,Y,mainFunction);clabel(cs); %Creates a contour plot containing the isolines of matrix Z, where Z contains height values on the x-y plane. 
xlabel('x_1');ylabel('x_2');
title('(a) Contour plot');
grid;
subplot(1,2,2);
cs=surfc(X,Y,mainFunction); % Creates a three-dimensional surface plot with a contour plot underneath.

zmin=floor(min(mainFunction));
zmax=ceil(max(mainFunction));

xlabel('x_1');ylabel('x_2');zlabel('f(x_1,x_2)');
title('(b) Mesh plot');

%% fminsearch
f = @(x) 2*x(1).^2 +3*x(2).^2 - 4.*x(1).*x(2) - x(2) -3*x(1);
[x,fval]=fminsearch(f,[3,2]);
disp('fval')
disp(fval)