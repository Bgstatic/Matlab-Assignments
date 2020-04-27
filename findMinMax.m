function [minF, maxF] = findMinMax(func, startX, endX) 

x = linspace(startX, endX, max(abs(startX), abs(endX)) * 1000);
y = func(x);

minF = min(y);
maxF = max(y);
fprintf('Difference between max and min values: %f \n', maxF - minF);

plot(x, y);
xlabel('x');
ylabel('y');
axis([startX, endX, minF, maxF]);

end


% Test Functions: 
%[minF, maxF] = findMinMax(@(t) 8 * exp(-0.25 * t) .* sin(t-2), 0, 6 * pi );
%[minF, maxF] = findMinMax(@(x) exp(4 * x) .* sin(1./x), 0.01, 0.2);

