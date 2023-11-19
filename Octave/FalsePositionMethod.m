% Example 5-5
% 가위치법

clear; clc; close all;

format long;

f = @(x) (667.38/x)*(1-exp(-0.146843*x)) - 40;

x_low(1) = 12;
x_up(1) = 16;

x_r(1) = x_up(1) - f(x_up(1))*(x_low(1) - x_up(1)) / (f(x_low(1)) - f(x_up(1)));

k = 1;

e_ref = 0.5;
e_a(1) = 1000;

while e_a(k) > e_ref
  if f(x_r(k)) * f(x_up(k)) < 0    % x_up와 x_r의 부호가 다른지 판별
    x_low(k+1) = x_r(k);
    x_up(k+1) = x_up(k);

  else
    x_up(k+1) = x_r(k);
    x_low(k+1) = x_low(k);
  end

  k = k + 1;
  x_r(k) = x_up(k) - f(x_up(k))*(x_low(k) - x_up(k)) / (f(x_low(k)) - f(x_up(k)));
  e_a(k) = abs((x_r(k)-x_r(k-1))/x_r(k))*100;
end

e_a(1) = 0;
sol = [ [1:k]', x_low', x_up', x_r', e_a'];
