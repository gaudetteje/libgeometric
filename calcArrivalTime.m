function [T,D] = calcArrivalTime(src,dst,c)
% TDOA  computes the time of arrival for 2 or more points in space given
%     the point source and destination coordinates and wave speed
%
% T = calcArrivalTime(RCV,SRC,C) returns the time of arrival for a point
%   source, SRC, propagating a wave at speed C at the point destination, DST.
% [T,D] = calcArrivalTime(...) also returns the Euclidean distance, D.
%
% Notes:
%   - SRC and RCV coordinates can be specified using any N-dimensions.
%   - If SRC is NxL and RCV is NxM, T will be LxM.
%   - C must be in same unit system as SRC and DST (i.e. m/s and m)
%

% compute Euclidean distance
D = dist(src,dst);

% convert distance to time using speed of wave front, c
T = D/c;
