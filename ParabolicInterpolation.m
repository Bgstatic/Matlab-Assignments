
% Parabolic Interpolation Function inspired from mathworks.com

function [x,fx,iteration]=ParabolicInterpolation(mainFunction,x1,x2,x3,maxIteration,varargin)

if nargin<3,error('at least 3 input arguments required'),end
if nargin<4 ||isempty(maxIteration), maxIteration=50;end

iteration=0;

fprintf('i\t  x1       f(x1)      x2      f(x2)      x3      f(x3)      x4       f(x4)\n');
while(1)
    iteration = iteration+1;
    
    % define x_4
    f1 = mainFunction(x1, varargin{:});
    f2 = mainFunction(x2, varargin{:});
    f3 = mainFunction(x3, varargin{:});
    
    x4 = x2-0.5*((f2-f3)*(x2-x1)^2-(f2-f1)*(x2-x3)^2)/...
        ((f2-f3)*(x2-x1)-(x2-x3)*(f2-f1));
    
    % print output
    fprintf('%d\t%3.4f   %3.4f   %3.4f   %3.4f   %3.4f   %3.4f   %6.4f   %8.4f\n', iteration, x1, f1, x2, f2, x3, f3, x4, mainFunction(x4, varargin{:}));
    % decide which value to discard
    Variables = [x1, x2, x3, x4];
    Variables = sort(Variables);
    for i = 1:2
        if mainFunction(Variables(i,varargin{:}))>mainFunction(Variables(i+1),varargin{:}) && mainFunction(Variables(i+2),varargin{:})>...
                mainFunction(Variables(i+1),varargin{:})
            x1 = Variables(i);
            x2 = Variables(i+1);
            x3 = Variables(i+2);
        end
    end
    
    if iteration >= maxIteration,break,end
end

x=x4;fx=mainFunction(x4,varargin{:});