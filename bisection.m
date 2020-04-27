
%Bisection method for Question-6   
                                 % Bilgehan Geçici 150117072
function root = bisection(func,xLower,xUpper,Ead)
% uses bisection method to find the root of a function
% with a fixed number of iterations to achieve the tolerance specified

test = func(xLower)*func(xUpper);
if test>0,error('no sign change'),end
% if necessary, assign default values
if nargin<4, Ead = 0.000001; end 
% bisection
xr = xLower;

% compute n and round up to next highest integer
n = ceil(1 + log2((xUpper - xLower)/Ead) + 0.5);

for i = 1:n
    xrold = xr;
    xr = (xLower + xUpper)/2;
    if xr ~= 0, ea = abs((xr - xrold)/xr) * 100; end
    test = func(xLower)*func(xr);
    if test < 0
    xUpper = xr;
    elseif test > 0
    xLower = xr;
    else
    ea = 0;
    end
end

root = xr;


