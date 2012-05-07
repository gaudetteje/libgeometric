function [x,y] = rectangle(dx,dy)
%RECTANGLE returns the vertices of a rectangle
%
% dx = the width of the rectangle
% dy = the height of the rectangle
%
x = [-dx/2  dx/2  dx/2 -dx/2];
y = [-dy/2 -dy/2  dy/2  dy/2];