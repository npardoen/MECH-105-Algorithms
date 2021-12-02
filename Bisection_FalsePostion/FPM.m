% Create a test function to test falsePosition function. 
% It is best to choose something where you already know the answer so it is
% easy to check if the solution your algorithms gives is correct.
% Polynomials are a nice starting place, since we have equations for the roots
testFunc = @(x) x.^3; % the root for this is pretty clearly x=0

% now lets test the function, using default value for es
x_left = -1;
x_right = 1;
[root, fx, ea, iter] = falsePosition(testFunc, x_left, x_right)