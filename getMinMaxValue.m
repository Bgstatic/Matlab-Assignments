 
                     %Bilgehan Geçici 150117072
%Code starts here.
function [minValue, maxValue] = getMinMaxValue(mainFunction, minRange, maxRange)

%Create a vector with size 100 by linspace. 
allValues = linspace(minRange, maxRange);

%Get the all results of given function by using allValues vector.
allResults = mainFunction(allValues);

minValue = min(allResults); %Min value of the given function.

maxValue = max(allResults); %Max value of the given funtion.

plot(allValues,allResults,'r-'); %Plot the values and results.

%Label and title section.
title("Graph");
xlabel('Values');
ylabel('Results');

%Set x values with minRange and Max range and y values with minValue and MaxValue.
axis([minRange maxRange minValue maxValue]); 

end