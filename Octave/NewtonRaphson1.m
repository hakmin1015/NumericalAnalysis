% Example 6-2
% 뉴튼랩슨법

clear; clc; close all;

f = @(x) exp(-x) - x;
df = @(x) (-1)*exp(-x) - 1;

trueval = 0.56714329;

x(1) = 0;

k = 1;

e_ref = 0.5;
e_a(1) = 1000;
e_t(1) = abs((trueval-x(1))/trueval)*100;

while e_a(k) > e_ref
  k = k+1;
  x(k) = x(k-1) - f(x(k-1))/df(x(k-1));
  e_a(k) = abs((x(k)-x(k-1))/x(k))*100;
  e_t(k) = abs((trueval-x(k))/trueval)*100;
end

e_a(1) = 0;
sol = [ [0:k-1]', x', e_a', e_t'];

