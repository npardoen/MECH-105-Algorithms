clear; clc; close all;

% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

% Define the function to be solved for. Is the angle specified in radians or degrees?
testfunc = @(theata) (mu.*m.*g)./(cos(theata)+mu.*sin(theata))-F;
format long

% THINK, what makes range sense for angle?
Lower_Bound = -2; Upper_Bound = 2;
% Plot your function. Does plotting give you an idea about where the root is?
theata = -2:.5:2;
plot(theata,testfunc(theata))

% Finaly solve for the root using the bisection script given to you, which can be called as:
[root, fx, ea, iter] = bisect(testfunc, Lower_Bound, Upper_Bound);

% These variables will be checked for your final answer:
angle = bisect(testfunc,Lower_Bound,Upper_Bound)*(180/pi);  % the angle in degree that solves this problem
fx = fx;    % the function value at your solved angle
ea = ea;   % the bisection error estimate
iter = iter;     % the number of bisection iterations
formatSpec = 'The angle is %.3f degrees.\n The function value is %.3d.\n The number of iterations is %d.\n The error estimate is %.3d.\n';
fprintf(formatSpec,angle,fx,iter,ea)