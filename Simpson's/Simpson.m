function [I] = Simpson(x,y)
Vx = length(x);
Vy = length(y);
check = linspace(x(1),x(Vx),Vx)
if nargin < 2 | nargin > 2
    error('Must be exactly 2 input arguments')
elseif Vx ~= Vy
    error('Must be same length')
elseif x ~= check
    error('x must be equal to check')
else
    errorCheckDetected = true;
    
end
%step sizes
h = abs(x(1)-x(2))
if round(Vx/2) == Vx/2
%Odd number of segments, use trapezoidal rule + simpsons
I = h*((y(Vy)+y(Vy)-1)/2) + (h/3)*(y(1)+(4*sum(y(2:2:Vy-2)))+(2*sum(y(3:2:Vy-2)))+y(Vy-1));
else
    %Simpsons rule
    I = (h/3)*(y(1)+(4*sum(y(2:2:Vy-1)))+(2*sum(y(3:2:Vy-1)))+y(Vy));
end
   fprintf('Integral sum = %0.5f\n',I) 

end