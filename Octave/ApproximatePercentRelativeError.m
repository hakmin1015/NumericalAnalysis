% Example 3-2

clc; clear; close all;
format long;

x = 0.5;
y = 1;
k = 1;    % 반복횟수의 초기값
N = 3;    % 유효숫자 범위
es = 0.5*10^(2-N);

ea(1) = 100;

while ea(k) > es
  k = k+1;
  dy = x^(k-1)/prod(1:(k-1));
  y(k) = y(k-1) + dy;
  ea(k) = abs(dy/y(k))*100;
end;
