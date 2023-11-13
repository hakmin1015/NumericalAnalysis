% Example 4-7

clc; clear; close all;

func = @(x) -0.1*x^4 - 0.15*x^3 - 0.5*x^2 - 0.25*x + 1.2;
dfunc = @(x) -0.4*x^3 - 0.45*x^2 - x - 0.25;

format long

x = 0.5;
truedif = dfunc(x);

h = 10;
H = zeros(11,1);  % H = step size
D = zeros(11,1);  % D = centered difference
E = zeros(11,1);  % E = error

for k = 1:11
  h = h/10;
  H(k) = h;
  D(k) = (func(x+h)-func(x-h))/(2*h);
  E(k) = abs(truedif-D(k));
end

L = [H D E]';

fprintf('  step size   finite difference   true error \n');
fprintf('%14.10f  %16.14f  %16.13f\n', L);

loglog(H,E, 'o-');
xlabel('Step Size');
ylabel('Error');
title('Plot of Error vs. Step Size');
