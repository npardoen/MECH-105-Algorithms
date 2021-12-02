function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

%Check Length
m = length(x);
n = length(y);

%Error
if nargin<2
    error('Two imputs are required')
end %L14

if m~=n
    error('Inputs do not have an equal length')
end %L18

if m>=3 && m<6
    if x(2)-x(1) ~= x(3)-x(2)
        error('Needs equaly spacing')
    end %L23
elseif m>6
    if x(2)-x(1) ~= x(6)-x(5)
        error('Needs equaly spacing')
    end %L27
end %L22


if n == 2
    I = (x(2)-x(1))*((y(1)+y(2))/2)
    warning ('Trap rule is being used')
    
elseif n == 3
    I = (x(3)-x(1))*((y(1)+4*y(2)+y(3))/6)
    
elseif n == 4
    I = (x(4)-x(1))*((y(1)+3*y(2)+3*y(3)+y(4))/8)
    
end %L34

if n>4
    
    A = x(1);
    B = x(end);
    K = m-1;
    H = ((B-A)/K);
    
    E = sum(y(2:2:end-1));
    O = sum(y(3:2:end-2));
    
    if rem(m,2) ~= 0
        I = (H/(3))*(y(1)+4*E+2*O+y(end))
        
    elseif rem(m,2) == 0
        I = (H/(3))*(y(1)+4*E+2*O+y(end))+(H/2)*(y(n-1)+y(end))
        warning ('Trap rule is being used')
    end %L55
end %L45

        
end %L1