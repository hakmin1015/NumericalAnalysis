% Example 4-3

clc; clear; close all;

func = @(x) -0.1*x^4 - 0.15*x^3 - 0.5*x^2 - 0.25*x + 1.2;
dfunc = @(x) -0.4*x^3 - 0.45*x^2 - x - 0.25;

x = 0.5;
trueval = dfunc(x);

h = 0.5;

% Forward Difference
df1 = (func(x+h)-func(x))/h;
err1 = abs((trueval - df1)/trueval)*100;

% Backward Difference
df2 = (func(x)-func(x-h))/h;
err2 = abs((trueval - df2)/trueval)*100;

% Centered Difference
df3 = (func(x+h)-func(x-h))/(2*h);
err3 = abs((trueval - df3)/trueval)*100;
