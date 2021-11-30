% Solve the system of equations in the form A*x = b
%   10*x1 + 2*x2 - x3 = 27
%   -3*x1 - 6*x2 + 2*x3 = -61.5
%   x1 + x2 + 5*x3 = -21.5
% Set up A for the given system
A = magic(3);
[R C] = size(A);
b = rand(C,1);
% Solve for x
x = A\b;

% Test your function
[L, U, P] = luFactor(A)
[l u p] = lu(A);
% How can you test the output of your function is correct?