This folder contains the Matlab Algorithm I created for False Position

False Position is an algorithm for finding roots which retains that prior estimate for which the function value has opposite sign from the function value at the current best estimate of the root.

%func - the function being fevaluated
 % xl - the lower guess
 % xu - the clc upper guess
%es - the desired relative error (should default to 0.0001%)
%maxit - the maximum number of iterations to use (should default to 200)
%varargin, . . . - any additional parameters used by the function

%fx - the function evaluated at the root location
%ea - the approximate relative error (%)
%iter - how many iterations were performed
