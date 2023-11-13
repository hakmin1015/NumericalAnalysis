% Example 4-2

clc; clear; close all;

format long;

x0 = pi/4;
x1 = pi/3;
h = x1 - x0;

trueval = cos(x1);

N = 8;
dmfunc = zeros(N,1);  % cosine
dnfunc = zeros(N,1);  % sine
num = zeros(N,1);     % num = dmfunc + dnfunc
f = zeros(N,1);
e = zeros(N,1);

for k = 1:N/2
  dmfunc(2*k-1) = (-1)^(k+1)*cos(x0);
  dnfunc(2*k) = (-1)^(k)*sin(x0);
end

num = dmfunc + dnfunc;

f(1) = num(1);

for n = 2:N
  d = num(n)/prod(1:(n-1))*h^(n-1);
  f(n) = f(n-1)+d;
end

for m = 1:N
  e(m) = (trueval-f(m))/trueval*100;
end
