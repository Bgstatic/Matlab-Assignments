                     %Bilgehan Gecici 150117072

%Code starts here.
clear; clc; close all

% theta values which is time range for sine and cosine values.
theta = (0:pi/32:8*pi);

%Polar coordinates for butterfly curve equation.

r = exp(sin(theta))-2*cos(4*theta)-sin((2*theta-pi)/24).^5;

%Plot Section using polar function.

polarplot(theta , r , 'r--')

title("Graph with polar coordinates")