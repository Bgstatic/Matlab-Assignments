                     
                    %Bilgehan Geçici 150117072
%Code stars here.
function  EvaluateSin(functionValue, terms) %Compute the sin(x) function with using infinite series.

i = 1;
TrueValue = sin(functionValue);
errorVector = zeros(1,terms);
ApproxValue = 0;
fprintf("\n");
fprintf(" Term Order    True Value      Approximate Value          Error \n");

for index = i:terms
    
    %Calculating approximate value and percentage of error value.
    ApproxValue = (-1)^(i-1)*functionValue^(2*i-1)/factorial(2*i-1) + ApproxValue;
    Error = ((TrueValue-ApproxValue)/TrueValue)*100;
    
    errorVector(i) = Error; % Store the percentage of error value to the errorVector.
    
    format short;
    fprintf("%7d      %13.10f       %13.10f      %16.10f\n", index, TrueValue, ApproxValue, Error);
    i = i+1;
end

numOfTerms = (1:terms); %Number of terms in the infinite series.

grid on;
plot(numOfTerms,errorVector,'bd-'); %Plot the graph.

%Title and label section.
title(" Percent relative error vs number of terms");
xlabel('Number of Terms');
ylabel('Percent Relative Error');

end
