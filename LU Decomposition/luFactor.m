function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix

[R C] = size(A);
A_O = A;

if R~=C
    error('Matrix must be square')
end

L = zeros(size(A,1));
U = zeros(size(A,1));
P = eye(size(A,1));

%Decomp P
for i = 1:size(A,1)
    [~,r] = max(abs(A(i:end,i)));
    r = size(A-1)-((size(A,1)-i)+1)+r;
    A([i r],:) = A([r i],:);
    P([i r],:) = P([r i],:);
    L([i r],:) = L([r i],:);
    
    %Decomp L
    for k = i:size(A,1)
        L(k,i) = A(k,i)/A(i,i);
    end
    
    %Decomp U
    for j = i+1:size(A,1)
        for h = i:size(A,1)
            A(j,h) = A(j,h)-L(j,i)*A(i,h);
        end
    end
    
    U = A;
    
    if P*A_O~=L*U
        error('P*A does not equal L*U')
    end
    
end % Function