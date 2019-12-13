function [root, fx, ea, iter] = FalsePosition2(func, xl, xu, es, maxit, varargin)
format longe
%func - the function being fevaluated
 % xl - the lower guess
 % xu - the clc upper guess
%es - the desired relative error (should default to 0.0001%)
%maxit - the maximum number of iterations to use (should default to 200)
%varargin, . . . - any additional parameters used by the function
fxu = func(xu);
fxl = func(xl);
test = fxu*fxl;
if test > 0
    error(' fxu*fxl > 0, no sign change')
end
if nargin < 3
    error('3 input arguments required')
elseif nargin < 4
    es = 0.0001;
    maxit = 200;
elseif nargin < 5 
    maxit = 200;
end
%fx - the function evaluated at the root location
%ea - the approximate relative error (%)
%iter - how many iterations were performed
ea = 100; %100 error
iter = 0;
xr = 1;
while es < ea && maxit > iter
    xp = xr;
    xr = xu - ((fxu*(fxl-xu))/(fxl-fxu));
    fxr = func(xr);
    ea = abs(100*((xr-xp)/xr));
    if sign(fxl) == sign(fxr)
        xl = xr;
    elseif sign(fxu) == sign(fxr)
        xu = xr;
    end
    iter = iter + 1;
end
root = xr;
fx = func(root);
fprintf('Root = %10.5f, fx = %1.8f, ea = %1.8f, iterations = %3.0f.\n',root,fx,ea,iter);
end


