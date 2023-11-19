% Example 5-3
% 이분법

clc; clear; close all;

f = @(x) (667.38/x)*(1-exp((-0.146843*x))) - 40;

x_low(1) = 12;
x_up(1) = 16;

x_mid(1) = (x_low(1) + x_up(1)) / 2;

k = 1;

e_ref = 0.5; % 종료 판정 기준, percent
e_a(1) = 1000;  % initial condition

while e_a(k) > e_ref
  if f(x_mid(k)) * f(x_up(k)) < 0    % x_up와 x_mid의 부호가 다른지 판별
    x_low(k+1) = x_mid(k);
    x_up(k+1) = x_up(k);

  else
    x_up(k+1) = x_mid(k);
    x_low(k+1) = x_low(k);
  end

  k = k + 1;
  x_mid(k) = (x_low(k) + x_up(k)) / 2;
  e_a(k) = abs((x_mid(k)-x_mid(k-1))/x_mid(k))*100;
end

e_a(1) = 0;
sol = [ [1:k]', x_low', x_up', x_mid', e_a'];
