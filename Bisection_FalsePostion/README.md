# Bisection and False Postion
---
These files containt an algorithm to find the root of a fuction using the bisection method and the false postion method with exaples.Both the inputs and outputs for `bisect.m` 
and `falsePosition.m` are the same. 

Inputs:
- func = name of the function
- xl, xu = lower and upper bounds
- es = desired relative error(**default = 0.0001%**)
- maxit = maximum allwable itteration(**default = 50**)
- p1, p2, varagin = any additional perameters

Outputs:
- root = real root
- fx = function value at root
- ea = approximate relative error(%)
- iter = number of iterations
