% Example 5-2
% 증분탐색법

clear; close; close all;

x_st = 0;
x_end = 5;
N = 100;
nb = 0;   % 근의 개수

x = [x_st : (x_end - x_st)/N : x_end]';
f = zeros(size(x));
s = zeros(size(x));  % 해당 구간에 근이 있는지 나타내는 Flag

func = @(x) sin(10*x) + cos(3*x);
f(1) = func(x(1));

for n = 2:length(x)
  f(n) = func(x(n));
  if f(n-1)*f(n)<0
    nb = nb + 1;
    xb(nb, 1) = f(n-1);   % xb는 근이 존재하는 구간의 함수값
    xb(nb, 2) = f(n);
    s(n) = 1;
  else
    s(n) = 0;
  end
end

plot(x, f)
grid on;
