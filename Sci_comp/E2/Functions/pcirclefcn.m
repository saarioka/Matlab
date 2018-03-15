function [r, X, Y1, Y2] = pcirclefcn(r)
% PCIRCLEFCN draws a circle with radius r
%  
% [r, X, Y1, Y2] = pcirclefcn(r) plots the circle and returns
% the radius r and the X, Y1, and Y2 coordinates.

X = -r:0.01:r;          % generate the x-coordinates
Y1 = sqrt(r^2 - X.^2);  % generate top half of circle
Y2 = -sqrt(r^2 - X.^2); % generate bottom half of cirlce
clf                     % clear the figure window
plot(X, Y1)             % plot the top half of the circle
hold on                 % hold the previous plot
plot(X, Y2)             % plot the bottom half of the circle
axis equal              % make the axes the same length
grid on                 % put grid lines on the figure

% Generate the text string for the title

titlestr = ['Circle with radius r = ', num2str(r)];
title(titlestr)         % add the title to the plot