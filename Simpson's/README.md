This file contains the matlab file for the Simpson's rule algorithm I created at CSU.

Simpson's rule is a Newton-Cotes formula for approximating the integral of a function f using quadratic polynomials (i.e., parabolic arcs instead of the straight line segments used in the trapezoidal rule). Simpson's rule can be derived by integrating a third-order Lagrange interpolating polynomial fit to the function at three equally spaced points

Vx = lowerbound

Vy = upperbound

error:

Must be two input arguments 

Sign check to make sure that the curve does in fact cross the x-axis

h = step size

%Odd number of segments, use trapezoidal rule + simpsons

I = h*((y(Vy)+y(Vy)-1)/2) + (h/3)*(y(1)+(4*sum(y(2:2:Vy-2)))+(2*sum(y(3:2:Vy-2)))+y(Vy-1));

 %Simpsons rule

I = (h/3)*(y(1)+(4*sum(y(2:2:Vy-1)))+(2*sum(y(3:2:Vy-1)))+y(Vy));
