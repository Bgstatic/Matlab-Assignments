% Golden-Section Search Function inspired from mathworks.com

function [xMin,fx,ApproxError,iterarion]=GoldenSectionSearch(mainfunction,xLower,xUpper,relativeError,maxIteration,varargin)
% goldmin: minimization golden section search
% uses golden section search to find the minimum of f

if nargin<3,error('at least 3 input arguments required'),end
if nargin<4 || isempty(relativeError), relativeError=0.0001;end
if nargin<5 || isempty(maxIteration), maxIteration=50;end

goldenRatio=(1+sqrt(5))/2;
iterarion=0;

while(1)
    
    d = (goldenRatio-1)*(xUpper - xLower);
    
    x1 = xLower + d;
    x2 = xUpper - d;
    
    if mainfunction(x1,varargin{:}) < mainfunction(x2,varargin{:})
        
        xOptimal = x1;
        xLower = x2;
        
    else
        
        xOptimal = x2;
        xUpper = x1;
        
    end
    iterarion=iterarion+1;
    
    if xOptimal~=0
        ApproxError = (2 - goldenRatio) * abs((xUpper - xLower) / xOptimal) * 100;end
    if ApproxError <= relativeError ||  iterarion >= maxIteration,break,end
end

xMin=xOptimal;fx=mainfunction(xOptimal,varargin{:});

