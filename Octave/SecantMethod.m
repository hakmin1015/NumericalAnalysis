% Example 6-6
% 할선법

clear; clc; close all;

f = @(x) exp(-x) - x;

trueval = 0.56714329;

x(1) = 0;
x(2) = 1;
func(1) = f(x(1));
func(2) = f(x(2));

k = 2;

e_ref = 0.5;
e_a(2) = 1000;
e_t(2) = abs((trueval-x(2))/trueval)*100;

while e_a(k) > e_ref
  k = k+1;
  x(k) = x(k-1) - ( f(x(k-1))*(x(k-2)-x(k-1)) / (f(x(k-2)) - f(x(k-1))) );
  func(k) = f(x(k));
	e_a(k) = abs((x(k)-x(k-1))/x(k))*100;
	e_t(k) = abs((trueval-x(k))/trueval)*100;
end

e_a(1:2) = 0;
sol = [ [-1:k-2]', x', func', e_a', e_t'];
