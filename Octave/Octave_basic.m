%% Useful command

clc;   % Clear the command window screen

clear;    % Clear the workspace memories

close all;    % Close all figure windows

clc; clear; close all;

%% Format

format short;  % default값으로 유효숫자 5자리까지 표시
pi

format long;   % 유효숫자 16자리까지 표시
pi

format short e;
pi

format long e;
pi

format short g;
pi.^[2, 4, 8, 16, 32]

%% Array, vectors, and matrices

a = 6;
a = [1 2 3 4 5 ];
b = [2;4;6;8;10];
A = [1 2 3; 4 5 6; 7 8 9];

b'; % Transpose
A'; % Transpose


%% who, whos

who;    % 현재 사용하고 있는 변수 표시
whos;   % 변수에 대한 자세한 정보 표시(이름, 크기, bytes, 타입)

%% Array entries

C = [1, 5, 9 ; 2, 6, 10 ; 3, 7, 11 ; 4, 8, 12];

C(2);
C(7);
C(13);
C(2,1);
C(3,2);
C(5,1);
C(1,1:3);
C(:, 2);

%% zeros, ones, eye

zeros(2,3);
zeros(2);
ones(1,10);
ones(3);
eye(3);

%% Array creation - Colon operator

R = [1:0.1:2];
R = [1:10];
R = [5:-1.2:2];

%% Array creation - linspace, logspace

linspace(0, 1, 6);   % Return a row vector with n linearly spaced elements between start and end.
linspace(0, 1, 5);
[0: 1/5: 1];         % linspace(0, 1, 6);
linspace(0, 1);      % default n = 100
logspace(-1, 2, 4);  % Return a row vector with n elements logarithmically spaced from 10^a to 10^b.
logspace(-1, 2);     % default n = 50

%% Character Strings

f = 'Sangmyung';
n = ' '
s = 'University';

x = [f n s];

%% Mathematical operation

4^2;
2*pi;
pi/4;
3+5;
2-1;
-2^2;
(-2)^2;
3*2^2;

%% Complex number

x = 2 + 2i;
y = 3 - 2j;   % j도 허수로 인식
x+y;

%% Vector-matrix multiplication

a = [4, 3];
b = [-3, 2];

a*b;
a*(b');
a*b';
a.*b;
a.*b';

dot(a, b);
sum(a.*b);  % dot(a, b) = a*(b') = sum(a.*b) for row vectors


a = [4, 3]';
b = [-3, 2]';

a*b;
a*b';
a'*b;
a.*b;
a.*b';

dot(a, b);
sum(a.*b);  % dot(a, b) = a'*b; = sum(a.*b) for column vectors



cross(a,b);

a = [2, 3, 0];
b = [-3, 2, 0];

cross(a,b);

a = [2, 3];
b = [-3, 2];

a.^b;
a./b;
a.\b;

A = [2 -1 ; 0 1];
A = [2 -1 ; 0 1; 4 -2];
A = [2 -1 ; 0 1; 1 3];

rank(A);
size(A);
length(A);

B = [1 5 ; 0 1];
A*B;
A.*B;

flipud(A);
fliplr(A);

sum(A);
det(A);

% inverse
a = 4;
b = 2;

a/b;
a\b;

% linear simultaneous equation
x1 - x2 + 2x3 = 10
3x1 + 2x2 + 9x3 = 9
x2 - 4x3 = -3

A = [1 -1 2; 3 2 9; 0 1 -4];
B = [10; 9; -3];

inv(A)*B;
A\B;

eig(A);
[V, a] = eig(A);

% fundamental functions

x = 0.6;
x = -0.4;
x = 1 + j*0.3;

abs(x)
sqrt(x)
round(x) % 가까운 정수로 반올림
fix(x) % x를 0쪽에 가까운 정수로 반환
floor(x) % x를 -inf에 가까운 정수로 반올림
ceil(x)  % x를 inf에 가까운 정수로 반올림
sign(x)  % 음수면 -1, 0이면 0, 양수면 1을 반환
sin(x)   % x : radian
cos(x)
tan(x)

asin(x)
acos(x)
atan(x)

% Vectorization

t = [0:0.02:50];
y = cos(t);

% Sinusoidal Signal

N = 20;   % Samples/cycle
f = 5;    % Signal Frequency
t = [0:1/(N*f):2/f];   % 0sec ~ 2cycle

y = 100*sin(2*pi*f.*t);
plot(t, y);
