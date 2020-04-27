                            %Bilgehan Gecici 150117072

%Code starts here.
clear; clc; close all

% theta values which is time range for sine and cosine values.
theta = (0:1/16:100);

%Butterfly curve equations for x and y values.
x = sin(theta).*(exp(cos(theta))-2*cos(4*theta)-sin(theta/12).^5);
y = cos(theta).*(exp(cos(theta))-2*cos(4*theta)-sin(theta/12).^5);

%Plot Section 1 --> 2 graphs with subplot notation.
subplot(2,1,1); % First subgraph.
grid on
plot(theta , x , theta , y , ':') % Graph for x&y.

%Title for first graph.
title("Graph : x & y vs t")

%Label x and y values.
xlabel('theta') 
ylabel('x & y')

legend('x', 'y') % Legend for first graph.
grid on

%Second section with subplot (square graph).
subplot(2 , 1 , 2)
plot(x , y)

%Title for second graph.
title("Graph : x vs y")

%Label x and y values.
xlabel('x')
ylabel('y')

axis square %Square graph.
