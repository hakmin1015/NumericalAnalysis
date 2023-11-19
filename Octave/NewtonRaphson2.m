% Newton-Raphson법의 문제점 (초기값에서 미분계수가 0에 가까운 경우)

clear; close all; clc;

f = @(x) x^10 - 1;
df = @(x) 10*x^9;

trueval = 1;

x(1) = 0.5;

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
sol= [[0:k-1]', x', e_a', e_t'];
