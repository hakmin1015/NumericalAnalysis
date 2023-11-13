%% Plot Example

t = [0:2:12];
g = 9.8; m = 68.1; cd = 12.5;     % Man
v1 = g*m/cd*(1-exp((-cd/m).*t));
plot(t, v1);

title('Plot of v versus t');
xlabel('Values of t');
ylabel('Values of v');
grid on;

hold on;

g = 9.8; m = 50.8; cd = 12.5;     % Woman
v2 = g*m/cd*(1-exp((-cd/m).*t));
plot(t, v2);

legend('Man', 'Woman');


% clc; clear; close all;

t = [0:2:12];
g = 9.8; m = 6; cd = 12.5;     % Cat
v = g*m/cd*(1-exp((-cd/m).*t));
plot(t, v, '-ro');

title('Plot of v versus t');
xlabel('Values of t');
ylabel('Values of v');
grid on;
legend('Cat');


figure;
subplot(2,1,1);
plot(t, v1, '-ro:','LineWidth',3);
title('Plot of v1 versus t');
xlabel('Values of t');
ylabel('Values of v1');
grid on;

subplot(2,1,2);
plot(t, v2, '-gd:','LineWidth',3);
title('Plot of v2 versus t');
xlabel('Values of t');
ylabel('Values of v2');
grid on;
